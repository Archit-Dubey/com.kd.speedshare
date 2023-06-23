package com.genonbeta.android.framework.app;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter.ViewHolder;

public abstract class DynamicRecyclerViewFragment<T, V extends RecyclerViewAdapter.ViewHolder, Z extends RecyclerViewAdapter<T, V>> extends RecyclerViewFragment<T, V, Z> {
    public boolean isHorizontalOrientation() {
        return false;
    }

    public RecyclerView.LayoutManager onLayoutManager() {
        return new GridLayoutManager(getContext(), (!isScreenLarge() || isHorizontalOrientation()) ? 1 : 2, true ^ isHorizontalOrientation() ? 1 : 0, false);
    }

    public boolean onSetListAdapter(Z z) {
        z.setUseHorizontalOrientation(isHorizontalOrientation());
        return super.onSetListAdapter(z);
    }

    public boolean isScreenLandscape() {
        return getContext() != null && getContext().getResources().getBoolean(R.bool.genfw_screen_isLandscape);
    }

    public boolean isScreenSmall() {
        return getContext() != null && getContext().getResources().getBoolean(R.bool.genfw_screen_isSmall);
    }

    public boolean isScreenNormal() {
        return getContext() != null && getContext().getResources().getBoolean(R.bool.genfw_screen_isNormal);
    }

    public boolean isScreenLarge() {
        return getContext() != null && getContext().getResources().getBoolean(R.bool.genfw_screen_isLarge);
    }

    public boolean isXScreenLarge() {
        return getContext() != null && getContext().getResources().getBoolean(R.bool.genfw_screen_isXLarge);
    }
}
