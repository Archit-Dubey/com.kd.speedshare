package com.genonbeta.android.framework.widget.recyclerview.fastscroll;

import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.android.framework.widget.recyclerview.FastScroller;
import java.util.ArrayList;
import java.util.List;

public class RecyclerViewScrollListener extends RecyclerView.OnScrollListener {
    private List<ScrollerListener> mListeners = new ArrayList();
    private int mOldScrollState = 0;
    private final FastScroller mScroller;

    public interface ScrollerListener {
        void onScroll(float f);
    }

    public RecyclerViewScrollListener(FastScroller fastScroller) {
        this.mScroller = fastScroller;
    }

    public void addScrollerListener(ScrollerListener scrollerListener) {
        this.mListeners.add(scrollerListener);
    }

    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0 && this.mOldScrollState != 0) {
            this.mScroller.getViewProvider().onScrollFinished();
        } else if (i != 0 && this.mOldScrollState == 0) {
            this.mScroller.getViewProvider().onScrollStarted();
        }
        this.mOldScrollState = i;
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        if (this.mScroller.shouldUpdateHandlePosition()) {
            updateHandlePosition(recyclerView);
        }
    }

    public void updateHandlePosition(RecyclerView recyclerView) {
        int i;
        int i2;
        int i3;
        float f;
        float f2;
        if (this.mScroller.isVertical()) {
            i3 = recyclerView.computeVerticalScrollOffset();
            i2 = recyclerView.computeVerticalScrollExtent();
            i = recyclerView.computeVerticalScrollRange();
        } else {
            i3 = recyclerView.computeHorizontalScrollOffset();
            i2 = recyclerView.computeHorizontalScrollExtent();
            i = recyclerView.computeHorizontalScrollRange();
        }
        if (i3 > i2) {
            f2 = (float) (i3 + i2);
        } else if (i3 <= 0) {
            f = 0.0f;
            this.mScroller.setScrollerPosition(f);
            notifyListeners(f);
        } else {
            float f3 = (float) i3;
            f2 = f3 + (((float) i2) * (f3 / ((float) (i - i2))));
        }
        f = f2 / ((float) i);
        this.mScroller.setScrollerPosition(f);
        notifyListeners(f);
    }

    public void notifyListeners(float f) {
        for (ScrollerListener onScroll : this.mListeners) {
            onScroll.onScroll(f);
        }
    }
}
