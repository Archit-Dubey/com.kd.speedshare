package com.google.android.gms.internal.ads;

import android.media.AudioTimestamp;
import android.media.AudioTrack;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzir extends zzis {
    private final AudioTimestamp zzall = new AudioTimestamp();
    private long zzalm;
    private long zzaln;
    private long zzalo;

    public zzir() {
        super((zzip) null);
    }

    public final void zza(AudioTrack audioTrack, boolean z) {
        super.zza(audioTrack, z);
        this.zzalm = 0;
        this.zzaln = 0;
        this.zzalo = 0;
    }

    public final boolean zzfx() {
        boolean timestamp = this.zzaju.getTimestamp(this.zzall);
        if (timestamp) {
            long j = this.zzall.framePosition;
            if (this.zzaln > j) {
                this.zzalm++;
            }
            this.zzaln = j;
            this.zzalo = j + (this.zzalm << 32);
        }
        return timestamp;
    }

    public final long zzfy() {
        return this.zzall.nanoTime;
    }

    public final long zzfz() {
        return this.zzalo;
    }
}
