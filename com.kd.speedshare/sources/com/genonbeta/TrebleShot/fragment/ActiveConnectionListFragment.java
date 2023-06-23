package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.genonbeta.TrebleShot.adapter.ActiveConnectionListAdapter;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.dialog.WebShareDetailsDialog;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.receiver.NetworkStatusReceiver;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.kd.speedshare.R;

public class ActiveConnectionListFragment extends EditableListFragment<ActiveConnectionListAdapter.AddressedEditableInterface, EditableListAdapter.EditableViewHolder, ActiveConnectionListAdapter> {
    private IntentFilter mFilter = new IntentFilter();
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (CommunicationService.ACTION_HOTSPOT_STATUS.equals(intent.getAction()) || NetworkStatusReceiver.WIFI_AP_STATE_CHANGED.equals(intent.getAction()) || "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || "android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()) || "android.net.wifi.p2p.CONNECTION_STATE_CHANGE".equals(intent.getAction()) || "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED".equals(intent.getAction())) {
                ActiveConnectionListFragment.this.refreshList();
            }
        }
    };

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setSortingSupported(false);
        setFilteringSupported(true);
        this.mFilter.addAction(CommunicationService.ACTION_HOTSPOT_STATUS);
        this.mFilter.addAction(NetworkStatusReceiver.WIFI_AP_STATE_CHANGED);
        this.mFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.mFilter.addAction("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        this.mFilter.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mReceiver, this.mFilter);
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mReceiver);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setEmptyImage(R.drawable.ic_share_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyConnection));
    }

    public ActiveConnectionListAdapter onAdapter() {
        final AnonymousClass2 r0 = new AppUtils.QuickActions<EditableListAdapter.EditableViewHolder>() {
            public void onQuickActions(final EditableListAdapter.EditableViewHolder editableViewHolder) {
                ActiveConnectionListFragment.this.registerLayoutViewClicks(editableViewHolder);
                editableViewHolder.getView().findViewById(R.id.visitView).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        ActiveConnectionListFragment.this.performLayoutClickOpen(editableViewHolder);
                    }
                });
                editableViewHolder.getView().findViewById(R.id.selector).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        if (ActiveConnectionListFragment.this.getSelectionConnection() != null) {
                            ActiveConnectionListFragment.this.getSelectionConnection().setSelected(editableViewHolder.getAdapterPosition());
                        }
                    }
                });
            }
        };
        return new ActiveConnectionListAdapter(getActivity()) {
            public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (EditableListAdapter.EditableViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public boolean onDefaultClickAction(EditableListAdapter.EditableViewHolder editableViewHolder) {
        try {
            new WebShareDetailsDialog(getContext(), TextUtils.makeWebShareLink(getContext(), ((ActiveConnectionListAdapter.AddressedEditableInterface) ((ActiveConnectionListAdapter) getAdapter()).getItem(editableViewHolder)).getInterface().getAssociatedAddress())).show();
            return true;
        } catch (NotReadyException unused) {
            return false;
        }
    }

    public boolean performLayoutClickOpen(EditableListAdapter.EditableViewHolder editableViewHolder) {
        if (super.performLayoutClickOpen(editableViewHolder)) {
            return true;
        }
        try {
            startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(TextUtils.makeWebShareLink(getContext(), ((ActiveConnectionListAdapter.AddressedEditableInterface) ((ActiveConnectionListAdapter) getAdapter()).getItem(editableViewHolder)).getInterface().getAssociatedAddress()))));
            return true;
        } catch (NotReadyException unused) {
            return false;
        }
    }
}
