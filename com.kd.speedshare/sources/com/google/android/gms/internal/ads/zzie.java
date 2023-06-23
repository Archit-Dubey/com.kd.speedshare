package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzie {
    private static final int[] zzaio = {1, 2, 3, 6};
    private static final int[] zzaip = {48000, 44100, 32000};
    private static final int[] zzaiq = {24000, 22050, 16000};
    private static final int[] zzair = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzais = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};
    private static final int[] zzait = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzhq zza(zzpi zzpi, String str, String str2, zzjl zzjl) {
        int i = zzaip[(zzpi.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzpi.readUnsignedByte();
        int i2 = zzair[(readUnsignedByte & 56) >> 3];
        if ((readUnsignedByte & 4) != 0) {
            i2++;
        }
        return zzhq.zza(str, "audio/ac3", (String) null, -1, -1, i2, i, (List<byte[]>) null, zzjl, 0, str2);
    }

    public static int zzfh() {
        return 1536;
    }

    public static zzhq zzb(zzpi zzpi, String str, String str2, zzjl zzjl) {
        zzpi zzpi2 = zzpi;
        zzpi.zzbl(2);
        int i = zzaip[(zzpi.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzpi.readUnsignedByte();
        int i2 = zzair[(readUnsignedByte & 14) >> 1];
        if ((readUnsignedByte & 1) != 0) {
            i2++;
        }
        return zzhq.zza(str, "audio/eac3", (String) null, -1, -1, i2, i, (List<byte[]>) null, zzjl, 0, str2);
    }

    public static int zzm(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = zzaio[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
