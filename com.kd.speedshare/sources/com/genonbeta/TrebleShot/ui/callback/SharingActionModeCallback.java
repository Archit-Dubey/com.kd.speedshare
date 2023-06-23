package com.genonbeta.TrebleShot.ui.callback;

import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;
import com.genonbeta.TrebleShot.activity.ShareActivity;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.app.EditableListFragmentImpl;
import com.genonbeta.TrebleShot.app.ShareableListFragment;
import com.genonbeta.TrebleShot.object.Shareable;
import com.genonbeta.TrebleShot.widget.EditableListAdapterImpl;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.kd.speedshare.R;
import java.util.ArrayList;

public class SharingActionModeCallback<T extends Shareable> extends EditableListFragment.SelectionCallback<T> {
    public SharingActionModeCallback(EditableListFragmentImpl<T> editableListFragmentImpl) {
        super(editableListFragmentImpl);
    }

    public boolean onPrepareActionMenu(Context context, PowerfulActionMode powerfulActionMode) {
        super.onPrepareActionMenu(context, powerfulActionMode);
        return true;
    }

    public boolean onCreateActionMenu(Context context, PowerfulActionMode powerfulActionMode, Menu menu) {
        super.onCreateActionMenu(context, powerfulActionMode, menu);
        powerfulActionMode.getMenuInflater().inflate(R.menu.action_mode_share, menu);
        return true;
    }

    public boolean onActionMenuItemSelected(Context context, PowerfulActionMode powerfulActionMode, MenuItem menuItem) {
        String str;
        int itemId = menuItem.getItemId();
        ArrayList<Shareable> arrayList = new ArrayList<>(getFragment().getSelectionConnection().getSelectedItemList());
        if (arrayList.size() <= 0 || (itemId != R.id.action_mode_share_trebleshot && itemId != R.id.action_mode_share_all_apps)) {
            return super.onActionMenuItemSelected(context, powerfulActionMode, menuItem);
        }
        Intent addFlags = new Intent().addFlags(1);
        if (menuItem.getItemId() == R.id.action_mode_share_all_apps) {
            str = arrayList.size() > 1 ? "android.intent.action.SEND_MULTIPLE" : "android.intent.action.SEND";
        } else {
            str = arrayList.size() > 1 ? ShareActivity.ACTION_SEND_MULTIPLE : ShareActivity.ACTION_SEND;
        }
        Intent action = addFlags.setAction(str);
        if (arrayList.size() > 1) {
            ShareableListFragment.MIMEGrouper mIMEGrouper = new ShareableListFragment.MIMEGrouper();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Shareable shareable : arrayList) {
                arrayList2.add(shareable.uri);
                arrayList3.add(shareable.fileName);
                if (!mIMEGrouper.isLocked()) {
                    mIMEGrouper.process(shareable.mimeType);
                }
            }
            action.setType(mIMEGrouper.toString()).putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList2).putCharSequenceArrayListExtra(ShareActivity.EXTRA_FILENAME_LIST, arrayList3);
        } else if (arrayList.size() == 1) {
            Shareable shareable2 = (Shareable) arrayList.get(0);
            action.setType(shareable2.mimeType).putExtra("android.intent.extra.STREAM", shareable2.uri).putExtra(ShareActivity.EXTRA_FILENAME_LIST, shareable2.fileName);
        }
        try {
            Context context2 = getFragment().getContext();
            if (menuItem.getItemId() == R.id.action_mode_share_all_apps) {
                action = Intent.createChooser(action, getFragment().getContext().getString(R.string.text_fileShareAppChoose));
            }
            context2.startActivity(action);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            Toast.makeText(getFragment().getActivity(), R.string.mesg_somethingWentWrong, 0).show();
            return false;
        }
    }

    public static class SelectionDuo<T extends Shareable> {
        private EditableListAdapterImpl<T> mAdapter;
        private EditableListFragmentImpl<T> mFragment;

        public SelectionDuo(EditableListFragmentImpl<T> editableListFragmentImpl, EditableListAdapterImpl<T> editableListAdapterImpl) {
            this.mFragment = editableListFragmentImpl;
            this.mAdapter = editableListAdapterImpl;
        }

        public EditableListAdapterImpl<T> getAdapter() {
            return this.mAdapter;
        }

        public EditableListFragmentImpl<T> getFragment() {
            return this.mFragment;
        }
    }
}
