package com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.genonbeta.android.framework.widget.recyclerview.FastScroller;

public abstract class ScrollerViewProvider {
    private ViewBehavior mBubbleBehavior;
    private ViewBehavior mHandleBehavior;
    private FastScroller mScroller;

    public abstract int getBubbleOffset();

    /* access modifiers changed from: protected */
    public abstract ViewBehavior provideBubbleBehavior();

    public abstract TextView provideBubbleTextView();

    public abstract View provideBubbleView(ViewGroup viewGroup);

    /* access modifiers changed from: protected */
    public abstract ViewBehavior provideHandleBehavior();

    public abstract View provideHandleView(ViewGroup viewGroup);

    public void setFastScroller(FastScroller fastScroller) {
        this.mScroller = fastScroller;
    }

    /* access modifiers changed from: protected */
    public Context getContext() {
        return this.mScroller.getContext();
    }

    /* access modifiers changed from: protected */
    public FastScroller getScroller() {
        return this.mScroller;
    }

    /* access modifiers changed from: protected */
    public ViewBehavior getHandleBehavior() {
        if (this.mHandleBehavior == null) {
            this.mHandleBehavior = provideHandleBehavior();
        }
        return this.mHandleBehavior;
    }

    /* access modifiers changed from: protected */
    public ViewBehavior getBubbleBehavior() {
        if (this.mBubbleBehavior == null) {
            this.mBubbleBehavior = provideBubbleBehavior();
        }
        return this.mBubbleBehavior;
    }

    public void onHandleGrabbed() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onHandleGrabbed();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onHandleGrabbed();
        }
    }

    public void onHandleReleased() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onHandleReleased();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onHandleReleased();
        }
    }

    public void onScrollStarted() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onScrollStarted();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onScrollStarted();
        }
    }

    public void onScrollFinished() {
        if (getHandleBehavior() != null) {
            getHandleBehavior().onScrollFinished();
        }
        if (getBubbleBehavior() != null) {
            getBubbleBehavior().onScrollFinished();
        }
    }
}
