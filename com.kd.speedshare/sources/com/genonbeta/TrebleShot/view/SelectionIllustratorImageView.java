package com.genonbeta.TrebleShot.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;

public class SelectionIllustratorImageView extends AppCompatImageView {
    public SelectionIllustratorImageView(Context context) {
        super(context);
    }

    public SelectionIllustratorImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SelectionIllustratorImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setSelected(boolean z) {
        super.setSelected(z);
        if (z) {
            getDrawable().setVisible(false, false);
        } else {
            getDrawable().setVisible(true, false);
        }
    }
}
