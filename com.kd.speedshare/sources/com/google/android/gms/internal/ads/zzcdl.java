package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzcdl implements zzadh {
    private final /* synthetic */ zzcee zzfyo;
    private final /* synthetic */ ViewGroup zzfyp;
    private final /* synthetic */ zzcdg zzfyq;

    zzcdl(zzcdg zzcdg, zzcee zzcee, ViewGroup viewGroup) {
        this.zzfyq = zzcdg;
        this.zzfyo = zzcee;
        this.zzfyp = viewGroup;
    }

    public final void zzrz() {
        if (zzcdg.zza(this.zzfyo, zzcde.zzfxw)) {
            this.zzfyo.onClick(this.zzfyp);
        }
    }

    public final void zzc(MotionEvent motionEvent) {
        this.zzfyo.onTouch((View) null, motionEvent);
    }
}
