package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.FileShortcutObject;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.object.WritablePathObject;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.MimeIconUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.util.MathUtils;
import com.genonbeta.android.framework.util.listing.ComparableMerger;
import com.genonbeta.android.framework.util.listing.Merger;
import com.kd.speedshare.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;

public class FileListAdapter extends GroupEditableListAdapter<GenericFileHolder, GroupEditableListAdapter.GroupViewHolder> implements GroupEditableListAdapter.GroupLister.CustomGroupLister<GenericFileHolder> {
    public static final int MODE_GROUP_BY_DEFAULT = 101;
    public static final int REQUEST_CODE_MOUNT_FOLDER = 1;
    private String mFileMatch;
    private DocumentFile mPath;
    private boolean mShowDirectories = true;
    private boolean mShowFiles = true;
    private boolean mShowThumbnails = true;

    public interface StorageHolderImpl {
    }

    public FileListAdapter(Context context) {
        super(context, 101);
    }

    /*  JADX ERROR: StackOverflow in pass: MarkFinallyVisitor
        jadx.core.utils.exceptions.JadxOverflowException: 
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    protected void onLoad(com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupLister<com.genonbeta.TrebleShot.adapter.FileListAdapter.GenericFileHolder> r18) {
        /*
            r17 = this;
            r1 = r17
            r2 = r18
            android.content.Context r0 = r17.getContext()
            com.genonbeta.android.framework.preference.SuperPreferences r0 = com.genonbeta.TrebleShot.util.AppUtils.getDefaultPreferences(r0)
            java.lang.String r3 = "load_thumbnails"
            r4 = 1
            boolean r0 = r0.getBoolean(r3, r4)
            r1.mShowThumbnails = r0
            com.genonbeta.android.framework.io.DocumentFile r0 = r17.getPath()
            java.lang.String r3 = "transfer"
            r5 = 0
            r6 = 2131165387(0x7f0700cb, float:1.794499E38)
            r7 = 2131820967(0x7f1101a7, float:1.9274664E38)
            r8 = 0
            if (r0 == 0) goto L_0x00c2
            com.genonbeta.android.framework.io.DocumentFile[] r0 = r0.listFiles()
            if (r0 == 0) goto L_0x043a
            int r9 = r0.length
            if (r9 <= 0) goto L_0x043a
            int r9 = r0.length
            r10 = 0
        L_0x0030:
            if (r10 >= r9) goto L_0x043a
            r11 = r0[r10]
            java.lang.String r12 = r1.mFileMatch
            if (r12 == 0) goto L_0x0046
            java.lang.String r12 = r11.getName()
            java.lang.String r13 = r1.mFileMatch
            boolean r12 = r12.matches(r13)
            if (r12 != 0) goto L_0x0046
            goto L_0x00be
        L_0x0046:
            boolean r12 = r11.isDirectory()
            if (r12 == 0) goto L_0x0061
            boolean r12 = r1.mShowDirectories
            if (r12 == 0) goto L_0x0061
            com.genonbeta.TrebleShot.adapter.FileListAdapter$DirectoryHolder r12 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$DirectoryHolder
            android.content.Context r13 = r17.getContext()
            java.lang.String r13 = r13.getString(r7)
            r12.<init>(r11, r13, r6)
            r2.offerObliged(r1, r12)
            goto L_0x00be
        L_0x0061:
            boolean r12 = r11.isFile()
            if (r12 == 0) goto L_0x00be
            boolean r12 = r1.mShowFiles
            if (r12 == 0) goto L_0x00be
            java.lang.String r12 = r11.getName()
            java.lang.String r12 = com.genonbeta.TrebleShot.util.FileUtils.getFileFormat(r12)
            java.lang.String r13 = "tshare"
            boolean r12 = r13.equals(r12)
            if (r12 == 0) goto L_0x00b2
            android.content.Context r12 = r17.getContext()     // Catch:{ Exception -> 0x00a4 }
            com.genonbeta.TrebleShot.database.AccessDatabase r12 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r12)     // Catch:{ Exception -> 0x00a4 }
            com.genonbeta.android.database.SQLQuery$Select r13 = new com.genonbeta.android.database.SQLQuery$Select     // Catch:{ Exception -> 0x00a4 }
            java.lang.String[] r14 = new java.lang.String[r8]     // Catch:{ Exception -> 0x00a4 }
            r13.<init>(r3, r14)     // Catch:{ Exception -> 0x00a4 }
            java.lang.String r14 = "file=?"
            java.lang.String[] r15 = new java.lang.String[r4]     // Catch:{ Exception -> 0x00a4 }
            java.lang.String r16 = r11.getName()     // Catch:{ Exception -> 0x00a4 }
            r15[r8] = r16     // Catch:{ Exception -> 0x00a4 }
            com.genonbeta.android.database.SQLQuery$Select r13 = r13.setWhere(r14, r15)     // Catch:{ Exception -> 0x00a4 }
            com.genonbeta.android.database.CursorItem r12 = r12.getFirstFromTable(r13)     // Catch:{ Exception -> 0x00a4 }
            if (r12 == 0) goto L_0x00a4
            com.genonbeta.TrebleShot.object.TransferObject r13 = new com.genonbeta.TrebleShot.object.TransferObject     // Catch:{ Exception -> 0x00a4 }
            r13.<init>(r12)     // Catch:{ Exception -> 0x00a4 }
            goto L_0x00a5
        L_0x00a4:
            r13 = r5
        L_0x00a5:
            com.genonbeta.TrebleShot.adapter.FileListAdapter$ReceivedFileHolder r12 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$ReceivedFileHolder
            android.content.Context r14 = r17.getContext()
            r12.<init>(r14, r11, r13)
            r2.offerObliged(r1, r12)
            goto L_0x00be
        L_0x00b2:
            com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolder r12 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolder
            android.content.Context r13 = r17.getContext()
            r12.<init>(r13, r11)
            r2.offerObliged(r1, r12)
        L_0x00be:
            int r10 = r10 + 1
            goto L_0x0030
        L_0x00c2:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.content.Context r9 = r17.getContext()
            com.genonbeta.android.framework.io.DocumentFile r9 = com.genonbeta.TrebleShot.util.FileUtils.getApplicationDirectory(r9)
            com.genonbeta.TrebleShot.adapter.FileListAdapter$DirectoryHolder r10 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$DirectoryHolder
            android.content.Context r11 = r17.getContext()
            r12 = 2131821050(0x7f1101fa, float:1.9274832E38)
            java.lang.String r11 = r11.getString(r12)
            r12 = 2131165441(0x7f070101, float:1.79451E38)
            r10.<init>(r9, r11, r12)
            r2.offerObliged(r1, r10)
            com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder r9 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder
            java.lang.String r10 = android.os.Environment.DIRECTORY_DCIM
            java.io.File r10 = android.os.Environment.getExternalStoragePublicDirectory(r10)
            android.content.Context r11 = r17.getContext()
            r12 = 2131821038(0x7f1101ee, float:1.9274808E38)
            java.lang.String r11 = r11.getString(r12)
            r12 = 2131165418(0x7f0700ea, float:1.7945053E38)
            r9.<init>((com.genonbeta.TrebleShot.adapter.FileListAdapter) r1, (java.io.File) r10, (java.lang.String) r11, (int) r12)
            r2.offerObliged(r1, r9)
            int r9 = android.os.Build.VERSION.SDK_INT
            r10 = 19
            if (r9 < r10) goto L_0x0123
            com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder r9 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder
            java.lang.String r11 = android.os.Environment.DIRECTORY_DOCUMENTS
            java.io.File r11 = android.os.Environment.getExternalStoragePublicDirectory(r11)
            android.content.Context r12 = r17.getContext()
            r13 = 2131820934(0x7f110186, float:1.9274597E38)
            java.lang.String r12 = r12.getString(r13)
            r13 = 2131165403(0x7f0700db, float:1.7945022E38)
            r9.<init>((com.genonbeta.TrebleShot.adapter.FileListAdapter) r1, (java.io.File) r11, (java.lang.String) r12, (int) r13)
            r2.offerObliged(r1, r9)
        L_0x0123:
            com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder r9 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder
            java.lang.String r11 = android.os.Environment.DIRECTORY_DOWNLOADS
            java.io.File r11 = android.os.Environment.getExternalStoragePublicDirectory(r11)
            android.content.Context r12 = r17.getContext()
            r13 = 2131820937(0x7f110189, float:1.9274603E38)
            java.lang.String r12 = r12.getString(r13)
            r13 = 2131165378(0x7f0700c2, float:1.7944971E38)
            r9.<init>((com.genonbeta.TrebleShot.adapter.FileListAdapter) r1, (java.io.File) r11, (java.lang.String) r12, (int) r13)
            r2.offerObliged(r1, r9)
            com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder r9 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$PublicDirectoryHolder
            java.lang.String r11 = android.os.Environment.DIRECTORY_MUSIC
            java.io.File r11 = android.os.Environment.getExternalStoragePublicDirectory(r11)
            android.content.Context r12 = r17.getContext()
            r13 = 2131821018(0x7f1101da, float:1.9274767E38)
            java.lang.String r12 = r12.getString(r13)
            r13 = 2131165411(0x7f0700e3, float:1.7945038E38)
            r9.<init>((com.genonbeta.TrebleShot.adapter.FileListAdapter) r1, (java.io.File) r11, (java.lang.String) r12, (int) r13)
            r2.offerObliged(r1, r9)
            java.io.File r9 = new java.io.File
            java.lang.String r11 = "."
            r9.<init>(r11)
            boolean r11 = r9.canRead()
            if (r11 == 0) goto L_0x0187
            com.genonbeta.TrebleShot.adapter.FileListAdapter$DirectoryHolder r11 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$DirectoryHolder
            com.genonbeta.android.framework.io.DocumentFile r9 = com.genonbeta.android.framework.io.DocumentFile.fromFile(r9)
            android.content.Context r12 = r17.getContext()
            r13 = 2131820954(0x7f11019a, float:1.9274638E38)
            java.lang.String r12 = r12.getString(r13)
            android.content.Context r13 = r17.getContext()
            java.lang.String r7 = r13.getString(r7)
            r11.<init>(r9, r12, r7, r6)
            r2.offerObliged(r1, r11)
        L_0x0187:
            int r6 = android.os.Build.VERSION.SDK_INT
            r7 = 21
            if (r6 < r7) goto L_0x019d
            android.content.Context r5 = r17.getContext()
            java.io.File[] r5 = r5.getExternalMediaDirs()
            java.util.List r5 = java.util.Arrays.asList(r5)
            r0.addAll(r5)
            goto L_0x01b8
        L_0x019d:
            int r6 = android.os.Build.VERSION.SDK_INT
            if (r6 < r10) goto L_0x01b1
            android.content.Context r6 = r17.getContext()
            java.io.File[] r5 = r6.getExternalFilesDirs(r5)
            java.util.List r5 = java.util.Arrays.asList(r5)
            r0.addAll(r5)
            goto L_0x01b8
        L_0x01b1:
            java.io.File r5 = android.os.Environment.getExternalStorageDirectory()
            r0.add(r5)
        L_0x01b8:
            java.util.Iterator r0 = r0.iterator()
        L_0x01bc:
            boolean r5 = r0.hasNext()
            r6 = 2131821097(0x7f110229, float:1.9274928E38)
            r9 = 2
            r10 = 3
            if (r5 == 0) goto L_0x0271
            java.lang.Object r5 = r0.next()
            java.io.File r5 = (java.io.File) r5
            if (r5 == 0) goto L_0x01bc
            boolean r11 = r5.canWrite()
            if (r11 != 0) goto L_0x01d6
            goto L_0x01bc
        L_0x01d6:
            com.genonbeta.TrebleShot.adapter.FileListAdapter$StorageHolder r11 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$StorageHolder
            com.genonbeta.android.framework.io.DocumentFile r12 = com.genonbeta.android.framework.io.DocumentFile.fromFile(r5)
            android.content.Context r13 = r17.getContext()
            java.lang.String r6 = r13.getString(r6)
            r13 = 2131165429(0x7f0700f5, float:1.7945075E38)
            r11.<init>(r12, r6, r13)
            java.lang.String r5 = r5.getAbsolutePath()
            java.lang.String r6 = java.io.File.separator
            java.lang.String[] r5 = r5.split(r6)
            int r6 = r5.length
            if (r6 < r9) goto L_0x026c
            r6 = r5[r4]
            java.lang.String r12 = "storage"
            boolean r6 = r6.equals(r12)
            if (r6 == 0) goto L_0x026c
            int r6 = r5.length
            r12 = 4
            if (r6 < r12) goto L_0x024e
            r6 = r5[r9]
            java.lang.String r13 = "emulated"
            boolean r6 = r6.equals(r13)
            if (r6 == 0) goto L_0x024e
            java.io.File r6 = new java.io.File
            java.lang.String r9 = r1.buildPath(r5, r12)
            r6.<init>(r9)
            boolean r9 = r6.canWrite()
            if (r9 == 0) goto L_0x026c
            com.genonbeta.android.framework.io.DocumentFile r6 = com.genonbeta.android.framework.io.DocumentFile.fromFile(r6)
            r11.file = r6
            r6 = r5[r10]
            java.lang.String r9 = "0"
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L_0x023a
            android.content.Context r5 = r17.getContext()
            r6 = 2131820987(0x7f1101bb, float:1.9274704E38)
            java.lang.String r5 = r5.getString(r6)
            goto L_0x024b
        L_0x023a:
            android.content.Context r6 = r17.getContext()
            r9 = 2131820942(0x7f11018e, float:1.9274613E38)
            java.lang.Object[] r12 = new java.lang.Object[r4]
            r5 = r5[r10]
            r12[r8] = r5
            java.lang.String r5 = r6.getString(r9, r12)
        L_0x024b:
            r11.friendlyName = r5
            goto L_0x026c
        L_0x024e:
            int r6 = r5.length
            if (r6 < r10) goto L_0x026c
            java.io.File r6 = new java.io.File
            java.lang.String r10 = r1.buildPath(r5, r10)
            r6.<init>(r10)
            boolean r10 = r6.canWrite()
            if (r10 != 0) goto L_0x0262
            goto L_0x01bc
        L_0x0262:
            r5 = r5[r9]
            r11.friendlyName = r5
            com.genonbeta.android.framework.io.DocumentFile r5 = com.genonbeta.android.framework.io.DocumentFile.fromFile(r6)
            r11.file = r5
        L_0x026c:
            r2.offerObliged(r1, r11)
            goto L_0x01bc
        L_0x0271:
            android.content.Context r0 = r17.getContext()
            com.genonbeta.TrebleShot.database.AccessDatabase r0 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r0)
            com.genonbeta.android.database.SQLQuery$Select r5 = new com.genonbeta.android.database.SQLQuery$Select
            java.lang.String[] r11 = new java.lang.String[r8]
            java.lang.String r12 = "fileBookmark"
            r5.<init>(r12, r11)
            java.lang.Class<com.genonbeta.TrebleShot.object.FileShortcutObject> r11 = com.genonbeta.TrebleShot.object.FileShortcutObject.class
            java.util.List r0 = r0.castQuery(r5, r11)
            java.util.Iterator r0 = r0.iterator()
        L_0x028c:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L_0x02a7
            java.lang.Object r5 = r0.next()
            com.genonbeta.TrebleShot.object.FileShortcutObject r5 = (com.genonbeta.TrebleShot.object.FileShortcutObject) r5
            com.genonbeta.TrebleShot.adapter.FileListAdapter$ShortcutDirectoryHolder r11 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$ShortcutDirectoryHolder     // Catch:{ Exception -> 0x02a5 }
            android.content.Context r12 = r17.getContext()     // Catch:{ Exception -> 0x02a5 }
            r11.<init>(r12, r5)     // Catch:{ Exception -> 0x02a5 }
            r2.offerObliged(r1, r11)     // Catch:{ Exception -> 0x02a5 }
            goto L_0x028c
        L_0x02a5:
            goto L_0x028c
        L_0x02a7:
            android.content.Context r0 = r17.getContext()
            com.genonbeta.TrebleShot.database.AccessDatabase r0 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r0)
            com.genonbeta.android.database.SQLQuery$Select r5 = new com.genonbeta.android.database.SQLQuery$Select
            java.lang.String[] r11 = new java.lang.String[r8]
            java.lang.String r12 = "writablePath"
            r5.<init>(r12, r11)
            java.lang.Class<com.genonbeta.TrebleShot.object.WritablePathObject> r11 = com.genonbeta.TrebleShot.object.WritablePathObject.class
            java.util.List r0 = r0.castQuery(r5, r11)
            int r5 = android.os.Build.VERSION.SDK_INT
            if (r5 < r7) goto L_0x030a
            java.util.Iterator r5 = r0.iterator()
        L_0x02c6:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L_0x02f2
            java.lang.Object r0 = r5.next()
            com.genonbeta.TrebleShot.object.WritablePathObject r0 = (com.genonbeta.TrebleShot.object.WritablePathObject) r0
            com.genonbeta.TrebleShot.adapter.FileListAdapter$WritablePathHolder r7 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$WritablePathHolder     // Catch:{ FileNotFoundException -> 0x02ed }
            android.content.Context r11 = r17.getContext()     // Catch:{ FileNotFoundException -> 0x02ed }
            android.net.Uri r12 = r0.path     // Catch:{ FileNotFoundException -> 0x02ed }
            com.genonbeta.android.framework.io.DocumentFile r11 = com.genonbeta.android.framework.io.DocumentFile.fromUri(r11, r12, r4)     // Catch:{ FileNotFoundException -> 0x02ed }
            android.content.Context r12 = r17.getContext()     // Catch:{ FileNotFoundException -> 0x02ed }
            java.lang.String r12 = r12.getString(r6)     // Catch:{ FileNotFoundException -> 0x02ed }
            r7.<init>(r11, r0, r12)     // Catch:{ FileNotFoundException -> 0x02ed }
            r2.offerObliged(r1, r7)     // Catch:{ FileNotFoundException -> 0x02ed }
            goto L_0x02c6
        L_0x02ed:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x02c6
        L_0x02f2:
            com.genonbeta.TrebleShot.adapter.FileListAdapter$WritablePathHolder r0 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$WritablePathHolder
            r5 = 110(0x6e, float:1.54E-43)
            r6 = 2131165386(0x7f0700ca, float:1.7944988E38)
            android.content.Context r7 = r17.getContext()
            r11 = 2131820627(0x7f110053, float:1.9273974E38)
            java.lang.String r7 = r7.getString(r11)
            r0.<init>(r5, r6, r7, r4)
            r2.offerObliged(r1, r0)
        L_0x030a:
            android.content.Context r0 = r17.getContext()
            com.genonbeta.TrebleShot.database.AccessDatabase r0 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r0)
            com.genonbeta.android.database.SQLQuery$Select r5 = new com.genonbeta.android.database.SQLQuery$Select
            java.lang.String[] r6 = new java.lang.String[r8]
            java.lang.String r7 = "transferGroup"
            r5.<init>(r7, r6)
            java.lang.Object[] r6 = new java.lang.Object[r4]
            java.lang.String r7 = "dateCreated"
            r6[r8] = r7
            java.lang.String r7 = "%s DESC"
            java.lang.String r6 = java.lang.String.format(r7, r6)
            com.genonbeta.android.database.SQLQuery$Select r5 = r5.setOrderBy(r6)
            java.lang.Class<com.genonbeta.TrebleShot.object.TransferGroup> r6 = com.genonbeta.TrebleShot.object.TransferGroup.class
            java.util.List r0 = r0.castQuery(r5, r6)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Iterator r0 = r0.iterator()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
        L_0x033a:
            boolean r6 = r0.hasNext()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            if (r6 == 0) goto L_0x03e1
            java.lang.Object r6 = r0.next()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.TrebleShot.object.TransferGroup r6 = (com.genonbeta.TrebleShot.object.TransferGroup) r6     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            android.content.Context r7 = r17.getContext()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.TrebleShot.database.AccessDatabase r7 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r7)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.android.database.SQLQuery$Select r11 = new com.genonbeta.android.database.SQLQuery$Select     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String[] r12 = new java.lang.String[r8]     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            r11.<init>(r3, r12)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r12 = "%s = ? AND %s = ? AND %s = ?"
            java.lang.Object[] r13 = new java.lang.Object[r10]     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = "flag"
            r13[r8] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = "type"
            r13[r4] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = "groupId"
            r13[r9] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r12 = java.lang.String.format(r12, r13)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String[] r13 = new java.lang.String[r10]     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.TrebleShot.object.TransferObject$Flag r14 = com.genonbeta.TrebleShot.object.TransferObject.Flag.DONE     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = r14.toString()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            r13[r8] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.TrebleShot.object.TransferObject$Type r14 = com.genonbeta.TrebleShot.object.TransferObject.Type.INCOMING     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = r14.toString()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            r13[r4] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            long r14 = r6.groupId     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = java.lang.String.valueOf(r14)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            r13[r9] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.android.database.SQLQuery$Select r11 = r11.setWhere(r12, r13)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r12 = "`%s` DESC, `%s` DESC"
            java.lang.Object[] r13 = new java.lang.Object[r9]     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = "directory"
            r13[r8] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r14 = "name"
            r13[r4] = r14     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r12 = java.lang.String.format(r12, r13)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.android.database.SQLQuery$Select r11 = r11.setOrderBy(r12)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.Class<com.genonbeta.TrebleShot.object.TransferObject> r12 = com.genonbeta.TrebleShot.object.TransferObject.class
            java.util.List r7 = r7.castQuery(r11, r12)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.util.Iterator r7 = r7.iterator()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            r11 = 3
        L_0x03a6:
            boolean r12 = r7.hasNext()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            if (r12 == 0) goto L_0x033a
            java.lang.Object r12 = r7.next()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            com.genonbeta.TrebleShot.object.TransferObject r12 = (com.genonbeta.TrebleShot.object.TransferObject) r12     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            int r13 = r5.size()     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            r14 = 20
            if (r13 >= r14) goto L_0x03d9
            if (r11 != 0) goto L_0x03be
            goto L_0x033a
        L_0x03be:
            android.content.Context r13 = r17.getContext()     // Catch:{ IOException -> 0x03d6 }
            com.genonbeta.android.framework.io.DocumentFile r12 = com.genonbeta.TrebleShot.util.FileUtils.getIncomingPseudoFile(r13, r12, r6, r8)     // Catch:{ IOException -> 0x03d6 }
            boolean r13 = r12.exists()     // Catch:{ IOException -> 0x03d6 }
            if (r13 == 0) goto L_0x03d6
            boolean r13 = r5.contains(r12)     // Catch:{ IOException -> 0x03d6 }
            if (r13 != 0) goto L_0x03d6
            r5.add(r12)     // Catch:{ IOException -> 0x03d6 }
            goto L_0x03a6
        L_0x03d6:
            int r11 = r11 + -1
            goto L_0x03a6
        L_0x03d9:
            java.lang.Exception r0 = new java.lang.Exception     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            java.lang.String r3 = "Reached the threshold for picking recent files"
            r0.<init>(r3)     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
            throw r0     // Catch:{ Exception -> 0x041d, all -> 0x03fe }
        L_0x03e1:
            java.util.Iterator r0 = r5.iterator()
        L_0x03e5:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L_0x043a
            java.lang.Object r3 = r0.next()
            com.genonbeta.android.framework.io.DocumentFile r3 = (com.genonbeta.android.framework.io.DocumentFile) r3
            com.genonbeta.TrebleShot.adapter.FileListAdapter$RecentFileHolder r4 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$RecentFileHolder
            android.content.Context r5 = r17.getContext()
            r4.<init>(r5, r3)
            r2.offerObliged(r1, r4)
            goto L_0x03e5
        L_0x03fe:
            r0 = move-exception
            java.util.Iterator r3 = r5.iterator()
        L_0x0403:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x041c
            java.lang.Object r4 = r3.next()
            com.genonbeta.android.framework.io.DocumentFile r4 = (com.genonbeta.android.framework.io.DocumentFile) r4
            com.genonbeta.TrebleShot.adapter.FileListAdapter$RecentFileHolder r5 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$RecentFileHolder
            android.content.Context r6 = r17.getContext()
            r5.<init>(r6, r4)
            r2.offerObliged(r1, r5)
            goto L_0x0403
        L_0x041c:
            throw r0
        L_0x041d:
            java.util.Iterator r0 = r5.iterator()
        L_0x0421:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L_0x043a
            java.lang.Object r3 = r0.next()
            com.genonbeta.android.framework.io.DocumentFile r3 = (com.genonbeta.android.framework.io.DocumentFile) r3
            com.genonbeta.TrebleShot.adapter.FileListAdapter$RecentFileHolder r4 = new com.genonbeta.TrebleShot.adapter.FileListAdapter$RecentFileHolder
            android.content.Context r5 = r17.getContext()
            r4.<init>(r5, r3)
            r2.offerObliged(r1, r4)
            goto L_0x0421
        L_0x043a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.FileListAdapter.onLoad(com.genonbeta.TrebleShot.widget.GroupEditableListAdapter$GroupLister):void");
    }

    /* access modifiers changed from: protected */
    public GenericFileHolder onGenerateRepresentative(String str) {
        return new GenericFileHolder(str);
    }

    public boolean onCustomGroupListing(GroupEditableListAdapter.GroupLister<GenericFileHolder> groupLister, int i, GenericFileHolder genericFileHolder) {
        if (i != 101) {
            return false;
        }
        groupLister.offer(genericFileHolder, new FileHolderMerger(genericFileHolder));
        return true;
    }

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        if (i == 110) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_action_button, viewGroup, false), (int) R.id.text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.list_file, viewGroup, false));
    }

    public void onBindViewHolder(GroupEditableListAdapter.GroupViewHolder groupViewHolder, int i) {
        try {
            GenericFileHolder genericFileHolder = (GenericFileHolder) getItem(i);
            if (!groupViewHolder.tryBinding(genericFileHolder)) {
                View view = groupViewHolder.getView();
                ImageView imageView = (ImageView) view.findViewById(R.id.thumbnail);
                ImageView imageView2 = (ImageView) view.findViewById(R.id.image);
                groupViewHolder.getView().setSelected(genericFileHolder.isSelectableSelected());
                ((TextView) view.findViewById(R.id.text)).setText(genericFileHolder.friendlyName);
                ((TextView) view.findViewById(R.id.text2)).setText(genericFileHolder.info);
                if (this.mShowThumbnails) {
                    if (genericFileHolder.loadThumbnail(imageView)) {
                        imageView2.setImageDrawable((Drawable) null);
                        return;
                    }
                }
                imageView2.setImageResource(genericFileHolder.iconRes);
                imageView.setImageDrawable((Drawable) null);
            } else if (groupViewHolder.getItemViewType() == 110) {
                ((ImageView) groupViewHolder.getView().findViewById(R.id.icon)).setImageResource(genericFileHolder.iconRes);
            }
        } catch (NotReadyException e) {
            e.printStackTrace();
        }
    }

    public String buildPath(String[] strArr, int i) {
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (i2 < i && i2 < strArr.length) {
            sb.append(File.separator);
            sb.append(strArr[i2]);
            i2++;
        }
        return sb.toString();
    }

    public GroupEditableListAdapter.GroupLister<GenericFileHolder> createLister(List<GenericFileHolder> list, int i) {
        return super.createLister(list, i).setCustomLister(this);
    }

    public int getSortingCriteria(GenericFileHolder genericFileHolder, GenericFileHolder genericFileHolder2) {
        if (getPath() != null || !(genericFileHolder instanceof RecentFileHolder) || !(genericFileHolder2 instanceof RecentFileHolder)) {
            return super.getSortingCriteria(genericFileHolder, genericFileHolder2);
        }
        return 110;
    }

    public int getSortingOrder(GenericFileHolder genericFileHolder, GenericFileHolder genericFileHolder2) {
        if (getPath() != null || !(genericFileHolder instanceof RecentFileHolder) || !(genericFileHolder2 instanceof RecentFileHolder)) {
            return super.getSortingOrder(genericFileHolder, genericFileHolder2);
        }
        return 110;
    }

    public DocumentFile getPath() {
        return this.mPath;
    }

    public void goPath(File file) {
        goPath(DocumentFile.fromFile(file));
    }

    /* renamed from: com.genonbeta.TrebleShot.adapter.FileListAdapter$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0033 */
        static {
            /*
                com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolderMerger$Type[] r0 = com.genonbeta.TrebleShot.adapter.FileListAdapter.FileHolderMerger.Type.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type = r0
                com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolderMerger$Type r1 = com.genonbeta.TrebleShot.adapter.FileListAdapter.FileHolderMerger.Type.STORAGE     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type     // Catch:{ NoSuchFieldError -> 0x001d }
                com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolderMerger$Type r1 = com.genonbeta.TrebleShot.adapter.FileListAdapter.FileHolderMerger.Type.PUBLIC_FOLDER     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type     // Catch:{ NoSuchFieldError -> 0x0028 }
                com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolderMerger$Type r1 = com.genonbeta.TrebleShot.adapter.FileListAdapter.FileHolderMerger.Type.FOLDER     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type     // Catch:{ NoSuchFieldError -> 0x0033 }
                com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolderMerger$Type r1 = com.genonbeta.TrebleShot.adapter.FileListAdapter.FileHolderMerger.Type.RECENT_FILE     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type     // Catch:{ NoSuchFieldError -> 0x003e }
                com.genonbeta.TrebleShot.adapter.FileListAdapter$FileHolderMerger$Type r1 = com.genonbeta.TrebleShot.adapter.FileListAdapter.FileHolderMerger.Type.FILE_PART     // Catch:{ NoSuchFieldError -> 0x003e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x003e }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x003e }
            L_0x003e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.FileListAdapter.AnonymousClass1.<clinit>():void");
        }
    }

    public String getRepresentativeText(Merger merger) {
        if (!(merger instanceof FileHolderMerger)) {
            return super.getRepresentativeText(merger);
        }
        int i = AnonymousClass1.$SwitchMap$com$genonbeta$TrebleShot$adapter$FileListAdapter$FileHolderMerger$Type[((FileHolderMerger) merger).getType().ordinal()];
        if (i == 1) {
            return getContext().getString(R.string.text_storage);
        }
        if (i == 2) {
            return getContext().getString(R.string.text_shortcuts);
        }
        if (i == 3) {
            return getContext().getString(R.string.text_folder);
        }
        if (i == 4) {
            return getContext().getString(R.string.text_recentFiles);
        }
        if (i != 5) {
            return getContext().getString(R.string.text_file);
        }
        return getContext().getString(R.string.text_pendingTransfers);
    }

    public void goPath(DocumentFile documentFile) {
        this.mPath = documentFile;
    }

    public void setConfiguration(boolean z, boolean z2, String str) {
        this.mShowDirectories = z;
        this.mShowFiles = z2;
        this.mFileMatch = str;
    }

    public static class GenericFileHolder extends GroupEditableListAdapter.GroupShareable {
        public DocumentFile file;
        public int iconRes;
        public String info;
        public int requestCode;

        public boolean loadThumbnail(ImageView imageView) {
            return false;
        }

        public GenericFileHolder(String str) {
            this(100, str);
        }

        public GenericFileHolder(int i, String str) {
            super(i, str);
        }

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public GenericFileHolder(DocumentFile documentFile, String str, String str2, int i, long j, long j2, Uri uri) {
            super(0, str, str, documentFile.getType(), j, j2, uri);
            this.file = documentFile;
            this.info = str2;
            this.iconRes = i;
        }

        public long getId() {
            if (super.getId() == 0) {
                setId((long) String.format("%s_%s", new Object[]{this.file.getUri().toString(), getClass().getName()}).hashCode());
            }
            return super.getId();
        }

        public int getRequestCode() {
            return this.requestCode;
        }
    }

    public static class FileHolder extends GenericFileHolder {
        public FileHolder(Context context, DocumentFile documentFile) {
            super(documentFile, documentFile.getName(), FileUtils.sizeExpression(documentFile.length(), false), MimeIconUtils.loadMimeIcon(documentFile.getType()), documentFile.lastModified(), documentFile.length(), FileUtils.getSecureUriSilently(context, documentFile));
        }

        public boolean loadThumbnail(ImageView imageView) {
            String type = this.file.getType();
            if (type != null) {
                String[] split = type.split(File.separator);
                if (split.length > 0 && ("image".equals(split[0]) || "video".equals(split[0]))) {
                    GlideApp.with(imageView.getContext()).load(this.file.getUri()).error(this.iconRes).override(160).centerCrop().into(imageView);
                    return true;
                }
            }
            return super.loadThumbnail(imageView);
        }
    }

    public static class ReceivedFileHolder extends FileHolder {
        public ReceivedFileHolder(Context context, DocumentFile documentFile, TransferObject transferObject) {
            super(context, documentFile);
            String str;
            int i;
            if (transferObject == null) {
                str = context.getString(R.string.mesg_notValidTransfer);
            } else {
                str = String.format("%s / %s", new Object[]{FileUtils.sizeExpression(getComparableSize(), false), FileUtils.sizeExpression(transferObject.fileSize, false)});
            }
            this.info = str;
            if (transferObject == null) {
                i = R.drawable.ic_block_white_24dp;
            } else {
                i = MimeIconUtils.loadMimeIcon(transferObject.fileMimeType);
            }
            this.iconRes = i;
            if (transferObject != null) {
                this.friendlyName = transferObject.friendlyName;
            }
        }
    }

    public static class DirectoryHolder extends GenericFileHolder {
        public DirectoryHolder(DocumentFile documentFile, String str, int i) {
            this(documentFile, documentFile.getName(), str, i);
        }

        public DirectoryHolder(DocumentFile documentFile, String str, String str2, int i) {
            super(documentFile, str, str2, i, documentFile.lastModified(), 0, documentFile.getUri());
        }

        public long getId() {
            return super.getId();
        }
    }

    public static class ShortcutDirectoryHolder extends DirectoryHolder {
        private FileShortcutObject mShortcutObject;

        public ShortcutDirectoryHolder(Context context, FileShortcutObject fileShortcutObject) throws FileNotFoundException {
            super(FileUtils.fromUri(context, fileShortcutObject.path), fileShortcutObject.title, context.getString(R.string.text_shortcut), R.drawable.ic_bookmark_white_24dp);
            this.mShortcutObject = fileShortcutObject;
        }

        public FileShortcutObject getShortcutObject() {
            return this.mShortcutObject;
        }
    }

    public static class StorageHolder extends DirectoryHolder implements StorageHolderImpl {
        public boolean setSelectableSelected(boolean z) {
            return false;
        }

        public StorageHolder(DocumentFile documentFile, String str, int i) {
            super(documentFile, documentFile.getName(), str, i);
        }

        public StorageHolder(DocumentFile documentFile, String str, String str2, int i) {
            super(documentFile, str, str2, i);
        }
    }

    public static class WritablePathHolder extends GenericFileHolder implements StorageHolderImpl {
        public WritablePathObject pathObject;

        public boolean setSelectableSelected(boolean z) {
            return false;
        }

        public WritablePathHolder(int i, int i2, String str, int i3) {
            super(i, str);
            this.iconRes = i2;
            this.requestCode = i3;
        }

        public WritablePathHolder(DocumentFile documentFile, WritablePathObject writablePathObject, String str) {
            super(documentFile, writablePathObject.title, str, R.drawable.ic_save_white_24dp, 0, 0, writablePathObject.path);
            this.pathObject = writablePathObject;
        }

        public boolean comparisonSupported() {
            return getViewType() != 110 && super.comparisonSupported();
        }

        public long getId() {
            if (getViewType() != 110) {
                return super.getId();
            }
            return (long) String.format("%s_%s_%s", new Object[]{getClass().getName(), String.valueOf(this.iconRes), Integer.valueOf(getRepresentativeText().hashCode())}).hashCode();
        }
    }

    public static class FileHolderMerger extends ComparableMerger<GenericFileHolder> {
        private Type mType;

        public enum Type {
            STORAGE,
            FOLDER,
            PUBLIC_FOLDER,
            RECENT_FILE,
            FILE_PART,
            FILE
        }

        public FileHolderMerger(GenericFileHolder genericFileHolder) {
            if (genericFileHolder instanceof StorageHolderImpl) {
                this.mType = Type.STORAGE;
            } else if (genericFileHolder instanceof PublicDirectoryHolder) {
                this.mType = Type.PUBLIC_FOLDER;
            } else if (genericFileHolder instanceof DirectoryHolder) {
                this.mType = Type.FOLDER;
            } else if (genericFileHolder instanceof RecentFileHolder) {
                this.mType = Type.RECENT_FILE;
            } else if (genericFileHolder instanceof ReceivedFileHolder) {
                this.mType = Type.FILE_PART;
            } else {
                this.mType = Type.FILE;
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof FileHolderMerger) && ((FileHolderMerger) obj).getType().equals(getType());
        }

        public Type getType() {
            return this.mType;
        }

        public int compareTo(ComparableMerger<GenericFileHolder> comparableMerger) {
            if (comparableMerger instanceof FileHolderMerger) {
                return MathUtils.compare((long) ((FileHolderMerger) comparableMerger).getType().ordinal(), (long) getType().ordinal());
            }
            return 1;
        }
    }

    public class RecentFileHolder extends FileHolder {
        public RecentFileHolder(Context context, DocumentFile documentFile) {
            super(context, documentFile);
        }
    }

    public class PublicDirectoryHolder extends DirectoryHolder {
        public boolean setSelectableSelected(boolean z) {
            return false;
        }

        public PublicDirectoryHolder(FileListAdapter fileListAdapter, File file, String str, int i) {
            this(DocumentFile.fromFile(file), str, i);
            String[] list = file.list();
            int length = list != null ? list.length : 0;
            this.friendlyName = str;
            this.info = fileListAdapter.getContext().getResources().getQuantityString(R.plurals.text_files, length, new Object[]{Integer.valueOf(length)});
        }

        public PublicDirectoryHolder(DocumentFile documentFile, String str, int i) {
            super(documentFile, str, i);
        }
    }
}
