package com.genonbeta.TrebleShot.ui;

import com.genonbeta.android.framework.util.Interrupter;

public interface UITask {
    void updateTaskStarted(Interrupter interrupter);

    void updateTaskStopped();
}
