package com.genonbeta.android.framework.app;

import android.view.View;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.google.android.material.snackbar.Snackbar;

public class Fragment extends androidx.fragment.app.Fragment implements FragmentImpl, SnackbarSupport {
    private boolean mIsMenuShown;
    private View mSnackbarContainer;
    private int mSnackbarLength = 0;

    public Snackbar createSnackbar(int i, Object... objArr) {
        View view = this.mSnackbarContainer;
        if (view == null) {
            view = getView();
        }
        if (view != null) {
            return Snackbar.make(view, (CharSequence) getString(i, objArr), this.mSnackbarLength);
        }
        return null;
    }

    public boolean isMenuShown() {
        return this.mIsMenuShown;
    }

    public void setMenuVisibility(boolean z) {
        super.setMenuVisibility(z);
        this.mIsMenuShown = z;
    }

    public void setSnackbarLength(int i) {
        this.mSnackbarLength = i;
    }

    public void setSnackbarContainer(View view) {
        this.mSnackbarContainer = view;
    }
}
