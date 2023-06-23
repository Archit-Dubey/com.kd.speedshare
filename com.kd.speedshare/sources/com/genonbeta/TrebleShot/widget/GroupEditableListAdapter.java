package com.genonbeta.TrebleShot.widget;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.TextView;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.TrebleShot.object.Shareable;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupEditable;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupViewHolder;
import com.genonbeta.android.framework.util.date.DateMerger;
import com.genonbeta.android.framework.util.listing.ComparableMerger;
import com.genonbeta.android.framework.util.listing.Lister;
import com.genonbeta.android.framework.util.listing.Merger;
import com.genonbeta.android.framework.util.listing.merger.StringMerger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class GroupEditableListAdapter<T extends GroupEditable, V extends GroupViewHolder> extends EditableListAdapter<T, V> {
    public static final int MODE_GROUP_BY_DATE = 110;
    public static final int MODE_GROUP_BY_NOTHING = 100;
    public static final int VIEW_TYPE_ACTION_BUTTON = 110;
    public static final int VIEW_TYPE_REPRESENTATIVE = 100;
    private int mGroupBy;

    public interface GroupEditable extends Editable {
        String getRepresentativeText();

        int getRequestCode();

        int getViewType();

        boolean isGroupRepresentative();

        void setDate(long j);

        void setRepresentativeText(CharSequence charSequence);

        void setSize(long j);
    }

    /* access modifiers changed from: protected */
    public abstract T onGenerateRepresentative(String str);

    /* access modifiers changed from: protected */
    public abstract void onLoad(GroupLister<T> groupLister);

    public GroupEditableListAdapter(Context context, int i) {
        super(context);
        this.mGroupBy = i;
    }

    public List<T> onLoad() {
        ArrayList arrayList = new ArrayList();
        GroupLister createLister = createLister(arrayList, getGroupBy());
        onLoad(createLister);
        if (createLister.getList().size() > 0) {
            Collections.sort(createLister.getList(), new Comparator<ComparableMerger<T>>() {
                public int compare(ComparableMerger<T> comparableMerger, ComparableMerger<T> comparableMerger2) {
                    return comparableMerger2.compareTo(comparableMerger);
                }
            });
            for (ComparableMerger comparableMerger : createLister.getList()) {
                Collections.sort(comparableMerger.getBelongings(), getDefaultComparator());
                GroupEditable onGenerateRepresentative = onGenerateRepresentative(getRepresentativeText(comparableMerger));
                GroupEditable groupEditable = (GroupEditable) comparableMerger.getBelongings().get(0);
                if (onGenerateRepresentative != null) {
                    arrayList.add(onGenerateRepresentative);
                }
                onGenerateRepresentative.setSize((long) comparableMerger.getBelongings().size());
                onGenerateRepresentative.setDate(groupEditable.getComparableDate());
                onGenerateRepresentative.setId((long) (onGenerateRepresentative.getRepresentativeText().hashCode() ^ -1));
                arrayList.addAll(comparableMerger.getBelongings());
            }
        } else {
            Collections.sort(arrayList, getDefaultComparator());
        }
        return arrayList;
    }

    public GroupLister<T> createLister(List<T> list, int i) {
        return new GroupLister<>(list, i);
    }

    public int getGroupBy() {
        return this.mGroupBy;
    }

    public void setGroupBy(int i) {
        this.mGroupBy = i;
    }

    public int getItemViewType(int i) {
        try {
            return ((GroupEditable) getItem(i)).getViewType();
        } catch (NotReadyException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getRepresentativeText(Merger merger) {
        if (merger instanceof DateMerger) {
            return String.valueOf(getSectionNameDate(((DateMerger) merger).getTime()));
        }
        if (merger instanceof StringMerger) {
            return ((StringMerger) merger).getString();
        }
        return merger.toString();
    }

    public String getSectionName(int i, T t) {
        if (t.isGroupRepresentative()) {
            return t.getRepresentativeText();
        }
        if (getGroupBy() != 110) {
            return super.getSectionName(i, t);
        }
        return getSectionNameDate(t.getComparableDate());
    }

    public static class GroupShareable extends Shareable implements GroupEditable {
        public String representativeText;
        public int viewType = 0;

        public int getRequestCode() {
            return 0;
        }

        public GroupShareable() {
        }

        public GroupShareable(int i, String str) {
            this.viewType = i;
            this.representativeText = str;
        }

        public GroupShareable(long j, String str, String str2, String str3, long j2, long j3, Uri uri) {
            super(j, str, str2, str3, j2, j3, uri);
        }

        public int getViewType() {
            return this.viewType;
        }

        public String getRepresentativeText() {
            return this.representativeText;
        }

        public void setRepresentativeText(CharSequence charSequence) {
            this.representativeText = String.valueOf(charSequence);
        }

        public boolean isGroupRepresentative() {
            return this.representativeText != null;
        }

        public void setDate(long j) {
            this.date = j;
        }

        public void setSize(long j) {
            this.size = j;
        }

        public boolean setSelectableSelected(boolean z) {
            return !isGroupRepresentative() && super.setSelectableSelected(z);
        }

        public boolean searchMatches(String str) {
            if (isGroupRepresentative()) {
                return TextUtils.searchWord(this.representativeText, str);
            }
            return super.searchMatches(str);
        }
    }

    public static class GroupViewHolder extends EditableListAdapter.EditableViewHolder {
        private TextView mRepresentativeText;
        private int mRequestCode;

        public GroupViewHolder(View view, TextView textView) {
            super(view);
            this.mRepresentativeText = textView;
        }

        public GroupViewHolder(View view, int i) {
            this(view, (TextView) view.findViewById(i));
        }

        public GroupViewHolder(View view) {
            super(view);
        }

        public TextView getRepresentativeText() {
            return this.mRepresentativeText;
        }

        public int getRequestCode() {
            return this.mRequestCode;
        }

        public GroupViewHolder setRequestCode(int i) {
            this.mRequestCode = i;
            return this;
        }

        public boolean isRepresentative() {
            return this.mRepresentativeText != null;
        }

        public boolean tryBinding(GroupEditable groupEditable) {
            if (getRepresentativeText() == null || groupEditable.getRepresentativeText() == null) {
                return false;
            }
            getRepresentativeText().setText(groupEditable.getRepresentativeText());
            setRequestCode(groupEditable.getRequestCode());
            return true;
        }
    }

    public static class GroupLister<T extends GroupEditable> extends Lister<T, ComparableMerger<T>> {
        private CustomGroupLister<T> mCustomLister;
        private int mMode;
        private List<T> mNoGroupingList;

        public interface CustomGroupLister<T extends GroupEditable> {
            boolean onCustomGroupListing(GroupLister<T> groupLister, int i, T t);
        }

        public GroupLister(List<T> list, int i) {
            this.mNoGroupingList = list;
            this.mMode = i;
        }

        public GroupLister(List<T> list, int i, CustomGroupLister<T> customGroupLister) {
            this(list, i);
            this.mCustomLister = customGroupLister;
        }

        public void offerObliged(EditableListAdapterImpl<T> editableListAdapterImpl, T t) {
            if (editableListAdapterImpl.filterItem(t)) {
                offer(t);
            }
        }

        public void offer(T t) {
            CustomGroupLister<T> customGroupLister;
            int i = this.mMode;
            if (i == 110) {
                offer(t, new DateMerger(t.getComparableDate()));
            } else if (i == 100 || (customGroupLister = this.mCustomLister) == null || !customGroupLister.onCustomGroupListing(this, i, t)) {
                this.mNoGroupingList.add(t);
            }
        }

        public GroupLister<T> setCustomLister(CustomGroupLister<T> customGroupLister) {
            this.mCustomLister = customGroupLister;
            return this;
        }
    }
}
