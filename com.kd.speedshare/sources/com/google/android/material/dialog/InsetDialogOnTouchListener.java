package com.google.android.material.dialog;

import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.app.AlertDialog;

public class InsetDialogOnTouchListener implements View.OnTouchListener {
    private final Dialog dialog;
    private final int leftInset;
    private final int topInset;

    public InsetDialogOnTouchListener(AlertDialog alertDialog, Rect rect) {
        this.dialog = alertDialog;
        this.leftInset = rect.left;
        this.topInset = rect.top;
    }

    public InsetDialogOnTouchListener(android.app.AlertDialog alertDialog, Rect rect) {
        this.dialog = alertDialog;
        this.leftInset = rect.left;
        this.topInset = rect.top;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        View findViewById = view.findViewById(16908290);
        int left = this.leftInset + findViewById.getLeft();
        int width = findViewById.getWidth() + left;
        int top = this.topInset + findViewById.getTop();
        if (new RectF((float) left, (float) top, (float) width, (float) (findViewById.getHeight() + top)).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(4);
        view.performClick();
        if (Build.VERSION.SDK_INT >= 28) {
            return this.dialog.onTouchEvent(obtain);
        }
        this.dialog.onBackPressed();
        return true;
    }
}
