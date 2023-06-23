package com.genonbeta.TrebleShot.object;

import com.genonbeta.android.framework.object.Selectable;

public interface Editable extends Comparable, Selectable {
    boolean applyFilter(String[] strArr);

    long getId();

    void setId(long j);
}
