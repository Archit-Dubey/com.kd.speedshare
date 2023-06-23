package com.genonbeta.TrebleShot.fragment;

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
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.activity.ShareActivity;
import com.genonbeta.TrebleShot.activity.TextEditorActivity;
import com.genonbeta.TrebleShot.adapter.TextStreamListAdapter;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.app.EditableListFragmentImpl;
import com.genonbeta.TrebleShot.app.GroupEditableListFragment;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.TextStreamObject;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.kd.speedshare.R;
import java.util.List;
import java.util.Map;

public class TextStreamListFragment extends GroupEditableListFragment<TextStreamObject, GroupEditableListAdapter.GroupViewHolder, TextStreamListAdapter> implements IconSupport, TitleSupport {
    private StatusReceiver mStatusReceiver = new StatusReceiver();

    public int getIconRes() {
        return R.drawable.ic_short_text_white_24dp;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setDefaultOrderingCriteria(110);
        setDefaultSortingCriteria(110);
        setDefaultGroupingCriteria(110);
        setDefaultSelectionCallback(new SelectionCallback(this));
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(View view, ViewGroup viewGroup) {
        FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R.layout.layout_text_stream, (ViewGroup) null, false);
        viewGroup.addView(frameLayout);
        ((FloatingActionButton) frameLayout.findViewById(R.id.layout_text_stream_fab)).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                TextStreamListFragment.this.startActivity(new Intent(TextStreamListFragment.this.getActivity(), TextEditorActivity.class).setAction(TextEditorActivity.ACTION_EDIT_TEXT));
            }
        });
        return super.onListView(view, (ViewGroup) (FrameLayout) frameLayout.findViewById(R.id.layout_text_stream_content));
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_forum_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyTextStream));
        getListView().setClipToPadding(false);
        getListView().setPadding(0, 0, 0, (int) (getResources().getDimension(R.dimen.fab_margin) * 6.0f));
    }

    public void onSortingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_sortByName), 100);
        map.put(getString(R.string.text_sortByDate), 110);
    }

    public void onGroupingOptions(Map<String, Integer> map) {
        map.put(getString(R.string.text_groupByNothing), 100);
        map.put(getString(R.string.text_groupByDate), 110);
    }

    public int onGridSpanSize(int i, int i2) {
        return i == 100 ? i2 : super.onGridSpanSize(i, i2);
    }

    public TextStreamListAdapter onAdapter() {
        final AnonymousClass2 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    TextStreamListFragment.this.registerLayoutViewClicks(groupViewHolder);
                }
            }
        };
        return new TextStreamListAdapter(getActivity(), AppUtils.getDatabase(getContext())) {
            public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (GroupEditableListAdapter.GroupViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public boolean onDefaultClickAction(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            startActivity(new Intent(getContext(), TextEditorActivity.class).setAction(TextEditorActivity.ACTION_EDIT_TEXT).putExtra(TextEditorActivity.EXTRA_CLIPBOARD_ID, ((TextStreamObject) ((TextStreamListAdapter) getAdapter()).getItem(groupViewHolder.getAdapterPosition())).id).setFlags(268435456));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mStatusReceiver, new IntentFilter(AccessDatabase.ACTION_DATABASE_CHANGE));
        refreshList();
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mStatusReceiver);
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_textStream);
    }

    private static class SelectionCallback extends EditableListFragment.SelectionCallback<TextStreamObject> {
        public SelectionCallback(EditableListFragmentImpl<TextStreamObject> editableListFragmentImpl) {
            super(editableListFragmentImpl);
        }

        public boolean onCreateActionMenu(Context context, PowerfulActionMode powerfulActionMode, Menu menu) {
            super.onCreateActionMenu(context, powerfulActionMode, menu);
            powerfulActionMode.getMenuInflater().inflate(R.menu.action_mode_text_stream, menu);
            return true;
        }

        public boolean onActionMenuItemSelected(Context context, PowerfulActionMode powerfulActionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            List selectedItemList = getFragment().getSelectionConnection().getSelectedItemList();
            if (itemId == R.id.action_mode_text_stream_delete) {
                AppUtils.getDatabase(getFragment().getContext()).remove(selectedItemList);
            } else if (itemId != R.id.action_mode_share_all_apps && itemId != R.id.action_mode_share_trebleshot) {
                return super.onActionMenuItemSelected(context, powerfulActionMode, menuItem);
            } else {
                if (selectedItemList.size() == 1) {
                    Intent type = new Intent(menuItem.getItemId() == R.id.action_mode_share_all_apps ? "android.intent.action.SEND" : ShareActivity.ACTION_SEND).putExtra("android.intent.extra.TEXT", ((TextStreamObject) selectedItemList.get(0)).text).setType("text/*");
                    Context context2 = getAdapter().getContext();
                    if (menuItem.getItemId() == R.id.action_mode_share_all_apps) {
                        type = Intent.createChooser(type, getFragment().getContext().getString(R.string.text_fileShareAppChoose));
                    }
                    context2.startActivity(type);
                } else {
                    Toast.makeText(context, R.string.mesg_textShareLimit, 0).show();
                    return false;
                }
            }
            return true;
        }
    }

    private class StatusReceiver extends BroadcastReceiver {
        private StatusReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if (AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction()) && intent.hasExtra(AccessDatabase.EXTRA_TABLE_NAME) && intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME).equals(AccessDatabase.TABLE_CLIPBOARD)) {
                TextStreamListFragment.this.refreshList();
            }
        }
    }
}
