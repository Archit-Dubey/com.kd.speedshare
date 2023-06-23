package com.genonbeta.TrebleShot.adapter;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.TimeUtils;
import com.genonbeta.TrebleShot.widget.GalleryGroupEditableListAdapter;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.kd.speedshare.R;

public class VideoListAdapter extends GalleryGroupEditableListAdapter<VideoHolder, GroupEditableListAdapter.GroupViewHolder> {
    public static final int VIEW_TYPE_TITLE = 1;
    private ContentResolver mResolver;
    private int mSelectedInset;

    public boolean isGridSupported() {
        return true;
    }

    public VideoListAdapter(Context context) {
        super(context, 110);
        this.mResolver = context.getContentResolver();
        this.mSelectedInset = (int) context.getResources().getDimension(R.dimen.space_list_grid);
    }

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(isGridLayoutRequested() ? R.layout.list_video_grid : R.layout.list_video, viewGroup, false));
    }

    public void onBindViewHolder(GroupEditableListAdapter.GroupViewHolder groupViewHolder, int i) {
        try {
            VideoHolder videoHolder = (VideoHolder) getItem(i);
            View view = groupViewHolder.getView();
            if (!groupViewHolder.tryBinding(videoHolder)) {
                ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.container);
                ((TextView) view.findViewById(R.id.text)).setText(videoHolder.friendlyName);
                ((TextView) view.findViewById(R.id.text2)).setText(videoHolder.duration);
                ((TextView) view.findViewById(R.id.text3)).setText(FileUtils.sizeExpression(videoHolder.size, false));
                view.setSelected(videoHolder.isSelectableSelected());
                GlideApp.with(getContext()).load(videoHolder.uri).override(300).centerCrop().into((ImageView) view.findViewById(R.id.image));
            }
        } catch (Exception unused) {
        }
    }

    /* access modifiers changed from: protected */
    public void onLoad(GroupEditableListAdapter.GroupLister<VideoHolder> groupLister) {
        Cursor query = this.mResolver.query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, (String[]) null, (String) null, (String[]) null, (String) null);
        if (query != null) {
            if (query.moveToFirst()) {
                int columnIndex = query.getColumnIndex("_id");
                int columnIndex2 = query.getColumnIndex("title");
                int columnIndex3 = query.getColumnIndex("_display_name");
                int columnIndex4 = query.getColumnIndex("bucket_display_name");
                int columnIndex5 = query.getColumnIndex("duration");
                int columnIndex6 = query.getColumnIndex("date_modified");
                int columnIndex7 = query.getColumnIndex("_size");
                int columnIndex8 = query.getColumnIndex("mime_type");
                while (true) {
                    long j = (long) query.getInt(columnIndex);
                    String string = query.getString(columnIndex2);
                    String string2 = query.getString(columnIndex3);
                    String string3 = query.getString(columnIndex4);
                    String string4 = query.getString(columnIndex8);
                    long j2 = query.getLong(columnIndex5);
                    long j3 = query.getLong(columnIndex7);
                    StringBuilder sb = new StringBuilder();
                    int i = columnIndex2;
                    sb.append(MediaStore.Video.Media.EXTERNAL_CONTENT_URI);
                    sb.append("/");
                    sb.append(query.getInt(columnIndex));
                    int i2 = columnIndex;
                    VideoHolder videoHolder = r10;
                    VideoHolder videoHolder2 = new VideoHolder(j, string, string2, string3, string4, j2, query.getLong(columnIndex6) * 1000, j3, Uri.parse(sb.toString()));
                    groupLister.offerObliged(this, videoHolder);
                    if (!query.moveToNext()) {
                        break;
                    }
                    columnIndex2 = i;
                    columnIndex = i2;
                }
            }
            query.close();
        }
    }

    /* access modifiers changed from: protected */
    public VideoHolder onGenerateRepresentative(String str) {
        return new VideoHolder(str);
    }

    public static class VideoHolder extends GalleryGroupEditableListAdapter.GalleryGroupShareable {
        public String duration;

        public VideoHolder(String str) {
            super(100, str);
        }

        public VideoHolder(long j, String str, String str2, String str3, String str4, long j2, long j3, long j4, Uri uri) {
            super(j, str, str2, str3, str4, j3, j4, uri);
            this.duration = TimeUtils.getDuration(j2);
        }
    }
}
