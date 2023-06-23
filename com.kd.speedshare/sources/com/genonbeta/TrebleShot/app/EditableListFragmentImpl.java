package com.genonbeta.TrebleShot.app;

import android.net.Uri;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.TrebleShot.widget.EditableListAdapterImpl;
import com.genonbeta.android.framework.app.ListFragmentImpl;
import com.genonbeta.android.framework.widget.PowerfulActionMode;

public interface EditableListFragmentImpl<T extends Editable> extends ListFragmentImpl<T> {
    boolean applyViewingChanges(int i);

    void changeGridViewSize(int i);

    void changeOrderingCriteria(int i);

    void changeSortingCriteria(int i);

    EditableListAdapterImpl<T> getAdapterImpl();

    EditableListFragment.FilteringDelegate<T> getFilteringDelegate();

    RecyclerView getListView();

    int getOrderingCriteria();

    EditableListFragment.SelectionCallback<T> getSelectionCallback();

    PowerfulActionMode.SelectorConnection<T> getSelectionConnection();

    int getSortingCriteria();

    String getUniqueSettingKey(String str);

    boolean isRefreshLocked();

    boolean isRefreshRequested();

    boolean isSortingSupported();

    boolean loadIfRequested();

    boolean openUri(Uri uri);

    void setFilteringDelegate(EditableListFragment.FilteringDelegate<T> filteringDelegate);

    void setSelectionCallback(EditableListFragment.SelectionCallback<T> selectionCallback);

    void setSelectorConnection(PowerfulActionMode.SelectorConnection<T> selectorConnection);
}
