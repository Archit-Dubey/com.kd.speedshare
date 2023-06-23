package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzwe extends zzwd<zzatj> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzamr zzcib;
    private final /* synthetic */ zzvp zzcic;

    zzwe(zzvp zzvp, Context context, zzamr zzamr) {
        this.zzcic = zzvp;
        this.val$context = context;
        this.zzcib = zzamr;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object zzpm() {
        zzvp.zza(this.val$context, "rewarded_video");
        return new zzzq();
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return this.zzcic.zzchv.zzb(this.val$context, this.zzcib);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zza(ObjectWrapper.wrap(this.val$context), this.zzcib, 201604000);
    }
}
