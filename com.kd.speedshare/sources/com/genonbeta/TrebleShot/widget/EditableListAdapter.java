package com.genonbeta.TrebleShot.widget;

import android.content.Context;
import android.text.format.DateUtils;
import android.view.View;
import com.genonbeta.TrebleShot.app.EditableListFragmentImpl;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter.EditableViewHolder;
import com.genonbeta.android.framework.util.MathUtils;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.genonbeta.android.framework.widget.recyclerview.fastscroll.SectionTitleProvider;
import com.kd.speedshare.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public abstract class EditableListAdapter<T extends Editable, V extends EditableViewHolder> extends RecyclerViewAdapter<T, V> implements EditableListAdapterImpl<T>, SectionTitleProvider {
    public static final int MODE_SORT_BY_DATE = 110;
    public static final int MODE_SORT_BY_NAME = 100;
    public static final int MODE_SORT_BY_SIZE = 120;
    public static final int MODE_SORT_ORDER_ASCENDING = 100;
    public static final int MODE_SORT_ORDER_DESCENDING = 110;
    public static final int VIEW_TYPE_DEFAULT = 0;
    private EditableListFragmentImpl<T> mFragment;
    private Comparator<T> mGeneratedComparator;
    private boolean mGridLayoutRequested = false;
    private List<T> mItemList = new ArrayList();
    private int mSortingCriteria = 100;
    private int mSortingOrderAscending = 100;

    public int compareItems(int i, int i2, T t, T t2) {
        return 1;
    }

    public int getItemViewType(int i) {
        return 0;
    }

    public boolean isGridSupported() {
        return false;
    }

    public EditableListAdapter(Context context) {
        super(context);
        setHasStableIds(true);
    }

    public void onUpdate(List<T> list) {
        synchronized (getItemList()) {
            this.mItemList.clear();
            this.mItemList.addAll(list);
            syncSelectionList(getItemList());
        }
    }

    public boolean filterItem(T t) {
        String[] filteringKeyword = getFragment().getFilteringDelegate().getFilteringKeyword(getFragment());
        return filteringKeyword == null || filteringKeyword.length <= 0 || t.applyFilter(filteringKeyword);
    }

    public int getCount() {
        return getItemList().size();
    }

    public Comparator<T> getDefaultComparator() {
        if (this.mGeneratedComparator == null) {
            this.mGeneratedComparator = new Comparator<T>() {
                Collator mCollator;

                public Collator getCollator() {
                    if (this.mCollator == null) {
                        Collator instance = Collator.getInstance();
                        this.mCollator = instance;
                        instance.setStrength(2);
                    }
                    return this.mCollator;
                }

                public int compare(T t, T t2) {
                    boolean z = EditableListAdapter.this.getSortingOrder(t, t2) == 100;
                    T t3 = z ? t : t2;
                    T t4 = z ? t2 : t;
                    if ((t3.comparisonSupported() == t4.comparisonSupported() && !t3.comparisonSupported()) || !t.comparisonSupported()) {
                        return 1;
                    }
                    if (!t2.comparisonSupported()) {
                        return -1;
                    }
                    int sortingCriteria = EditableListAdapter.this.getSortingCriteria(t, t2);
                    if (sortingCriteria == 100) {
                        return getCollator().compare(t3.getComparableName(), t4.getComparableName());
                    }
                    if (sortingCriteria == 110) {
                        return MathUtils.compare(t3.getComparableDate(), t4.getComparableDate());
                    }
                    if (sortingCriteria == 120) {
                        return MathUtils.compare(t3.getComparableSize(), t4.getComparableSize());
                    }
                    EditableListAdapter editableListAdapter = EditableListAdapter.this;
                    return editableListAdapter.compareItems(editableListAdapter.getSortingCriteria(), EditableListAdapter.this.getSortingOrder(), t3, t4);
                }
            };
        }
        return this.mGeneratedComparator;
    }

    public EditableListFragmentImpl<T> getFragment() {
        return this.mFragment;
    }

    public void setFragment(EditableListFragmentImpl<T> editableListFragmentImpl) {
        this.mFragment = editableListFragmentImpl;
    }

    public int getItemCount() {
        return getCount();
    }

    public T getItem(int i) throws NotReadyException {
        if (i < getCount() && i >= 0) {
            return (Editable) getList().get(i);
        }
        throw new NotReadyException("The list does not contain  this index: " + i);
    }

    public T getItem(V v) throws NotReadyException {
        return getItem(v.getAdapterPosition());
    }

    public long getItemId(int i) {
        try {
            return getItem(i).getId();
        } catch (NotReadyException e) {
            e.printStackTrace();
            return (long) AppUtils.getUniqueNumber();
        }
    }

    public List<T> getItemList() {
        return this.mItemList;
    }

    public List<T> getList() {
        return getItemList();
    }

    public String getSectionTitle(int i) {
        try {
            return getSectionName(i, getItem(i));
        } catch (NotReadyException e) {
            e.printStackTrace();
            return getContext().getString(R.string.text_emptySymbol);
        }
    }

    public String getSectionName(int i, T t) {
        int sortingCriteria = getSortingCriteria();
        if (sortingCriteria == 100) {
            return getSectionNameTrimmedText(t.getComparableName());
        }
        if (sortingCriteria == 110) {
            return getSectionNameDate(t.getComparableDate());
        }
        if (sortingCriteria != 120) {
            return String.valueOf(i);
        }
        return FileUtils.sizeExpression(t.getComparableSize(), false);
    }

    public String getSectionNameDate(long j) {
        return String.valueOf(DateUtils.formatDateTime(getContext(), j, 16));
    }

    public String getSectionNameTrimmedText(String str) {
        return TextUtils.trimText(str, 1).toUpperCase();
    }

    public int getSortingCriteria(T t, T t2) {
        return getSortingCriteria();
    }

    public int getSortingCriteria() {
        return this.mSortingCriteria;
    }

    public int getSortingOrder(T t, T t2) {
        return getSortingOrder();
    }

    public int getSortingOrder() {
        return this.mSortingOrderAscending;
    }

    public boolean isGridLayoutRequested() {
        return this.mGridLayoutRequested;
    }

    public void notifyAllSelectionChanges() {
        syncSelectionList();
        notifyDataSetChanged();
    }

    public boolean notifyGridSizeUpdate(int i, boolean z) {
        boolean z2 = true;
        if ((z || i <= 1) && i <= 2) {
            z2 = false;
        }
        this.mGridLayoutRequested = z2;
        return z2;
    }

    public void setSortingCriteria(int i, int i2) {
        this.mSortingCriteria = i;
        this.mSortingOrderAscending = i2;
    }

    public synchronized void syncSelectionList() {
        synchronized (getItemList()) {
            syncSelectionList(getItemList());
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0033, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void syncSelectionList(java.util.List<T> r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl r0 = r2.getFragment()     // Catch:{ all -> 0x0034 }
            if (r0 == 0) goto L_0x0032
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl r0 = r2.getFragment()     // Catch:{ all -> 0x0034 }
            com.genonbeta.android.framework.widget.PowerfulActionMode$SelectorConnection r0 = r0.getSelectionConnection()     // Catch:{ all -> 0x0034 }
            if (r0 != 0) goto L_0x0012
            goto L_0x0032
        L_0x0012:
            java.util.Iterator r3 = r3.iterator()     // Catch:{ all -> 0x0034 }
        L_0x0016:
            boolean r0 = r3.hasNext()     // Catch:{ all -> 0x0034 }
            if (r0 == 0) goto L_0x0030
            java.lang.Object r0 = r3.next()     // Catch:{ all -> 0x0034 }
            com.genonbeta.TrebleShot.object.Editable r0 = (com.genonbeta.TrebleShot.object.Editable) r0     // Catch:{ all -> 0x0034 }
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl<T> r1 = r2.mFragment     // Catch:{ all -> 0x0034 }
            com.genonbeta.android.framework.widget.PowerfulActionMode$SelectorConnection r1 = r1.getSelectionConnection()     // Catch:{ all -> 0x0034 }
            boolean r1 = r1.isSelected(r0)     // Catch:{ all -> 0x0034 }
            r0.setSelectableSelected(r1)     // Catch:{ all -> 0x0034 }
            goto L_0x0016
        L_0x0030:
            monitor-exit(r2)
            return
        L_0x0032:
            monitor-exit(r2)
            return
        L_0x0034:
            r3 = move-exception
            monitor-exit(r2)
            goto L_0x0038
        L_0x0037:
            throw r3
        L_0x0038:
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.widget.EditableListAdapter.syncSelectionList(java.util.List):void");
    }

    public static class EditableViewHolder extends RecyclerViewAdapter.ViewHolder {
        private View mClickableView;

        public EditableViewHolder(View view) {
            super(view);
        }

        public View getClickableView() {
            View view = this.mClickableView;
            return view == null ? getView() : view;
        }

        public EditableViewHolder setClickableView(int i) {
            return setClickableView(getView().findViewById(i));
        }

        public EditableViewHolder setClickableView(View view) {
            this.mClickableView = view;
            return this;
        }
    }
}
