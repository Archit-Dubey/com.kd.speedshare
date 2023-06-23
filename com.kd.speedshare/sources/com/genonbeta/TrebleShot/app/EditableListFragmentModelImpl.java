package com.genonbeta.TrebleShot.app;

import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.genonbeta.TrebleShot.widget.EditableListAdapter.EditableViewHolder;

public interface EditableListFragmentModelImpl<V extends EditableListAdapter.EditableViewHolder> {
    void setLayoutClickListener(EditableListFragment.LayoutClickListener<V> layoutClickListener);
}
