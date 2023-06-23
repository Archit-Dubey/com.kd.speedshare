package com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider;

import android.graphics.drawable.InsetDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.Utils;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.VisibilityAnimationManager;

public class DefaultScrollerViewProvider extends ScrollerViewProvider {
    protected View mBubble;
    protected View mHandle;

    /* access modifiers changed from: protected */
    public ViewBehavior provideHandleBehavior() {
        return null;
    }

    public View provideHandleView(ViewGroup viewGroup) {
        this.mHandle = new View(getContext());
        int dimensionPixelSize = getScroller().isVertical() ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.genfw_fastscroll_handle_inset);
        int dimensionPixelSize2 = !getScroller().isVertical() ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.genfw_fastscroll_handle_inset);
        Utils.setBackground(this.mHandle, new InsetDrawable(ContextCompat.getDrawable(getContext(), R.drawable.genfw_fastscroll_default_handle), dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize));
        this.mHandle.setLayoutParams(new ViewGroup.LayoutParams(getContext().getResources().getDimensionPixelSize(getScroller().isVertical() ? R.dimen.genfw_fastscroll_handle_clickable_width : R.dimen.genfw_fastscroll_handle_height), getContext().getResources().getDimensionPixelSize(getScroller().isVertical() ? R.dimen.genfw_fastscroll_handle_height : R.dimen.genfw_fastscroll_handle_clickable_width)));
        return this.mHandle;
    }

    public View provideBubbleView(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.genfw_fastscroll_default_bubble, viewGroup, false);
        this.mBubble = inflate;
        return inflate;
    }

    public TextView provideBubbleTextView() {
        return (TextView) this.mBubble;
    }

    public int getBubbleOffset() {
        int i;
        float f;
        if (getScroller().isVertical()) {
            f = ((float) this.mHandle.getHeight()) / 2.0f;
            i = this.mBubble.getHeight();
        } else {
            f = ((float) this.mHandle.getWidth()) / 2.0f;
            i = this.mBubble.getWidth();
        }
        return (int) (f - ((float) i));
    }

    /* access modifiers changed from: protected */
    public ViewBehavior provideBubbleBehavior() {
        return new DefaultBubbleBehavior(new VisibilityAnimationManager.Builder(this.mBubble).withPivotX(1.0f).withPivotY(1.0f).build());
    }
}
