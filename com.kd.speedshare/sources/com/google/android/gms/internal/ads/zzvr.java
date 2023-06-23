package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzvr extends zzwd<zzaui> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzcia;
    private final /* synthetic */ zzamr zzcib;
    private final /* synthetic */ zzvp zzcic;

    zzvr(zzvp zzvp, Context context, String str, zzamr zzamr) {
        this.zzcic = zzvp;
        this.val$context = context;
        this.zzcia = str;
        this.zzcib = zzamr;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object zzpm() {
        zzvp.zza(this.val$context, "rewarded");
        return new zzzo();
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return zzauy.zzd(this.val$context, this.zzcia, this.zzcib);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zzb(ObjectWrapper.wrap(this.val$context), this.zzcia, this.zzcib, 201604000);
    }
}
