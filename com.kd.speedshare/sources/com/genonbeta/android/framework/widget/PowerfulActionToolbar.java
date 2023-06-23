package com.genonbeta.android.framework.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.Toolbar;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.object.Selectable;
import com.genonbeta.android.framework.widget.PowerfulActionEngine;
import com.genonbeta.android.framework.widget.PowerfulActionEngine.PowerfulActionEngineImpl;

public abstract class PowerfulActionToolbar<E extends Toolbar, ReturningObject extends PowerfulActionEngine.PowerfulActionEngineImpl> implements PowerfulActionEngine.EngineCallback<ReturningObject> {
    private View mContainerLayout;
    private Context mContext;
    /* access modifiers changed from: private */
    public PowerfulActionEngine mEngine;
    /* access modifiers changed from: private */
    public boolean mFinishAllowed = true;
    private MenuInflater mMenuInflater;
    private PowerfulActionEngine.OnSelectionTaskListener<ReturningObject> mTaskListener;
    private E mToolbar;

    public interface ToolbarCallback<T extends Selectable, ReturningObject extends PowerfulActionEngine.PowerfulActionEngineImpl> extends PowerfulActionEngine.Callback<T, ReturningObject> {
        boolean onActionMenuItemSelected(Context context, ReturningObject returningobject, MenuItem menuItem);

        boolean onCreateActionMenu(Context context, ReturningObject returningobject, Menu menu);

        boolean onPrepareActionMenu(Context context, ReturningObject returningobject);
    }

    public <E extends Selectable> boolean onCheck(PowerfulActionEngine.Callback<E, ReturningObject> callback, E e, boolean z, int i) {
        return true;
    }

    public PowerfulActionToolbar(Context context, E e) {
        this.mContext = context;
        this.mToolbar = e;
        this.mMenuInflater = new MenuInflater(getContext());
        this.mEngine = new PowerfulActionEngine(context, this);
    }

    public boolean isFinishAllowed() {
        return this.mFinishAllowed;
    }

    public View getContainerLayout() {
        return this.mContainerLayout;
    }

    public Context getContext() {
        return this.mContext;
    }

    public PowerfulActionEngine getEngine() {
        return this.mEngine;
    }

    public MenuInflater getMenuInflater() {
        return this.mMenuInflater;
    }

    public E getToolbar() {
        return this.mToolbar;
    }

    public void setContainerLayout(View view) {
        this.mContainerLayout = view;
    }

    public void setOnSelectionTaskListener(PowerfulActionEngine.OnSelectionTaskListener onSelectionTaskListener) {
        this.mTaskListener = onSelectionTaskListener;
    }

    public void setFinishAllowed(boolean z) {
        this.mFinishAllowed = z;
    }

    /* access modifiers changed from: protected */
    public void updateVisibility(int i) {
        int i2 = i == 0 ? 17432576 : 17432577;
        E containerLayout = getContainerLayout() == null ? this.mToolbar : getContainerLayout();
        if (i == 0) {
            containerLayout.setVisibility(i);
            containerLayout.setAnimation(AnimationUtils.loadAnimation(getContext(), i2));
            PowerfulActionEngine.OnSelectionTaskListener<ReturningObject> onSelectionTaskListener = this.mTaskListener;
            if (onSelectionTaskListener != null) {
                onSelectionTaskListener.onSelectionTask(true, onReturningObject());
                return;
            }
            return;
        }
        containerLayout.setAnimation(AnimationUtils.loadAnimation(getContext(), i2));
        containerLayout.setVisibility(i);
        PowerfulActionEngine.OnSelectionTaskListener<ReturningObject> onSelectionTaskListener2 = this.mTaskListener;
        if (onSelectionTaskListener2 != null) {
            onSelectionTaskListener2.onSelectionTask(false, onReturningObject());
        }
    }

    public <T extends Selectable> boolean onStart(PowerfulActionEngine.Callback<T, ReturningObject> callback, boolean z) {
        return (callback instanceof ToolbarCallback) && ((ToolbarCallback) callback).onPrepareActionMenu(getContext(), onReturningObject());
    }

    public boolean onReload(final PowerfulActionEngine.Callback callback) {
        getToolbar().getMenu().clear();
        updateVisibility(0);
        if (this.mFinishAllowed) {
            getToolbar().setNavigationIcon(R.drawable.genfw_close_white_24dp);
            getToolbar().setNavigationContentDescription(17039360);
            getToolbar().setNavigationOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    PowerfulActionToolbar.this.mEngine.finish(callback);
                }
            });
        }
        if ((callback instanceof ToolbarCallback) && ((ToolbarCallback) callback).onCreateActionMenu(getContext(), onReturningObject(), getToolbar().getMenu())) {
            AnonymousClass2 r1 = new MenuItem.OnMenuItemClickListener() {
                public boolean onMenuItemClick(MenuItem menuItem) {
                    PowerfulActionEngine.Callback callback = callback;
                    boolean z = (callback instanceof ToolbarCallback) && ((ToolbarCallback) callback).onActionMenuItemSelected(PowerfulActionToolbar.this.getContext(), PowerfulActionToolbar.this.onReturningObject(), menuItem);
                    if (z && PowerfulActionToolbar.this.mFinishAllowed) {
                        PowerfulActionToolbar.this.mEngine.finish(callback);
                    }
                    return z;
                }
            };
            for (int i = 0; i < getToolbar().getMenu().size(); i++) {
                getToolbar().getMenu().getItem(i).setOnMenuItemClickListener(r1);
            }
        }
        return true;
    }

    public boolean onFinish(PowerfulActionEngine.Callback callback) {
        updateVisibility(8);
        return true;
    }
}
