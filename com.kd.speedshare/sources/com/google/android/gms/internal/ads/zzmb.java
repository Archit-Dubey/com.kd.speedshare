package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzmb implements zzlz {
    private final int zzbcx;
    private MediaCodecInfo[] zzbcy;

    public zzmb(boolean z) {
        this.zzbcx = z ? 1 : 0;
    }

    public final boolean zzhk() {
        return true;
    }

    public final int getCodecCount() {
        zzhl();
        return this.zzbcy.length;
    }

    public final MediaCodecInfo getCodecInfoAt(int i) {
        zzhl();
        return this.zzbcy[i];
    }

    public final boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private final void zzhl() {
        if (this.zzbcy == null) {
            this.zzbcy = new MediaCodecList(this.zzbcx).getCodecInfos();
        }
    }
}
