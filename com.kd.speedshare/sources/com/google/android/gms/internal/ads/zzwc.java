package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzwc extends zzwd<zzadx> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzvp zzcic;
    private final /* synthetic */ FrameLayout zzcih;
    private final /* synthetic */ FrameLayout zzcii;

    zzwc(zzvp zzvp, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzcic = zzvp;
        this.zzcih = frameLayout;
        this.zzcii = frameLayout2;
        this.val$context = context;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object zzpm() {
        zzvp.zza(this.val$context, "native_ad_view_delegate");
        return new zzzm();
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return this.zzcic.zzchu.zzb(this.val$context, this.zzcih, this.zzcii);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zza(ObjectWrapper.wrap(this.zzcih), ObjectWrapper.wrap(this.zzcii));
    }
}
