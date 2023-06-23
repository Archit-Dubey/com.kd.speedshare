package com.genonbeta.TrebleShot.view;

import android.content.res.Resources;
import android.graphics.drawable.InsetDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.Utils;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.DefaultBubbleBehavior;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.ScrollerViewProvider;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.ViewBehavior;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.VisibilityAnimationManager;
import com.kd.speedshare.R;

public class LongTextBubbleFastScrollViewProvider extends ScrollerViewProvider {
    private View mBubble;
    private View mHandle;

    /* access modifiers changed from: protected */
    public ViewBehavior provideHandleBehavior() {
        return null;
    }

    public View provideHandleView(ViewGroup viewGroup) {
        this.mHandle = new View(getContext());
        int dimensionPixelSize = getScroller().isVertical() ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.genfw_fastscroll_handle_inset);
        int dimensionPixelSize2 = !getScroller().isVertical() ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.genfw_fastscroll_handle_inset);
        Utils.setBackground(this.mHandle, new InsetDrawable(ContextCompat.getDrawable(getContext(), R.drawable.genfw_fastscroll_default_handle), dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize));
        Resources resources = getContext().getResources();
        boolean isVertical = getScroller().isVertical();
        int i = R.dimen.genfw_fastscroll_handle_clickable_width;
        int dimensionPixelSize3 = resources.getDimensionPixelSize(isVertical ? R.dimen.genfw_fastscroll_handle_clickable_width : R.dimen.genfw_fastscroll_handle_height);
        Resources resources2 = getContext().getResources();
        if (getScroller().isVertical()) {
            i = R.dimen.genfw_fastscroll_handle_height;
        }
        this.mHandle.setLayoutParams(new ViewGroup.LayoutParams(dimensionPixelSize3, resources2.getDimensionPixelSize(i)));
        return this.mHandle;
    }

    public View provideBubbleView(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.abstract_layout_fast_scroll_long_text_bubble_text_view, viewGroup, false);
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
        return (int) (f - (((float) i) / 2.0f));
    }

    /* access modifiers changed from: protected */
    public ViewBehavior provideBubbleBehavior() {
        return new DefaultBubbleBehavior(new VisibilityAnimationManager.Builder(this.mBubble).withPivotX(1.0f).withPivotY(1.0f).build());
    }
}
