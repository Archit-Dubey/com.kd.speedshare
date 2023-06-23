package com.genonbeta.TrebleShot.fragment;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import com.genonbeta.TrebleShot.adapter.TransferAssigneeListAdapter;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.DeviceInfoDialog;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.ShowingAssignee;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.util.TransferUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.genonbeta.android.database.DatabaseObject;
import com.kd.speedshare.R;

public class TransferAssigneeListFragment extends EditableListFragment<ShowingAssignee, EditableListAdapter.EditableViewHolder, TransferAssigneeListAdapter> implements TitleSupport {
    public static final String ARG_GROUP_ID = "groupId";
    public static final String ARG_USE_HORIZONTAL_VIEW = "useHorizontalView";
    private TransferGroup mHeldGroup;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (!AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction())) {
                return;
            }
            if (AccessDatabase.TABLE_TRANSFERASSIGNEE.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME))) {
                TransferAssigneeListFragment.this.refreshList();
            } else if (AccessDatabase.TABLE_TRANSFERGROUP.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME))) {
                TransferAssigneeListFragment.this.updateTransferGroup();
            }
        }
    };

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setFilteringSupported(false);
        setSortingSupported(false);
        if (isScreenLarge()) {
            setDefaultViewingGridSize(4, 6);
        } else if (isScreenNormal()) {
            setDefaultViewingGridSize(3, 5);
        } else {
            setDefaultViewingGridSize(2, 4);
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_device_hub_white_24dp);
        setEmptyText(getString(R.string.text_noDeviceForTransfer));
        getEmptyActionButton().setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View view) {
                AppUtils.startWebShareActivity(TransferAssigneeListFragment.this.getActivity(), false);
                return true;
            }
        });
        updateTransferGroup();
        int dimension = (int) getResources().getDimension(R.dimen.padding_list_content_parent_layout);
        getListView().setPadding(dimension, dimension, dimension, dimension);
        getListView().setClipToPadding(false);
    }

    public TransferAssigneeListAdapter onAdapter() {
        final AnonymousClass3 r0 = new AppUtils.QuickActions<EditableListAdapter.EditableViewHolder>() {
            public void onQuickActions(final EditableListAdapter.EditableViewHolder editableViewHolder) {
                TransferAssigneeListFragment.this.registerLayoutViewClicks(editableViewHolder);
                editableViewHolder.getView().findViewById(R.id.menu).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        final ShowingAssignee showingAssignee = (ShowingAssignee) ((TransferAssigneeListAdapter) TransferAssigneeListFragment.this.getAdapter()).getList().get(editableViewHolder.getAdapterPosition());
                        PopupMenu popupMenu = new PopupMenu(TransferAssigneeListFragment.this.getContext(), view);
                        popupMenu.getMenuInflater().inflate(R.menu.popup_fragment_transfer_assignee, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                            public boolean onMenuItemClick(MenuItem menuItem) {
                                int itemId = menuItem.getItemId();
                                if (itemId == R.id.popup_changeChangeConnection) {
                                    TransferUtils.changeConnection(TransferAssigneeListFragment.this.getActivity(), AppUtils.getDatabase(TransferAssigneeListFragment.this.getContext()), TransferAssigneeListFragment.this.getTransferGroup(), showingAssignee.device, new TransferUtils.ConnectionUpdatedListener() {
                                        public void onConnectionUpdated(NetworkDevice.Connection connection, TransferGroup.Assignee assignee) {
                                            TransferAssigneeListFragment.this.createSnackbar(R.string.mesg_connectionUpdated, TextUtils.getAdapterName(TransferAssigneeListFragment.this.getContext(), connection)).show();
                                        }
                                    });
                                    return true;
                                } else if (itemId != R.id.popup_remove) {
                                    return false;
                                } else {
                                    AppUtils.getDatabase(TransferAssigneeListFragment.this.getContext()).removeAsynchronous((Activity) TransferAssigneeListFragment.this.getActivity(), (DatabaseObject) showingAssignee);
                                    return true;
                                }
                            }
                        });
                        popupMenu.show();
                    }
                });
            }
        };
        return new TransferAssigneeListAdapter(getContext()) {
            public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (EditableListAdapter.EditableViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        }.setGroup(getTransferGroup());
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mReceiver, new IntentFilter(AccessDatabase.ACTION_DATABASE_CHANGE));
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mReceiver);
    }

    public boolean onDefaultClickAction(EditableListAdapter.EditableViewHolder editableViewHolder) {
        try {
            new DeviceInfoDialog(getActivity(), AppUtils.getDatabase(getContext()), ((ShowingAssignee) ((TransferAssigneeListAdapter) getAdapter()).getItem(editableViewHolder)).device).show();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean isHorizontalOrientation() {
        return (getArguments() != null && getArguments().getBoolean("useHorizontalView")) || super.isHorizontalOrientation();
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_deviceList);
    }

    public TransferGroup getTransferGroup() {
        if (this.mHeldGroup == null) {
            long j = -1;
            if (getArguments() != null) {
                j = getArguments().getLong("groupId", -1);
            }
            this.mHeldGroup = new TransferGroup(j);
            updateTransferGroup();
        }
        return this.mHeldGroup;
    }

    /* access modifiers changed from: private */
    public void updateTransferGroup() {
        try {
            AppUtils.getDatabase(getContext()).reconstruct(this.mHeldGroup);
            getEmptyActionButton().setText(this.mHeldGroup.isServedOnWeb ? R.string.butn_hideOnBrowser : R.string.butn_shareOnBrowser);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
