package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzvz extends zzwd<zzxm> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzvp zzcic;

    zzvz(zzvp zzvp, Context context) {
        this.zzcic = zzvp;
        this.val$context = context;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object zzpm() {
        zzvp.zza(this.val$context, "mobile_ads_settings");
        return new zzzk();
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return this.zzcic.zzcht.zzi(this.val$context);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zza(ObjectWrapper.wrap(this.val$context), 201604000);
    }
}
