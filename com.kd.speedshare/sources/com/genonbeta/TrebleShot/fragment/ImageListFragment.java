package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.ImageListAdapter;
import com.genonbeta.TrebleShot.app.GalleryGroupEditableListFragment;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.kd.speedshare.R;

public class ImageListFragment extends GalleryGroupEditableListFragment<ImageListAdapter.ImageHolder, GroupEditableListAdapter.GroupViewHolder, ImageListAdapter> implements TitleSupport {
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
        setEmptyImage(R.drawable.ic_photo_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyImage));
    }

    public void onResume() {
        super.onResume();
        getContext().getContentResolver().registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, getDefaultContentObserver());
    }

    public void onPause() {
        super.onPause();
        getContext().getContentResolver().unregisterContentObserver(getDefaultContentObserver());
    }

    public ImageListAdapter onAdapter() {
        final AnonymousClass1 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(final GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    ImageListFragment.this.registerLayoutViewClicks(groupViewHolder);
                    View findViewById = groupViewHolder.getView().findViewById(R.id.visitView);
                    findViewById.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            ImageListFragment.this.performLayoutClickOpen(groupViewHolder);
                        }
                    });
                    findViewById.setOnLongClickListener(new View.OnLongClickListener() {
                        public boolean onLongClick(View view) {
                            return ImageListFragment.this.performLayoutLongClick(groupViewHolder);
                        }
                    });
                    groupViewHolder.getView().findViewById(((ImageListAdapter) ImageListFragment.this.getAdapter()).isGridLayoutRequested() ? R.id.selectorContainer : R.id.selector).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            if (ImageListFragment.this.getSelectionConnection() != null) {
                                ImageListFragment.this.getSelectionConnection().setSelected(groupViewHolder.getAdapterPosition());
                            }
                        }
                    });
                }
            }
        };
        return new ImageListAdapter(getActivity()) {
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

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_photo);
    }
}
