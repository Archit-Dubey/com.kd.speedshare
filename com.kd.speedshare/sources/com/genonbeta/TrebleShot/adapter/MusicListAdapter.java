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
import androidx.collection.ArrayMap;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.framework.util.listing.merger.StringMerger;
import com.kd.speedshare.R;
import java.io.File;
import java.util.List;

public class MusicListAdapter extends GroupEditableListAdapter<SongHolder, GroupEditableListAdapter.GroupViewHolder> implements GroupEditableListAdapter.GroupLister.CustomGroupLister<SongHolder> {
    public static final int MODE_GROUP_BY_ALBUM = 101;
    public static final int MODE_GROUP_BY_ARTIST = 102;
    public static final int MODE_GROUP_BY_FOLDER = 103;
    private ContentResolver mResolver;

    public MusicListAdapter(Context context) {
        super(context, 102);
        this.mResolver = context.getContentResolver();
    }

    /* access modifiers changed from: protected */
    public void onLoad(GroupEditableListAdapter.GroupLister<SongHolder> groupLister) {
        ArrayMap arrayMap = new ArrayMap();
        Cursor query = this.mResolver.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, (String[]) null, "is_music=?", new String[]{String.valueOf(1)}, (String) null);
        Cursor query2 = this.mResolver.query(MediaStore.Audio.Albums.EXTERNAL_CONTENT_URI, (String[]) null, (String) null, (String[]) null, (String) null);
        if (query2 != null) {
            if (query2.moveToFirst()) {
                int columnIndex = query2.getColumnIndex("_id");
                int columnIndex2 = query2.getColumnIndex("album_art");
                int columnIndex3 = query2.getColumnIndex("album");
                do {
                    arrayMap.put(Integer.valueOf(query2.getInt(columnIndex)), new AlbumHolder(query2.getInt(columnIndex), query2.getString(columnIndex3), query2.getString(columnIndex2)));
                } while (query2.moveToNext());
            }
            query2.close();
        }
        if (query != null) {
            if (query.moveToFirst()) {
                int columnIndex4 = query.getColumnIndex("_id");
                int columnIndex5 = query.getColumnIndex("artist");
                int columnIndex6 = query.getColumnIndex("title");
                int columnIndex7 = query.getColumnIndex("_data");
                int columnIndex8 = query.getColumnIndex("album_id");
                int columnIndex9 = query.getColumnIndex("_display_name");
                int columnIndex10 = query.getColumnIndex("date_modified");
                int columnIndex11 = query.getColumnIndex("_size");
                int columnIndex12 = query.getColumnIndex("mime_type");
                while (true) {
                    long j = query.getLong(columnIndex4);
                    String string = query.getString(columnIndex9);
                    String string2 = query.getString(columnIndex5);
                    String string3 = query.getString(columnIndex6);
                    String extractFolderName = extractFolderName(query.getString(columnIndex7));
                    String string4 = query.getString(columnIndex12);
                    int i = query.getInt(columnIndex8);
                    long j2 = query.getLong(columnIndex11);
                    StringBuilder sb = new StringBuilder();
                    ArrayMap arrayMap2 = arrayMap;
                    sb.append(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
                    sb.append("/");
                    sb.append(query.getInt(columnIndex4));
                    int i2 = columnIndex4;
                    SongHolder songHolder = r12;
                    SongHolder songHolder2 = new SongHolder(j, string, string2, string3, extractFolderName, string4, i, (AlbumHolder) arrayMap.get(Integer.valueOf(query.getInt(columnIndex8))), query.getLong(columnIndex10) * 1000, j2, Uri.parse(sb.toString()));
                    groupLister.offerObliged(this, songHolder);
                    if (!query.moveToNext()) {
                        break;
                    }
                    arrayMap = arrayMap2;
                    columnIndex4 = i2;
                }
            }
            query.close();
        }
    }

    /* access modifiers changed from: protected */
    public SongHolder onGenerateRepresentative(String str) {
        return new SongHolder(str);
    }

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.list_music, viewGroup, false));
    }

    public void onBindViewHolder(GroupEditableListAdapter.GroupViewHolder groupViewHolder, int i) {
        try {
            SongHolder songHolder = (SongHolder) getItem(i);
            View view = groupViewHolder.getView();
            if (!groupViewHolder.tryBinding(songHolder)) {
                ImageView imageView = (ImageView) view.findViewById(R.id.image);
                TextView textView = (TextView) view.findViewById(R.id.text2);
                TextView textView2 = (TextView) view.findViewById(R.id.text3);
                TextView textView3 = (TextView) view.findViewById(R.id.textSeparator1);
                ((TextView) view.findViewById(R.id.text)).setText(songHolder.song);
                if (getGroupBy() != 101) {
                    if (getGroupBy() != 102) {
                        textView.setText(songHolder.artist);
                        textView2.setText(songHolder.albumHolder.title);
                        textView2.setVisibility(0);
                        textView3.setVisibility(0);
                        view.setSelected(songHolder.isSelectableSelected());
                        GlideApp.with(getContext()).load(songHolder.albumHolder.art).placeholder((int) R.drawable.ic_music_note_white_24dp).override(160).centerCrop().into(imageView);
                    }
                }
                textView.setText(getGroupBy() == 101 ? songHolder.artist : songHolder.albumHolder.title);
                textView2.setVisibility(8);
                textView3.setVisibility(8);
                view.setSelected(songHolder.isSelectableSelected());
                GlideApp.with(getContext()).load(songHolder.albumHolder.art).placeholder((int) R.drawable.ic_music_note_white_24dp).override(160).centerCrop().into(imageView);
            }
        } catch (Exception unused) {
        }
    }

    public boolean onCustomGroupListing(GroupEditableListAdapter.GroupLister<SongHolder> groupLister, int i, SongHolder songHolder) {
        if (i == 101) {
            groupLister.offer(songHolder, new StringMerger(songHolder.albumHolder.title));
            return true;
        } else if (i == 102) {
            groupLister.offer(songHolder, new StringMerger(songHolder.artist));
            return true;
        } else if (i != 103) {
            return false;
        } else {
            groupLister.offer(songHolder, new StringMerger(songHolder.folder));
            return true;
        }
    }

    public GroupEditableListAdapter.GroupLister<SongHolder> createLister(List<SongHolder> list, int i) {
        return super.createLister(list, i).setCustomLister(this);
    }

    public String extractFolderName(String str) {
        if (!str.contains(File.separator)) {
            return str;
        }
        String[] split = str.split(File.separator);
        return split.length >= 2 ? split[split.length - 2] : str;
    }

    public String getSectionName(int i, SongHolder songHolder) {
        if (!songHolder.isGroupRepresentative()) {
            if (getGroupBy() == 102) {
                return songHolder.artist;
            }
            if (getGroupBy() == 103) {
                return songHolder.folder;
            }
            if (getGroupBy() == 101) {
                return songHolder.albumHolder.title;
            }
        }
        return super.getSectionName(i, songHolder);
    }

    public static class SongHolder extends GroupEditableListAdapter.GroupShareable {
        public AlbumHolder albumHolder;
        public int albumId;
        public String artist;
        public String folder;
        public String song;

        public SongHolder(String str) {
            super(100, str);
        }

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public SongHolder(long r16, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, int r23, com.genonbeta.TrebleShot.adapter.MusicListAdapter.AlbumHolder r24, long r25, long r27, android.net.Uri r29) {
            /*
                r15 = this;
                r11 = r15
                r12 = r19
                r13 = r20
                r14 = r23
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r0.append(r13)
                java.lang.String r1 = " - "
                r0.append(r1)
                r0.append(r12)
                java.lang.String r3 = r0.toString()
                r0 = r15
                r1 = r16
                r4 = r18
                r5 = r22
                r6 = r25
                r8 = r27
                r10 = r29
                r0.<init>(r1, r3, r4, r5, r6, r8, r10)
                r11.artist = r12
                r11.song = r13
                r0 = r21
                r11.folder = r0
                r11.albumId = r14
                if (r24 != 0) goto L_0x0040
                com.genonbeta.TrebleShot.adapter.MusicListAdapter$AlbumHolder r0 = new com.genonbeta.TrebleShot.adapter.MusicListAdapter$AlbumHolder
                r1 = 0
                java.lang.String r2 = "-"
                r0.<init>(r14, r2, r1)
                goto L_0x0042
            L_0x0040:
                r0 = r24
            L_0x0042:
                r11.albumHolder = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.MusicListAdapter.SongHolder.<init>(long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, com.genonbeta.TrebleShot.adapter.MusicListAdapter$AlbumHolder, long, long, android.net.Uri):void");
        }

        public boolean applyFilter(String[] strArr) {
            if (super.applyFilter(strArr)) {
                return true;
            }
            for (String lowerCase : strArr) {
                if (this.folder.toLowerCase().contains(lowerCase.toLowerCase())) {
                    return true;
                }
            }
            return false;
        }

        public String getComparableName() {
            return this.song;
        }

        public boolean searchMatches(String str) {
            if (isGroupRepresentative()) {
                return super.searchMatches(str);
            }
            return TextUtils.searchWord(this.artist, str) || TextUtils.searchWord(this.song, str) || TextUtils.searchWord(this.albumHolder.title, str);
        }
    }

    public static class AlbumHolder {
        public String art;
        public int id;
        public String title;

        public AlbumHolder(int i, String str, String str2) {
            this.id = i;
            this.art = str2;
            this.title = str;
        }

        public boolean equals(Object obj) {
            if (obj instanceof AlbumHolder) {
                return ((AlbumHolder) obj).id == this.id;
            }
            return super.equals(obj);
        }
    }
}
