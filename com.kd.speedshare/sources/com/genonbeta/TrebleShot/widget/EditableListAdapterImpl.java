package com.genonbeta.TrebleShot.widget;

import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.android.framework.widget.ListAdapterImpl;
import java.util.List;

public interface EditableListAdapterImpl<T extends Editable> extends ListAdapterImpl<T> {
    boolean filterItem(T t);

    T getItem(int i) throws NotReadyException;

    void notifyAllSelectionChanges();

    void notifyItemChanged(int i);

    void notifyItemRangeChanged(int i, int i2);

    void syncSelectionList();

    void syncSelectionList(List<T> list);
}
