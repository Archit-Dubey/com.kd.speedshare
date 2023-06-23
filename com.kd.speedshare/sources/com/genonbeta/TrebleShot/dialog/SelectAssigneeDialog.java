package com.genonbeta.TrebleShot.dialog;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class SelectAssigneeDialog extends AlertDialog.Builder {
    /* access modifiers changed from: private */
    public TextDrawable.IShapeBuilder mIconBuilder;
    /* access modifiers changed from: private */
    public LayoutInflater mInflater;
    /* access modifiers changed from: private */
    public List<ShowingAssignee> mList;

    public SelectAssigneeDialog(Activity activity, List<ShowingAssignee> list, DialogInterface.OnClickListener onClickListener) {
        super(activity);
        ArrayList arrayList = new ArrayList();
        this.mList = arrayList;
        arrayList.addAll(list);
        this.mInflater = LayoutInflater.from(activity);
        this.mIconBuilder = AppUtils.getDefaultIconBuilder(activity);
        if (list.size() > 0) {
            setAdapter(new ListAdapter(), onClickListener);
        } else {
            setMessage((int) R.string.text_listEmpty);
        }
        setTitle((int) R.string.butn_useKnownDevice);
        setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
    }

    private class ListAdapter extends BaseAdapter {
        public long getItemId(int i) {
            return 0;
        }

        private ListAdapter() {
        }

        public int getCount() {
            return SelectAssigneeDialog.this.mList.size();
        }

        public Object getItem(int i) {
            return SelectAssigneeDialog.this.mList.get(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = SelectAssigneeDialog.this.mInflater.inflate(R.layout.list_assignee_selector, viewGroup, false);
            }
            ShowingAssignee showingAssignee = (ShowingAssignee) getItem(i);
            ((TextView) view.findViewById(R.id.text)).setText(showingAssignee.device.nickname);
            NetworkDeviceLoader.showPictureIntoView(showingAssignee.device, (ImageView) view.findViewById(R.id.image), SelectAssigneeDialog.this.mIconBuilder);
            return view;
        }
    }
}
