package com.genonbeta.android.framework.widget;

import android.content.Context;
import androidx.collection.ArrayMap;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.android.framework.object.Selectable;
import com.genonbeta.android.framework.widget.PowerfulActionEngine.PowerfulActionEngineImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class PowerfulActionEngine<ReturningObject extends PowerfulActionEngineImpl> {
    private Map<Callback, Holder> mActiveActionModes = new ArrayMap();
    private Context mContext;
    private EngineCallback<ReturningObject> mEngineCallback;

    public interface Callback<T extends Selectable, ReturningObject extends PowerfulActionEngineImpl> {
        List<T> getSelectableList();

        void onFinish(Context context, ReturningObject returningobject);

        void onItemChecked(Context context, ReturningObject returningobject, T t, int i);
    }

    public interface EngineCallback<ReturningObject extends PowerfulActionEngineImpl> {
        <T extends Selectable> boolean onCheck(Callback<T, ReturningObject> callback, T t, boolean z, int i);

        boolean onFinish(Callback callback);

        boolean onReload(Callback callback);

        ReturningObject onReturningObject();

        <T extends Selectable> boolean onStart(Callback<T, ReturningObject> callback, boolean z);
    }

    public interface OnSelectionTaskListener<ReturningObject extends PowerfulActionEngineImpl> {
        void onSelectionTask(boolean z, ReturningObject returningobject);
    }

    public interface PowerfulActionEngineImpl {
        <T extends Selectable, M extends PowerfulActionEngineImpl> boolean check(Callback<T, M> callback, T t, boolean z, int i);

        void finish(Callback callback);

        <T extends Selectable, M extends PowerfulActionEngineImpl> Holder<T> getHolder(Callback<T, M> callback);

        boolean hasActive(Callback callback);

        boolean reload(Callback callback);

        <T extends Selectable, M extends PowerfulActionEngineImpl> boolean start(Callback<T, M> callback);

        <T extends Selectable, M extends PowerfulActionEngineImpl> boolean start(Callback<T, M> callback, boolean z);
    }

    public PowerfulActionEngine(Context context, EngineCallback<ReturningObject> engineCallback) {
        this.mContext = context;
        this.mEngineCallback = engineCallback;
    }

    public <T extends Selectable> boolean check(Callback<T, ReturningObject> callback, T t, boolean z, int i) {
        if (!t.setSelectableSelected(z)) {
            return false;
        }
        if (!hasActive(callback)) {
            start(callback);
        }
        if (!this.mEngineCallback.onCheck(callback, t, z, i)) {
            return false;
        }
        if (z) {
            getHolder(callback).getSelectionList().add(t);
        } else {
            getHolder(callback).getSelectionList().remove(t);
        }
        callback.onItemChecked(getContext(), this.mEngineCallback.onReturningObject(), t, i);
        return true;
    }

    public void finish(Callback callback) {
        if (this.mActiveActionModes.get(callback) != null && this.mEngineCallback.onFinish(callback)) {
            callback.onFinish(getContext(), this.mEngineCallback.onReturningObject());
            this.mActiveActionModes.remove(callback);
            reload(callback);
        }
    }

    public Map<Callback, Holder> getActiveActionModes() {
        return this.mActiveActionModes;
    }

    public Context getContext() {
        return this.mContext;
    }

    public <T extends Selectable> Holder<T> getHolder(Callback<T, ReturningObject> callback) {
        return this.mActiveActionModes.get(callback);
    }

    public boolean hasActive(Callback callback) {
        return this.mActiveActionModes.containsKey(callback);
    }

    public boolean reload(Callback callback) {
        if (callback != null && this.mActiveActionModes.containsKey(callback) && this.mEngineCallback.onReload(callback)) {
            return true;
        }
        finish(callback);
        return false;
    }

    public <T extends Selectable> boolean start(Callback<T, ReturningObject> callback) {
        return start(callback, false);
    }

    public <T extends Selectable> boolean start(Callback<T, ReturningObject> callback, boolean z) {
        if ((!this.mActiveActionModes.containsKey(callback) || z) && this.mEngineCallback.onStart(callback, z)) {
            this.mActiveActionModes.put(callback, new Holder());
            return reload(callback);
        }
        finish(callback);
        return false;
    }

    public static class SelectorConnection<T extends Selectable, ReturningObject extends PowerfulActionEngineImpl> {
        private Callback<T, ReturningObject> mCallback;
        private ReturningObject mMode;

        public SelectorConnection(ReturningObject returningobject, Callback<T, ReturningObject> callback) {
            this.mMode = returningobject;
            this.mCallback = callback;
        }

        public Callback<T, ReturningObject> getCallback() {
            return this.mCallback;
        }

        public ReturningObject getMode() {
            return this.mMode;
        }

        public List<T> getSelectedItemList() {
            Holder holder = getMode().getHolder(getCallback());
            return holder == null ? new ArrayList() : holder.getSelectionList();
        }

        public boolean isSelected(T t) {
            Holder holder = getMode().getHolder(getCallback());
            return holder != null && holder.getSelectionList().contains(t);
        }

        public boolean selectionActive() {
            return getMode().hasActive(getCallback());
        }

        public boolean setSelected(RecyclerView.ViewHolder viewHolder) {
            return setSelected(viewHolder.getAdapterPosition());
        }

        public boolean setSelected(int i) {
            return setSelected((Selectable) getCallback().getSelectableList().get(i), i);
        }

        public boolean setSelected(T t) {
            return setSelected(t, !isSelected(t), -1);
        }

        public boolean setSelected(T t, boolean z) {
            return setSelected(t, z, -1);
        }

        public boolean setSelected(T t, int i) {
            return setSelected(t, !isSelected(t), i);
        }

        public boolean setSelected(T t, boolean z, int i) {
            if (z == isSelected(t)) {
                return z;
            }
            return getMode().check(getCallback(), t, z, i);
        }

        public boolean removeSelected(T t) {
            if (!getMode().hasActive(getCallback())) {
                return false;
            }
            return getMode().getHolder(getCallback()).getSelectionList().remove(t);
        }
    }

    public static class Holder<T extends Selectable> {
        private final List<T> mSelectionList = new ArrayList();

        public List<T> getSelectionList() {
            List<T> list;
            synchronized (this.mSelectionList) {
                list = this.mSelectionList;
            }
            return list;
        }
    }

    public static class Implementation implements PowerfulActionEngineImpl {
        private PowerfulActionEngine mEngine;

        public Implementation(PowerfulActionEngine powerfulActionEngine) {
            this.mEngine = powerfulActionEngine;
        }

        public <T extends Selectable, M extends PowerfulActionEngineImpl> boolean check(Callback<T, M> callback, T t, boolean z, int i) {
            return this.mEngine.check(callback, t, z, i);
        }

        public void finish(Callback callback) {
            this.mEngine.finish(callback);
        }

        public <T extends Selectable, M extends PowerfulActionEngineImpl> Holder<T> getHolder(Callback<T, M> callback) {
            return this.mEngine.getHolder(callback);
        }

        public boolean hasActive(Callback callback) {
            return this.mEngine.hasActive(callback);
        }

        public boolean reload(Callback callback) {
            return this.mEngine.reload(callback);
        }

        public <T extends Selectable, M extends PowerfulActionEngineImpl> boolean start(Callback<T, M> callback) {
            return this.mEngine.start(callback);
        }

        public <T extends Selectable, M extends PowerfulActionEngineImpl> boolean start(Callback<T, M> callback, boolean z) {
            return this.mEngine.start(callback, z);
        }
    }
}
