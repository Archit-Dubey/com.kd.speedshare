package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.activity.ViewTransferActivity;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.android.database.exception.ReconstructionFailedException;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class ToggleMultipleTransferDialog extends AlertDialog.Builder {
    /* access modifiers changed from: private */
    public List<String> mActiveList = new ArrayList();
    /* access modifiers changed from: private */
    public TextDrawable.IShapeBuilder mIconBuilder;
    /* access modifiers changed from: private */
    public LayoutInflater mInflater;
    /* access modifiers changed from: private */
    public List<ShowingAssignee> mList = new ArrayList();

    public ToggleMultipleTransferDialog(final ViewTransferActivity viewTransferActivity, final TransferGroup transferGroup, List<ShowingAssignee> list, List<String> list2, TransferGroup.Index index) {
        super(viewTransferActivity);
        this.mInflater = LayoutInflater.from(viewTransferActivity);
        this.mIconBuilder = AppUtils.getDefaultIconBuilder(viewTransferActivity);
        this.mList.addAll(list);
        this.mActiveList.addAll(list2);
        setAdapter(new ActiveListAdapter(), new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                ShowingAssignee showingAssignee = (ShowingAssignee) ToggleMultipleTransferDialog.this.mList.get(i);
                if (ToggleMultipleTransferDialog.this.mActiveList.contains(showingAssignee.deviceId)) {
                    TransferUtils.pauseTransfer((Context) viewTransferActivity, transferGroup.groupId, showingAssignee.deviceId);
                } else {
                    TransferUtils.startTransfer(viewTransferActivity, transferGroup, showingAssignee, TransferObject.Type.OUTGOING);
                }
            }
        });
        setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
        if (index.outgoingCount > 0) {
            setNeutralButton((int) R.string.butn_addDevices, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    viewTransferActivity.startDeviceAddingActivity();
                }
            });
        }
        if (index.incomingCount > 0) {
            setPositiveButton((int) R.string.butn_receive, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    TransferObject fetchFirstTransfer = TransferUtils.fetchFirstTransfer(ToggleMultipleTransferDialog.this.getContext(), transferGroup.groupId, TransferObject.Type.INCOMING);
                    if (fetchFirstTransfer != null) {
                        TransferGroup.Assignee assignee = new TransferGroup.Assignee(transferGroup.groupId, fetchFirstTransfer.deviceId);
                        try {
                            AppUtils.getDatabase(ToggleMultipleTransferDialog.this.getContext()).reconstruct(assignee);
                            TransferUtils.startTransferWithTest(viewTransferActivity, transferGroup, assignee, TransferObject.Type.INCOMING);
                        } catch (ReconstructionFailedException unused) {
                        }
                    }
                }
            });
        }
    }

    private class ActiveListAdapter extends BaseAdapter {
        public long getItemId(int i) {
            return 0;
        }

        private ActiveListAdapter() {
        }

        public int getCount() {
            return ToggleMultipleTransferDialog.this.mList.size();
        }

        public Object getItem(int i) {
            return ToggleMultipleTransferDialog.this.mList.get(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ToggleMultipleTransferDialog.this.mInflater.inflate(R.layout.list_toggle_transfer, viewGroup, false);
            }
            ShowingAssignee showingAssignee = (ShowingAssignee) getItem(i);
            ImageView imageView = (ImageView) view.findViewById(R.id.image);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.actionImage);
            ((TextView) view.findViewById(R.id.text)).setText(showingAssignee.device.nickname);
            imageView2.setImageResource(ToggleMultipleTransferDialog.this.mActiveList.contains(showingAssignee.deviceId) ? R.drawable.ic_pause_white_24dp : R.drawable.ic_arrow_up_white_24dp);
            NetworkDeviceLoader.showPictureIntoView(showingAssignee.device, imageView, ToggleMultipleTransferDialog.this.mIconBuilder);
            return view;
        }
    }
}
