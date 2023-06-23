package com.genonbeta.TrebleShot.app;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.collection.ArrayMap;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupEditable;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupViewHolder;
import com.kd.speedshare.R;
import java.util.Map;

public abstract class GroupEditableListFragment<T extends GroupEditableListAdapter.GroupEditable, V extends GroupEditableListAdapter.GroupViewHolder, E extends GroupEditableListAdapter<T, V>> extends EditableListFragment<T, V, E> {
    private int mDefaultGroupingCriteria = 100;
    private Map<String, Integer> mGroupingOptions = new ArrayMap();

    public void onGroupingOptions(Map<String, Integer> map) {
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((GroupEditableListAdapter) getAdapter()).setGroupBy(getGroupingCriteria());
    }

    public int onGridSpanSize(int i, int i2) {
        return (i == 100 || i == 110) ? i2 : super.onGridSpanSize(i, i2);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        ArrayMap arrayMap = new ArrayMap();
        onGroupingOptions(arrayMap);
        this.mGroupingOptions.clear();
        this.mGroupingOptions.putAll(arrayMap);
        if (this.mGroupingOptions.size() > 0) {
            menuInflater.inflate(R.menu.actions_abs_group_shareable_list, menu);
            MenuItem findItem = menu.findItem(R.id.actions_abs_group_shareable_grouping);
            if (findItem != null) {
                applyDynamicMenuItems(findItem, R.id.actions_abs_group_shareable_group_grouping, this.mGroupingOptions);
            }
        }
    }

    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        checkPreferredDynamicItem(menu.findItem(R.id.actions_abs_group_shareable_grouping), getGroupingCriteria(), this.mGroupingOptions);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getGroupId() != R.id.actions_abs_group_shareable_group_grouping) {
            return super.onOptionsItemSelected(menuItem);
        }
        changeGroupingCriteria(menuItem.getOrder());
        return true;
    }

    public void changeGroupingCriteria(int i) {
        getViewPreferences().edit().putInt(getUniqueSettingKey("GroupBy"), i).apply();
        ((GroupEditableListAdapter) getAdapter()).setGroupBy(i);
        refreshList();
    }

    public int getGroupingCriteria() {
        return getViewPreferences().getInt(getUniqueSettingKey("GroupBy"), this.mDefaultGroupingCriteria);
    }

    public void setDefaultGroupingCriteria(int i) {
        this.mDefaultGroupingCriteria = i;
    }
}
