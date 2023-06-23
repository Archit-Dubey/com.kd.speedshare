package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.kd.speedshare.R;
import java.util.List;

public class TransferAssigneeListAdapter extends EditableListAdapter<ShowingAssignee, EditableListAdapter.EditableViewHolder> {
    private TransferGroup mGroup;
    private TextDrawable.IShapeBuilder mIconBuilder;

    public TransferAssigneeListAdapter(Context context) {
        super(context);
        this.mIconBuilder = AppUtils.getDefaultIconBuilder(context);
    }

    public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new EditableListAdapter.EditableViewHolder(getInflater().inflate((isHorizontalOrientation() || isGridLayoutRequested()) ? R.layout.list_assignee_grid : R.layout.list_assignee, viewGroup, false));
    }

    public void onBindViewHolder(EditableListAdapter.EditableViewHolder editableViewHolder, int i) {
        ShowingAssignee showingAssignee = (ShowingAssignee) getList().get(i);
        ((TextView) editableViewHolder.getView().findViewById(R.id.text1)).setText(showingAssignee.device.nickname);
        ((TextView) editableViewHolder.getView().findViewById(R.id.text2)).setText(TextUtils.getAdapterName(getContext(), showingAssignee.connection));
        NetworkDeviceLoader.showPictureIntoView(showingAssignee.device, (ImageView) editableViewHolder.getView().findViewById(R.id.image), this.mIconBuilder);
    }

    public List<ShowingAssignee> onLoad() {
        return TransferUtils.loadAssigneeList(AppUtils.getDatabase(getContext()), this.mGroup.groupId);
    }

    public TransferAssigneeListAdapter setGroup(TransferGroup transferGroup) {
        this.mGroup = transferGroup;
        return this;
    }
}
