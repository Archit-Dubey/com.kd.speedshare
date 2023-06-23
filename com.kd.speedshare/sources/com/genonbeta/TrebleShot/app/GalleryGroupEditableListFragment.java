package com.genonbeta.TrebleShot.app;

import android.os.Bundle;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupShareable;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupViewHolder;
import com.kd.speedshare.R;
import java.util.Map;

public abstract class GalleryGroupEditableListFragment<T extends GroupEditableListAdapter.GroupShareable, V extends GroupEditableListAdapter.GroupViewHolder, E extends GroupEditableListAdapter<T, V>> extends GroupEditableListFragment<T, V, E> {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDefaultGroupingCriteria(110);
    }

    public void onGroupingOptions(Map<String, Integer> map) {
        super.onGroupingOptions(map);
        map.put(getString(R.string.text_groupByNothing), 100);
        map.put(getString(R.string.text_groupByDate), 110);
        map.put(getString(R.string.text_groupByAlbum), 111);
    }
}
