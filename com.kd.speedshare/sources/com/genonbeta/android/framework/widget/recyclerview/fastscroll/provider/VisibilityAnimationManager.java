package com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.View;
import com.genonbeta.android.framework.R;

public class VisibilityAnimationManager {
    protected AnimatorSet mHideAnimator;
    private float mPivotXRelative;
    private float mPivotYRelative;
    protected AnimatorSet mShowAnimator;
    protected final View mView;

    protected VisibilityAnimationManager(final View view, int i, int i2, float f, float f2, int i3) {
        this.mView = view;
        this.mPivotXRelative = f;
        this.mPivotYRelative = f2;
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i2);
        this.mHideAnimator = animatorSet;
        animatorSet.setStartDelay((long) i3);
        this.mHideAnimator.setTarget(view);
        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(view.getContext(), i);
        this.mShowAnimator = animatorSet2;
        animatorSet2.setTarget(view);
        this.mHideAnimator.addListener(new AnimatorListenerAdapter() {
            boolean mWasCanceled;

            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (!this.mWasCanceled) {
                    view.setVisibility(4);
                }
                this.mWasCanceled = false;
            }

            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                this.mWasCanceled = true;
            }
        });
        updatePivot();
    }

    public void show() {
        this.mHideAnimator.cancel();
        if (this.mView.getVisibility() == 4) {
            this.mView.setVisibility(0);
            updatePivot();
            this.mShowAnimator.start();
        }
    }

    public void hide() {
        updatePivot();
        this.mHideAnimator.start();
    }

    /* access modifiers changed from: protected */
    public void updatePivot() {
        View view = this.mView;
        view.setPivotX(this.mPivotXRelative * ((float) view.getMeasuredWidth()));
        View view2 = this.mView;
        view2.setPivotY(this.mPivotYRelative * ((float) view2.getMeasuredHeight()));
    }

    public static abstract class AbsBuilder<T extends VisibilityAnimationManager> {
        protected int mHideAnimatorResource = R.animator.genfw_fastscroll_default_hide;
        protected int mHideDelay = 1000;
        protected float mPivotX = 0.5f;
        protected float mPivotY = 0.5f;
        protected int mShowAnimatorResource = R.animator.genfw_fastscroll_default_show;
        protected final View mView;

        public abstract T build();

        public AbsBuilder(View view) {
            this.mView = view;
        }

        public AbsBuilder<T> withShowAnimator(int i) {
            this.mShowAnimatorResource = i;
            return this;
        }

        public AbsBuilder<T> withHideAnimator(int i) {
            this.mHideAnimatorResource = i;
            return this;
        }

        public AbsBuilder<T> withHideDelay(int i) {
            this.mHideDelay = i;
            return this;
        }

        public AbsBuilder<T> withPivotX(float f) {
            this.mPivotX = f;
            return this;
        }

        public AbsBuilder<T> withPivotY(float f) {
            this.mPivotY = f;
            return this;
        }
    }

    public static class Builder extends AbsBuilder<VisibilityAnimationManager> {
        public Builder(View view) {
            super(view);
        }

        public VisibilityAnimationManager build() {
            return new VisibilityAnimationManager(this.mView, this.mShowAnimatorResource, this.mHideAnimatorResource, this.mPivotX, this.mPivotY, this.mHideDelay);
        }
    }
}
