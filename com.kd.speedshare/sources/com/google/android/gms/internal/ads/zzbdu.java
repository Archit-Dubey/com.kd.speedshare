package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzbdu extends SSLSocketFactory {
    private SSLSocketFactory zzeiz = ((SSLSocketFactory) SSLSocketFactory.getDefault());
    private final /* synthetic */ zzbdr zzeja;

    zzbdu(zzbdr zzbdr) {
        this.zzeja = zzbdr;
    }

    public final String[] getDefaultCipherSuites() {
        return this.zzeiz.getDefaultCipherSuites();
    }

    public final String[] getSupportedCipherSuites() {
        return this.zzeiz.getSupportedCipherSuites();
    }

    public final Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return zzb(this.zzeiz.createSocket(socket, str, i, z));
    }

    public final Socket createSocket(String str, int i) throws IOException {
        return zzb(this.zzeiz.createSocket(str, i));
    }

    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return zzb(this.zzeiz.createSocket(str, i, inetAddress, i2));
    }

    public final Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return zzb(this.zzeiz.createSocket(inetAddress, i));
    }

    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return zzb(this.zzeiz.createSocket(inetAddress, i, inetAddress2, i2));
    }

    private final Socket zzb(Socket socket) throws SocketException {
        if (this.zzeja.zzeis > 0) {
            socket.setReceiveBufferSize(this.zzeja.zzeis);
        }
        this.zzeja.zza(socket);
        return socket;
    }
}
