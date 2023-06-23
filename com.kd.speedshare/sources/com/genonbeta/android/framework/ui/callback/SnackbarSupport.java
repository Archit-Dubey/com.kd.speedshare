package com.genonbeta.android.framework.ui.callback;

import com.google.android.material.snackbar.Snackbar;

public interface SnackbarSupport {
    Snackbar createSnackbar(int i, Object... objArr);
}
