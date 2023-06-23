package com.genonbeta.TrebleShot.widget.recyclerview;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

public class PaddingItemDecoration extends RecyclerView.ItemDecoration {
    private boolean mActive;
    private boolean mEdgeSpace;
    private boolean mHorizontalView;
    private int mPadding;

    public PaddingItemDecoration(int i) {
        this(i, true, false);
    }

    public PaddingItemDecoration(int i, boolean z, boolean z2) {
        this.mActive = true;
        this.mEdgeSpace = true;
        this.mHorizontalView = false;
        setPadding(i);
        setHorizontalView(z2);
        setEdgeSpace(z);
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int childAdapterPosition;
        int i;
        if (this.mActive && recyclerView.getAdapter() != null && (childAdapterPosition = recyclerView.getChildAdapterPosition(view)) >= 0) {
            int i2 = 1;
            int i3 = 0;
            if (recyclerView.getLayoutManager() instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                int spanCount = gridLayoutManager.getSpanCount();
                i = gridLayoutManager.getSpanSizeLookup().getSpanIndex(childAdapterPosition, spanCount);
                i2 = spanCount - gridLayoutManager.getSpanSizeLookup().getSpanSize(childAdapterPosition);
            } else {
                i = 0;
            }
            Rect rect2 = new Rect();
            int i4 = this.mPadding;
            if (i4 >= 2) {
                int i5 = i4 / 2;
                if (this.mEdgeSpace) {
                    rect2.left = i == 0 ? i4 : i5;
                    if (i != i2) {
                        i4 = i5;
                    }
                    rect2.right = i4;
                    rect2.bottom = this.mPadding;
                    if (childAdapterPosition <= i2 && i == childAdapterPosition) {
                        rect2.top = this.mPadding;
                    }
                } else {
                    rect2.left = i == 0 ? 0 : i5;
                    if (i != i2) {
                        i3 = i5;
                    }
                    rect2.right = i3;
                    if (childAdapterPosition > i2 || i != childAdapterPosition) {
                        rect2.top = this.mPadding;
                    }
                }
            }
            rect.left = this.mHorizontalView ? rect2.top : rect2.left;
            rect.right = this.mHorizontalView ? rect2.bottom : rect2.right;
            rect.top = this.mHorizontalView ? rect2.left : rect2.top;
            rect.bottom = this.mHorizontalView ? rect2.right : rect2.bottom;
        }
    }

    public void setActive(boolean z) {
        this.mActive = z;
    }

    public void setEdgeSpace(boolean z) {
        this.mEdgeSpace = z;
    }

    public void setHorizontalView(boolean z) {
        this.mHorizontalView = z;
    }

    public void setPadding(int i) {
        this.mPadding = i;
    }
}
