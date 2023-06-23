package com.genonbeta.android.framework.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.genonbeta.android.framework.object.Selectable;
import com.genonbeta.android.framework.widget.PowerfulActionEngine;
import com.genonbeta.android.framework.widget.PowerfulActionToolbar;

public class PowerfulActionMode extends Toolbar implements PowerfulActionEngine.PowerfulActionEngineImpl {
    private PowerfulActionToolbar<Toolbar, PowerfulActionMode> mToolbar;

    public interface Callback<T extends Selectable> extends PowerfulActionToolbar.ToolbarCallback<T, PowerfulActionMode> {
    }

    public interface OnSelectionTaskListener extends PowerfulActionEngine.OnSelectionTaskListener<PowerfulActionMode> {
    }

    public PowerfulActionMode(Context context) {
        super(context);
        initialize();
    }

    public PowerfulActionMode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize();
    }

    public PowerfulActionMode(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize();
    }

    /* access modifiers changed from: protected */
    public void initialize() {
        this.mToolbar = new PowerfulActionToolbar<Toolbar, PowerfulActionMode>(getContext(), this) {
            public PowerfulActionMode onReturningObject() {
                return PowerfulActionMode.this;
            }
        };
    }

    public PowerfulActionToolbar<Toolbar, PowerfulActionMode> getEngineToolbar() {
        return this.mToolbar;
    }

    public <T extends Selectable> boolean check(Callback<T> callback, T t, boolean z, int i) {
        return getEngineToolbar().getEngine().check(callback, t, z, i);
    }

    public void finish(Callback callback) {
        getEngineToolbar().getEngine().finish(callback);
    }

    public View getContainerLayout() {
        return getEngineToolbar().getContainerLayout();
    }

    public <T extends Selectable> PowerfulActionEngine.Holder<T> getHolder(Callback<T> callback) {
        return getEngineToolbar().getEngine().getHolder(callback);
    }

    public MenuInflater getMenuInflater() {
        return getEngineToolbar().getMenuInflater();
    }

    public boolean hasActive(Callback callback) {
        return getEngineToolbar().getEngine().hasActive(callback);
    }

    public boolean reload(Callback callback) {
        return getEngineToolbar().getEngine().reload(callback);
    }

    public void setContainerLayout(View view) {
        getEngineToolbar().setContainerLayout(view);
    }

    public void setOnSelectionTaskListener(OnSelectionTaskListener onSelectionTaskListener) {
        getEngineToolbar().setOnSelectionTaskListener(onSelectionTaskListener);
    }

    public <T extends Selectable> boolean start(Callback<T> callback) {
        return getEngineToolbar().getEngine().start(callback);
    }

    public <T extends Selectable> boolean start(Callback<T> callback, boolean z) {
        return getEngineToolbar().getEngine().start(callback, z);
    }

    public <T extends Selectable, M extends PowerfulActionEngine.PowerfulActionEngineImpl> boolean check(PowerfulActionEngine.Callback<T, M> callback, T t, boolean z, int i) {
        return getEngineToolbar().getEngine().check(callback, t, z, i);
    }

    public void finish(PowerfulActionEngine.Callback callback) {
        getEngineToolbar().getEngine().finish(callback);
    }

    public <T extends Selectable, M extends PowerfulActionEngine.PowerfulActionEngineImpl> PowerfulActionEngine.Holder<T> getHolder(PowerfulActionEngine.Callback<T, M> callback) {
        return getEngineToolbar().getEngine().getHolder(callback);
    }

    public boolean hasActive(PowerfulActionEngine.Callback callback) {
        return getEngineToolbar().getEngine().hasActive(callback);
    }

    public boolean reload(PowerfulActionEngine.Callback callback) {
        return getEngineToolbar().getEngine().reload(callback);
    }

    public <T extends Selectable, M extends PowerfulActionEngine.PowerfulActionEngineImpl> boolean start(PowerfulActionEngine.Callback<T, M> callback) {
        return getEngineToolbar().getEngine().start(callback);
    }

    public <T extends Selectable, M extends PowerfulActionEngine.PowerfulActionEngineImpl> boolean start(PowerfulActionEngine.Callback<T, M> callback, boolean z) {
        return getEngineToolbar().getEngine().start(callback, z);
    }

    /* access modifiers changed from: protected */
    public void updateVisibility(int i) {
        getEngineToolbar().updateVisibility(i);
    }

    public static class SelectorConnection<T extends Selectable> extends PowerfulActionEngine.SelectorConnection<T, PowerfulActionMode> {
        public SelectorConnection(PowerfulActionMode powerfulActionMode, Callback<T> callback) {
            super(powerfulActionMode, callback);
        }
    }
}
