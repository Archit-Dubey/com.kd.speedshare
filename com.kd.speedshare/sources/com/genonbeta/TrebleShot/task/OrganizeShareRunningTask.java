package com.genonbeta.TrebleShot.task;

import android.net.Uri;
import com.genonbeta.TrebleShot.activity.AddDevicesToTransferActivity;
import com.genonbeta.TrebleShot.activity.ShareActivity;
import com.genonbeta.TrebleShot.activity.ViewTransferActivity;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.database.SQLiteDatabase;
import com.kd.speedshare.R;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class OrganizeShareRunningTask extends WorkerService.RunningTask<ShareActivity> {
    private List<CharSequence> mFileNames;
    private List<Uri> mFileUris;

    public OrganizeShareRunningTask(List<Uri> list, List<CharSequence> list2) {
        this.mFileUris = list;
        this.mFileNames = list2;
    }

    public void onRun() {
        if (getAnchorListener() != null) {
            ((ShareActivity) getAnchorListener()).getProgressBar().setMax(this.mFileUris.size());
            ((ShareActivity) getAnchorListener()).updateText(this, getService().getString(R.string.mesg_organizingFiles));
        }
        ArrayList<ShareActivity.SelectableStream> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        TransferGroup transferGroup = new TransferGroup((long) AppUtils.getUniqueNumber());
        for (int i = 0; i < this.mFileUris.size() && !getInterrupter().interrupted(); i++) {
            publishStatusText(getService().getString(R.string.text_transferStatusFiles, new Object[]{Integer.valueOf(i), Integer.valueOf(this.mFileUris.size())}));
            if (getAnchorListener() != null) {
                ((ShareActivity) getAnchorListener()).updateProgress(((ShareActivity) getAnchorListener()).getProgressBar().getMax(), ((ShareActivity) getAnchorListener()).getProgressBar().getProgress() + 1);
            }
            Uri uri = this.mFileUris.get(i);
            List<CharSequence> list = this.mFileNames;
            String valueOf = list != null ? String.valueOf(list.get(i)) : null;
            try {
                ShareActivity.SelectableStream selectableStream = new ShareActivity.SelectableStream(getService(), uri, (String) null);
                if (selectableStream.getDocumentFile().isDirectory()) {
                    ShareActivity.createFolderStructure(selectableStream.getDocumentFile(), selectableStream.getDocumentFile().getName(), arrayList, this);
                } else {
                    if (valueOf != null) {
                        selectableStream.setFriendlyName(valueOf);
                    }
                    arrayList.add(selectableStream);
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        for (ShareActivity.SelectableStream selectableStream2 : arrayList) {
            if (getInterrupter().interrupted()) {
                break;
            }
            publishStatusText(selectableStream2.getSelectableTitle());
            TransferObject transferObject = new TransferObject((long) AppUtils.getUniqueNumber(), transferGroup.groupId, selectableStream2.getSelectableTitle(), selectableStream2.getDocumentFile().getUri().toString(), selectableStream2.getDocumentFile().getType(), selectableStream2.getDocumentFile().length(), TransferObject.Type.OUTGOING);
            if (selectableStream2.getDirectory() != null) {
                transferObject.directory = selectableStream2.getDirectory();
            }
            arrayList2.add(transferObject);
        }
        if (getAnchorListener() != null) {
            ((ShareActivity) getAnchorListener()).updateText(this, getService().getString(R.string.mesg_completing));
        }
        AppUtils.getDatabase(getService()).insert(arrayList2, new SQLiteDatabase.ProgressUpdater() {
            public void onProgressChange(int i, int i2) {
                if (OrganizeShareRunningTask.this.getAnchorListener() != null) {
                    ((ShareActivity) OrganizeShareRunningTask.this.getAnchorListener()).updateProgress(i, i2);
                }
            }

            public boolean onProgressState() {
                return !OrganizeShareRunningTask.this.getInterrupter().interrupted();
            }
        });
        if (getInterrupter().interrupted()) {
            AppUtils.getDatabase(getService()).remove(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere(String.format("%s = ?", new Object[]{"groupId"}), String.valueOf(transferGroup.groupId)));
        } else {
            AppUtils.getDatabase(getService()).insert((DatabaseObject) transferGroup);
            ViewTransferActivity.startInstance(getService(), transferGroup.groupId);
            AddDevicesToTransferActivity.startInstance(getService(), transferGroup.groupId);
        }
        if (getAnchorListener() != null) {
            ((ShareActivity) getAnchorListener()).finish();
        }
    }
}
