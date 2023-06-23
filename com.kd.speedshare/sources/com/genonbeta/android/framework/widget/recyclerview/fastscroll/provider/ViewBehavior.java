package com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider;

public interface ViewBehavior {
    void onHandleGrabbed();

    void onHandleReleased();

    void onScrollFinished();

    void onScrollStarted();
}
