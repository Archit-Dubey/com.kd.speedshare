package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.VideoListAdapter;
import com.genonbeta.TrebleShot.app.GalleryGroupEditableListFragment;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.kd.speedshare.R;

public class VideoListFragment extends GalleryGroupEditableListFragment<VideoListAdapter.VideoHolder, GroupEditableListAdapter.GroupViewHolder, VideoListAdapter> implements TitleSupport {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setDefaultOrderingCriteria(110);
        setDefaultSortingCriteria(110);
        setDefaultViewingGridSize(2, 4);
        setUseDefaultPaddingDecoration(false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_video_library_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyVideo));
    }

    public void onResume() {
        super.onResume();
        getContext().getContentResolver().registerContentObserver(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, true, getDefaultContentObserver());
    }

    public void onPause() {
        super.onPause();
        getContext().getContentResolver().unregisterContentObserver(getDefaultContentObserver());
    }

    public VideoListAdapter onAdapter() {
        final AnonymousClass1 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(final GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    VideoListFragment.this.registerLayoutViewClicks(groupViewHolder);
                    View findViewById = groupViewHolder.getView().findViewById(R.id.visitView);
                    findViewById.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            VideoListFragment.this.performLayoutClickOpen(groupViewHolder);
                        }
                    });
                    findViewById.setOnLongClickListener(new View.OnLongClickListener() {
                        public boolean onLongClick(View view) {
                            return VideoListFragment.this.performLayoutLongClick(groupViewHolder);
                        }
                    });
                    groupViewHolder.getView().findViewById(((VideoListAdapter) VideoListFragment.this.getAdapter()).isGridLayoutRequested() ? R.id.selectorContainer : R.id.selector).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            if (VideoListFragment.this.getSelectionConnection() != null) {
                                VideoListFragment.this.getSelectionConnection().setSelected(groupViewHolder.getAdapterPosition());
                            }
                        }
                    });
                }
            }
        };
        return new VideoListAdapter(getActivity()) {
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
        return i == 1 ? i2 : super.onGridSpanSize(i, i2);
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_video);
    }
}
