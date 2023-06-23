package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.MusicListAdapter;
import com.genonbeta.TrebleShot.app.GroupEditableListFragment;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.kd.speedshare.R;
import java.util.Map;

public class MusicListFragment extends GroupEditableListFragment<MusicListAdapter.SongHolder, GroupEditableListAdapter.GroupViewHolder, MusicListAdapter> implements TitleSupport {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setDefaultGroupingCriteria(101);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_library_music_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyMusic));
    }

    public void onResume() {
        super.onResume();
        getContext().getContentResolver().registerContentObserver(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, true, getDefaultContentObserver());
    }

    public void onPause() {
        super.onPause();
        getContext().getContentResolver().unregisterContentObserver(getDefaultContentObserver());
    }

    public void onGroupingOptions(Map<String, Integer> map) {
        super.onGroupingOptions(map);
        map.put(getString(R.string.text_groupByNothing), 100);
        map.put(getString(R.string.text_groupByDate), 110);
        map.put(getString(R.string.text_groupByAlbum), 101);
        map.put(getString(R.string.text_groupByArtist), 102);
        map.put(getString(R.string.text_groupByFolder), 103);
    }

    public MusicListAdapter onAdapter() {
        final AnonymousClass1 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(final GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    MusicListFragment.this.registerLayoutViewClicks(groupViewHolder);
                    groupViewHolder.getView().findViewById(R.id.visitView).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            MusicListFragment.this.performLayoutClickOpen(groupViewHolder);
                        }
                    });
                    groupViewHolder.getView().findViewById(R.id.selector).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            if (MusicListFragment.this.getSelectionConnection() != null) {
                                MusicListFragment.this.getSelectionConnection().setSelected(groupViewHolder.getAdapterPosition());
                            }
                        }
                    });
                }
            }
        };
        return new MusicListAdapter(getActivity()) {
            public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (GroupEditableListAdapter.GroupViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public boolean onDefaultClickAction(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        if (getSelectionConnection() != null) {
            return getSelectionConnection().setSelected((RecyclerView.ViewHolder) groupViewHolder);
        }
        return performLayoutClickOpen(groupViewHolder);
    }

    public int onGridSpanSize(int i, int i2) {
        return i == 100 ? i2 : super.onGridSpanSize(i, i2);
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_music);
    }
}
