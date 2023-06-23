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
import com.genonbeta.TrebleShot.util.TimeUtils;
import com.genonbeta.TrebleShot.widget.GalleryGroupEditableListAdapter;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.kd.speedshare.R;

public class ImageListAdapter extends GalleryGroupEditableListAdapter<ImageHolder, GroupEditableListAdapter.GroupViewHolder> {
    private ContentResolver mResolver;
    private int mSelectedInset;

    public boolean isGridSupported() {
        return true;
    }

    public ImageListAdapter(Context context) {
        super(context, 111);
        this.mResolver = context.getContentResolver();
        this.mSelectedInset = (int) context.getResources().getDimension(R.dimen.space_list_grid);
    }

    /* access modifiers changed from: protected */
    public void onLoad(GroupEditableListAdapter.GroupLister<ImageHolder> groupLister) {
        Cursor query = this.mResolver.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, (String[]) null, (String) null, (String[]) null, (String) null);
        if (query != null) {
            if (query.moveToFirst()) {
                int columnIndex = query.getColumnIndex("_id");
                int columnIndex2 = query.getColumnIndex("title");
                int columnIndex3 = query.getColumnIndex("_display_name");
                int columnIndex4 = query.getColumnIndex("bucket_display_name");
                int columnIndex5 = query.getColumnIndex("date_added");
                int columnIndex6 = query.getColumnIndex("_size");
                int columnIndex7 = query.getColumnIndex("mime_type");
                while (true) {
                    long j = query.getLong(columnIndex);
                    String string = query.getString(columnIndex2);
                    String string2 = query.getString(columnIndex3);
                    String string3 = query.getString(columnIndex4);
                    String string4 = query.getString(columnIndex7);
                    long j2 = query.getLong(columnIndex6);
                    StringBuilder sb = new StringBuilder();
                    int i = columnIndex2;
                    sb.append(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                    sb.append("/");
                    sb.append(query.getInt(columnIndex));
                    int i2 = columnIndex;
                    ImageHolder imageHolder = r9;
                    ImageHolder imageHolder2 = new ImageHolder(j, string, string2, string3, string4, query.getLong(columnIndex5) * 1000, j2, Uri.parse(sb.toString()));
                    imageHolder.dateTakenString = String.valueOf(TimeUtils.formatDateTime(getContext(), imageHolder.date));
                    groupLister.offerObliged(this, imageHolder);
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

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(isGridLayoutRequested() ? R.layout.list_image_grid : R.layout.list_image, viewGroup, false));
    }

    public void onBindViewHolder(GroupEditableListAdapter.GroupViewHolder groupViewHolder, int i) {
        try {
            View view = groupViewHolder.getView();
            ImageHolder imageHolder = (ImageHolder) getItem(i);
            if (!groupViewHolder.tryBinding(imageHolder)) {
                ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.container);
                ((TextView) view.findViewById(R.id.text)).setText(imageHolder.friendlyName);
                ((TextView) view.findViewById(R.id.text2)).setText(imageHolder.dateTakenString);
                view.setSelected(imageHolder.isSelectableSelected());
                GlideApp.with(getContext()).load(imageHolder.uri).override(300).centerCrop().into((ImageView) view.findViewById(R.id.image));
            }
        } catch (Exception unused) {
        }
    }

    /* access modifiers changed from: protected */
    public ImageHolder onGenerateRepresentative(String str) {
        return new ImageHolder(str);
    }

    public static class ImageHolder extends GalleryGroupEditableListAdapter.GalleryGroupShareable {
        public String dateTakenString;

        public ImageHolder(String str) {
            super(100, str);
        }

        public ImageHolder(long j, String str, String str2, String str3, String str4, long j2, long j3, Uri uri) {
            super(j, str, str2, str3, str4, j2, j3, uri);
        }
    }
}
