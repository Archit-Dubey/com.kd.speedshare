package com.genonbeta.android.framework.widget.recyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.RecyclerViewScrollListener;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.SectionTitleProvider;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.Utils;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.DefaultScrollerViewProvider;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.provider.ScrollerViewProvider;

public class FastScroller extends LinearLayout {
    private static final int STYLE_NONE = -1;
    private View mBubble;
    private int mBubbleColor;
    private int mBubbleOffset;
    private int mBubbleTextAppearance;
    private TextView mBubbleTextView;
    private View mHandle;
    private int mHandleColor;
    /* access modifiers changed from: private */
    public boolean mManuallyChangingPosition;
    private int mMaxVisibility;
    /* access modifiers changed from: private */
    public RecyclerView mRecyclerView;
    private final RecyclerViewScrollListener mScrollListener;
    private int mScrollerOrientation;
    /* access modifiers changed from: private */
    public SectionTitleProvider mTitleProvider;
    /* access modifiers changed from: private */
    public ScrollerViewProvider mViewProvider;

    public FastScroller(Context context) {
        this(context, (AttributeSet) null);
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: finally extract failed */
    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScrollListener = new RecyclerViewScrollListener(this);
        setClipChildren(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.GenfwFastScroller, R.attr.genfw_fastScrollStyle, 0);
        try {
            this.mBubbleColor = obtainStyledAttributes.getColor(R.styleable.GenfwFastScroller_genfw_fastScrollBubbleColor, -1);
            this.mHandleColor = obtainStyledAttributes.getColor(R.styleable.GenfwFastScroller_genfw_fastScrollHandleColor, -1);
            this.mBubbleTextAppearance = obtainStyledAttributes.getResourceId(R.styleable.GenfwFastScroller_genfw_fastScrollBubbleTextAppearance, -1);
            obtainStyledAttributes.recycle();
            this.mMaxVisibility = getVisibility();
            setViewProvider(new DefaultScrollerViewProvider());
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
        if (recyclerView.getAdapter() instanceof SectionTitleProvider) {
            this.mTitleProvider = (SectionTitleProvider) recyclerView.getAdapter();
        }
        recyclerView.addOnScrollListener(this.mScrollListener);
        invalidateVisibility();
        recyclerView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() {
            public void onChildViewAdded(View view, View view2) {
                FastScroller.this.invalidateVisibility();
            }

            public void onChildViewRemoved(View view, View view2) {
                FastScroller.this.invalidateVisibility();
            }
        });
    }

    public void setOrientation(int i) {
        this.mScrollerOrientation = i;
        super.setOrientation(i == 0 ? 1 : 0);
    }

    public void setBubbleColor(int i) {
        this.mBubbleColor = i;
        invalidate();
    }

    public void setHandleColor(int i) {
        this.mHandleColor = i;
        invalidate();
    }

    public void setBubbleTextAppearance(int i) {
        this.mBubbleTextAppearance = i;
        invalidate();
    }

    public void addScrollerListener(RecyclerViewScrollListener.ScrollerListener scrollerListener) {
        this.mScrollListener.addScrollerListener(scrollerListener);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        initHandleMovement();
        this.mBubbleOffset = this.mViewProvider.getBubbleOffset();
        applyStyling();
        isInEditMode();
    }

    private void applyStyling() {
        int i = this.mBubbleColor;
        if (i != -1) {
            setBackgroundTint(this.mBubbleTextView, i);
        }
        int i2 = this.mHandleColor;
        if (i2 != -1) {
            setBackgroundTint(this.mHandle, i2);
        }
        int i3 = this.mBubbleTextAppearance;
        if (i3 != -1) {
            TextViewCompat.setTextAppearance(this.mBubbleTextView, i3);
        }
    }

    private void setBackgroundTint(View view, int i) {
        Drawable wrap = DrawableCompat.wrap(view.getBackground());
        DrawableCompat.setTint(wrap.mutate(), i);
        Utils.setBackground(view, wrap);
    }

    private void initHandleMovement() {
        this.mHandle.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                FastScroller.this.requestDisallowInterceptTouchEvent(true);
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                    if (FastScroller.this.mTitleProvider != null && motionEvent.getAction() == 0) {
                        FastScroller.this.mViewProvider.onHandleGrabbed();
                    }
                    boolean unused = FastScroller.this.mManuallyChangingPosition = true;
                    float access$400 = FastScroller.this.getRelativeTouchPosition(motionEvent);
                    FastScroller.this.setScrollerPosition(access$400);
                    FastScroller.this.setRecyclerViewPosition(access$400);
                    return true;
                } else if (motionEvent.getAction() != 1) {
                    return false;
                } else {
                    boolean unused2 = FastScroller.this.mManuallyChangingPosition = false;
                    FastScroller.this.mRecyclerView.scrollBy(0, 0);
                    if (FastScroller.this.mTitleProvider != null) {
                        FastScroller.this.mViewProvider.onHandleReleased();
                    }
                    return true;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public float getRelativeTouchPosition(MotionEvent motionEvent) {
        float rawX;
        int width;
        int width2;
        if (isVertical()) {
            rawX = motionEvent.getRawY() - Utils.getViewRawY(this.mHandle);
            width = getHeight();
            width2 = this.mHandle.getHeight();
        } else {
            rawX = motionEvent.getRawX() - Utils.getViewRawX(this.mHandle);
            width = getWidth();
            width2 = this.mHandle.getWidth();
        }
        return rawX / ((float) (width - width2));
    }

    public void setVisibility(int i) {
        this.mMaxVisibility = i;
        invalidateVisibility();
    }

    /* access modifiers changed from: private */
    public void invalidateVisibility() {
        if (this.mRecyclerView.getAdapter() == null || this.mRecyclerView.getAdapter().getItemCount() == 0 || this.mRecyclerView.getChildAt(0) == null || isRecyclerViewNotScrollable() || this.mMaxVisibility != 0) {
            super.setVisibility(4);
        } else {
            super.setVisibility(0);
        }
    }

    private boolean isRecyclerViewNotScrollable() {
        if (isVertical()) {
            if (this.mRecyclerView.getChildAt(0).getHeight() * this.mRecyclerView.getAdapter().getItemCount() <= this.mRecyclerView.getHeight()) {
                return true;
            }
            return false;
        } else if (this.mRecyclerView.getChildAt(0).getWidth() * this.mRecyclerView.getAdapter().getItemCount() <= this.mRecyclerView.getWidth()) {
            return true;
        } else {
            return false;
        }
    }

    /* access modifiers changed from: private */
    public void setRecyclerViewPosition(float f) {
        int i;
        int i2;
        int i3;
        View view;
        RecyclerView.ViewHolder viewHolder;
        int i4;
        TextView textView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null && recyclerView.getAdapter() != null) {
            if (isVertical()) {
                i3 = this.mRecyclerView.computeVerticalScrollOffset();
                i2 = this.mRecyclerView.computeVerticalScrollExtent();
                i = this.mRecyclerView.computeVerticalScrollRange();
            } else {
                i3 = this.mRecyclerView.computeHorizontalScrollOffset();
                i2 = this.mRecyclerView.computeHorizontalScrollExtent();
                i = this.mRecyclerView.computeHorizontalScrollRange();
            }
            if (isVertical()) {
                view = this.mRecyclerView.findChildViewUnder(0.0f, this.mHandle.getY());
            } else {
                view = this.mRecyclerView.findChildViewUnder(this.mHandle.getX(), 0.0f);
            }
            if (view == null) {
                viewHolder = null;
            } else {
                viewHolder = this.mRecyclerView.findContainingViewHolder(view);
            }
            int itemCount = this.mRecyclerView.getAdapter().getItemCount();
            if (viewHolder == null) {
                i4 = -1;
            } else {
                i4 = viewHolder.getAdapterPosition();
            }
            if (i4 < 0 || i4 >= itemCount) {
                i4 = (int) Utils.getValueInRange(0.0f, (float) (itemCount - 1), (float) ((int) (((float) itemCount) * f)));
            }
            SectionTitleProvider sectionTitleProvider = this.mTitleProvider;
            if (!(sectionTitleProvider == null || (textView = this.mBubbleTextView) == null)) {
                textView.setText(sectionTitleProvider.getSectionTitle(i4));
            }
            float f2 = ((float) i) * f;
            if (f2 > ((float) i2) || i3 != 0) {
                int i5 = (int) (f2 - ((float) (i3 + i2)));
                if (isVertical()) {
                    this.mRecyclerView.scrollBy(0, i5);
                } else {
                    this.mRecyclerView.scrollBy(i5, 0);
                }
            }
        }
    }

    public void setScrollerPosition(float f) {
        if (isVertical()) {
            this.mBubble.setY(Utils.getValueInRange(0.0f, (float) (getHeight() - this.mBubble.getHeight()), (((float) (getHeight() - this.mHandle.getHeight())) * f) + ((float) this.mBubbleOffset)));
            this.mHandle.setY(Utils.getValueInRange(0.0f, (float) (getHeight() - this.mHandle.getHeight()), f * ((float) (getHeight() - this.mHandle.getHeight()))));
            return;
        }
        this.mBubble.setX(Utils.getValueInRange(0.0f, (float) (getWidth() - this.mBubble.getWidth()), (((float) (getWidth() - this.mHandle.getWidth())) * f) + ((float) this.mBubbleOffset)));
        this.mHandle.setX(Utils.getValueInRange(0.0f, (float) (getWidth() - this.mHandle.getWidth()), f * ((float) (getWidth() - this.mHandle.getWidth()))));
    }

    public boolean isVertical() {
        return this.mScrollerOrientation == 1;
    }

    public boolean shouldUpdateHandlePosition() {
        return this.mHandle != null && !this.mManuallyChangingPosition && this.mRecyclerView.getChildCount() > 0;
    }

    public ScrollerViewProvider getViewProvider() {
        return this.mViewProvider;
    }

    public void setViewProvider(ScrollerViewProvider scrollerViewProvider) {
        removeAllViews();
        this.mViewProvider = scrollerViewProvider;
        scrollerViewProvider.setFastScroller(this);
        this.mBubble = scrollerViewProvider.provideBubbleView(this);
        this.mHandle = scrollerViewProvider.provideHandleView(this);
        this.mBubbleTextView = scrollerViewProvider.provideBubbleTextView();
        addView(this.mBubble);
        addView(this.mHandle);
    }
}
