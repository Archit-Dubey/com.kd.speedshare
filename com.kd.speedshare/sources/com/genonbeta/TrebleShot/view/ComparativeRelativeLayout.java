package com.genonbeta.TrebleShot.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.genonbeta.TrebleShot.R;

public class ComparativeRelativeLayout extends RelativeLayout {
    private boolean mAlwaysUseWidth;
    private boolean mBaseOnSmaller;
    private int mTallerExtraLength;

    public ComparativeRelativeLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public ComparativeRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ComparativeRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAlwaysUseWidth = true;
        this.mBaseOnSmaller = false;
        this.mTallerExtraLength = 0;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.ComparativeRelativeLayout, i, 0);
        this.mBaseOnSmaller = obtainStyledAttributes.getBoolean(1, this.mBaseOnSmaller);
        this.mTallerExtraLength = obtainStyledAttributes.getDimensionPixelSize(2, this.mTallerExtraLength);
        this.mAlwaysUseWidth = obtainStyledAttributes.getBoolean(0, this.mAlwaysUseWidth);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        if (this.mBaseOnSmaller) {
            if (i > i2) {
                i3 = this.mTallerExtraLength;
                i = i3 + i2;
                super.onMeasure(i, i2);
            }
            if (i2 > i) {
                i4 = this.mTallerExtraLength;
            }
            super.onMeasure(i, i2);
        } else if (this.mAlwaysUseWidth) {
            i4 = this.mTallerExtraLength;
        } else {
            i3 = this.mTallerExtraLength;
            i = i3 + i2;
            super.onMeasure(i, i2);
        }
        i2 = i4 + i;
        super.onMeasure(i, i2);
    }
}
