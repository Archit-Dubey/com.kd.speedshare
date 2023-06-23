package com.genonbeta.android.framework.util.listing;

import com.genonbeta.android.framework.util.listing.Merger;
import java.util.ArrayList;
import java.util.List;

public class Lister<T, V extends Merger<T>> {
    private List<V> mList = new ArrayList();

    public List<V> getList() {
        return this.mList;
    }

    public void offer(T t, V v) {
        int indexOf = getList().indexOf(v);
        if (indexOf == -1) {
            getList().add(v);
        } else {
            v = (Merger) getList().get(indexOf);
        }
        v.getBelongings().add(t);
    }
}
