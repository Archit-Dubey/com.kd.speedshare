package com.google.android.gms.internal.ads;

import java.io.OutputStream;

/* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
final class zzdto extends OutputStream {
    zzdto() {
    }

    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    public final void write(int i) {
    }

    public final void write(byte[] bArr) {
        zzdsh.checkNotNull(bArr);
    }

    public final void write(byte[] bArr, int i, int i2) {
        zzdsh.checkNotNull(bArr);
    }
}
