package com.genonbeta.TrebleShot.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SearchView;
import androidx.collection.ArrayMap;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.dialog.SelectionEditorDialog;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.TrebleShot.object.Shareable;
import com.genonbeta.TrebleShot.ui.callback.DetachListener;
import com.genonbeta.TrebleShot.ui.callback.PowerfulActionModeSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.view.LongTextBubbleFastScrollViewProvider;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.genonbeta.TrebleShot.widget.EditableListAdapter.EditableViewHolder;
import com.genonbeta.TrebleShot.widget.EditableListAdapterImpl;
import com.genonbeta.TrebleShot.widget.recyclerview.PaddingItemDecoration;
import com.genonbeta.TrebleShot.widget.recyclerview.SwipeTouchSelectionListener;
import com.genonbeta.android.framework.app.DynamicRecyclerViewFragment;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.genonbeta.android.framework.widget.recyclerview.FastScroller;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public abstract class EditableListFragment<T extends Editable, V extends EditableListAdapter.EditableViewHolder, E extends EditableListAdapter<T, V>> extends DynamicRecyclerViewFragment<T, V, E> implements EditableListFragmentImpl<T>, EditableListFragmentModelImpl<V>, DetachListener {
    private FilteringDelegate<T> mDefaultFilteringDelegate = new FilteringDelegate<T>() {
        public boolean changeFilteringKeyword(String str) {
            String unused = EditableListFragment.this.mSearchText = str;
            return true;
        }

        public String[] getFilteringKeyword(EditableListFragmentImpl<T> editableListFragmentImpl) {
            if (EditableListFragment.this.mSearchText == null || EditableListFragment.this.mSearchText.length() <= 0) {
                return null;
            }
            return EditableListFragment.this.mSearchText.split(" ");
        }
    };
    private int mDefaultOrderingCriteria = 100;
    private float mDefaultPaddingDecorationSize = -1.0f;
    private SelectionCallback<T> mDefaultSelectionCallback;
    private PowerfulActionMode.SelectorConnection<T> mDefaultSelectionConnection;
    private int mDefaultSortingCriteria = 100;
    private int mDefaultViewingGridSize = 1;
    private int mDefaultViewingGridSizeLandscape = 1;
    private int mDividerResId = R.id.abstract_layout_fast_scroll_recyclerview_bottom_divider;
    private FastScroller mFastScroller;
    private FilteringDelegate<T> mFilteringDelegate;
    private boolean mFilteringSupported = false;
    private LayoutClickListener<V> mLayoutClickListener;
    private ContentObserver mObserver;
    private Map<String, Integer> mOrderingOptions = new ArrayMap();
    private Snackbar mRefreshDelayedSnackbar;
    private boolean mRefreshRequested = false;
    /* access modifiers changed from: private */
    public String mSearchText;
    private SelectionCallback<T> mSelectionCallback;
    private PowerfulActionMode.SelectorConnection<T> mSelectionConnection;
    private Map<String, Integer> mSortingOptions = new ArrayMap();
    private boolean mSortingSupported = true;
    private boolean mUseDefaultPaddingDecoration = false;
    private boolean mUseDefaultPaddingDecorationSpaceForEdges = true;

    public interface FilteringDelegate<T extends Editable> {
        boolean changeFilteringKeyword(String str);

        String[] getFilteringKeyword(EditableListFragmentImpl<T> editableListFragmentImpl);
    }

    public interface LayoutClickListener<V extends EditableListAdapter.EditableViewHolder> {
        boolean onLayoutClick(EditableListFragment editableListFragment, V v, boolean z);
    }

    public boolean isRefreshLocked() {
        return false;
    }

    public abstract boolean onDefaultClickAction(V v);

    public boolean onDefaultLongClickAction(V v) {
        return false;
    }

    public int onGridSpanSize(int i, int i2) {
        return 1;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((EditableListAdapter) getAdapter()).setFragment(this);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (!(getPowerfulActionMode() == null || getSelectionCallback() == null)) {
            setDefaultSelectionConnection(new PowerfulActionMode.SelectorConnection(getPowerfulActionMode(), getSelectionCallback()));
        }
        setHasOptionsMenu(true);
        if (this.mUseDefaultPaddingDecoration) {
            float f = this.mDefaultPaddingDecorationSize;
            if (f <= -1.0f) {
                f = getResources().getDimension(R.dimen.padding_list_content_parent_layout);
            }
            getListView().addItemDecoration(new PaddingItemDecoration((int) f, this.mUseDefaultPaddingDecorationSpaceForEdges, isHorizontalOrientation()));
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((EditableListAdapter) getAdapter()).notifyGridSizeUpdate(getViewingGridSize(), isScreenLarge());
        ((EditableListAdapter) getAdapter()).setSortingCriteria(getSortingCriteria(), getOrderingCriteria());
        getFastScroller().setViewProvider(new LongTextBubbleFastScrollViewProvider());
        setDividerVisible(true);
        getListView().addOnItemTouchListener(new SwipeTouchSelectionListener(this));
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(View view, ViewGroup viewGroup) {
        super.onListView(view, viewGroup);
        View inflate = getLayoutInflater().inflate(R.layout.abstract_layout_fast_scroll_recyclerview_container, (ViewGroup) null, false);
        RecyclerView onListView = onListView((ViewGroup) inflate.findViewById(R.id.abstract_layout_fast_scroll_recyclerview_container));
        this.mFastScroller = (FastScroller) inflate.findViewById(R.id.abstract_layout_fast_scroll_recyclerview_fastscroll_view);
        onListView.setLayoutManager(onLayoutManager());
        viewGroup.addView(inflate);
        return onListView;
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(ViewGroup viewGroup) {
        RecyclerView recyclerView = (RecyclerView) getLayoutInflater().inflate(R.layout.abstract_recyclerview, (ViewGroup) null, false);
        viewGroup.addView(recyclerView);
        return recyclerView;
    }

    public boolean onSetListAdapter(E e) {
        if (!super.onSetListAdapter(e)) {
            return false;
        }
        this.mFastScroller.setRecyclerView(getListView());
        return true;
    }

    public void onResume() {
        super.onResume();
        refreshList();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_abs_editable_list, menu);
        MenuItem findItem = menu.findItem(R.id.actions_abs_editable_filter);
        if (findItem != null) {
            findItem.setVisible(this.mFilteringSupported);
            if (this.mFilteringSupported) {
                View actionView = findItem.getActionView();
                if (actionView instanceof SearchView) {
                    ((SearchView) actionView).setOnQueryTextListener(new SearchView.OnQueryTextListener() {
                        public boolean onQueryTextSubmit(String str) {
                            EditableListFragment.this.refreshList();
                            return true;
                        }

                        public boolean onQueryTextChange(String str) {
                            String unused = EditableListFragment.this.mSearchText = str;
                            EditableListFragment.this.refreshList();
                            return true;
                        }
                    });
                }
            }
        }
        MenuItem findItem2 = menu.findItem(R.id.actions_abs_editable_grid_size);
        if (findItem2 != null) {
            SubMenu subMenu = findItem2.getSubMenu();
            int i = 1;
            while (true) {
                if (i >= (isScreenLandscape() ? 7 : 5)) {
                    break;
                }
                subMenu.add(R.id.actions_abs_editable_group_grid_size, 0, i, getContext().getResources().getQuantityString(R.plurals.text_gridRow, i, new Object[]{Integer.valueOf(i)}));
                i++;
            }
            subMenu.setGroupCheckable(R.id.actions_abs_editable_group_grid_size, true, true);
        }
        ArrayMap arrayMap = new ArrayMap();
        onSortingOptions(arrayMap);
        if (arrayMap.size() > 0) {
            this.mSortingOptions.clear();
            this.mSortingOptions.putAll(arrayMap);
            applyDynamicMenuItems(menu.findItem(R.id.actions_abs_editable_sort_by), R.id.actions_abs_editable_group_sorting, this.mSortingOptions);
            ArrayMap arrayMap2 = new ArrayMap();
            onOrderingOptions(arrayMap2);
            if (arrayMap2.size() > 0) {
                this.mOrderingOptions.clear();
                this.mOrderingOptions.putAll(arrayMap2);
                applyDynamicMenuItems(menu.findItem(R.id.actions_abs_editable_order_by), R.id.actions_abs_editable_group_sort_order, this.mOrderingOptions);
            }
        }
    }

    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.actions_abs_editable_sort_by).setEnabled(isSortingSupported());
        MenuItem findItem = menu.findItem(R.id.actions_abs_editable_multi_select);
        if (findItem != null && (getSelectionConnection() == null || !((PowerfulActionMode) getSelectionConnection().getMode()).getEngineToolbar().isFinishAllowed())) {
            findItem.setVisible(false);
        }
        if (!((EditableListAdapter) getAdapter()).isGridSupported()) {
            menu.findItem(R.id.actions_abs_editable_grid_size).setVisible(false);
        }
        MenuItem findItem2 = menu.findItem(R.id.actions_abs_editable_sort_by);
        if (findItem2 != null) {
            findItem2.setVisible(this.mSortingSupported);
            if (findItem2.isVisible()) {
                checkPreferredDynamicItem(findItem2, getSortingCriteria(), this.mSortingOptions);
                MenuItem findItem3 = menu.findItem(R.id.actions_abs_editable_order_by);
                if (findItem3 != null) {
                    checkPreferredDynamicItem(findItem3, getOrderingCriteria(), this.mOrderingOptions);
                }
            }
        }
        MenuItem findItem4 = menu.findItem(R.id.actions_abs_editable_grid_size);
        if (findItem4 != null) {
            SubMenu subMenu = findItem4.getSubMenu();
            int viewingGridSize = getViewingGridSize() - 1;
            if (viewingGridSize < subMenu.size()) {
                subMenu.getItem(viewingGridSize).setChecked(true);
            }
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int groupId = menuItem.getGroupId();
        if (itemId == R.id.actions_abs_editable_multi_select && getSelectionCallback() != null) {
            ((PowerfulActionMode) getSelectionConnection().getMode()).start(getSelectionCallback());
        } else if (groupId == R.id.actions_abs_editable_group_sorting) {
            changeSortingCriteria(menuItem.getOrder());
        } else if (groupId == R.id.actions_abs_editable_group_sort_order) {
            changeOrderingCriteria(menuItem.getOrder());
        } else if (groupId == R.id.actions_abs_editable_group_grid_size) {
            changeGridViewSize(menuItem.getOrder());
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void onSortingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_sortByName), 100);
        map.put(getString(R.string.text_sortByDate), 110);
        map.put(getString(R.string.text_sortBySize), 120);
    }

    public void onOrderingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_sortOrderAscending), 100);
        map.put(getString(R.string.text_sortOrderDescending), 110);
    }

    public void onPrepareDetach() {
        if (getPowerfulActionMode() != null && getSelectionCallback() != null) {
            getPowerfulActionMode().finish((PowerfulActionMode.Callback) getSelectionCallback());
        }
    }

    public RecyclerView.LayoutManager onLayoutManager() {
        GridLayoutManager gridLayoutManager;
        RecyclerView.LayoutManager onLayoutManager = super.onLayoutManager();
        final int viewingGridSize = getViewingGridSize();
        if (viewingGridSize <= 1) {
            viewingGridSize = (((EditableListAdapter) getAdapter()).isGridSupported() || !isScreenLarge() || isHorizontalOrientation()) ? 1 : 2;
        }
        if (onLayoutManager instanceof GridLayoutManager) {
            gridLayoutManager = (GridLayoutManager) onLayoutManager;
            gridLayoutManager.setSpanCount(viewingGridSize);
        } else {
            gridLayoutManager = new GridLayoutManager(getContext(), viewingGridSize);
        }
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() {
            public int getSpanSize(int i) {
                int itemViewType = ((EditableListAdapter) EditableListFragment.this.getAdapter()).getItemViewType(i);
                if (itemViewType == 0) {
                    return 1;
                }
                return EditableListFragment.this.onGridSpanSize(itemViewType, viewingGridSize);
            }
        });
        return gridLayoutManager;
    }

    /* access modifiers changed from: protected */
    public void applyDynamicMenuItems(MenuItem menuItem, int i, Map<String, Integer> map) {
        if (menuItem != null) {
            menuItem.setVisible(true);
            SubMenu subMenu = menuItem.getSubMenu();
            for (String next : map.keySet()) {
                subMenu.add(i, 0, map.get(next).intValue(), next);
            }
            subMenu.setGroupCheckable(i, true, true);
        }
    }

    public boolean applyViewingChanges(int i) {
        if (!((EditableListAdapter) getAdapter()).isGridSupported()) {
            return false;
        }
        ((EditableListAdapter) getAdapter()).notifyGridSizeUpdate(i, isScreenLarge());
        getListView().setLayoutManager(onLayoutManager());
        getListView().setAdapter((RecyclerView.Adapter) getAdapter());
        refreshList();
        return true;
    }

    public void changeGridViewSize(int i) {
        SharedPreferences.Editor edit = getViewPreferences().edit();
        StringBuilder sb = new StringBuilder();
        sb.append("GridSize");
        sb.append(isScreenLandscape() ? "Landscape" : "");
        edit.putInt(getUniqueSettingKey(sb.toString()), i).apply();
        applyViewingChanges(i);
    }

    public void changeOrderingCriteria(int i) {
        getViewPreferences().edit().putInt(getUniqueSettingKey("SortOrder"), i).apply();
        ((EditableListAdapter) getAdapter()).setSortingCriteria(getSortingCriteria(), i);
        refreshList();
    }

    public void changeSortingCriteria(int i) {
        getViewPreferences().edit().putInt(getUniqueSettingKey("SortBy"), i).apply();
        ((EditableListAdapter) getAdapter()).setSortingCriteria(i, getOrderingCriteria());
        refreshList();
    }

    public void checkPreferredDynamicItem(MenuItem menuItem, int i, Map<String, Integer> map) {
        if (menuItem != null) {
            SubMenu subMenu = menuItem.getSubMenu();
            for (String next : map.keySet()) {
                if (map.get(next).intValue() == i) {
                    int i2 = 0;
                    while (true) {
                        MenuItem item = subMenu.getItem(i2);
                        if (item == null) {
                            return;
                        }
                        if (next.equals(String.valueOf(item.getTitle()))) {
                            item.setChecked(true);
                            return;
                        }
                        i2++;
                    }
                }
            }
        }
    }

    public EditableListAdapterImpl<T> getAdapterImpl() {
        return (EditableListAdapterImpl) getAdapter();
    }

    public ContentObserver getDefaultContentObserver() {
        if (this.mObserver == null) {
            this.mObserver = new ContentObserver(new Handler(Looper.myLooper())) {
                public boolean deliverSelfNotifications() {
                    return true;
                }

                public void onChange(boolean z) {
                    EditableListFragment.this.refreshList();
                }
            };
        }
        return this.mObserver;
    }

    public FilteringDelegate<T> getFilteringDelegate() {
        FilteringDelegate<T> filteringDelegate = this.mFilteringDelegate;
        return filteringDelegate == null ? this.mDefaultFilteringDelegate : filteringDelegate;
    }

    public void setFilteringDelegate(FilteringDelegate<T> filteringDelegate) {
        this.mFilteringDelegate = filteringDelegate;
    }

    public FastScroller getFastScroller() {
        return this.mFastScroller;
    }

    public int getOrderingCriteria() {
        return getViewPreferences().getInt(getUniqueSettingKey("SortOrder"), this.mDefaultOrderingCriteria);
    }

    public String getUniqueSettingKey(String str) {
        return getClass().getSimpleName() + "_" + str;
    }

    public PowerfulActionMode.SelectorConnection<T> getSelectionConnection() {
        PowerfulActionMode.SelectorConnection<T> selectorConnection = this.mSelectionConnection;
        return selectorConnection == null ? this.mDefaultSelectionConnection : selectorConnection;
    }

    public SelectionCallback<T> getSelectionCallback() {
        SelectionCallback<T> selectionCallback = this.mSelectionCallback;
        return selectionCallback == null ? this.mDefaultSelectionCallback : selectionCallback;
    }

    public void setSelectionCallback(SelectionCallback<T> selectionCallback) {
        this.mSelectionCallback = selectionCallback;
    }

    public int getSortingCriteria() {
        return getViewPreferences().getInt(getUniqueSettingKey("SortBy"), this.mDefaultSortingCriteria);
    }

    public PowerfulActionMode getPowerfulActionMode() {
        if (getActivity() == null || !(getActivity() instanceof PowerfulActionModeSupport)) {
            return null;
        }
        return ((PowerfulActionModeSupport) getActivity()).getPowerfulActionMode();
    }

    public SharedPreferences getViewPreferences() {
        return AppUtils.getViewingPreferences(getContext());
    }

    public int getViewingGridSize() {
        if (getViewPreferences() == null) {
            return 1;
        }
        if (isScreenLandscape()) {
            return getViewPreferences().getInt(getUniqueSettingKey("GridSizeLandscape"), this.mDefaultViewingGridSizeLandscape);
        }
        return getViewPreferences().getInt(getUniqueSettingKey("GridSize"), this.mDefaultViewingGridSize);
    }

    public int getActiveViewingGridSize() {
        if (getListView().getLayoutManager() instanceof GridLayoutManager) {
            return ((GridLayoutManager) getListView().getLayoutManager()).getSpanCount();
        }
        return 1;
    }

    public boolean isRefreshRequested() {
        return this.mRefreshRequested;
    }

    public void setRefreshRequested(boolean z) {
        this.mRefreshRequested = z;
    }

    public boolean isSortingSupported() {
        return this.mSortingSupported;
    }

    public void setSortingSupported(boolean z) {
        this.mSortingSupported = z;
    }

    public boolean loadIfRequested() {
        boolean isRefreshRequested = isRefreshRequested();
        setRefreshRequested(false);
        if (isRefreshRequested) {
            refreshList();
        }
        return isRefreshRequested;
    }

    public boolean openUri(Uri uri) {
        return FileUtils.openUri(getContext(), uri);
    }

    public boolean performLayoutClick(V v) {
        LayoutClickListener<V> layoutClickListener;
        if (setItemSelected(v) || (((layoutClickListener = this.mLayoutClickListener) != null && layoutClickListener.onLayoutClick(this, v, false)) || onDefaultClickAction(v))) {
            return true;
        }
        return false;
    }

    public boolean performLayoutLongClick(V v) {
        LayoutClickListener<V> layoutClickListener = this.mLayoutClickListener;
        if ((layoutClickListener != null && layoutClickListener.onLayoutClick(this, v, true)) || onDefaultLongClickAction(v)) {
            return true;
        }
        if (getSelectionConnection() == null || !getSelectionConnection().setSelected((RecyclerView.ViewHolder) v)) {
            return false;
        }
        return true;
    }

    public boolean performLayoutClickOpen(V v) {
        try {
            Editable item = ((EditableListAdapter) getAdapter()).getItem(v);
            if (item instanceof Shareable) {
                return openUri(((Shareable) item).uri);
            }
            return false;
        } catch (NotReadyException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void registerLayoutViewClicks(final V v) {
        v.getClickableView().setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                EditableListFragment.this.performLayoutClick(v);
            }
        });
        v.getClickableView().setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View view) {
                return EditableListFragment.this.performLayoutLongClick(v);
            }
        });
    }

    public void refreshList() {
        if (isRefreshLocked()) {
            setRefreshRequested(true);
            if (this.mRefreshDelayedSnackbar == null) {
                Snackbar createSnackbar = createSnackbar(R.string.mesg_listRefreshSnoozed, new Object[0]);
                this.mRefreshDelayedSnackbar = createSnackbar;
                createSnackbar.setDuration(0);
            }
            this.mRefreshDelayedSnackbar.show();
            return;
        }
        super.refreshList();
        Snackbar snackbar = this.mRefreshDelayedSnackbar;
        if (snackbar != null) {
            snackbar.dismiss();
            this.mRefreshDelayedSnackbar = null;
        }
    }

    public void setDefaultPaddingDecorationSize(float f) {
        this.mDefaultPaddingDecorationSize = f;
    }

    public void setDefaultOrderingCriteria(int i) {
        this.mDefaultOrderingCriteria = i;
    }

    public void setDefaultSelectionCallback(SelectionCallback<T> selectionCallback) {
        this.mDefaultSelectionCallback = selectionCallback;
    }

    public void setDefaultSelectionConnection(PowerfulActionMode.SelectorConnection<T> selectorConnection) {
        this.mDefaultSelectionConnection = selectorConnection;
    }

    public void setDefaultSortingCriteria(int i) {
        this.mDefaultSortingCriteria = i;
    }

    public void setDefaultViewingGridSize(int i, int i2) {
        this.mDefaultViewingGridSize = i;
        this.mDefaultViewingGridSizeLandscape = i2;
    }

    public void setDividerVisible(boolean z) {
        if (getView() != null) {
            getView().findViewById(this.mDividerResId).setVisibility(z ? 0 : 8);
        }
    }

    public void setDividerView(int i) {
        this.mDividerResId = i;
    }

    public boolean setItemSelected(V v) {
        return getSelectionCallback() != null && getSelectionCallback().setItemSelected(v.getAdapterPosition());
    }

    public void setLayoutClickListener(LayoutClickListener<V> layoutClickListener) {
        this.mLayoutClickListener = layoutClickListener;
    }

    public void setFilteringSupported(boolean z) {
        this.mFilteringSupported = z;
    }

    public void setSelectorConnection(PowerfulActionMode.SelectorConnection<T> selectorConnection) {
        this.mSelectionConnection = selectorConnection;
    }

    public void setUseDefaultPaddingDecoration(boolean z) {
        this.mUseDefaultPaddingDecoration = z;
    }

    public void setUseDefaultPaddingDecorationSpaceForEdges(boolean z) {
        this.mUseDefaultPaddingDecorationSpaceForEdges = z;
    }

    public static class SelectionCallback<T extends Editable> implements PowerfulActionMode.Callback<T> {
        /* access modifiers changed from: private */
        public EditableListFragmentImpl<T> mFragment;

        public SelectionCallback(EditableListFragmentImpl<T> editableListFragmentImpl) {
            updateProvider(editableListFragmentImpl);
        }

        public EditableListAdapterImpl<T> getAdapter() {
            return this.mFragment.getAdapterImpl();
        }

        public EditableListFragmentImpl<T> getFragment() {
            return this.mFragment;
        }

        public boolean isSelectionActivated() {
            return this.mFragment.getSelectionConnection() != null && this.mFragment.getSelectionConnection().selectionActive();
        }

        public List<T> getSelectableList() {
            return getAdapter().getList();
        }

        public boolean setItemSelected(int i) {
            return isSelectionActivated() && this.mFragment.getSelectionConnection().setSelected(i);
        }

        public void setSelection(boolean z, List<T> list) {
            for (T selected : list) {
                this.mFragment.getSelectionConnection().setSelected(selected, z);
            }
        }

        public boolean setSelection() {
            boolean z = this.mFragment.getSelectionConnection().getSelectedItemList().size() != getSelectableList().size();
            setSelection(z);
            return z;
        }

        public void setSelection(boolean z) {
            setSelection(z, getSelectableList());
            getAdapter().syncSelectionList();
            getAdapter().notifyItemRangeChanged(0, getSelectableList().size());
        }

        public void updateProvider(EditableListFragmentImpl<T> editableListFragmentImpl) {
            this.mFragment = editableListFragmentImpl;
        }

        private void updateSelectionTitle(PowerfulActionMode powerfulActionMode) {
            powerfulActionMode.setTitle((CharSequence) String.valueOf(this.mFragment.getSelectionConnection().getSelectedItemList().size()));
        }

        public boolean onPrepareActionMenu(Context context, PowerfulActionMode powerfulActionMode) {
            updateSelectionTitle(powerfulActionMode);
            return true;
        }

        public boolean onCreateActionMenu(Context context, PowerfulActionMode powerfulActionMode, Menu menu) {
            powerfulActionMode.getMenuInflater().inflate(R.menu.action_mode_abs_editable, menu);
            return false;
        }

        public void onItemChecked(Context context, PowerfulActionMode powerfulActionMode, T t, int i) {
            updateSelectionTitle(powerfulActionMode);
            if (i != -1) {
                getAdapter().syncSelectionList();
                getAdapter().notifyItemChanged(i);
            }
        }

        public boolean onActionMenuItemSelected(Context context, PowerfulActionMode powerfulActionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            if (itemId == R.id.action_mode_abs_editable_select_all) {
                setSelection(true);
            } else if (itemId == R.id.action_mode_abs_editable_select_none) {
                setSelection(false);
            } else if (itemId == R.id.action_mode_abs_editable_preview_selections) {
                new SelectionEditorDialog(this.mFragment.getActivity(), this.mFragment.getSelectionConnection().getSelectedItemList()).setOnDismissListener(new DialogInterface.OnDismissListener() {
                    public void onDismiss(DialogInterface dialogInterface) {
                        for (Editable editable : new ArrayList(SelectionCallback.this.mFragment.getSelectionConnection().getSelectedItemList())) {
                            if (!editable.isSelectableSelected()) {
                                SelectionCallback.this.mFragment.getSelectionConnection().setSelected(editable, false);
                            }
                        }
                        SelectionCallback.this.getAdapter().notifyAllSelectionChanges();
                    }
                }).show();
            }
            return false;
        }

        public void onFinish(Context context, PowerfulActionMode powerfulActionMode) {
            setSelection(false);
            this.mFragment.getSelectionConnection().getSelectedItemList().clear();
            this.mFragment.loadIfRequested();
        }
    }
}
