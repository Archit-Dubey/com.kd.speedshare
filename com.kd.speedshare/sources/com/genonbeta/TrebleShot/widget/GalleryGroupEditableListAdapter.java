package com.genonbeta.TrebleShot.widget;

import android.content.Context;
import android.net.Uri;
import com.genonbeta.TrebleShot.widget.GalleryGroupEditableListAdapter.GalleryGroupShareable;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupViewHolder;
import com.genonbeta.android.framework.util.listing.merger.StringMerger;
import java.util.List;

public abstract class GalleryGroupEditableListAdapter<T extends GalleryGroupShareable, V extends GroupEditableListAdapter.GroupViewHolder> extends GroupEditableListAdapter<T, V> implements GroupEditableListAdapter.GroupLister.CustomGroupLister<T> {
    public static final int MODE_GROUP_BY_ALBUM = 111;

    public GalleryGroupEditableListAdapter(Context context, int i) {
        super(context, i);
    }

    public boolean onCustomGroupListing(GroupEditableListAdapter.GroupLister<T> groupLister, int i, T t) {
        if (i != 111) {
            return false;
        }
        groupLister.offer(t, new StringMerger(t.albumName));
        return true;
    }

    public GroupEditableListAdapter.GroupLister<T> createLister(List<T> list, int i) {
        return super.createLister(list, i).setCustomLister(this);
    }

    public String getSectionName(int i, T t) {
        if (t.isGroupRepresentative() || getGroupBy() != 111) {
            return super.getSectionName(i, t);
        }
        return t.albumName;
    }

    public static class GalleryGroupShareable extends GroupEditableListAdapter.GroupShareable {
        public String albumName;

        public GalleryGroupShareable(int i, String str) {
            super(i, str);
        }

        public GalleryGroupShareable(long j, String str, String str2, String str3, String str4, long j2, long j3, Uri uri) {
            super(j, str, str2, str4, j2, j3, uri);
            this.albumName = str3;
        }
    }
}
