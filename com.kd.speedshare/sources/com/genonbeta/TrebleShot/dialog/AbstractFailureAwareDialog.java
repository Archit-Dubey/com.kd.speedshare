package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.appcompat.app.AlertDialog;

public abstract class AbstractFailureAwareDialog extends AlertDialog.Builder {
    /* access modifiers changed from: private */
    public OnProceedClickListener mClickListener;

    public interface OnProceedClickListener {
        boolean onProceedClick(AlertDialog alertDialog);
    }

    public AbstractFailureAwareDialog(Context context) {
        super(context);
    }

    public void setOnProceedClickListener(String str, OnProceedClickListener onProceedClickListener) {
        setPositiveButton((CharSequence) str, (DialogInterface.OnClickListener) null);
        this.mClickListener = onProceedClickListener;
    }

    public void setOnProceedClickListener(int i, OnProceedClickListener onProceedClickListener) {
        setOnProceedClickListener(getContext().getString(i), onProceedClickListener);
    }

    public AlertDialog show() {
        final AlertDialog show = super.show();
        if (this.mClickListener != null) {
            show.getButton(-1).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    if (AbstractFailureAwareDialog.this.mClickListener.onProceedClick(show)) {
                        show.dismiss();
                    }
                }
            });
        }
        return show;
    }
}
