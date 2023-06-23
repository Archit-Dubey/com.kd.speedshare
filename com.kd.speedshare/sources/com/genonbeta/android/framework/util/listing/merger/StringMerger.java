package com.genonbeta.android.framework.util.listing.merger;

import com.genonbeta.android.framework.util.listing.ComparableMerger;

public class StringMerger<T> extends ComparableMerger<T> {
    private String mString;

    public StringMerger(String str) {
        this.mString = str;
    }

    public boolean equals(Object obj) {
        return obj.equals(this.mString);
    }

    public String getString() {
        return this.mString;
    }

    public int compareTo(ComparableMerger<T> comparableMerger) {
        if (!(comparableMerger instanceof StringMerger)) {
            return -1;
        }
        return ((StringMerger) comparableMerger).getString().compareToIgnoreCase(getString());
    }
}
