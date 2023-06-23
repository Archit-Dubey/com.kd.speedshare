package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.activity.FilePickerActivity;
import com.genonbeta.TrebleShot.adapter.TransferListAdapter;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.app.GroupEditableListFragment;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.TransferInfoDialog;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.kd.speedshare.R;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class TransferListFragment extends GroupEditableListFragment<TransferListAdapter.AbstractGenericItem, GroupEditableListAdapter.GroupViewHolder, TransferListAdapter> implements TitleSupport, Activity.OnBackPressedListener {
    public static final String ARG_DEVICE_ID = "argDeviceId";
    public static final String ARG_GROUP_ID = "argGroupId";
    public static final String ARG_PATH = "argPath";
    public static final int REQUEST_CHOOSE_FOLDER = 1;
    public static final String TAG = "TransferListFragment";
    /* access modifiers changed from: private */
    public TransferGroup mHeldGroup;
    private String mLastKnownPath;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (!AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction())) {
                return;
            }
            if (AccessDatabase.TABLE_TRANSFER.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME)) || AccessDatabase.TABLE_TRANSFERGROUP.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME))) {
                TransferListFragment.this.refreshList();
            }
        }
    };

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setDefaultOrderingCriteria(100);
        setDefaultSortingCriteria(100);
        setDefaultGroupingCriteria(101);
        setDefaultSelectionCallback(new SelectionCallback(this));
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_compare_arrows_white_24dp);
        Bundle arguments = getArguments();
        if (arguments != null && arguments.containsKey(ARG_GROUP_ID)) {
            goPath(arguments.getLong(ARG_GROUP_ID), arguments.getString(ARG_PATH), arguments.getString(ARG_DEVICE_ID));
        }
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mReceiver, new IntentFilter(AccessDatabase.ACTION_DATABASE_CHANGE));
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mReceiver);
    }

    public void onSortingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_sortByName), 100);
        map.put(getString(R.string.text_sortBySize), 120);
    }

    public TransferListAdapter onAdapter() {
        final AnonymousClass2 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(final GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    TransferListFragment.this.registerLayoutViewClicks(groupViewHolder);
                    groupViewHolder.getView().findViewById(R.id.layout_image).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            if (TransferListFragment.this.getSelectionConnection() != null) {
                                TransferListFragment.this.getSelectionConnection().setSelected(groupViewHolder.getAdapterPosition());
                            }
                        }
                    });
                }
            }
        };
        return new TransferListAdapter(getActivity()) {
            public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (GroupEditableListAdapter.GroupViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public int onGridSpanSize(int i, int i2) {
        return i == 100 ? i2 : super.onGridSpanSize(i, i2);
    }

    public boolean onDefaultClickAction(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            new TransferInfoDialog(getActivity(), (TransferObject) ((TransferListAdapter) getAdapter()).getItem(groupViewHolder)).show();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void onListRefreshed() {
        String str;
        super.onListRefreshed();
        String path = ((TransferListAdapter) getAdapter()).getPath();
        if (!((this.mLastKnownPath == null && ((TransferListAdapter) getAdapter()).getPath() == null) || (str = this.mLastKnownPath) == null || str.equals(path))) {
            getListView().scrollToPosition(0);
        }
        this.mLastKnownPath = path;
    }

    public boolean onBackPressed() {
        String str;
        String path = ((TransferListAdapter) getAdapter()).getPath();
        if (path != null) {
            int lastIndexOf = path.lastIndexOf(File.separator);
            long groupId = ((TransferListAdapter) getAdapter()).getGroupId();
            if (lastIndexOf != -1 || path.length() <= 0) {
                str = path.substring(0, lastIndexOf);
            } else {
                str = null;
            }
            goPath(groupId, str);
            return true;
        } else if (getSelectionCallback() == null || getSelectionConnection() == null || !((PowerfulActionMode) getSelectionConnection().getMode()).hasActive((PowerfulActionMode.Callback) getSelectionCallback())) {
            return false;
        } else {
            ((PowerfulActionMode) getSelectionConnection().getMode()).finish((PowerfulActionMode.Callback) getSelectionCallback());
            return true;
        }
    }

    public void changeSavePath(String str) {
        startActivityForResult(new Intent(getActivity(), FilePickerActivity.class).setAction(FilePickerActivity.ACTION_CHOOSE_DIRECTORY).putExtra(FilePickerActivity.EXTRA_START_PATH, str).putExtra(FilePickerActivity.EXTRA_ACTIVITY_TITLE, getString(R.string.butn_saveTo)), 1);
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_pendingTransfers);
    }

    public boolean performLayoutClick(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            TransferObject transferObject = (TransferObject) ((TransferListAdapter) getAdapter()).getItem(groupViewHolder);
            if (transferObject instanceof TransferListAdapter.StorageStatusItem) {
                final TransferListAdapter.StorageStatusItem storageStatusItem = (TransferListAdapter.StorageStatusItem) transferObject;
                if (storageStatusItem.hasIssues()) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    builder.setMessage((CharSequence) getContext().getString(R.string.mesg_notEnoughSpace));
                    builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
                    builder.setPositiveButton((int) R.string.butn_saveTo, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            TransferListFragment.this.changeSavePath(storageStatusItem.directory);
                        }
                    });
                    builder.show();
                    return true;
                }
                changeSavePath(storageStatusItem.directory);
                return true;
            } else if (!(transferObject instanceof TransferListAdapter.TransferFolder)) {
                return super.performLayoutClick(groupViewHolder);
            } else {
                ((TransferListAdapter) getAdapter()).setPath(transferObject.directory);
                refreshList();
                if (getSelectionCallback() == null || !getSelectionCallback().isSelectionActivated() || AppUtils.getDefaultPreferences(getContext()).getBoolean("helpFolderSelection", false)) {
                    return true;
                }
                createSnackbar(R.string.mesg_helpFolderSelection, new Object[0]).setAction((int) R.string.butn_gotIt, (View.OnClickListener) new View.OnClickListener() {
                    public void onClick(View view) {
                        AppUtils.getDefaultPreferences(TransferListFragment.this.getContext()).edit().putBoolean("helpFolderSelection", true).apply();
                    }
                }).show();
                return true;
            }
        } catch (Exception unused) {
            return false;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (intent != null && i2 == -1 && i == 1 && intent.hasExtra(FilePickerActivity.EXTRA_CHOSEN_PATH)) {
            final Uri uri = (Uri) intent.getParcelableExtra(FilePickerActivity.EXTRA_CHOSEN_PATH);
            if (uri.toString().equals(getTransferGroup().savePath)) {
                createSnackbar(R.string.mesg_pathSameError, new Object[0]).show();
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle((int) R.string.ques_checkOldFiles);
            builder.setMessage((int) R.string.text_checkOldFiles);
            builder.setNeutralButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
            builder.setNegativeButton((int) R.string.butn_skip, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    TransferListFragment.this.updateSavePath(uri.toString());
                }
            });
            builder.setPositiveButton((int) R.string.butn_proceed, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    new WorkerService.RunningTask() {
                        public void onRun() {
                            TransferUtils.pauseTransfer(TransferListFragment.this.getContext(), TransferListFragment.this.mHeldGroup, (TransferGroup.Assignee) null);
                            List<TransferObject> castQuery = AppUtils.getDatabase(getService()).castQuery(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]).setWhere("groupId=? AND type=?", String.valueOf(TransferListFragment.this.getTransferGroup().groupId), TransferObject.Type.INCOMING.toString()), TransferObject.class);
                            TransferGroup transferGroup = new TransferGroup(TransferListFragment.this.getTransferGroup().groupId);
                            try {
                                AppUtils.getDatabase(getService()).reconstruct(transferGroup);
                                transferGroup.savePath = uri.toString();
                                for (TransferObject next : castQuery) {
                                    if (!getInterrupter().interrupted()) {
                                        publishStatusText(next.friendlyName);
                                        try {
                                            DocumentFile incomingPseudoFile = FileUtils.getIncomingPseudoFile(getService(), next, TransferListFragment.this.getTransferGroup(), false);
                                            DocumentFile incomingPseudoFile2 = FileUtils.getIncomingPseudoFile(getService(), next, transferGroup, true);
                                            if (!(incomingPseudoFile == null || incomingPseudoFile2 == null)) {
                                                if (incomingPseudoFile.canWrite()) {
                                                    FileUtils.move(getService(), incomingPseudoFile, incomingPseudoFile2, getInterrupter());
                                                } else {
                                                    throw new IOException("Failed to access: " + incomingPseudoFile.getUri());
                                                }
                                            }
                                        } catch (Exception unused) {
                                        }
                                    } else {
                                        throw new InterruptedException();
                                    }
                                }
                                TransferListFragment.this.updateSavePath(uri.toString());
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }.setTitle(TransferListFragment.this.getString(R.string.mesg_organizingFiles)).setIconRes(com.genonbeta.TrebleShot.R.drawable.ic_compare_arrows_white_24dp_static).run(TransferListFragment.this.getActivity());
                }
            });
            builder.show();
        }
    }

    public TransferGroup getTransferGroup() {
        if (this.mHeldGroup == null) {
            this.mHeldGroup = new TransferGroup(getArguments().getLong(ARG_GROUP_ID, -1));
            try {
                AppUtils.getDatabase(getContext()).reconstruct(this.mHeldGroup);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return this.mHeldGroup;
    }

    public void goPath(long j, String str, String str2) {
        setDeviceId(str2);
        goPath(j, str);
    }

    public void goPath(long j, String str) {
        ((TransferListAdapter) getAdapter()).setGroupId(j);
        ((TransferListAdapter) getAdapter()).setPath(str);
        refreshList();
    }

    public boolean setDeviceId(String str) {
        return ((TransferListAdapter) getAdapter()).setDeviceId(str);
    }

    public void updateSavePath(String str) {
        TransferGroup transferGroup = getTransferGroup();
        transferGroup.savePath = str;
        AppUtils.getDatabase(getContext()).publish((DatabaseObject) transferGroup);
        if (getActivity() != null && isAdded()) {
            getActivity().runOnUiThread(new Runnable() {
                public void run() {
                    TransferListFragment.this.createSnackbar(R.string.mesg_pathSaved, new Object[0]).show();
                }
            });
        }
    }

    private static class SelectionCallback extends EditableListFragment.SelectionCallback<TransferListAdapter.AbstractGenericItem> {
        private TransferListAdapter mAdapter;

        public SelectionCallback(TransferListFragment transferListFragment) {
            super(transferListFragment);
            this.mAdapter = (TransferListAdapter) transferListFragment.getAdapter();
        }

        public boolean onCreateActionMenu(Context context, PowerfulActionMode powerfulActionMode, Menu menu) {
            super.onCreateActionMenu(context, powerfulActionMode, menu);
            powerfulActionMode.getMenuInflater().inflate(R.menu.action_mode_transfer, menu);
            return true;
        }

        public boolean onActionMenuItemSelected(Context context, PowerfulActionMode powerfulActionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            final ArrayList arrayList = new ArrayList(getFragment().getSelectionConnection().getSelectedItemList());
            if (itemId != R.id.action_mode_transfer_delete) {
                return super.onActionMenuItemSelected(context, powerfulActionMode, menuItem);
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getFragment().getActivity());
            builder.setTitle((int) R.string.ques_removeQueue);
            builder.setMessage((CharSequence) getFragment().getContext().getResources().getQuantityString(R.plurals.text_removeQueueSummary, arrayList.size(), new Object[]{Integer.valueOf(arrayList.size())}));
            builder.setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
            builder.setPositiveButton((int) R.string.butn_proceed, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    AppUtils.getDatabase(SelectionCallback.this.getFragment().getContext()).removeAsynchronous((android.app.Activity) SelectionCallback.this.getFragment().getActivity(), (List<? extends DatabaseObject>) arrayList);
                }
            });
            builder.show();
            return true;
        }
    }
}
