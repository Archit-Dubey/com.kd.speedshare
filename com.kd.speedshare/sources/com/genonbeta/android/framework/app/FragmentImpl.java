package com.genonbeta.android.framework.app;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.snackbar.Snackbar;

public interface FragmentImpl {
    Snackbar createSnackbar(int i, Object... objArr);

    FragmentActivity getActivity();

    Context getContext();
}
