package com.genonbeta.android.framework.util.listing;

import java.util.ArrayList;
import java.util.List;

public abstract class Merger<T> {
    public List<T> mBelongings = new ArrayList();

    public abstract boolean equals(Object obj);

    public List<T> getBelongings() {
        return this.mBelongings;
    }
}
