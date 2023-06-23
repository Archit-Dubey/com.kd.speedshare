package com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider;

public class DefaultBubbleBehavior implements ViewBehavior {
    private final VisibilityAnimationManager mAnimationManager;

    public void onScrollFinished() {
    }

    public void onScrollStarted() {
    }

    public DefaultBubbleBehavior(VisibilityAnimationManager visibilityAnimationManager) {
        this.mAnimationManager = visibilityAnimationManager;
    }

    public void onHandleGrabbed() {
        this.mAnimationManager.show();
    }

    public void onHandleReleased() {
        this.mAnimationManager.hide();
    }
}
