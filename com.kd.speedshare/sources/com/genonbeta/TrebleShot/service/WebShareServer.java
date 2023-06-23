package com.genonbeta.TrebleShot.service;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import com.genonbeta.TrebleShot.adapter.ApplicationListAdapter;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.util.NotificationUtils;
import com.genonbeta.android.database.SQLQuery;
import com.genonbeta.android.framework.io.StreamInfo;
import com.github.kevinsawicki.http.HttpRequest;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.kd.speedshare.R;
import fi.iki.elonen.NanoHTTPD;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.HTTP;

public class WebShareServer extends NanoHTTPD {
    private AssetManager mAssetManager;
    /* access modifiers changed from: private */
    public Context mContext;
    private NotificationUtils mNotificationUtils;

    public WebShareServer(Context context, int i) throws IOException {
        super(i);
        this.mContext = context;
        this.mAssetManager = context.getAssets();
        this.mNotificationUtils = new NotificationUtils(context, AppUtils.getDatabase(context), AppUtils.getDefaultPreferences(context));
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:67|68|69|70|71|72|73|74|75) */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x0324, code lost:
        r8 = 65535;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x0325, code lost:
        switch(r8) {
            case 0: goto L_0x035e;
            case 1: goto L_0x035e;
            case 2: goto L_0x0357;
            case 3: goto L_0x0350;
            case 4: goto L_0x0343;
            case 5: goto L_0x0338;
            case 6: goto L_0x032d;
            default: goto L_0x0328;
        };
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x0328, code lost:
        r4 = r22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:127:0x0337, code lost:
        return newFixedLengthResponse(fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED, r3, serveHelpPage());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x033c, code lost:
        r4 = r22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x0342, code lost:
        return newFixedLengthResponse(fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED, r4, "Works");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x0343, code lost:
        r4 = r22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x034f, code lost:
        return newFixedLengthResponse(fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED, r3, serveTransferPage(r0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:135:0x0350, code lost:
        r4 = r22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:0x0356, code lost:
        return serveAPK();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x0357, code lost:
        r4 = r22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x035d, code lost:
        return serveFile(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x035e, code lost:
        r4 = r22;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x0366, code lost:
        return serveFileDownload(r0, r32);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:141:0x0367, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:144:0x0371, code lost:
        return newFixedLengthResponse(fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED, r3, serveMainPage());
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:74:0x025d */
    /* JADX WARNING: Removed duplicated region for block: B:102:0x02e8 A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x02f2 A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x02fc A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x0306 A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x0310 A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:117:0x031a A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x01c5 A[SYNTHETIC, Splitter:B:67:0x01c5] */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x029c  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x02be  */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x02cf A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x02d3 A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x02dd A[Catch:{ Exception -> 0x0372 }] */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x02de A[Catch:{ Exception -> 0x0372 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public fi.iki.elonen.NanoHTTPD.Response serve(fi.iki.elonen.NanoHTTPD.IHTTPSession r32) {
        /*
            r31 = this;
            r1 = r31
            r2 = r32
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            fi.iki.elonen.NanoHTTPD$Method r3 = r32.getMethod()
            long r4 = java.lang.System.currentTimeMillis()
            int r6 = com.genonbeta.TrebleShot.util.AppUtils.getUniqueNumber()
            long r6 = (long) r6
            fi.iki.elonen.NanoHTTPD$Method r8 = fi.iki.elonen.NanoHTTPD.Method.PUT
            boolean r8 = r8.equals(r3)
            r9 = 0
            r10 = 2131821140(0x7f110254, float:1.9275015E38)
            java.lang.String r11 = "text/plain"
            if (r8 != 0) goto L_0x002f
            fi.iki.elonen.NanoHTTPD$Method r8 = fi.iki.elonen.NanoHTTPD.Method.POST
            boolean r3 = r8.equals(r3)
            if (r3 == 0) goto L_0x002d
            goto L_0x002f
        L_0x002d:
            r3 = r9
            goto L_0x0070
        L_0x002f:
            com.genonbeta.TrebleShot.util.NotificationUtils r3 = r1.mNotificationUtils     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            java.lang.String r8 = "tsLowPriority"
            com.genonbeta.TrebleShot.util.DynamicNotification r3 = r3.buildDynamicNotification(r6, r8)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            r8 = 17301633(0x1080081, float:2.4979616E-38)
            androidx.core.app.NotificationCompat$Builder r8 = r3.setSmallIcon(r8)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            android.content.Context r12 = r1.mContext     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            java.lang.String r12 = r12.getString(r10)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            androidx.core.app.NotificationCompat$Builder r8 = r8.setContentInfo(r12)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            android.content.Context r12 = r1.mContext     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            r13 = 2131821054(0x7f1101fe, float:1.927484E38)
            java.lang.String r12 = r12.getString(r13)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            androidx.core.app.NotificationCompat$Builder r8 = r8.setContentTitle(r12)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            java.util.Map r12 = r32.getHeaders()     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            java.lang.String r13 = "http-client-ip"
            java.lang.Object r12 = r12.get(r13)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            java.lang.CharSequence r12 = (java.lang.CharSequence) r12     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            r8.setContentText(r12)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            r3.show()     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            r2.parseBody(r0)     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            long r12 = java.lang.System.currentTimeMillis()     // Catch:{ IOException -> 0x0392, ResponseException -> 0x0383 }
            long r4 = r12 - r4
        L_0x0070:
            java.lang.String r13 = "text/html"
            r14 = 1
            if (r3 == 0) goto L_0x028c
            java.util.Map r8 = r32.getParms()
            java.lang.String r15 = "file"
            boolean r8 = r8.containsKey(r15)
            if (r8 == 0) goto L_0x028c
            java.util.Map r8 = r32.getParms()
            java.lang.Object r8 = r8.get(r15)
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r0 = r0.get(r15)
            java.lang.String r0 = (java.lang.String) r0
            if (r8 == 0) goto L_0x026b
            if (r0 == 0) goto L_0x026b
            int r15 = r8.length()
            if (r15 >= r14) goto L_0x009d
            goto L_0x026b
        L_0x009d:
            java.io.File r15 = new java.io.File
            r15.<init>(r0)
            android.content.Context r0 = r1.mContext
            com.genonbeta.android.framework.io.DocumentFile r12 = com.genonbeta.TrebleShot.util.FileUtils.getApplicationDirectory(r0)
            com.genonbeta.android.framework.util.Interrupter r0 = new com.genonbeta.android.framework.util.Interrupter
            r0.<init>()
            com.genonbeta.android.framework.io.DocumentFile r17 = com.genonbeta.android.framework.io.DocumentFile.fromFile(r15)
            java.lang.String r10 = com.genonbeta.TrebleShot.util.FileUtils.getUniqueFileName(r12, r8, r14)
            com.genonbeta.android.framework.io.DocumentFile r9 = r12.createFile(r9, r10)
            r10 = 2131165362(0x7f0700b2, float:1.7944939E38)
            androidx.core.app.NotificationCompat$Builder r10 = r3.setSmallIcon(r10)
            android.content.Context r14 = r1.mContext
            r2 = 2131821140(0x7f110254, float:1.9275015E38)
            java.lang.String r14 = r14.getString(r2)
            androidx.core.app.NotificationCompat$Builder r2 = r10.setContentInfo(r14)
            android.content.Context r10 = r1.mContext
            r14 = 2131821041(0x7f1101f1, float:1.9274814E38)
            java.lang.String r10 = r10.getString(r14)
            androidx.core.app.NotificationCompat$Builder r2 = r2.setContentTitle(r10)
            r2.setContentText(r8)
            r3.show()
            r18 = 0
            android.content.Context r2 = r1.mContext     // Catch:{ Exception -> 0x0197 }
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch:{ Exception -> 0x0197 }
            android.net.Uri r10 = r17.getUri()     // Catch:{ Exception -> 0x0197 }
            java.io.InputStream r10 = r2.openInputStream(r10)     // Catch:{ Exception -> 0x0197 }
            android.net.Uri r14 = r9.getUri()     // Catch:{ Exception -> 0x0197 }
            java.io.OutputStream r2 = r2.openOutputStream(r14)     // Catch:{ Exception -> 0x0197 }
            if (r10 == 0) goto L_0x0188
            if (r2 == 0) goto L_0x0188
            r14 = 8096(0x1fa0, float:1.1345E-41)
            byte[] r14 = new byte[r14]     // Catch:{ Exception -> 0x0197 }
            long r20 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0197 }
            r22 = r11
            r16 = r13
            r23 = r18
            r25 = r23
            r11 = 0
        L_0x010d:
            r13 = -1
            if (r11 == r13) goto L_0x0180
            int r11 = r10.read(r14)     // Catch:{ Exception -> 0x017d }
            if (r11 <= 0) goto L_0x0127
            r13 = 0
            r2.write(r14, r13, r11)     // Catch:{ Exception -> 0x017d }
            r2.flush()     // Catch:{ Exception -> 0x017d }
            long r20 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x017d }
            r27 = r14
            long r13 = (long) r11     // Catch:{ Exception -> 0x017d }
            long r23 = r23 + r13
            goto L_0x0129
        L_0x0127:
            r27 = r14
        L_0x0129:
            long r13 = r17.length()     // Catch:{ Exception -> 0x017d }
            int r28 = (r13 > r18 ? 1 : (r13 == r18 ? 0 : -1))
            if (r28 <= 0) goto L_0x015a
            int r13 = (r23 > r18 ? 1 : (r23 == r18 ? 0 : -1))
            if (r13 <= 0) goto L_0x015a
            long r13 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x017d }
            long r13 = r13 - r25
            r28 = 2000(0x7d0, double:9.88E-321)
            int r30 = (r13 > r28 ? 1 : (r13 == r28 ? 0 : -1))
            if (r30 <= 0) goto L_0x015a
            r13 = 100
            long r25 = r17.length()     // Catch:{ Exception -> 0x017d }
            long r25 = r23 / r25
            r28 = 100
            r30 = r11
            r14 = r12
            long r11 = r25 * r28
            int r12 = (int) r11
            r11 = 0
            r3.updateProgress(r13, r12, r11)     // Catch:{ Exception -> 0x0195 }
            long r25 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0195 }
            goto L_0x015d
        L_0x015a:
            r30 = r11
            r14 = r12
        L_0x015d:
            long r11 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0195 }
            long r11 = r11 - r20
            r28 = 5000(0x1388, double:2.4703E-320)
            int r13 = (r11 > r28 ? 1 : (r11 == r28 ? 0 : -1))
            if (r13 > 0) goto L_0x0175
            boolean r11 = r0.interrupted()     // Catch:{ Exception -> 0x0195 }
            if (r11 != 0) goto L_0x0175
            r12 = r14
            r14 = r27
            r11 = r30
            goto L_0x010d
        L_0x0175:
            java.lang.Exception r0 = new java.lang.Exception     // Catch:{ Exception -> 0x0195 }
            java.lang.String r2 = "Timed out or interrupted. Exiting!"
            r0.<init>(r2)     // Catch:{ Exception -> 0x0195 }
            throw r0     // Catch:{ Exception -> 0x0195 }
        L_0x017d:
            r0 = move-exception
            r14 = r12
            goto L_0x019d
        L_0x0180:
            r14 = r12
            r2.close()     // Catch:{ Exception -> 0x0195 }
            r10.close()     // Catch:{ Exception -> 0x0195 }
            goto L_0x01a0
        L_0x0188:
            r22 = r11
            r14 = r12
            r16 = r13
            java.io.IOException r0 = new java.io.IOException     // Catch:{ Exception -> 0x0195 }
            java.lang.String r2 = "Failed to open streams to start copying"
            r0.<init>(r2)     // Catch:{ Exception -> 0x0195 }
            throw r0     // Catch:{ Exception -> 0x0195 }
        L_0x0195:
            r0 = move-exception
            goto L_0x019d
        L_0x0197:
            r0 = move-exception
            r22 = r11
            r14 = r12
            r16 = r13
        L_0x019d:
            r0.printStackTrace()
        L_0x01a0:
            r9.sync()     // Catch:{ Exception -> 0x01a4 }
            goto L_0x01a9
        L_0x01a4:
            r0 = move-exception
            r2 = r0
            r2.printStackTrace()
        L_0x01a9:
            long r10 = r9.length()
            long r12 = r15.length()
            int r0 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r0 == 0) goto L_0x01c5
            long r10 = r15.length()
            int r0 = (r10 > r18 ? 1 : (r10 == r18 ? 0 : -1))
            if (r0 != 0) goto L_0x01be
            goto L_0x01c5
        L_0x01be:
            r3.cancel()
            r3 = r16
            goto L_0x028f
        L_0x01c5:
            com.genonbeta.TrebleShot.util.NotificationUtils r0 = r1.mNotificationUtils     // Catch:{ Exception -> 0x0263 }
            java.lang.String r2 = "tsHighPriority"
            com.genonbeta.TrebleShot.util.DynamicNotification r0 = r0.buildDynamicNotification(r6, r2)     // Catch:{ Exception -> 0x0263 }
            r2 = 17301634(0x1080082, float:2.497962E-38)
            androidx.core.app.NotificationCompat$Builder r2 = r0.setSmallIcon(r2)     // Catch:{ Exception -> 0x0263 }
            android.content.Context r3 = r1.mContext     // Catch:{ Exception -> 0x0263 }
            r6 = 2131821140(0x7f110254, float:1.9275015E38)
            java.lang.String r3 = r3.getString(r6)     // Catch:{ Exception -> 0x0263 }
            androidx.core.app.NotificationCompat$Builder r2 = r2.setContentInfo(r3)     // Catch:{ Exception -> 0x0263 }
            r3 = 1
            androidx.core.app.NotificationCompat$Builder r2 = r2.setAutoCancel(r3)     // Catch:{ Exception -> 0x0263 }
            androidx.core.app.NotificationCompat$Builder r2 = r2.setContentTitle(r8)     // Catch:{ Exception -> 0x0263 }
            com.genonbeta.TrebleShot.util.NotificationUtils r6 = r1.mNotificationUtils     // Catch:{ Exception -> 0x0263 }
            int r6 = r6.getNotificationSettings()     // Catch:{ Exception -> 0x0263 }
            androidx.core.app.NotificationCompat$Builder r2 = r2.setDefaults(r6)     // Catch:{ Exception -> 0x0263 }
            androidx.core.app.NotificationCompat$Builder r2 = r2.setPriority(r3)     // Catch:{ Exception -> 0x0263 }
            android.content.Context r3 = r1.mContext     // Catch:{ Exception -> 0x0263 }
            r6 = 2131821053(0x7f1101fd, float:1.9274838E38)
            r7 = 2
            java.lang.Object[] r8 = new java.lang.Object[r7]     // Catch:{ Exception -> 0x0261 }
            long r10 = r9.length()     // Catch:{ Exception -> 0x0261 }
            r12 = 0
            java.lang.String r10 = com.genonbeta.TrebleShot.util.FileUtils.sizeExpression(r10, r12)     // Catch:{ Exception -> 0x0261 }
            r8[r12] = r10     // Catch:{ Exception -> 0x0261 }
            android.content.Context r10 = r1.mContext     // Catch:{ Exception -> 0x0261 }
            java.lang.String r4 = com.genonbeta.TrebleShot.util.TimeUtils.getFriendlyElapsedTime(r10, r4)     // Catch:{ Exception -> 0x0261 }
            r5 = 1
            r8[r5] = r4     // Catch:{ Exception -> 0x0261 }
            java.lang.String r3 = r3.getString(r6, r8)     // Catch:{ Exception -> 0x0261 }
            androidx.core.app.NotificationCompat$Builder r2 = r2.setContentText(r3)     // Catch:{ Exception -> 0x0261 }
            r3 = 2131165388(0x7f0700cc, float:1.7944992E38)
            android.content.Context r4 = r1.mContext     // Catch:{ Exception -> 0x0261 }
            r5 = 2131820672(0x7f110080, float:1.9274066E38)
            java.lang.String r4 = r4.getString(r5)     // Catch:{ Exception -> 0x0261 }
            android.content.Context r5 = r1.mContext     // Catch:{ Exception -> 0x0261 }
            int r6 = com.genonbeta.TrebleShot.util.AppUtils.getUniqueNumber()     // Catch:{ Exception -> 0x0261 }
            android.content.Intent r8 = new android.content.Intent     // Catch:{ Exception -> 0x0261 }
            android.content.Context r10 = r1.mContext     // Catch:{ Exception -> 0x0261 }
            java.lang.Class<com.genonbeta.TrebleShot.activity.FileExplorerActivity> r11 = com.genonbeta.TrebleShot.activity.FileExplorerActivity.class
            r8.<init>(r10, r11)     // Catch:{ Exception -> 0x0261 }
            java.lang.String r10 = "filePath"
            android.net.Uri r11 = r14.getUri()     // Catch:{ Exception -> 0x0261 }
            android.content.Intent r8 = r8.putExtra(r10, r11)     // Catch:{ Exception -> 0x0261 }
            r10 = 0
            android.app.PendingIntent r5 = android.app.PendingIntent.getActivity(r5, r6, r8, r10)     // Catch:{ Exception -> 0x0261 }
            r2.addAction(r3, r4, r5)     // Catch:{ Exception -> 0x0261 }
            android.content.Context r2 = r1.mContext     // Catch:{ Exception -> 0x025d }
            android.content.Intent r2 = com.genonbeta.TrebleShot.util.FileUtils.getOpenIntent((android.content.Context) r2, (com.genonbeta.android.framework.io.DocumentFile) r9)     // Catch:{ Exception -> 0x025d }
            android.content.Context r3 = r1.mContext     // Catch:{ Exception -> 0x025d }
            int r4 = com.genonbeta.TrebleShot.util.AppUtils.getUniqueNumber()     // Catch:{ Exception -> 0x025d }
            r5 = 0
            android.app.PendingIntent r2 = android.app.PendingIntent.getActivity(r3, r4, r2, r5)     // Catch:{ Exception -> 0x025d }
            r0.setContentIntent(r2)     // Catch:{ Exception -> 0x025d }
        L_0x025d:
            r0.show()     // Catch:{ Exception -> 0x0261 }
            goto L_0x0268
        L_0x0261:
            r0 = move-exception
            goto L_0x0265
        L_0x0263:
            r0 = move-exception
            r7 = 2
        L_0x0265:
            r0.printStackTrace()
        L_0x0268:
            r3 = r16
            goto L_0x0290
        L_0x026b:
            r16 = r13
            r3.cancel()
            fi.iki.elonen.NanoHTTPD$Response$Status r0 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED
            r2 = 2131821078(0x7f110216, float:1.927489E38)
            r3 = 2131820807(0x7f110107, float:1.927434E38)
            r4 = 2131821000(0x7f1101c8, float:1.927473E38)
            java.lang.String r3 = r1.makeNotFoundTemplate(r3, r4)
            java.lang.String r4 = "arrow-left.svg"
            java.lang.String r2 = r1.makePage(r4, r2, r3)
            r3 = r16
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r0, r3, r2)
            return r0
        L_0x028c:
            r22 = r11
            r3 = r13
        L_0x028f:
            r7 = 2
        L_0x0290:
            java.lang.String r0 = r32.getUri()
            java.lang.String r2 = "/kill"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L_0x02b0
            android.content.Context r0 = r1.mContext
            android.content.Intent r2 = new android.content.Intent
            android.content.Context r4 = r1.mContext
            java.lang.Class<com.genonbeta.TrebleShot.service.CommunicationService> r5 = com.genonbeta.TrebleShot.service.CommunicationService.class
            r2.<init>(r4, r5)
            java.lang.String r4 = "com.genonbeta.TrebleShot.transaction.action.TOGGLE_WEBSHARE"
            android.content.Intent r2 = r2.setAction(r4)
            com.genonbeta.TrebleShot.util.AppUtils.startForegroundService(r0, r2)
        L_0x02b0:
            r2 = 0
            java.lang.String[] r0 = new java.lang.String[r2]
            java.lang.String r2 = r32.getUri()
            int r2 = r2.length()
            r4 = 1
            if (r2 <= r4) goto L_0x02cc
            java.lang.String r0 = r32.getUri()
            java.lang.String r0 = r0.substring(r4)
            java.lang.String r2 = "/"
            java.lang.String[] r0 = r0.split(r2)
        L_0x02cc:
            int r2 = r0.length     // Catch:{ Exception -> 0x0372 }
            if (r2 < r4) goto L_0x02d3
            r2 = 0
            r5 = r0[r2]     // Catch:{ Exception -> 0x0372 }
            goto L_0x02d6
        L_0x02d3:
            r2 = 0
            java.lang.String r5 = ""
        L_0x02d6:
            int r6 = r5.hashCode()     // Catch:{ Exception -> 0x0372 }
            switch(r6) {
                case -1312123058: goto L_0x031a;
                case 3198785: goto L_0x0310;
                case 3529469: goto L_0x0306;
                case 3556498: goto L_0x02fc;
                case 100313435: goto L_0x02f2;
                case 1107923036: goto L_0x02e8;
                case 1427818632: goto L_0x02de;
                default: goto L_0x02dd;
            }     // Catch:{ Exception -> 0x0372 }
        L_0x02dd:
            goto L_0x0324
        L_0x02de:
            java.lang.String r4 = "download"
            boolean r4 = r5.equals(r4)     // Catch:{ Exception -> 0x0372 }
            if (r4 == 0) goto L_0x0324
            r8 = 0
            goto L_0x0325
        L_0x02e8:
            java.lang.String r2 = "download-zip"
            boolean r2 = r5.equals(r2)     // Catch:{ Exception -> 0x0372 }
            if (r2 == 0) goto L_0x0324
            r8 = 1
            goto L_0x0325
        L_0x02f2:
            java.lang.String r2 = "image"
            boolean r2 = r5.equals(r2)     // Catch:{ Exception -> 0x0372 }
            if (r2 == 0) goto L_0x0324
            r8 = 2
            goto L_0x0325
        L_0x02fc:
            java.lang.String r2 = "test"
            boolean r2 = r5.equals(r2)     // Catch:{ Exception -> 0x0372 }
            if (r2 == 0) goto L_0x0324
            r8 = 5
            goto L_0x0325
        L_0x0306:
            java.lang.String r2 = "show"
            boolean r2 = r5.equals(r2)     // Catch:{ Exception -> 0x0372 }
            if (r2 == 0) goto L_0x0324
            r8 = 4
            goto L_0x0325
        L_0x0310:
            java.lang.String r2 = "help"
            boolean r2 = r5.equals(r2)     // Catch:{ Exception -> 0x0372 }
            if (r2 == 0) goto L_0x0324
            r8 = 6
            goto L_0x0325
        L_0x031a:
            java.lang.String r2 = "trebleshot"
            boolean r2 = r5.equals(r2)     // Catch:{ Exception -> 0x0372 }
            if (r2 == 0) goto L_0x0324
            r8 = 3
            goto L_0x0325
        L_0x0324:
            r8 = -1
        L_0x0325:
            switch(r8) {
                case 0: goto L_0x035e;
                case 1: goto L_0x035e;
                case 2: goto L_0x0357;
                case 3: goto L_0x0350;
                case 4: goto L_0x0343;
                case 5: goto L_0x0338;
                case 6: goto L_0x032d;
                default: goto L_0x0328;
            }
        L_0x0328:
            r4 = r22
            fi.iki.elonen.NanoHTTPD$Response$Status r0 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED     // Catch:{ Exception -> 0x0367 }
            goto L_0x0369
        L_0x032d:
            fi.iki.elonen.NanoHTTPD$Response$Status r0 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED     // Catch:{ Exception -> 0x0372 }
            java.lang.String r2 = r31.serveHelpPage()     // Catch:{ Exception -> 0x0372 }
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r0, r3, r2)     // Catch:{ Exception -> 0x0372 }
            return r0
        L_0x0338:
            fi.iki.elonen.NanoHTTPD$Response$Status r0 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED     // Catch:{ Exception -> 0x0372 }
            java.lang.String r2 = "Works"
            r4 = r22
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r0, r4, r2)     // Catch:{ Exception -> 0x0367 }
            return r0
        L_0x0343:
            r4 = r22
            fi.iki.elonen.NanoHTTPD$Response$Status r2 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED     // Catch:{ Exception -> 0x0367 }
            java.lang.String r0 = r1.serveTransferPage(r0)     // Catch:{ Exception -> 0x0367 }
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r2, r3, r0)     // Catch:{ Exception -> 0x0367 }
            return r0
        L_0x0350:
            r4 = r22
            fi.iki.elonen.NanoHTTPD$Response r0 = r31.serveAPK()     // Catch:{ Exception -> 0x0367 }
            return r0
        L_0x0357:
            r4 = r22
            fi.iki.elonen.NanoHTTPD$Response r0 = r1.serveFile(r0)     // Catch:{ Exception -> 0x0367 }
            return r0
        L_0x035e:
            r2 = r32
            r4 = r22
            fi.iki.elonen.NanoHTTPD$Response r0 = r1.serveFileDownload(r0, r2)     // Catch:{ Exception -> 0x0367 }
            return r0
        L_0x0367:
            r0 = move-exception
            goto L_0x0375
        L_0x0369:
            java.lang.String r2 = r31.serveMainPage()     // Catch:{ Exception -> 0x0367 }
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r0, r3, r2)     // Catch:{ Exception -> 0x0367 }
            return r0
        L_0x0372:
            r0 = move-exception
            r4 = r22
        L_0x0375:
            r0.printStackTrace()
            fi.iki.elonen.NanoHTTPD$Response$Status r2 = fi.iki.elonen.NanoHTTPD.Response.Status.NOT_ACCEPTABLE
            java.lang.String r0 = r0.toString()
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r2, r4, r0)
            return r0
        L_0x0383:
            r0 = move-exception
            r4 = r11
            fi.iki.elonen.NanoHTTPD$Response$Status r2 = r0.getStatus()
            java.lang.String r0 = r0.getMessage()
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r2, r4, r0)
            return r0
        L_0x0392:
            r0 = move-exception
            r4 = r11
            fi.iki.elonen.NanoHTTPD$Response$Status r2 = fi.iki.elonen.NanoHTTPD.Response.Status.INTERNAL_ERROR
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "SERVER INTERNAL ERROR: IOException: "
            r3.append(r5)
            java.lang.String r0 = r0.getMessage()
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            fi.iki.elonen.NanoHTTPD$Response r0 = newFixedLengthResponse(r2, r4, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.WebShareServer.serve(fi.iki.elonen.NanoHTTPD$IHTTPSession):fi.iki.elonen.NanoHTTPD$Response");
    }

    private NanoHTTPD.Response serveAPK() {
        try {
            File file = new File(this.mContext.getApplicationInfo().sourceDir);
            return newFixedLengthResponse(NanoHTTPD.Response.Status.ACCEPTED, "application/force-download", new FileInputStream(file), file.length());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return newFixedLengthResponse(NanoHTTPD.Response.Status.ACCEPTED, NanoHTTPD.MIME_HTML, makePage("arrow-left.svg", R.string.text_downloads, makeNotFoundTemplate(R.string.text_empty, R.string.text_webShareNoContentNotice)));
        }
    }

    private NanoHTTPD.Response serveFile(String[] strArr) {
        try {
            if (strArr.length >= 2) {
                NanoHTTPD.Response.Status status = NanoHTTPD.Response.Status.ACCEPTED;
                String mimeTypeForFile = getMimeTypeForFile(strArr[1]);
                return newFixedLengthResponse(status, mimeTypeForFile, openFile(strArr[0] + File.separator + strArr[1]), -1);
            }
            throw new Exception("Expected 2 args, " + strArr.length + " given");
        } catch (Exception e) {
            e.printStackTrace();
            return newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, NanoHTTPD.MIME_PLAINTEXT, "Not found");
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:10|(3:12|13|(1:15))|16|17|18) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x0071 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private fi.iki.elonen.NanoHTTPD.Response serveFileDownload(java.lang.String[] r10, fi.iki.elonen.NanoHTTPD.IHTTPSession r11) {
        /*
            r9 = this;
            java.lang.String r0 = "download"
            r1 = 0
            r2 = r10[r1]     // Catch:{ Exception -> 0x0124 }
            boolean r0 = r0.equals(r2)     // Catch:{ Exception -> 0x0124 }
            java.lang.String r2 = "application/force-download"
            java.lang.String r3 = "The group is not checked as served on the Web"
            java.lang.String r4 = " given"
            r5 = 2
            r6 = 1
            if (r0 == 0) goto L_0x009b
            int r0 = r10.length     // Catch:{ Exception -> 0x0124 }
            r1 = 3
            if (r0 < r1) goto L_0x0080
            com.genonbeta.TrebleShot.object.TransferGroup r0 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x0124 }
            r1 = r10[r6]     // Catch:{ Exception -> 0x0124 }
            long r6 = java.lang.Long.parseLong(r1)     // Catch:{ Exception -> 0x0124 }
            r0.<init>((long) r6)     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.TrebleShot.object.TransferObject r1 = new com.genonbeta.TrebleShot.object.TransferObject     // Catch:{ Exception -> 0x0124 }
            r10 = r10[r5]     // Catch:{ Exception -> 0x0124 }
            long r4 = java.lang.Long.parseLong(r10)     // Catch:{ Exception -> 0x0124 }
            r10 = 0
            com.genonbeta.TrebleShot.object.TransferObject$Type r6 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING     // Catch:{ Exception -> 0x0124 }
            r1.<init>(r4, r10, r6)     // Catch:{ Exception -> 0x0124 }
            android.content.Context r10 = r9.mContext     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.TrebleShot.database.AccessDatabase r10 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r10)     // Catch:{ Exception -> 0x0124 }
            r10.reconstruct(r0)     // Catch:{ Exception -> 0x0124 }
            android.content.Context r10 = r9.mContext     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.TrebleShot.database.AccessDatabase r10 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r10)     // Catch:{ Exception -> 0x0124 }
            r10.reconstruct(r1)     // Catch:{ Exception -> 0x0124 }
            boolean r10 = r0.isServedOnWeb     // Catch:{ Exception -> 0x0124 }
            if (r10 == 0) goto L_0x007a
            android.content.Context r10 = r9.mContext     // Catch:{ Exception -> 0x0124 }
            java.lang.String r0 = r1.file     // Catch:{ Exception -> 0x0124 }
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.android.framework.io.StreamInfo r10 = com.genonbeta.android.framework.io.StreamInfo.getStreamInfo(r10, r0)     // Catch:{ Exception -> 0x0124 }
            java.io.InputStream r0 = r10.openInputStream()     // Catch:{ Exception -> 0x0124 }
            java.util.Map r11 = r11.getHeaders()     // Catch:{ Exception -> 0x0124 }
            java.lang.String r1 = "Accept-Ranges"
            java.lang.Object r11 = r11.get(r1)     // Catch:{ Exception -> 0x0124 }
            java.lang.String r11 = (java.lang.String) r11     // Catch:{ Exception -> 0x0124 }
            if (r11 == 0) goto L_0x0071
            long r3 = java.lang.Long.parseLong(r11)     // Catch:{ Exception -> 0x0071 }
            long r5 = r10.size     // Catch:{ Exception -> 0x0071 }
            int r11 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r11 >= 0) goto L_0x0071
            r0.skip(r3)     // Catch:{ Exception -> 0x0071 }
        L_0x0071:
            fi.iki.elonen.NanoHTTPD$Response$Status r11 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED     // Catch:{ Exception -> 0x0124 }
            long r3 = r10.size     // Catch:{ Exception -> 0x0124 }
            fi.iki.elonen.NanoHTTPD$Response r10 = newFixedLengthResponse(r11, r2, r0, r3)     // Catch:{ Exception -> 0x0124 }
            return r10
        L_0x007a:
            java.lang.Exception r10 = new java.lang.Exception     // Catch:{ Exception -> 0x0124 }
            r10.<init>(r3)     // Catch:{ Exception -> 0x0124 }
            throw r10     // Catch:{ Exception -> 0x0124 }
        L_0x0080:
            java.lang.Exception r11 = new java.lang.Exception     // Catch:{ Exception -> 0x0124 }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0124 }
            r0.<init>()     // Catch:{ Exception -> 0x0124 }
            java.lang.String r1 = "Expected 3 args, "
            r0.append(r1)     // Catch:{ Exception -> 0x0124 }
            int r10 = r10.length     // Catch:{ Exception -> 0x0124 }
            r0.append(r10)     // Catch:{ Exception -> 0x0124 }
            r0.append(r4)     // Catch:{ Exception -> 0x0124 }
            java.lang.String r10 = r0.toString()     // Catch:{ Exception -> 0x0124 }
            r11.<init>(r10)     // Catch:{ Exception -> 0x0124 }
            throw r11     // Catch:{ Exception -> 0x0124 }
        L_0x009b:
            java.lang.String r11 = "download-zip"
            r0 = r10[r1]     // Catch:{ Exception -> 0x0124 }
            boolean r11 = r11.equals(r0)     // Catch:{ Exception -> 0x0124 }
            if (r11 == 0) goto L_0x0128
            int r11 = r10.length     // Catch:{ Exception -> 0x0124 }
            if (r11 < r5) goto L_0x0109
            com.genonbeta.TrebleShot.object.TransferGroup r11 = new com.genonbeta.TrebleShot.object.TransferGroup     // Catch:{ Exception -> 0x0124 }
            r10 = r10[r6]     // Catch:{ Exception -> 0x0124 }
            long r7 = java.lang.Long.parseLong(r10)     // Catch:{ Exception -> 0x0124 }
            r11.<init>((long) r7)     // Catch:{ Exception -> 0x0124 }
            android.content.Context r10 = r9.mContext     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.TrebleShot.database.AccessDatabase r10 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r10)     // Catch:{ Exception -> 0x0124 }
            r10.reconstruct(r11)     // Catch:{ Exception -> 0x0124 }
            boolean r10 = r11.isServedOnWeb     // Catch:{ Exception -> 0x0124 }
            if (r10 == 0) goto L_0x0103
            android.content.Context r10 = r9.mContext     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.TrebleShot.database.AccessDatabase r10 = com.genonbeta.TrebleShot.util.AppUtils.getDatabase(r10)     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.android.database.SQLQuery$Select r0 = new com.genonbeta.android.database.SQLQuery$Select     // Catch:{ Exception -> 0x0124 }
            java.lang.String r3 = "divisionTransfer"
            java.lang.String[] r4 = new java.lang.String[r1]     // Catch:{ Exception -> 0x0124 }
            r0.<init>(r3, r4)     // Catch:{ Exception -> 0x0124 }
            java.lang.String r3 = "groupId=? AND type=?"
            java.lang.String[] r4 = new java.lang.String[r5]     // Catch:{ Exception -> 0x0124 }
            long r7 = r11.groupId     // Catch:{ Exception -> 0x0124 }
            java.lang.String r11 = java.lang.String.valueOf(r7)     // Catch:{ Exception -> 0x0124 }
            r4[r1] = r11     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.TrebleShot.object.TransferObject$Type r11 = com.genonbeta.TrebleShot.object.TransferObject.Type.OUTGOING     // Catch:{ Exception -> 0x0124 }
            java.lang.String r11 = r11.toString()     // Catch:{ Exception -> 0x0124 }
            r4[r6] = r11     // Catch:{ Exception -> 0x0124 }
            com.genonbeta.android.database.SQLQuery$Select r11 = r0.setWhere(r3, r4)     // Catch:{ Exception -> 0x0124 }
            java.lang.Class<com.genonbeta.TrebleShot.object.TransferObject> r0 = com.genonbeta.TrebleShot.object.TransferObject.class
            java.util.List r10 = r10.castQuery(r11, r0)     // Catch:{ Exception -> 0x0124 }
            int r11 = r10.size()     // Catch:{ Exception -> 0x0124 }
            if (r11 < r6) goto L_0x00fb
            com.genonbeta.TrebleShot.service.WebShareServer$ZipBundleResponse r11 = new com.genonbeta.TrebleShot.service.WebShareServer$ZipBundleResponse     // Catch:{ Exception -> 0x0124 }
            fi.iki.elonen.NanoHTTPD$Response$Status r0 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED     // Catch:{ Exception -> 0x0124 }
            r11.<init>(r0, r2, r10)     // Catch:{ Exception -> 0x0124 }
            return r11
        L_0x00fb:
            java.lang.Exception r10 = new java.lang.Exception     // Catch:{ Exception -> 0x0124 }
            java.lang.String r11 = "No files to send"
            r10.<init>(r11)     // Catch:{ Exception -> 0x0124 }
            throw r10     // Catch:{ Exception -> 0x0124 }
        L_0x0103:
            java.lang.Exception r10 = new java.lang.Exception     // Catch:{ Exception -> 0x0124 }
            r10.<init>(r3)     // Catch:{ Exception -> 0x0124 }
            throw r10     // Catch:{ Exception -> 0x0124 }
        L_0x0109:
            java.lang.Exception r11 = new java.lang.Exception     // Catch:{ Exception -> 0x0124 }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0124 }
            r0.<init>()     // Catch:{ Exception -> 0x0124 }
            java.lang.String r1 = "Expected 2 args, "
            r0.append(r1)     // Catch:{ Exception -> 0x0124 }
            int r10 = r10.length     // Catch:{ Exception -> 0x0124 }
            r0.append(r10)     // Catch:{ Exception -> 0x0124 }
            r0.append(r4)     // Catch:{ Exception -> 0x0124 }
            java.lang.String r10 = r0.toString()     // Catch:{ Exception -> 0x0124 }
            r11.<init>(r10)     // Catch:{ Exception -> 0x0124 }
            throw r11     // Catch:{ Exception -> 0x0124 }
        L_0x0124:
            r10 = move-exception
            r10.printStackTrace()
        L_0x0128:
            fi.iki.elonen.NanoHTTPD$Response$Status r10 = fi.iki.elonen.NanoHTTPD.Response.Status.ACCEPTED
            r11 = 2131820937(0x7f110189, float:1.9274603E38)
            r0 = 2131820939(0x7f11018b, float:1.9274607E38)
            r1 = 2131821142(0x7f110256, float:1.9275019E38)
            java.lang.String r0 = r9.makeNotFoundTemplate(r0, r1)
            java.lang.String r1 = "arrow-left.svg"
            java.lang.String r11 = r9.makePage(r1, r11, r0)
            java.lang.String r0 = "text/html"
            fi.iki.elonen.NanoHTTPD$Response r10 = newFixedLengthResponse(r10, r0, r11)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.service.WebShareServer.serveFileDownload(java.lang.String[], fi.iki.elonen.NanoHTTPD$IHTTPSession):fi.iki.elonen.NanoHTTPD$Response");
    }

    private String serveMainPage() {
        StringBuilder sb = new StringBuilder();
        for (TransferGroup next : AppUtils.getDatabase(this.mContext).castQuery(new SQLQuery.Select(AccessDatabase.TABLE_TRANSFERGROUP, new String[0]).setOrderBy("dateCreated DESC"), TransferGroup.class)) {
            if (next.isServedOnWeb) {
                TransferGroup.Index index = new TransferGroup.Index();
                AppUtils.getDatabase(this.mContext).calculateTransactionSize(next.groupId, index);
                if (index.outgoingCount >= 1) {
                    Context context = this.mContext;
                    sb.append(makeContent("list_transfer_group", context.getString(R.string.mode_itemCountedDetailed, new Object[]{context.getResources().getQuantityString(R.plurals.text_files, index.outgoingCount, new Object[]{Integer.valueOf(index.outgoingCount)}), FileUtils.sizeExpression(index.outgoing, false)}), R.string.butn_show, "show", Long.valueOf(next.groupId)));
                }
            }
        }
        if (sb.length() == 0) {
            sb.append(makeNotFoundTemplate(R.string.text_listEmptyTransfer, R.string.text_webShareNoContentNotice));
        }
        return makePage("icon.png", R.string.text_transfers, sb.toString());
    }

    private String serveTransferPage(String[] strArr) {
        String[] strArr2 = strArr;
        try {
            if (strArr2.length >= 2) {
                TransferGroup transferGroup = new TransferGroup(Long.parseLong(strArr2[1]));
                AppUtils.getDatabase(this.mContext).reconstruct(transferGroup);
                if (transferGroup.isServedOnWeb) {
                    StringBuilder sb = new StringBuilder();
                    List<TransferObject> castQuery = AppUtils.getDatabase(this.mContext).castQuery(new SQLQuery.Select(AccessDatabase.DIVIS_TRANSFER, new String[0]).setWhere(String.format("%s = ?", new Object[]{"groupId"}), String.valueOf(transferGroup.groupId)).setOrderBy("name ASC"), TransferObject.class);
                    if (castQuery.size() > 0) {
                        String string = this.mContext.getString(R.string.butn_downloadAllAsZip);
                        sb.append(makeContent("list_transfer", string, R.string.butn_download, "download-zip", Long.valueOf(transferGroup.groupId), this.mContext.getResources().getQuantityString(R.plurals.text_files, castQuery.size(), new Object[]{Integer.valueOf(castQuery.size())}) + ".zip"));
                        for (TransferObject next : castQuery) {
                            sb.append(makeContent("list_transfer", next.friendlyName + " " + FileUtils.sizeExpression(next.fileSize, false), R.string.butn_download, "download", Long.valueOf(next.groupId), Long.valueOf(next.requestId), next.friendlyName));
                        }
                    }
                    return makePage("arrow-left.svg", R.string.text_files, sb.toString());
                }
                throw new Exception("The group is not checked as served on the Web");
            }
            throw new Exception("Expected 2 args, " + strArr2.length + " given");
        } catch (Exception e) {
            e.printStackTrace();
            return makePage("arrow-left.svg", R.string.text_files, makeNotFoundTemplate(R.string.text_listEmptyFiles, R.string.text_webShareNoContentNotice));
        }
    }

    private String serveHelpPage() {
        HashMap hashMap = new HashMap();
        hashMap.put("help_title", this.mContext.getString(R.string.text_help));
        hashMap.put("licence_text", Tools.escapeHtml(this.mContext.getString(R.string.conf_licence)));
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(this.mContext.getApplicationInfo().packageName, 0);
            hashMap.put("apk_link", "/trebleshot/" + (packageInfo.applicationInfo.loadLabel(packageManager) + "_" + packageInfo.versionName + ApplicationListAdapter.PackageHolder.FORMAT));
            hashMap.put("apk_filename", this.mContext.getString(R.string.text_dowloadTrebleshotAndroid));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return makePage("arrow-left.svg", R.string.text_help, applyPattern(getFieldPattern(), readPage("help.html"), hashMap));
    }

    private String makeContent(String str, String str2, int i, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.CONTENT, str2);
        hashMap.put("action_layout", this.mContext.getString(i));
        for (Object obj : objArr) {
            if (sb.length() > 0) {
                sb.append("/");
            }
            sb.append(obj);
        }
        hashMap.put("actionUrl", sb.toString());
        return applyPattern(getFieldPattern(), readPage(str + ".html"), hashMap);
    }

    private String makeNotFoundTemplate(int i, int i2) {
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.CONTENT, this.mContext.getString(i));
        hashMap.put("detail", this.mContext.getString(i2));
        return applyPattern(getFieldPattern(), readPage("layout_not_found.html"), hashMap);
    }

    private String makePage(String str, int i, String str2) {
        String string = this.mContext.getString(i);
        String string2 = this.mContext.getString(R.string.text_appName);
        HashMap hashMap = new HashMap();
        hashMap.put("title", String.format("%s - %s", new Object[]{string, string2}));
        hashMap.put("header_logo", "/image/" + str);
        hashMap.put("header", this.mContext.getString(R.string.text_appName));
        hashMap.put("title_header", string);
        hashMap.put("main_content", str2);
        hashMap.put("help_icon", "/image/help-circle.svg");
        hashMap.put("help_alt", this.mContext.getString(R.string.butn_help));
        hashMap.put("username", AppUtils.getLocalDeviceName(this.mContext));
        hashMap.put("footer_text", this.mContext.getString(R.string.text_aboutSummary));
        return applyPattern(getFieldPattern(), readPage("home.html"), hashMap);
    }

    private static String applyPattern(Pattern pattern, String str, Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        Matcher matcher = pattern.matcher(str);
        int i = 0;
        while (matcher.find()) {
            sb.append(str, i, matcher.start());
            sb.append(map.get(matcher.group(1)));
            i = matcher.end();
        }
        if (i > -1 && i < str.length()) {
            sb.append(str, i, str.length());
        }
        return sb.toString();
    }

    private static Pattern getFieldPattern() {
        return Pattern.compile("\\$\\{([a-zA-Z_]+)\\}");
    }

    private InputStream openFile(String str) throws IOException {
        AssetManager assetManager = this.mAssetManager;
        return assetManager.open("webshare" + File.separator + str);
    }

    private String readPage(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            InputStream openFile = openFile(str);
            while (true) {
                int read = openFile.read();
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(read);
                byteArrayOutputStream.flush();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream.toString();
    }

    public static class BoundRunner implements NanoHTTPD.AsyncRunner {
        private ExecutorService executorService;
        private final List<NanoHTTPD.ClientHandler> running = Collections.synchronizedList(new ArrayList());

        public BoundRunner(ExecutorService executorService2) {
            this.executorService = executorService2;
        }

        public void closeAll() {
            Iterator it = new ArrayList(this.running).iterator();
            while (it.hasNext()) {
                ((NanoHTTPD.ClientHandler) it.next()).close();
            }
        }

        public void closed(NanoHTTPD.ClientHandler clientHandler) {
            this.running.remove(clientHandler);
        }

        public void exec(NanoHTTPD.ClientHandler clientHandler) {
            this.executorService.submit(clientHandler);
            this.running.add(clientHandler);
        }
    }

    protected class ZipBundleResponse extends NanoHTTPD.Response {
        private InputStream mData;
        private boolean mEncodeAsGzip;
        private List<TransferObject> mFiles;
        private final Map<String, String> mHeader = new HashMap();
        private boolean mKeepAlive;
        private String mMimeType;
        private NanoHTTPD.Method mRequestMethod;
        private NanoHTTPD.Response.IStatus mStatus;

        private class ChunkedOutputStream extends FilterOutputStream {
            public ChunkedOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            public void write(int i) throws IOException {
                write(new byte[]{(byte) i}, 0, 1);
            }

            public void write(byte[] bArr) throws IOException {
                write(bArr, 0, bArr.length);
            }

            public void write(byte[] bArr, int i, int i2) throws IOException {
                if (i2 != 0) {
                    this.out.write(String.format("%x\r\n", new Object[]{Integer.valueOf(i2)}).getBytes());
                    this.out.write(bArr, i, i2);
                    this.out.write(HTTP.CRLF.getBytes());
                }
            }

            public void finish() throws IOException {
                this.out.write("0\r\n\r\n".getBytes());
            }
        }

        protected ZipBundleResponse(NanoHTTPD.Response.IStatus iStatus, String str, List<TransferObject> list) {
            super(iStatus, str, new InputStream() {
                public int read() throws IOException {
                    return -1;
                }
            }, -1);
            this.mStatus = iStatus;
            this.mMimeType = str;
            this.mFiles = list;
            this.mKeepAlive = true;
        }

        public void addHeader(String str, String str2) {
            this.mHeader.put(str, str2);
        }

        public String getMimeType() {
            return this.mMimeType;
        }

        public NanoHTTPD.Method getRequestMethod() {
            return this.mRequestMethod;
        }

        public NanoHTTPD.Response.IStatus getStatus() {
            return this.mStatus;
        }

        public void setGzipEncoding(boolean z) {
            this.mEncodeAsGzip = z;
        }

        public void setKeepAlive(boolean z) {
            this.mKeepAlive = z;
        }

        public void setMimeType(String str) {
            this.mMimeType = str;
        }

        public void setRequestMethod(NanoHTTPD.Method method) {
            this.mRequestMethod = method;
        }

        public void setStatus(NanoHTTPD.Response.IStatus iStatus) {
            this.mStatus = iStatus;
        }

        /* access modifiers changed from: protected */
        public void send(OutputStream outputStream) {
            String mimeType = getMimeType();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            try {
                if (getStatus() != null) {
                    PrintWriter printWriter = new PrintWriter(new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8")), false);
                    printWriter.print("HTTP/1.1 " + getStatus().getDescription() + " \r\n");
                    if (mimeType != null) {
                        printWriter.print("Content-Type: " + mimeType + HTTP.CRLF);
                    }
                    if (getHeader(HttpRequest.HEADER_DATE) == null) {
                        printWriter.print("Date: " + simpleDateFormat.format(new Date()) + HTTP.CRLF);
                    }
                    for (String next : this.mHeader.keySet()) {
                        printWriter.print(next + ": " + this.mHeader.get(next) + HTTP.CRLF);
                    }
                    if (!WebShareServer.headerAlreadySent(this.mHeader, "connection")) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Connection: ");
                        sb.append(this.mKeepAlive ? "keep-alive" : "close");
                        sb.append(HTTP.CRLF);
                        printWriter.print(sb.toString());
                    }
                    if (this.mRequestMethod != NanoHTTPD.Method.HEAD) {
                        printWriter.print("Transfer-Encoding: chunked\r\n");
                    }
                    printWriter.print(HTTP.CRLF);
                    printWriter.flush();
                    sendBody(outputStream);
                    outputStream.flush();
                    return;
                }
                throw new Error("sendResponse(): Status can't be null.");
            } catch (IOException e) {
                Log.d(WebShareServer.class.getSimpleName(), "Could not send response to the client", e);
            }
        }

        private void sendBody(OutputStream outputStream) throws IOException {
            String str;
            byte[] bArr = new byte[16384];
            ChunkedOutputStream chunkedOutputStream = new ChunkedOutputStream(outputStream);
            ZipOutputStream zipOutputStream = new ZipOutputStream(chunkedOutputStream);
            zipOutputStream.setLevel(0);
            for (TransferObject next : this.mFiles) {
                try {
                    InputStream openInputStream = StreamInfo.getStreamInfo(WebShareServer.this.mContext, Uri.parse(next.file)).openInputStream();
                    StringBuilder sb = new StringBuilder();
                    if (next.directory != null) {
                        str = next.directory + File.pathSeparator;
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    sb.append(next.friendlyName);
                    ZipEntry zipEntry = new ZipEntry(sb.toString());
                    zipEntry.setTime(next.getComparableDate());
                    zipOutputStream.putNextEntry(zipEntry);
                    while (true) {
                        int read = openInputStream.read(bArr, 0, 16384);
                        if (read == -1) {
                            break;
                        } else if (read > 0) {
                            zipOutputStream.write(bArr, 0, read);
                            zipOutputStream.flush();
                        }
                    }
                    zipOutputStream.closeEntry();
                    openInputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            zipOutputStream.finish();
            zipOutputStream.flush();
            chunkedOutputStream.finish();
            zipOutputStream.close();
        }
    }

    /* access modifiers changed from: private */
    public static boolean headerAlreadySent(Map<String, String> map, String str) {
        boolean z = false;
        for (String equalsIgnoreCase : map.keySet()) {
            z |= equalsIgnoreCase.equalsIgnoreCase(str);
        }
        return z;
    }

    public static class Tools {
        public static String escapeHtml(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            withinStyle(sb, charSequence, 0, charSequence.length());
            return sb.toString();
        }

        private static void withinStyle(StringBuilder sb, CharSequence charSequence, int i, int i2) {
            int i3;
            char charAt;
            while (i < i2) {
                char charAt2 = charSequence.charAt(i);
                if (charAt2 == '<') {
                    sb.append("&lt;");
                } else if (charAt2 == '>') {
                    sb.append("&gt;");
                } else if (charAt2 == '&') {
                    sb.append("&amp;");
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    if (charAt2 > '~' || charAt2 < ' ') {
                        sb.append("&#");
                        sb.append(charAt2);
                        sb.append(";");
                    } else if (charAt2 == ' ') {
                        while (true) {
                            int i4 = i + 1;
                            if (i4 >= i2 || charSequence.charAt(i4) != ' ') {
                                sb.append(' ');
                            } else {
                                sb.append("&nbsp;");
                                i = i4;
                            }
                        }
                        sb.append(' ');
                    } else {
                        sb.append(charAt2);
                    }
                } else if (charAt2 < 56320 && (i3 = i + 1) < i2 && (charAt = charSequence.charAt(i3)) >= 56320 && charAt <= 57343) {
                    sb.append("&#");
                    sb.append(65536 | ((charAt2 - 55296) << 10) | (charAt - 56320));
                    sb.append(";");
                    i = i3;
                }
                i++;
            }
        }
    }
}
