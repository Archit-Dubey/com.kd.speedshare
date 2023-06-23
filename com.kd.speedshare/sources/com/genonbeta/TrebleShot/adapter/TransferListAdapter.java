package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.MimeIconUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.util.MathUtils;
import com.genonbeta.android.framework.util.listing.ComparableMerger;
import com.genonbeta.android.framework.util.listing.Merger;
import com.kd.speedshare.R;
import java.io.File;
import java.text.NumberFormat;
import java.util.List;

public class TransferListAdapter extends GroupEditableListAdapter<AbstractGenericItem, GroupEditableListAdapter.GroupViewHolder> implements GroupEditableListAdapter.GroupLister.CustomGroupLister<AbstractGenericItem> {
    public static final int MODE_GROUP_BY_DEFAULT = 101;
    private int mColorDone;
    private int mColorError;
    private int mColorPending;
    private NetworkDevice mDevice;
    private TransferGroup mGroup = new TransferGroup();
    private PathChangedListener mListener;
    private String mPath;
    private NumberFormat mPercentFormat = NumberFormat.getPercentInstance();
    private SQLQuery.Select mSelect;

    public interface PathChangedListener {
        void onPathChange(String str);
    }

    public interface StatusItem {
    }

    public int compareItems(int i, int i2, AbstractGenericItem abstractGenericItem, AbstractGenericItem abstractGenericItem2) {
        return 1;
    }

    public TransferListAdapter(Context context) {
        super(context, 101);
        this.mColorPending = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorControlNormal));
        this.mColorDone = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorAccent));
        this.mColorError = ContextCompat.getColor(context, AppUtils.getReference(context, R.attr.colorError));
        setSelect(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]));
    }

    /* JADX WARNING: type inference failed for: r11v0 */
    /* JADX WARNING: type inference failed for: r11v1, types: [boolean, int] */
    /* JADX WARNING: type inference failed for: r11v14 */
    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x02f1  */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x0302  */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x032c  */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x0366  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x03b3  */
    /* JADX WARNING: Removed duplicated region for block: B:168:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLoad(com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupLister<com.genonbeta.TrebleShot.adapter.TransferListAdapter.AbstractGenericItem> r19) {
        /*
            r18 = this;
            r1 = r18
            r0 = r19
            android.content.Context r2 = r18.getContext()
            com.genonbeta.android.framework.preference.SuperPreferences r2 = com.genonbeta.TrebleShot.util.AppUtils.getDefaultPreferences(r2)
            java.lang.String r3 = "load_thumbnails"
            r4 = 1
            boolean r2 = r2.getBoolean(r3, r4)
            android.content.Context r3 = r18.getContext()     // Catch:{ ReconstructionFailedException -> 0x03bb }
            com.genonbeta.TrebleShot.database.AccessDatabase r3 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r3)     // Catch:{ ReconstructionFailedException -> 0x03bb }
            com.genonbeta.TrebleShot.object.TransferGroup r5 = r1.mGroup     // Catch:{ ReconstructionFailedException -> 0x03bb }
            r3.reconstruct(r5)     // Catch:{ ReconstructionFailedException -> 0x03bb }
            androidx.collection.ArrayMap r3 = new androidx.collection.ArrayMap
            r3.<init>()
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.lang.String r6 = r18.getPath()
            if (r6 == 0) goto L_0x0036
            int r8 = r6.length()
            if (r8 != 0) goto L_0x0037
        L_0x0036:
            r6 = 0
        L_0x0037:
            androidx.collection.ArrayMap r8 = new androidx.collection.ArrayMap
            r8.<init>()
            android.content.Context r9 = r18.getContext()
            com.genonbeta.TrebleShot.database.AccessDatabase r9 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r9)
            com.genonbeta.android.database.SQLQuery$Select r10 = new com.genonbeta.android.database.SQLQuery$Select
            r11 = 0
            java.lang.String[] r12 = new java.lang.String[r11]
            java.lang.String r13 = "transferAssignee"
            r10.<init>(r13, r12)
            java.lang.String[] r12 = new java.lang.String[r4]
            com.genonbeta.TrebleShot.object.TransferGroup r13 = r1.mGroup
            long r13 = r13.groupId
            java.lang.String r13 = java.lang.String.valueOf(r13)
            r12[r11] = r13
            java.lang.String r13 = "groupId=?"
            com.genonbeta.android.database.SQLQuery$Select r10 = r10.setWhere(r13, r12)
            java.lang.Class<com.genonbeta.TrebleShot.object.TransferGroup$Assignee> r12 = com.genonbeta.TrebleShot.object.TransferGroup.Assignee.class
            java.util.List r9 = r9.castQuery(r10, r12)
            java.util.Iterator r9 = r9.iterator()
        L_0x006a:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto L_0x0090
            java.lang.Object r10 = r9.next()
            com.genonbeta.TrebleShot.object.TransferGroup$Assignee r10 = (com.genonbeta.TrebleShot.object.TransferGroup.Assignee) r10
            com.genonbeta.TrebleShot.object.NetworkDevice r12 = new com.genonbeta.TrebleShot.object.NetworkDevice     // Catch:{ Exception -> 0x008e }
            java.lang.String r10 = r10.deviceId     // Catch:{ Exception -> 0x008e }
            r12.<init>((java.lang.String) r10)     // Catch:{ Exception -> 0x008e }
            android.content.Context r10 = r18.getContext()     // Catch:{ Exception -> 0x008e }
            com.genonbeta.TrebleShot.database.AccessDatabase r10 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r10)     // Catch:{ Exception -> 0x008e }
            r10.reconstruct(r12)     // Catch:{ Exception -> 0x008e }
            java.lang.String r10 = r12.deviceId     // Catch:{ Exception -> 0x008e }
            r8.put(r10, r12)     // Catch:{ Exception -> 0x008e }
            goto L_0x006a
        L_0x008e:
            goto L_0x006a
        L_0x0090:
            com.genonbeta.android.database.SQLQuery$Select r9 = new com.genonbeta.android.database.SQLQuery$Select
            int r10 = r8.size()
            if (r10 >= r4) goto L_0x009b
            java.lang.String r10 = "divisionTransfer"
            goto L_0x009d
        L_0x009b:
            java.lang.String r10 = "transfer"
        L_0x009d:
            java.lang.String[] r12 = new java.lang.String[r11]
            r9.<init>(r10, r12)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            com.genonbeta.TrebleShot.object.NetworkDevice r14 = r1.mDevice
            r10.append(r13)
            com.genonbeta.TrebleShot.object.TransferGroup r13 = r1.mGroup
            r16 = r5
            long r4 = r13.groupId
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r12.add(r4)
            int r4 = r8.size()
            if (r4 <= 0) goto L_0x00d0
            if (r14 == 0) goto L_0x00d0
            java.lang.String r4 = " AND deviceId=?"
            r10.append(r4)
            java.lang.String r4 = r14.deviceId
            r12.add(r4)
        L_0x00d0:
            if (r6 == 0) goto L_0x00f3
            java.lang.String r4 = " AND (directory=? OR directory LIKE ?)"
            r10.append(r4)
            r12.add(r6)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r6)
            java.lang.String r5 = java.io.File.separator
            r4.append(r5)
            java.lang.String r5 = "%"
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            r12.add(r4)
        L_0x00f3:
            java.lang.String r4 = r10.toString()
            r9.where = r4
            int r4 = r12.size()
            java.lang.String[] r4 = new java.lang.String[r4]
            r9.whereArgs = r4
            java.lang.String[] r4 = r9.whereArgs
            r12.toArray(r4)
            android.content.Context r4 = r18.getContext()
            com.genonbeta.TrebleShot.database.AccessDatabase r4 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r4)
            java.lang.Class<com.genonbeta.TrebleShot.adapter.TransferListAdapter$GenericTransferItem> r5 = com.genonbeta.TrebleShot.adapter.TransferListAdapter.GenericTransferItem.class
            java.util.List r4 = r4.castQuery(r9, r5)
            java.util.Iterator r4 = r4.iterator()
            r5 = 0
        L_0x0119:
            boolean r9 = r4.hasNext()
            if (r9 == 0) goto L_0x028d
            java.lang.Object r9 = r4.next()
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$GenericTransferItem r9 = (com.genonbeta.TrebleShot.adapter.TransferListAdapter.GenericTransferItem) r9
            java.lang.String r10 = r9.deviceId
            java.lang.Object r10 = r8.get(r10)
            com.genonbeta.TrebleShot.object.NetworkDevice r10 = (com.genonbeta.TrebleShot.object.NetworkDevice) r10
            java.lang.String r12 = r9.directory
            if (r12 == 0) goto L_0x013d
            java.lang.String r12 = r9.directory
            int r12 = r12.length()
            if (r12 != 0) goto L_0x013a
            goto L_0x013d
        L_0x013a:
            java.lang.String r12 = r9.directory
            goto L_0x013e
        L_0x013d:
            r12 = 0
        L_0x013e:
            r9.directory = r12
            if (r6 == 0) goto L_0x0147
            java.lang.String r12 = r9.directory
            if (r12 != 0) goto L_0x0147
            goto L_0x0119
        L_0x0147:
            if (r10 != 0) goto L_0x014b
            r10 = 0
            goto L_0x014d
        L_0x014b:
            java.lang.String r10 = r10.nickname
        L_0x014d:
            r9.setDeviceName(r10)
            if (r6 != 0) goto L_0x0156
            java.lang.String r10 = r9.directory
            if (r10 == 0) goto L_0x015e
        L_0x0156:
            java.lang.String r10 = r9.directory
            boolean r10 = r10.equals(r6)
            if (r10 == 0) goto L_0x01cb
        L_0x015e:
            if (r2 != 0) goto L_0x0164
            r9.setSupportThumbnail(r11)     // Catch:{ Exception -> 0x01c5 }
            goto L_0x01c5
        L_0x0164:
            java.lang.String r10 = r9.fileMimeType     // Catch:{ Exception -> 0x01c5 }
            java.lang.String r12 = java.io.File.separator     // Catch:{ Exception -> 0x01c5 }
            java.lang.String[] r10 = r10.split(r12)     // Catch:{ Exception -> 0x01c5 }
            int r12 = r10.length     // Catch:{ Exception -> 0x01c5 }
            if (r12 <= 0) goto L_0x01c2
            java.lang.String r12 = "image"
            r13 = r10[r11]     // Catch:{ Exception -> 0x01c5 }
            boolean r12 = r12.equals(r13)     // Catch:{ Exception -> 0x01c5 }
            if (r12 != 0) goto L_0x0183
            java.lang.String r12 = "video"
            r10 = r10[r11]     // Catch:{ Exception -> 0x01c5 }
            boolean r10 = r12.equals(r10)     // Catch:{ Exception -> 0x01c5 }
            if (r10 == 0) goto L_0x01c2
        L_0x0183:
            com.genonbeta.TrebleShot.object.TransferObject$Type r10 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING     // Catch:{ Exception -> 0x01c5 }
            com.genonbeta.TrebleShot.object.TransferObject$Type r12 = r9.type     // Catch:{ Exception -> 0x01c5 }
            boolean r10 = r10.equals(r12)     // Catch:{ Exception -> 0x01c5 }
            if (r10 == 0) goto L_0x019c
            android.content.Context r10 = r18.getContext()     // Catch:{ Exception -> 0x01c5 }
            java.lang.String r12 = r9.file     // Catch:{ Exception -> 0x01c5 }
            android.net.Uri r12 = android.net.Uri.parse(r12)     // Catch:{ Exception -> 0x01c5 }
            com.genonbeta.android.framework.io.DocumentFile r10 = com.genonbeta.TrebleShot.util.FileUtils.fromUri(r10, r12)     // Catch:{ Exception -> 0x01c5 }
            goto L_0x01b2
        L_0x019c:
            com.genonbeta.TrebleShot.object.TransferObject$Flag r10 = com.genonbeta.TrebleShot.object.TransferObject.Flag.DONE     // Catch:{ Exception -> 0x01c5 }
            com.genonbeta.TrebleShot.object.TransferObject$Flag r12 = r9.flag     // Catch:{ Exception -> 0x01c5 }
            boolean r10 = r10.equals(r12)     // Catch:{ Exception -> 0x01c5 }
            if (r10 == 0) goto L_0x01b1
            android.content.Context r10 = r18.getContext()     // Catch:{ Exception -> 0x01c5 }
            com.genonbeta.TrebleShot.object.TransferGroup r12 = r1.mGroup     // Catch:{ Exception -> 0x01c5 }
            com.genonbeta.android.framework.io.DocumentFile r10 = com.genonbeta.TrebleShot.util.FileUtils.getIncomingPseudoFile(r10, r9, r12, r11)     // Catch:{ Exception -> 0x01c5 }
            goto L_0x01b2
        L_0x01b1:
            r10 = 0
        L_0x01b2:
            if (r10 == 0) goto L_0x01c5
            boolean r12 = r10.exists()     // Catch:{ Exception -> 0x01c5 }
            if (r12 == 0) goto L_0x01c5
            r9.setFile(r10)     // Catch:{ Exception -> 0x01c5 }
            r10 = 1
            r9.setSupportThumbnail(r10)     // Catch:{ Exception -> 0x01c5 }
            goto L_0x01c5
        L_0x01c2:
            r9.setSupportThumbnail(r11)     // Catch:{ Exception -> 0x01c5 }
        L_0x01c5:
            r10 = r16
            r10.add(r9)
            goto L_0x01d8
        L_0x01cb:
            r10 = r16
            if (r6 == 0) goto L_0x01dd
            java.lang.String r12 = r9.directory
            boolean r12 = r12.startsWith(r6)
            if (r12 == 0) goto L_0x01d8
            goto L_0x01dd
        L_0x01d8:
            r13 = r2
            r17 = r3
            goto L_0x0278
        L_0x01dd:
            if (r6 != 0) goto L_0x01e1
            r12 = 0
            goto L_0x01ec
        L_0x01e1:
            int r12 = r6.length()
            java.lang.String r13 = java.io.File.separator
            int r13 = r13.length()
            int r12 = r12 + r13
        L_0x01ec:
            java.lang.String r13 = r9.directory
            java.lang.String r12 = r13.substring(r12)
            java.lang.String r13 = java.io.File.separator
            int r13 = r12.indexOf(r13)
            r7 = -1
            if (r13 == r7) goto L_0x01ff
            java.lang.String r12 = r12.substring(r11, r13)
        L_0x01ff:
            java.lang.Object r7 = r3.get(r12)
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$TransferFolder r7 = (com.genonbeta.TrebleShot.adapter.TransferListAdapter.TransferFolder) r7
            if (r7 != 0) goto L_0x0231
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$TransferFolder r7 = new com.genonbeta.TrebleShot.adapter.TransferListAdapter$TransferFolder
            com.genonbeta.TrebleShot.object.TransferGroup r13 = r1.mGroup
            r17 = r12
            long r11 = r13.groupId
            if (r6 == 0) goto L_0x0228
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r6)
            java.lang.String r15 = java.io.File.separator
            r13.append(r15)
            r15 = r17
            r13.append(r15)
            java.lang.String r13 = r13.toString()
            goto L_0x022b
        L_0x0228:
            r15 = r17
            r13 = r15
        L_0x022b:
            r7.<init>(r11, r15, r13)
            r3.put(r15, r7)
        L_0x0231:
            boolean r11 = r9.isComplete()
            if (r11 == 0) goto L_0x0249
            int r11 = r7.filesReceived
            r12 = 1
            int r11 = r11 + r12
            r7.filesReceived = r11
            long r11 = r7.bytesReceived
            r13 = r2
            r17 = r3
            long r2 = r9.fileSize
            long r11 = r11 + r2
            r7.bytesReceived = r11
        L_0x0247:
            r2 = 1
            goto L_0x026c
        L_0x0249:
            r13 = r2
            r17 = r3
            com.genonbeta.TrebleShot.object.TransferObject$Flag r2 = com.genonbeta.TrebleShot.object.TransferObject.Flag.IN_PROGRESS
            com.genonbeta.TrebleShot.object.TransferObject$Flag r3 = r9.flag
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0262
            long r2 = r7.bytesReceived
            com.genonbeta.TrebleShot.object.TransferObject$Flag r11 = r9.flag
            long r11 = r11.getBytesValue()
            long r2 = r2 + r11
            r7.bytesReceived = r2
            goto L_0x0247
        L_0x0262:
            boolean r2 = r9.hasIssues()
            if (r2 == 0) goto L_0x0247
            r2 = 1
            r7.setHasIssues(r2)
        L_0x026c:
            int r3 = r7.filesTotal
            int r3 = r3 + r2
            r7.filesTotal = r3
            long r2 = r7.bytesTotal
            long r11 = r9.fileSize
            long r2 = r2 + r11
            r7.bytesTotal = r2
        L_0x0278:
            if (r5 != 0) goto L_0x0285
            com.genonbeta.TrebleShot.object.TransferObject$Type r2 = com.genonbeta.TrebleShot.object.TransferObject.Type.INCOMING
            com.genonbeta.TrebleShot.object.TransferObject$Type r3 = r9.type
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0285
            r5 = 1
        L_0x0285:
            r16 = r10
            r2 = r13
            r3 = r17
            r11 = 0
            goto L_0x0119
        L_0x028d:
            r17 = r3
            r10 = r16
            if (r6 != 0) goto L_0x02e8
            if (r5 == 0) goto L_0x02e8
            com.genonbeta.TrebleShot.object.TransferGroup r2 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x02e8 }
            com.genonbeta.TrebleShot.object.TransferGroup r3 = r1.mGroup     // Catch:{ Exception -> 0x02e8 }
            long r3 = r3.groupId     // Catch:{ Exception -> 0x02e8 }
            r2.<init>((long) r3)     // Catch:{ Exception -> 0x02e8 }
            android.content.Context r3 = r18.getContext()     // Catch:{ Exception -> 0x02e8 }
            com.genonbeta.TrebleShot.database.AccessDatabase r3 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r3)     // Catch:{ Exception -> 0x02e8 }
            r3.reconstruct(r2)     // Catch:{ Exception -> 0x02e8 }
            android.content.Context r3 = r18.getContext()     // Catch:{ Exception -> 0x02e8 }
            com.genonbeta.android.framework.io.DocumentFile r2 = com.genonbeta.TrebleShot.util.FileUtils.getSavePath(r3, r2)     // Catch:{ Exception -> 0x02e8 }
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$StorageStatusItem r3 = new com.genonbeta.TrebleShot.adapter.TransferListAdapter$StorageStatusItem     // Catch:{ Exception -> 0x02e8 }
            r3.<init>()     // Catch:{ Exception -> 0x02e8 }
            android.net.Uri r4 = r2.getUri()     // Catch:{ Exception -> 0x02e6 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x02e6 }
            r3.directory = r4     // Catch:{ Exception -> 0x02e6 }
            java.lang.String r4 = r2.getName()     // Catch:{ Exception -> 0x02e6 }
            r3.friendlyName = r4     // Catch:{ Exception -> 0x02e6 }
            boolean r4 = r2 instanceof com.genonbeta.android.framework.io.LocalDocumentFile     // Catch:{ Exception -> 0x02e6 }
            if (r4 == 0) goto L_0x02dd
            com.genonbeta.android.framework.io.LocalDocumentFile r2 = (com.genonbeta.android.framework.io.LocalDocumentFile) r2     // Catch:{ Exception -> 0x02e6 }
            java.io.File r2 = r2.getFile()     // Catch:{ Exception -> 0x02e6 }
            long r4 = r2.getTotalSpace()     // Catch:{ Exception -> 0x02e6 }
            r3.bytesTotal = r4     // Catch:{ Exception -> 0x02e6 }
            long r4 = r2.getFreeSpace()     // Catch:{ Exception -> 0x02e6 }
            r3.bytesFree = r4     // Catch:{ Exception -> 0x02e6 }
            goto L_0x02e3
        L_0x02dd:
            r4 = -1
            r3.bytesTotal = r4     // Catch:{ Exception -> 0x02e6 }
            r3.bytesFree = r4     // Catch:{ Exception -> 0x02e6 }
        L_0x02e3:
            r0.offerObliged(r1, r3)     // Catch:{ Exception -> 0x02e6 }
        L_0x02e6:
            r7 = r3
            goto L_0x02e9
        L_0x02e8:
            r7 = 0
        L_0x02e9:
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$DetailsTransferFolder r2 = new com.genonbeta.TrebleShot.adapter.TransferListAdapter$DetailsTransferFolder
            com.genonbeta.TrebleShot.object.TransferGroup r3 = r1.mGroup
            long r3 = r3.groupId
            if (r6 != 0) goto L_0x0302
            if (r14 != 0) goto L_0x02ff
            android.content.Context r5 = r18.getContext()
            r8 = 2131820974(0x7f1101ae, float:1.9274678E38)
            java.lang.String r5 = r5.getString(r8)
            goto L_0x0318
        L_0x02ff:
            java.lang.String r5 = r14.nickname
            goto L_0x0318
        L_0x0302:
            java.lang.String r5 = java.io.File.separator
            boolean r5 = r6.contains(r5)
            if (r5 == 0) goto L_0x0317
            java.lang.String r5 = java.io.File.separator
            int r5 = r6.lastIndexOf(r5)
            r8 = 1
            int r5 = r5 + r8
            java.lang.String r5 = r6.substring(r5)
            goto L_0x0318
        L_0x0317:
            r5 = r6
        L_0x0318:
            r2.<init>(r3, r5, r6)
            r0.offerObliged(r1, r2)
            java.util.Collection r3 = r17.values()
            java.util.Iterator r3 = r3.iterator()
        L_0x0326:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x035c
            java.lang.Object r4 = r3.next()
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$TransferFolder r4 = (com.genonbeta.TrebleShot.adapter.TransferListAdapter.TransferFolder) r4
            int r5 = r2.filesTotal
            int r6 = r4.filesTotal
            int r5 = r5 + r6
            r2.filesTotal = r5
            int r5 = r2.filesReceived
            int r6 = r4.filesReceived
            int r5 = r5 + r6
            r2.filesReceived = r5
            long r5 = r2.bytesTotal
            long r8 = r4.bytesTotal
            long r5 = r5 + r8
            r2.bytesTotal = r5
            long r5 = r2.bytesReceived
            long r8 = r4.bytesReceived
            long r5 = r5 + r8
            r2.bytesReceived = r5
            boolean r5 = r4.hasIssues()
            if (r5 == 0) goto L_0x0358
            r5 = 1
            r2.setHasIssues(r5)
        L_0x0358:
            r0.offerObliged(r1, r4)
            goto L_0x0326
        L_0x035c:
            java.util.Iterator r3 = r10.iterator()
        L_0x0360:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x03b1
            java.lang.Object r4 = r3.next()
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$GenericTransferItem r4 = (com.genonbeta.TrebleShot.adapter.TransferListAdapter.GenericTransferItem) r4
            boolean r5 = r4.isComplete()
            if (r5 == 0) goto L_0x0381
            int r5 = r2.filesReceived
            r6 = 1
            int r5 = r5 + r6
            r2.filesReceived = r5
            long r5 = r2.bytesReceived
            long r8 = r4.fileSize
            long r5 = r5 + r8
            r2.bytesReceived = r5
        L_0x037f:
            r5 = 1
            goto L_0x03a1
        L_0x0381:
            com.genonbeta.TrebleShot.object.TransferObject$Flag r5 = com.genonbeta.TrebleShot.object.TransferObject.Flag.IN_PROGRESS
            com.genonbeta.TrebleShot.object.TransferObject$Flag r6 = r4.flag
            boolean r5 = r5.equals(r6)
            if (r5 == 0) goto L_0x0397
            long r5 = r2.bytesReceived
            com.genonbeta.TrebleShot.object.TransferObject$Flag r8 = r4.flag
            long r8 = r8.getBytesValue()
            long r5 = r5 + r8
            r2.bytesReceived = r5
            goto L_0x037f
        L_0x0397:
            boolean r5 = r4.hasIssues()
            if (r5 == 0) goto L_0x037f
            r5 = 1
            r2.setHasIssues(r5)
        L_0x03a1:
            int r6 = r2.filesTotal
            int r6 = r6 + r5
            r2.filesTotal = r6
            long r8 = r2.bytesTotal
            long r10 = r4.fileSize
            long r8 = r8 + r10
            r2.bytesTotal = r8
            r0.offerObliged(r1, r4)
            goto L_0x0360
        L_0x03b1:
            if (r7 == 0) goto L_0x03ba
            long r3 = r2.bytesTotal
            long r5 = r2.bytesReceived
            long r3 = r3 - r5
            r7.bytesRequired = r3
        L_0x03ba:
            return
        L_0x03bb:
            r0 = move-exception
            r0.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.TransferListAdapter.onLoad(com.genonbeta.TrebleShot.widget.GroupEditableListAdapter$GroupLister):void");
    }

    /* access modifiers changed from: protected */
    public GenericTransferItem onGenerateRepresentative(String str) {
        return new GenericTransferItem(str);
    }

    public boolean onCustomGroupListing(GroupEditableListAdapter.GroupLister<AbstractGenericItem> groupLister, int i, AbstractGenericItem abstractGenericItem) {
        if (i != 101) {
            return false;
        }
        groupLister.offer(abstractGenericItem, new GroupEditableTransferObjectMerger(abstractGenericItem));
        return true;
    }

    public GroupEditableListAdapter.GroupLister<AbstractGenericItem> createLister(List<AbstractGenericItem> list, int i) {
        return super.createLister(list, i).setCustomLister(this);
    }

    public NetworkDevice getDevice() {
        return this.mDevice;
    }

    public boolean setDeviceId(String str) {
        if (str == null) {
            this.mDevice = null;
            return true;
        }
        NetworkDevice networkDevice = new NetworkDevice(str);
        try {
            AppUtils.getDatabase(getContext()).reconstruct(networkDevice);
            this.mDevice = networkDevice;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public long getGroupId() {
        return this.mGroup.groupId;
    }

    public void setGroupId(long j) {
        this.mGroup.groupId = j;
    }

    public String getPath() {
        return this.mPath;
    }

    public void setPath(String str) {
        this.mPath = str;
        PathChangedListener pathChangedListener = this.mListener;
        if (pathChangedListener != null) {
            pathChangedListener.onPathChange(str);
        }
    }

    public NumberFormat getPercentFormat() {
        return this.mPercentFormat;
    }

    /* renamed from: com.genonbeta.TrebleShot.adapter.TransferListAdapter$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type;

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        static {
            /*
                com.genonbeta.TrebleShot.adapter.TransferListAdapter$GroupEditableTransferObjectMerger$Type[] r0 = com.genonbeta.TrebleShot.adapter.TransferListAdapter.GroupEditableTransferObjectMerger.Type.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type = r0
                com.genonbeta.TrebleShot.adapter.TransferListAdapter$GroupEditableTransferObjectMerger$Type r1 = com.genonbeta.TrebleShot.adapter.TransferListAdapter.GroupEditableTransferObjectMerger.Type.STATUS     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type     // Catch:{ NoSuchFieldError -> 0x001d }
                com.genonbeta.TrebleShot.adapter.TransferListAdapter$GroupEditableTransferObjectMerger$Type r1 = com.genonbeta.TrebleShot.adapter.TransferListAdapter.GroupEditableTransferObjectMerger.Type.FOLDER     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type     // Catch:{ NoSuchFieldError -> 0x0028 }
                com.genonbeta.TrebleShot.adapter.TransferListAdapter$GroupEditableTransferObjectMerger$Type r1 = com.genonbeta.TrebleShot.adapter.TransferListAdapter.GroupEditableTransferObjectMerger.Type.FILE_ERROR     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type     // Catch:{ NoSuchFieldError -> 0x0033 }
                com.genonbeta.TrebleShot.adapter.TransferListAdapter$GroupEditableTransferObjectMerger$Type r1 = com.genonbeta.TrebleShot.adapter.TransferListAdapter.GroupEditableTransferObjectMerger.Type.FILE_ONGOING     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.TransferListAdapter.AnonymousClass1.<clinit>():void");
        }
    }

    public String getRepresentativeText(Merger merger) {
        if (!(merger instanceof GroupEditableTransferObjectMerger)) {
            return super.getRepresentativeText(merger);
        }
        int i = AnonymousClass1.$SwitchMap$com$genonbeta$TrebleShot$adapter$TransferListAdapter$GroupEditableTransferObjectMerger$Type[((GroupEditableTransferObjectMerger) merger).getType().ordinal()];
        if (i == 1) {
            return getContext().getString(R.string.text_transactionDetails);
        }
        if (i == 2) {
            return getContext().getString(R.string.text_folder);
        }
        if (i == 3) {
            return getContext().getString(R.string.text_flagInterrupted);
        }
        if (i != 4) {
            return getContext().getString(R.string.text_file);
        }
        return getContext().getString(R.string.text_taskOngoing);
    }

    public SQLQuery.Select getSelect() {
        return this.mSelect;
    }

    public TransferListAdapter setSelect(SQLQuery.Select select) {
        if (select != null) {
            this.mSelect = select;
        }
        return this;
    }

    public void setPathChangedListener(PathChangedListener pathChangedListener) {
        this.mListener = pathChangedListener;
    }

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.list_transfer, viewGroup, false));
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x00ee A[Catch:{ Exception -> 0x00fc }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00f2 A[Catch:{ Exception -> 0x00fc }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onBindViewHolder(com.genonbeta.TrebleShot.widget.GroupEditableListAdapter.GroupViewHolder r11, int r12) {
        /*
            r10 = this;
            com.genonbeta.TrebleShot.object.Editable r12 = r10.getItem((int) r12)     // Catch:{ Exception -> 0x00fc }
            com.genonbeta.TrebleShot.adapter.TransferListAdapter$AbstractGenericItem r12 = (com.genonbeta.TrebleShot.adapter.TransferListAdapter.AbstractGenericItem) r12     // Catch:{ Exception -> 0x00fc }
            boolean r0 = r11.tryBinding(r12)     // Catch:{ Exception -> 0x00fc }
            if (r0 != 0) goto L_0x00fc
            android.view.View r11 = r11.getView()     // Catch:{ Exception -> 0x00fc }
            double r0 = r12.getPercent()     // Catch:{ Exception -> 0x00fc }
            r2 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r0 = r0 * r2
            int r0 = (int) r0     // Catch:{ Exception -> 0x00fc }
            r1 = 2131296665(0x7f090199, float:1.8211253E38)
            android.view.View r1 = r11.findViewById(r1)     // Catch:{ Exception -> 0x00fc }
            android.widget.ProgressBar r1 = (android.widget.ProgressBar) r1     // Catch:{ Exception -> 0x00fc }
            r2 = 2131296764(0x7f0901fc, float:1.8211454E38)
            android.view.View r2 = r11.findViewById(r2)     // Catch:{ Exception -> 0x00fc }
            android.widget.ImageView r2 = (android.widget.ImageView) r2     // Catch:{ Exception -> 0x00fc }
            r3 = 2131296527(0x7f09010f, float:1.8210973E38)
            android.view.View r3 = r11.findViewById(r3)     // Catch:{ Exception -> 0x00fc }
            android.widget.ImageView r3 = (android.widget.ImageView) r3     // Catch:{ Exception -> 0x00fc }
            r4 = 2131296727(0x7f0901d7, float:1.8211379E38)
            android.view.View r4 = r11.findViewById(r4)     // Catch:{ Exception -> 0x00fc }
            android.widget.ImageView r4 = (android.widget.ImageView) r4     // Catch:{ Exception -> 0x00fc }
            r5 = 2131296745(0x7f0901e9, float:1.8211415E38)
            android.view.View r5 = r11.findViewById(r5)     // Catch:{ Exception -> 0x00fc }
            android.widget.TextView r5 = (android.widget.TextView) r5     // Catch:{ Exception -> 0x00fc }
            r6 = 2131296747(0x7f0901eb, float:1.821142E38)
            android.view.View r6 = r11.findViewById(r6)     // Catch:{ Exception -> 0x00fc }
            android.widget.TextView r6 = (android.widget.TextView) r6     // Catch:{ Exception -> 0x00fc }
            r7 = 2131296748(0x7f0901ec, float:1.8211421E38)
            android.view.View r7 = r11.findViewById(r7)     // Catch:{ Exception -> 0x00fc }
            android.widget.TextView r7 = (android.widget.TextView) r7     // Catch:{ Exception -> 0x00fc }
            r8 = 2131296749(0x7f0901ed, float:1.8211423E38)
            android.view.View r8 = r11.findViewById(r8)     // Catch:{ Exception -> 0x00fc }
            android.widget.TextView r8 = (android.widget.TextView) r8     // Catch:{ Exception -> 0x00fc }
            boolean r9 = r12.isSelectableSelected()     // Catch:{ Exception -> 0x00fc }
            r11.setSelected(r9)     // Catch:{ Exception -> 0x00fc }
            boolean r11 = r12.isComplete()     // Catch:{ Exception -> 0x00fc }
            if (r11 == 0) goto L_0x0071
            int r11 = r10.mColorDone     // Catch:{ Exception -> 0x00fc }
            goto L_0x007c
        L_0x0071:
            boolean r11 = r12.hasIssues()     // Catch:{ Exception -> 0x00fc }
            if (r11 == 0) goto L_0x007a
            int r11 = r10.mColorError     // Catch:{ Exception -> 0x00fc }
            goto L_0x007c
        L_0x007a:
            int r11 = r10.mColorPending     // Catch:{ Exception -> 0x00fc }
        L_0x007c:
            java.lang.String r9 = r12.friendlyName     // Catch:{ Exception -> 0x00fc }
            r5.setText(r9)     // Catch:{ Exception -> 0x00fc }
            java.lang.String r5 = r12.getFirstText(r10)     // Catch:{ Exception -> 0x00fc }
            r6.setText(r5)     // Catch:{ Exception -> 0x00fc }
            java.lang.String r5 = r12.getSecondText(r10)     // Catch:{ Exception -> 0x00fc }
            r7.setText(r5)     // Catch:{ Exception -> 0x00fc }
            java.lang.String r5 = r12.getThirdText(r10)     // Catch:{ Exception -> 0x00fc }
            r8.setText(r5)     // Catch:{ Exception -> 0x00fc }
            com.genonbeta.TrebleShot.object.TransferGroup r5 = r10.mGroup     // Catch:{ Exception -> 0x00fc }
            r12.handleStatusIcon(r4, r5)     // Catch:{ Exception -> 0x00fc }
            android.content.res.ColorStateList r5 = android.content.res.ColorStateList.valueOf(r11)     // Catch:{ Exception -> 0x00fc }
            androidx.core.widget.ImageViewCompat.setImageTintList(r4, r5)     // Catch:{ Exception -> 0x00fc }
            r4 = 100
            r1.setMax(r4)     // Catch:{ Exception -> 0x00fc }
            if (r0 > 0) goto L_0x00aa
            r0 = 1
        L_0x00aa:
            r1.setProgress(r0)     // Catch:{ Exception -> 0x00fc }
            r8.setTextColor(r11)     // Catch:{ Exception -> 0x00fc }
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r11)     // Catch:{ Exception -> 0x00fc }
            androidx.core.widget.ImageViewCompat.setImageTintList(r3, r0)     // Catch:{ Exception -> 0x00fc }
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x00fc }
            r4 = 21
            if (r0 >= r4) goto L_0x00d0
            android.graphics.drawable.Drawable r0 = r1.getProgressDrawable()     // Catch:{ Exception -> 0x00fc }
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.DrawableCompat.wrap(r0)     // Catch:{ Exception -> 0x00fc }
            androidx.core.graphics.drawable.DrawableCompat.setTint(r0, r11)     // Catch:{ Exception -> 0x00fc }
            android.graphics.drawable.Drawable r11 = androidx.core.graphics.drawable.DrawableCompat.unwrap(r0)     // Catch:{ Exception -> 0x00fc }
            r1.setProgressDrawable(r11)     // Catch:{ Exception -> 0x00fc }
            goto L_0x00d7
        L_0x00d0:
            android.content.res.ColorStateList r11 = android.content.res.ColorStateList.valueOf(r11)     // Catch:{ Exception -> 0x00fc }
            r1.setProgressTintList(r11)     // Catch:{ Exception -> 0x00fc }
        L_0x00d7:
            boolean r11 = r12.loadThumbnail(r2)     // Catch:{ Exception -> 0x00fc }
            if (r11 == 0) goto L_0x00e7
            boolean r0 = r12.isComplete()     // Catch:{ Exception -> 0x00fc }
            if (r0 != 0) goto L_0x00e4
            goto L_0x00e7
        L_0x00e4:
            r0 = 8
            goto L_0x00e8
        L_0x00e7:
            r0 = 0
        L_0x00e8:
            r1.setVisibility(r0)     // Catch:{ Exception -> 0x00fc }
            r0 = 0
            if (r11 == 0) goto L_0x00f2
            r3.setImageDrawable(r0)     // Catch:{ Exception -> 0x00fc }
            goto L_0x00fc
        L_0x00f2:
            int r11 = r12.getIconRes()     // Catch:{ Exception -> 0x00fc }
            r3.setImageResource(r11)     // Catch:{ Exception -> 0x00fc }
            r2.setImageDrawable(r0)     // Catch:{ Exception -> 0x00fc }
        L_0x00fc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.TransferListAdapter.onBindViewHolder(com.genonbeta.TrebleShot.widget.GroupEditableListAdapter$GroupViewHolder, int):void");
    }

    public static abstract class AbstractGenericItem extends TransferObject implements GroupEditableListAdapter.GroupEditable {
        public String representativeText;
        public int viewType;

        public abstract String getFirstText(TransferListAdapter transferListAdapter);

        public abstract int getIconRes();

        public abstract double getPercent();

        public int getRequestCode() {
            return 0;
        }

        public abstract String getSecondText(TransferListAdapter transferListAdapter);

        public abstract String getThirdText(TransferListAdapter transferListAdapter);

        public abstract void handleStatusIcon(ImageView imageView, TransferGroup transferGroup);

        public abstract boolean hasIssues();

        public abstract boolean isComplete();

        public abstract boolean loadThumbnail(ImageView imageView);

        public void setDate(long j) {
        }

        public AbstractGenericItem() {
        }

        public AbstractGenericItem(String str) {
            this.viewType = 100;
            setRepresentativeText(str);
        }

        public boolean applyFilter(String[] strArr) {
            for (String str : strArr) {
                if (this.friendlyName != null && this.friendlyName.toLowerCase().contains(str.toLowerCase())) {
                    return true;
                }
            }
            return false;
        }

        public int getViewType() {
            return this.viewType;
        }

        public String getRepresentativeText() {
            return this.representativeText;
        }

        public void setRepresentativeText(CharSequence charSequence) {
            this.representativeText = String.valueOf(charSequence);
        }

        public boolean isGroupRepresentative() {
            return this.viewType == 100;
        }

        public boolean setSelectableSelected(boolean z) {
            return !isGroupRepresentative() && super.setSelectableSelected(z);
        }

        public void setSize(long j) {
            this.fileSize = j;
        }
    }

    public static class GenericTransferItem extends AbstractGenericItem {
        private String mDeviceName;
        private DocumentFile mFile;
        private boolean mSupportThumbnail;

        public GenericTransferItem() {
        }

        public GenericTransferItem(String str) {
            this.viewType = 100;
            setRepresentativeText(str);
        }

        public boolean applyFilter(String[] strArr) {
            if (super.applyFilter(strArr)) {
                return true;
            }
            for (String lowerCase : strArr) {
                if (this.fileMimeType.toLowerCase().contains(lowerCase.toLowerCase())) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasIssues() {
            return TransferObject.Flag.INTERRUPTED.equals(this.flag) || TransferObject.Flag.REMOVED.equals(this.flag);
        }

        public boolean isComplete() {
            return TransferObject.Flag.DONE.equals(this.flag);
        }

        public int getIconRes() {
            return MimeIconUtils.loadMimeIcon(this.fileMimeType);
        }

        public double getPercent() {
            if (TransferObject.Flag.DONE.equals(this.flag)) {
                return 1.0d;
            }
            if (this.fileSize == 0 || this.flag.getBytesValue() == 0) {
                return 0.0d;
            }
            return Long.valueOf(this.flag.getBytesValue()).doubleValue() / Long.valueOf(this.fileSize).doubleValue();
        }

        public void handleStatusIcon(ImageView imageView, TransferGroup transferGroup) {
            imageView.setVisibility(0);
            imageView.setImageResource(TransferObject.Type.INCOMING.equals(this.type) ? R.drawable.ic_arrow_down_white_24dp : R.drawable.ic_arrow_up_white_24dp);
        }

        public String getFirstText(TransferListAdapter transferListAdapter) {
            return FileUtils.sizeExpression(this.fileSize, false);
        }

        public String getSecondText(TransferListAdapter transferListAdapter) {
            String str = this.mDeviceName;
            return str == null ? transferListAdapter.getContext().getString(R.string.text_unknown) : str;
        }

        public String getThirdText(TransferListAdapter transferListAdapter) {
            return TextUtils.getTransactionFlagString(transferListAdapter.getContext(), this, transferListAdapter.getPercentFormat());
        }

        public boolean loadThumbnail(ImageView imageView) {
            DocumentFile documentFile = this.mFile;
            if (documentFile == null || !this.mSupportThumbnail || !documentFile.exists()) {
                return false;
            }
            GlideApp.with(imageView.getContext()).load(this.mFile.getUri()).error(getIconRes()).override(160).centerCrop().into(imageView);
            return true;
        }

        public void setDeviceName(String str) {
            this.mDeviceName = str;
        }

        public void setFile(DocumentFile documentFile) {
            this.mFile = documentFile;
        }

        public void setSupportThumbnail(boolean z) {
            this.mSupportThumbnail = z;
        }
    }

    public static class TransferFolder extends AbstractGenericItem {
        public long bytesReceived = 0;
        public long bytesTotal = 0;
        public int filesReceived = 0;
        public int filesTotal = 0;
        private boolean mHasIssues = false;

        public int getIconRes() {
            return R.drawable.ic_folder_white_24dp;
        }

        public boolean loadThumbnail(ImageView imageView) {
            return false;
        }

        public TransferFolder(long j, String str, String str2) {
            this.groupId = j;
            this.friendlyName = str;
            this.directory = str2;
        }

        public boolean hasIssues() {
            return this.mHasIssues;
        }

        public boolean isComplete() {
            int i = this.filesTotal;
            return i == this.filesReceived && i != 0;
        }

        public double getPercent() {
            long j = this.bytesReceived;
            if (j <= 0 || this.bytesTotal <= 0) {
                return 0.0d;
            }
            return Long.valueOf(j).doubleValue() / Long.valueOf(this.bytesTotal).doubleValue();
        }

        public void handleStatusIcon(ImageView imageView, TransferGroup transferGroup) {
            imageView.setVisibility(8);
        }

        public String getFirstText(TransferListAdapter transferListAdapter) {
            return FileUtils.sizeExpression(this.bytesTotal, false);
        }

        public String getSecondText(TransferListAdapter transferListAdapter) {
            return transferListAdapter.getContext().getString(R.string.text_transferStatusFiles, new Object[]{Integer.valueOf(this.filesReceived), Integer.valueOf(this.filesTotal)});
        }

        public String getThirdText(TransferListAdapter transferListAdapter) {
            return transferListAdapter.getPercentFormat().format(getPercent());
        }

        public SQLQuery.Select getWhere() {
            SQLQuery.Select select = new SQLQuery.Select(AccessDatabase.TABLE_TRANSFER, new String[0]);
            return select.setWhere("groupId=? AND (directory LIKE ? OR directory = ?)", String.valueOf(this.groupId), this.directory + File.separator + "%", this.directory);
        }

        public boolean equals(Object obj) {
            return (obj instanceof TransferFolder) && this.directory != null && this.directory.equals(((TransferFolder) obj).directory);
        }

        public long getId() {
            return (long) this.directory.hashCode();
        }

        public void setId(long j) {
            super.setId(j);
            Log.d(TransferListAdapter.class.getSimpleName(), "setId(): This method should not be invoked");
        }

        public void setHasIssues(boolean z) {
            this.mHasIssues = z;
        }
    }

    public static class DetailsTransferFolder extends TransferFolder implements StatusItem {
        public int getIconRes() {
            return R.drawable.ic_info_white_24dp;
        }

        public boolean isSelectableSelected() {
            return false;
        }

        public boolean setSelectableSelected(boolean z) {
            return false;
        }

        public DetailsTransferFolder(long j, String str, String str2) {
            super(j, str, str2);
        }

        public void handleStatusIcon(ImageView imageView, TransferGroup transferGroup) {
            if (transferGroup.isServedOnWeb) {
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.ic_web_white_24dp);
                return;
            }
            super.handleStatusIcon(imageView, transferGroup);
        }

        public long getId() {
            return (long) (this.directory != null ? this.directory : this.friendlyName).hashCode();
        }
    }

    public static class StorageStatusItem extends AbstractGenericItem implements StatusItem {
        public long bytesFree = 0;
        public long bytesRequired = 0;
        public long bytesTotal = 0;

        public int getIconRes() {
            return R.drawable.ic_save_white_24dp;
        }

        public boolean isSelectableSelected() {
            return false;
        }

        public boolean loadThumbnail(ImageView imageView) {
            return false;
        }

        public boolean setSelectableSelected(boolean z) {
            return false;
        }

        public boolean hasIssues() {
            long j = this.bytesFree;
            return j < this.bytesRequired && j != -1;
        }

        public boolean isComplete() {
            return this.bytesFree == -1 || !hasIssues();
        }

        public long getId() {
            return (long) (this.directory != null ? this.directory : this.friendlyName).hashCode();
        }

        public double getPercent() {
            long j = this.bytesTotal;
            if (j > 0) {
                long j2 = this.bytesFree;
                if (j2 > 0) {
                    return Long.valueOf(j - j2).doubleValue() / Long.valueOf(this.bytesTotal).doubleValue();
                }
            }
            return 0.0d;
        }

        public void handleStatusIcon(ImageView imageView, TransferGroup transferGroup) {
            imageView.setVisibility(8);
        }

        public String getFirstText(TransferListAdapter transferListAdapter) {
            long j = this.bytesFree;
            if (j == -1) {
                return transferListAdapter.getContext().getString(R.string.text_unknown);
            }
            return FileUtils.sizeExpression(j, false);
        }

        public String getSecondText(TransferListAdapter transferListAdapter) {
            return transferListAdapter.getContext().getString(R.string.text_savePath);
        }

        public String getThirdText(TransferListAdapter transferListAdapter) {
            return transferListAdapter.getPercentFormat().format(getPercent());
        }
    }

    public static class GroupEditableTransferObjectMerger extends ComparableMerger<AbstractGenericItem> {
        private Type mType;

        public enum Type {
            STATUS,
            FOLDER,
            FILE_ONGOING,
            FILE_ERROR,
            FILE
        }

        public GroupEditableTransferObjectMerger(AbstractGenericItem abstractGenericItem) {
            if (abstractGenericItem instanceof StatusItem) {
                this.mType = Type.STATUS;
            } else if (abstractGenericItem instanceof TransferFolder) {
                this.mType = Type.FOLDER;
            } else if (abstractGenericItem.hasIssues()) {
                this.mType = Type.FILE_ERROR;
            } else if (TransferObject.Flag.IN_PROGRESS.equals(abstractGenericItem.flag)) {
                this.mType = Type.FILE_ONGOING;
            } else {
                this.mType = Type.FILE;
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof GroupEditableTransferObjectMerger) && ((GroupEditableTransferObjectMerger) obj).getType().equals(getType());
        }

        public Type getType() {
            return this.mType;
        }

        public int compareTo(ComparableMerger<AbstractGenericItem> comparableMerger) {
            if (comparableMerger instanceof GroupEditableTransferObjectMerger) {
                return MathUtils.compare((long) ((GroupEditableTransferObjectMerger) comparableMerger).getType().ordinal(), (long) getType().ordinal());
            }
            return 1;
        }
    }
}
