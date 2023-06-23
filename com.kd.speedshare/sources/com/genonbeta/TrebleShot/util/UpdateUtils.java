package com.genonbeta.TrebleShot.util;

import android.content.Context;
import com.genonbeta.TrebleShot.R;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.android.updatewithgithub.GitHubUpdater;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;

public class UpdateUtils {

    public interface OnConnectionReadyListener {
        void onConnectionReady(ServerSocket serverSocket);
    }

    public static void checkForUpdates(final Context context, GitHubUpdater gitHubUpdater, boolean z, final GitHubUpdater.OnInfoAvailableListener onInfoAvailableListener) {
        gitHubUpdater.checkForUpdates(z, new GitHubUpdater.OnInfoAvailableListener() {
            public void onInfoAvailable(boolean z, String str, String str2, String str3, String str4) {
                AppUtils.getDefaultPreferences(context).edit().putString("availableVersion", str).putLong("checkedForUpdatesTime", System.currentTimeMillis()).apply();
                GitHubUpdater.OnInfoAvailableListener onInfoAvailableListener = onInfoAvailableListener;
                if (onInfoAvailableListener != null) {
                    onInfoAvailableListener.onInfoAvailable(z, str, str2, str3, str4);
                }
            }
        });
    }

    public static String getAvailableVersion(Context context) {
        return AppUtils.getDefaultPreferences(context).getString("availableVersion", (String) null);
    }

    public static GitHubUpdater getDefaultUpdater(Context context) {
        return new GitHubUpdater(context, "", R.style.Theme_TrebleShot, false);
    }

    public static long getLastTimeCheckedForUpdates(Context context) {
        return AppUtils.getDefaultPreferences(context).getLong("checkedForUpdatesTime", 0);
    }

    public static boolean hasNewVersion(Context context) {
        String availableVersion = getAvailableVersion(context);
        return availableVersion != null && GitHubUpdater.isNewVersion(context, availableVersion);
    }

    public static void sendUpdate(Context context, String str) throws IOException {
        Socket socket = new Socket();
        socket.bind((SocketAddress) null);
        socket.connect(new InetSocketAddress(str, AppConfig.SERVER_PORT_UPDATE_CHANNEL));
        FileInputStream fileInputStream = new FileInputStream(context.getApplicationInfo().sourceDir);
        OutputStream outputStream = socket.getOutputStream();
        byte[] bArr = new byte[AppConfig.BUFFER_LENGTH_DEFAULT];
        long currentTimeMillis = System.currentTimeMillis();
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read != -1) {
                if (read > 0) {
                    outputStream.write(bArr, 0, read);
                    outputStream.flush();
                    currentTimeMillis = System.currentTimeMillis();
                }
                if (System.currentTimeMillis() - currentTimeMillis > 5000) {
                    System.out.println("CoolTransfer: Timed out... Exiting.");
                    break;
                }
            } else {
                break;
            }
        }
        outputStream.close();
        fileInputStream.close();
        socket.close();
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v9, resolved type: com.genonbeta.android.framework.io.DocumentFile} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v10, resolved type: com.genonbeta.android.framework.io.DocumentFile} */
    /* JADX WARNING: type inference failed for: r3v1, types: [com.genonbeta.android.framework.io.DocumentFile] */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b6, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00b8, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00b9, code lost:
        r3 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b6 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:3:0x000b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.genonbeta.android.framework.io.DocumentFile receiveUpdate(android.content.Context r17, com.genonbeta.TrebleShot.object.NetworkDevice r18, com.genonbeta.android.framework.util.Interrupter r19, com.genonbeta.TrebleShot.util.UpdateUtils.OnConnectionReadyListener r20) throws java.io.IOException {
        /*
            r0 = r20
            r1 = 0
            java.net.ServerSocket r2 = new java.net.ServerSocket     // Catch:{ Exception -> 0x00be, all -> 0x00bb }
            r3 = 58765(0xe58d, float:8.2347E-41)
            r2.<init>(r3)     // Catch:{ Exception -> 0x00be, all -> 0x00bb }
            com.genonbeta.android.framework.io.DocumentFile r3 = com.genonbeta.TrebleShot.util.FileUtils.getApplicationDirectory(r17)     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            r4.<init>()     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            r5 = r18
            java.lang.String r5 = r5.versionName     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            r4.append(r5)     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            java.lang.String r5 = "_"
            r4.append(r5)     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            long r5 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            r4.append(r5)     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            java.lang.String r5 = ".apk"
            r4.append(r5)     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            com.genonbeta.android.framework.io.DocumentFile r3 = r3.createFile(r1, r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00b6 }
            com.genonbeta.TrebleShot.util.UpdateUtils$2 r4 = new com.genonbeta.TrebleShot.util.UpdateUtils$2     // Catch:{ Exception -> 0x00b3, all -> 0x00b6 }
            r4.<init>(r2)     // Catch:{ Exception -> 0x00b3, all -> 0x00b6 }
            r5 = r19
            r5.addCloser(r4)     // Catch:{ Exception -> 0x00b3, all -> 0x00b6 }
            if (r0 == 0) goto L_0x0043
            r0.onConnectionReady(r2)     // Catch:{ Exception -> 0x00b3, all -> 0x00b6 }
        L_0x0043:
            r0 = 5000(0x1388, float:7.006E-42)
            r2.setSoTimeout(r0)     // Catch:{ Exception -> 0x00b3, all -> 0x00b6 }
            java.net.Socket r4 = r2.accept()     // Catch:{ Exception -> 0x00b3, all -> 0x00b6 }
            r4.setSoTimeout(r0)     // Catch:{ Exception -> 0x00b1 }
            java.io.InputStream r0 = r4.getInputStream()     // Catch:{ Exception -> 0x00b1 }
            android.content.ContentResolver r6 = r17.getContentResolver()     // Catch:{ Exception -> 0x00b1 }
            android.net.Uri r7 = r3.getUri()     // Catch:{ Exception -> 0x00b1 }
            java.io.OutputStream r6 = r6.openOutputStream(r7)     // Catch:{ Exception -> 0x00b1 }
            r7 = 8096(0x1fa0, float:1.1345E-41)
            byte[] r7 = new byte[r7]     // Catch:{ Exception -> 0x00b1 }
            long r8 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x00b1 }
            r10 = 0
            r11 = 0
        L_0x0069:
            r12 = -1
            if (r11 == r12) goto L_0x0096
            int r11 = r0.read(r7)     // Catch:{ Exception -> 0x00b1 }
            if (r11 <= 0) goto L_0x007c
            r6.write(r7, r10, r11)     // Catch:{ Exception -> 0x00b1 }
            r6.flush()     // Catch:{ Exception -> 0x00b1 }
            long r8 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x00b1 }
        L_0x007c:
            long r12 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x00b1 }
            long r12 = r12 - r8
            r14 = 5000(0x1388, double:2.4703E-320)
            int r16 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r16 > 0) goto L_0x008e
            boolean r12 = r19.interrupted()     // Catch:{ Exception -> 0x00b1 }
            if (r12 != 0) goto L_0x008e
            goto L_0x0069
        L_0x008e:
            java.lang.Exception r0 = new java.lang.Exception     // Catch:{ Exception -> 0x00b1 }
            java.lang.String r5 = "Timed out or interrupted. Exiting!"
            r0.<init>(r5)     // Catch:{ Exception -> 0x00b1 }
            throw r0     // Catch:{ Exception -> 0x00b1 }
        L_0x0096:
            r6.close()     // Catch:{ Exception -> 0x00b1 }
            r0.close()     // Catch:{ Exception -> 0x00b1 }
            if (r4 == 0) goto L_0x00a7
            boolean r0 = r4.isClosed()
            if (r0 != 0) goto L_0x00a7
            r4.close()
        L_0x00a7:
            boolean r0 = r2.isClosed()
            if (r0 != 0) goto L_0x00b0
            r2.close()
        L_0x00b0:
            return r3
        L_0x00b1:
            r0 = move-exception
            goto L_0x00c2
        L_0x00b3:
            r0 = move-exception
            r4 = r1
            goto L_0x00c2
        L_0x00b6:
            r0 = move-exception
            goto L_0x00e9
        L_0x00b8:
            r0 = move-exception
            r3 = r1
            goto L_0x00c1
        L_0x00bb:
            r0 = move-exception
            r2 = r1
            goto L_0x00e9
        L_0x00be:
            r0 = move-exception
            r2 = r1
            r3 = r2
        L_0x00c1:
            r4 = r3
        L_0x00c2:
            r0.printStackTrace()     // Catch:{ all -> 0x00e7 }
            if (r3 == 0) goto L_0x00d0
            boolean r0 = r3.isFile()     // Catch:{ all -> 0x00e7 }
            if (r0 == 0) goto L_0x00d0
            r3.delete()     // Catch:{ all -> 0x00e7 }
        L_0x00d0:
            if (r4 == 0) goto L_0x00db
            boolean r0 = r4.isClosed()
            if (r0 != 0) goto L_0x00db
            r4.close()
        L_0x00db:
            if (r2 == 0) goto L_0x00e6
            boolean r0 = r2.isClosed()
            if (r0 != 0) goto L_0x00e6
            r2.close()
        L_0x00e6:
            return r1
        L_0x00e7:
            r0 = move-exception
            r1 = r4
        L_0x00e9:
            if (r1 == 0) goto L_0x00f4
            boolean r3 = r1.isClosed()
            if (r3 != 0) goto L_0x00f4
            r1.close()
        L_0x00f4:
            if (r2 == 0) goto L_0x00ff
            boolean r1 = r2.isClosed()
            if (r1 != 0) goto L_0x00ff
            r2.close()
        L_0x00ff:
            goto L_0x0101
        L_0x0100:
            throw r0
        L_0x0101:
            goto L_0x0100
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.util.UpdateUtils.receiveUpdate(android.content.Context, com.genonbeta.TrebleShot.object.NetworkDevice, com.genonbeta.android.framework.util.Interrupter, com.genonbeta.TrebleShot.util.UpdateUtils$OnConnectionReadyListener):com.genonbeta.android.framework.io.DocumentFile");
    }
}
