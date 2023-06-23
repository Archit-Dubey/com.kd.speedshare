package com.genonbeta.TrebleShot.util;

import com.genonbeta.android.framework.util.Interrupter;

public abstract class InterruptAwareJob {
    /* access modifiers changed from: protected */
    public abstract void onRun();

    /* access modifiers changed from: protected */
    public void run(Interrupter interrupter) {
        onRun();
        interrupter.removeClosers();
    }
}
