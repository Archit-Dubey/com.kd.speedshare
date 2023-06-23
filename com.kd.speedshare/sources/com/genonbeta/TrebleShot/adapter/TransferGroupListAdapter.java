package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.ImageViewCompat;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.SQLQuery;
import com.kd.speedshare.R;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

public class TransferGroupListAdapter extends GroupEditableListAdapter<PreloadedGroup, GroupEditableListAdapter.GroupViewHolder> {
    private int mColorDone;
    private int mColorError;
    private int mColorPending;
    private AccessDatabase mDatabase;
    private NumberFormat mPercentFormat;
    private final List<Long> mRunningTasks = new ArrayList();
    private SQLQuery.Select mSelect;

    public TransferGroupListAdapter(Context context, AccessDatabase accessDatabase) {
        super(context, 110);
        this.mDatabase = accessDatabase;
        this.mPercentFormat = NumberFormat.getPercentInstance();
        this.mColorPending = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorControlNormal));
        this.mColorDone = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorAccent));
        this.mColorError = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorError));
        setSelect(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERGROUP, new String[0]));
    }

    /* access modifiers changed from: protected */
    public void onLoad(GroupEditableListAdapter.GroupLister<PreloadedGroup> groupLister) {
        String str;
        ArrayList arrayList = new ArrayList(this.mRunningTasks);
        for (PreloadedGroup next : this.mDatabase.castQuery(getSelect(), PreloadedGroup.class)) {
            this.mDatabase.calculateTransactionSize(next.groupId, next.index);
            StringBuilder sb = new StringBuilder();
            for (ShowingAssignee next2 : next.index.assignees) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(next2.device.nickname);
            }
            if (sb.length() == 0 && next.isServedOnWeb) {
                sb.append(getContext().getString(R.string.text_transferSharedOnBrowser));
            }
            sb.append(getContext().getColor(R.color.black_dominant));
            if (sb.length() > 0) {
                str = sb.toString();
            } else {
                str = getContext().getString(R.string.text_emptySymbol);
            }
            next.assignees = str;
            next.isRunning = arrayList.contains(Long.valueOf(next.groupId));
            next.totalCount = next.index.incomingCount + next.index.outgoingCount;
            next.totalBytes = next.index.incoming + next.index.outgoing;
            next.totalBytesCompleted = next.index.incomingCompleted + next.index.outgoingCompleted;
            next.totalCountCompleted = next.index.incomingCountCompleted + next.index.outgoingCountCompleted;
            next.totalPercent = (next.totalBytesCompleted == 0 || next.totalBytes == 0) ? 0.0d : Long.valueOf(next.totalBytesCompleted).doubleValue() / Long.valueOf(next.totalBytes).doubleValue();
            groupLister.offerObliged(this, next);
        }
    }

    /* access modifiers changed from: protected */
    public PreloadedGroup onGenerateRepresentative(String str) {
        return new PreloadedGroup(str);
    }

    public SQLQuery.Select getSelect() {
        return this.mSelect;
    }

    public TransferGroupListAdapter setSelect(SQLQuery.Select select) {
        if (select != null) {
            this.mSelect = select;
        }
        return this;
    }

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title_no_padding, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.list_transfer_group, viewGroup, false));
    }

    public void onBindViewHolder(GroupEditableListAdapter.GroupViewHolder groupViewHolder, int i) {
        int i2;
        try {
            PreloadedGroup preloadedGroup = (PreloadedGroup) getItem(i);
            if (!groupViewHolder.tryBinding(preloadedGroup)) {
                View view = groupViewHolder.getView();
                int i3 = (int) (preloadedGroup.totalPercent * 100.0d);
                ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.progressBar);
                ImageView imageView = (ImageView) view.findViewById(R.id.image);
                View findViewById = view.findViewById(R.id.statusLayoutWeb);
                TextView textView = (TextView) view.findViewById(R.id.text);
                TextView textView2 = (TextView) view.findViewById(R.id.text2);
                TextView textView3 = (TextView) view.findViewById(R.id.text3);
                TextView textView4 = (TextView) view.findViewById(R.id.text4);
                view.setSelected(preloadedGroup.isSelectableSelected());
                if (preloadedGroup.index.hasIssues) {
                    i2 = this.mColorError;
                } else {
                    i2 = preloadedGroup.totalCount == preloadedGroup.totalCountCompleted ? this.mColorDone : this.mColorPending;
                }
                if (preloadedGroup.isRunning) {
                    imageView.setImageResource(R.drawable.ic_pause_white_24dp);
                } else if (!(preloadedGroup.index.outgoingCount == 0 && preloadedGroup.index.incomingCount == 0) && (preloadedGroup.index.outgoingCount <= 0 || preloadedGroup.index.incomingCount <= 0)) {
                    imageView.setImageResource(preloadedGroup.index.outgoingCount > 0 ? R.drawable.ic_arrow_up_white_24dp : R.drawable.ic_arrow_down_white_24dp);
                } else {
                    imageView.setImageResource(preloadedGroup.index.outgoingCount > 0 ? R.drawable.ic_compare_arrows_white_24dp : R.drawable.ic_error_outline_white_24dp);
                }
                findViewById.setVisibility((preloadedGroup.index.outgoingCount <= 0 || !preloadedGroup.isServedOnWeb) ? 8 : 0);
                textView.setText(preloadedGroup.assignees);
                textView2.setText(FileUtils.sizeExpression(preloadedGroup.totalBytes, false));
                textView3.setText(this.mPercentFormat.format(preloadedGroup.totalPercent));
                textView4.setText(getContext().getString(R.string.text_transferStatusFiles, new Object[]{Integer.valueOf(preloadedGroup.totalCountCompleted), Integer.valueOf(preloadedGroup.totalCount)}));
                progressBar.setMax(100);
                if (i3 <= 0) {
                    i3 = 1;
                }
                progressBar.setProgress(i3);
                ImageViewCompat.setImageTintList(imageView, ColorStateList.valueOf(i2));
                if (Build.VERSION.SDK_INT < 21) {
                    Drawable wrap = DrawableCompat.wrap(progressBar.getProgressDrawable());
                    DrawableCompat.setTint(wrap, i2);
                    progressBar.setProgressDrawable(DrawableCompat.unwrap(wrap));
                    return;
                }
                progressBar.setProgressTintList(ColorStateList.valueOf(i2));
            }
        } catch (Exception unused) {
        }
    }

    public void updateActiveList(long[] jArr) {
        synchronized (this.mRunningTasks) {
            this.mRunningTasks.clear();
            for (long valueOf : jArr) {
                this.mRunningTasks.add(Long.valueOf(valueOf));
            }
        }
    }

    public static class PreloadedGroup extends TransferGroup implements GroupEditableListAdapter.GroupEditable {
        public String assignees;
        public TransferGroup.Index index;
        public boolean isRunning;
        public String representativeText;
        public long totalBytes;
        public long totalBytesCompleted;
        public int totalCount;
        public int totalCountCompleted;
        public double totalPercent;
        public int viewType;

        public boolean comparisonSupported() {
            return true;
        }

        public int getRequestCode() {
            return 0;
        }

        public PreloadedGroup() {
            this.index = new TransferGroup.Index();
        }

        public PreloadedGroup(String str) {
            this.index = new TransferGroup.Index();
            this.viewType = 100;
            this.representativeText = str;
        }

        public boolean applyFilter(String[] strArr) {
            for (String lowerCase : strArr) {
                if (this.assignees.toLowerCase().contains(lowerCase.toLowerCase())) {
                    return true;
                }
            }
            return false;
        }

        public String getComparableName() {
            return getSelectableTitle();
        }

        public long getComparableDate() {
            return this.dateCreated;
        }

        public long getComparableSize() {
            return (long) this.totalCount;
        }

        public long getId() {
            return this.groupId;
        }

        public void setId(long j) {
            this.groupId = j;
        }

        public String getSelectableTitle() {
            return String.format("%s (%s)", new Object[]{this.assignees, FileUtils.sizeExpression(this.totalBytes, false)});
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
            this.dateCreated = j;
        }

        public boolean setSelectableSelected(boolean z) {
            return !isGroupRepresentative() && super.setSelectableSelected(z);
        }

        public void setSize(long j) {
            this.totalCount = Long.valueOf(j).intValue();
        }
    }
}
