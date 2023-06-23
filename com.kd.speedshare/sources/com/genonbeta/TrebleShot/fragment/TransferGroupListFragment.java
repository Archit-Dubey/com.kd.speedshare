package com.genonbeta.TrebleShot.fragment;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.activity.ConnectionManagerActivity;
import com.genonbeta.TrebleShot.activity.ContentSharingActivity;
import com.genonbeta.TrebleShot.activity.ViewTransferActivity;
import com.genonbeta.TrebleShot.adapter.TransferGroupListAdapter;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.app.EditableListFragmentImpl;
import com.genonbeta.TrebleShot.app.GroupEditableListFragment;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TransferGroupListFragment extends GroupEditableListFragment<TransferGroupListAdapter.PreloadedGroup, GroupEditableListAdapter.GroupViewHolder, TransferGroupListAdapter> implements IconSupport, TitleSupport {
    private IntentFilter mFilter = new IntentFilter();
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction()) && intent.hasExtra(AccessDatabase.EXTRA_TABLE_NAME) && (intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME).equals(AccessDatabase.TABLE_TRANSFERGROUP) || intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME).equals(AccessDatabase.TABLE_TRANSFER))) {
                TransferGroupListFragment.this.refreshList();
            } else if (CommunicationService.ACTION_TASK_RUNNING_LIST_CHANGE.equals(intent.getAction()) && intent.hasExtra(CommunicationService.EXTRA_TASK_LIST_RUNNING)) {
                ((TransferGroupListAdapter) TransferGroupListFragment.this.getAdapter()).updateActiveList(intent.getLongArrayExtra(CommunicationService.EXTRA_TASK_LIST_RUNNING));
                TransferGroupListFragment.this.refreshList();
            }
        }
    };
    private SQLQuery.Select mSelect;

    public int getIconRes() {
        return R.drawable.ic_swap_vert_white_24dp;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setDefaultOrderingCriteria(110);
        setDefaultSortingCriteria(110);
        setDefaultGroupingCriteria(110);
        setDefaultSelectionCallback(new SelectionCallback(this));
        setUseDefaultPaddingDecoration(true);
        setUseDefaultPaddingDecorationSpaceForEdges(true);
        setDefaultPaddingDecorationSize(getResources().getDimension(R.dimen.padding_list_content_parent_layout));
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(View view, ViewGroup viewGroup) {
        View inflate = getLayoutInflater().inflate(R.layout.layout_transfer_group_list, (ViewGroup) null, false);
        ((ViewGroup) view).addView(inflate);
        return super.onListView(view, (ViewGroup) (FrameLayout) inflate.findViewById(R.id.fragmentContainer));
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_compare_arrows_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyTransfer));
        View findViewById = view.findViewById(R.id.sendLayoutButton);
        View findViewById2 = view.findViewById(R.id.receiveLayoutButton);
        findViewById.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                TransferGroupListFragment.this.startActivity(new Intent(TransferGroupListFragment.this.getContext(), ContentSharingActivity.class));
            }
        });
        findViewById2.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                TransferGroupListFragment.this.startActivity(new Intent(TransferGroupListFragment.this.getContext(), ConnectionManagerActivity.class).putExtra(ConnectionManagerActivity.EXTRA_ACTIVITY_SUBTITLE, TransferGroupListFragment.this.getString(R.string.text_receive)).putExtra("extraRequestType", ConnectionManagerActivity.RequestType.MAKE_ACQUAINTANCE.toString()));
            }
        });
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mFilter.addAction(AccessDatabase.ACTION_DATABASE_CHANGE);
        this.mFilter.addAction(CommunicationService.ACTION_TASK_RUNNING_LIST_CHANGE);
        if (getSelect() == null) {
            setSelect(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERGROUP, new String[0]));
        }
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mReceiver, this.mFilter);
        AppUtils.startForegroundService(getActivity(), new Intent(getActivity(), CommunicationService.class).setAction(CommunicationService.ACTION_REQUEST_TASK_RUNNING_LIST_CHANGE));
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mReceiver);
    }

    public void onSortingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_sortByDate), 110);
        map.put(getString(R.string.text_sortBySize), 120);
    }

    public void onGroupingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_groupByNothing), 100);
        map.put(getString(R.string.text_groupByDate), 110);
    }

    public TransferGroupListAdapter onAdapter() {
        final AnonymousClass4 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(final GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    TransferGroupListFragment.this.registerLayoutViewClicks(groupViewHolder);
                    groupViewHolder.getView().findViewById(R.id.layout_image).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            if (TransferGroupListFragment.this.getSelectionConnection() != null) {
                                TransferGroupListFragment.this.getSelectionConnection().setSelected(groupViewHolder.getAdapterPosition());
                            }
                        }
                    });
                }
            }
        };
        return new TransferGroupListAdapter(getActivity(), AppUtils.getDatabase(getContext())) {
            public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (GroupEditableListAdapter.GroupViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        }.setSelect(getSelect());
    }

    public boolean onDefaultClickAction(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            ViewTransferActivity.startInstance(getActivity(), ((TransferGroupListAdapter.PreloadedGroup) ((TransferGroupListAdapter) getAdapter()).getItem(groupViewHolder)).groupId);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_transfers);
    }

    public SQLQuery.Select getSelect() {
        return this.mSelect;
    }

    public TransferGroupListFragment setSelect(SQLQuery.Select select) {
        this.mSelect = select;
        return this;
    }

    private static class SelectionCallback extends EditableListFragment.SelectionCallback<TransferGroupListAdapter.PreloadedGroup> {
        public SelectionCallback(EditableListFragmentImpl<TransferGroupListAdapter.PreloadedGroup> editableListFragmentImpl) {
            super(editableListFragmentImpl);
        }

        public boolean onPrepareActionMenu(Context context, PowerfulActionMode powerfulActionMode) {
            super.onPrepareActionMenu(context, powerfulActionMode);
            return true;
        }

        public boolean onCreateActionMenu(Context context, PowerfulActionMode powerfulActionMode, Menu menu) {
            super.onCreateActionMenu(context, powerfulActionMode, menu);
            powerfulActionMode.getMenuInflater().inflate(R.menu.action_mode_group, menu);
            return true;
        }

        public boolean onActionMenuItemSelected(Context context, PowerfulActionMode powerfulActionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            ArrayList arrayList = new ArrayList(getFragment().getSelectionConnection().getSelectedItemList());
            if (itemId == R.id.action_mode_group_delete) {
                AppUtils.getDatabase(getFragment().getContext()).removeAsynchronous((Activity) getFragment().getActivity(), (List<? extends DatabaseObject>) arrayList);
            } else if (itemId != R.id.action_mode_group_serve_on_web && itemId != R.id.action_mode_group_hide_on_web) {
                return super.onActionMenuItemSelected(context, powerfulActionMode, menuItem);
            } else {
                Iterator it = arrayList.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    TransferGroupListAdapter.PreloadedGroup preloadedGroup = (TransferGroupListAdapter.PreloadedGroup) it.next();
                    preloadedGroup.isServedOnWeb = preloadedGroup.index.outgoingCount > 0 && itemId == R.id.action_mode_group_serve_on_web;
                    if (preloadedGroup.isServedOnWeb) {
                        z = true;
                    }
                }
                AppUtils.getDatabase(getFragment().getContext()).update(arrayList);
                if (z) {
                    AppUtils.startWebShareActivity(getFragment().getActivity(), true);
                }
            }
            return true;
        }
    }
}
