package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzwb extends zzwd<zzaea> {
    private final /* synthetic */ zzvp zzcic;
    private final /* synthetic */ View zzcie;
    private final /* synthetic */ HashMap zzcif;
    private final /* synthetic */ HashMap zzcig;

    zzwb(zzvp zzvp, View view, HashMap hashMap, HashMap hashMap2) {
        this.zzcic = zzvp;
        this.zzcie = view;
        this.zzcif = hashMap;
        this.zzcig = hashMap2;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object zzpm() {
        zzvp.zza(this.zzcie.getContext(), "native_ad_view_holder_delegate");
        return new zzzp();
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return this.zzcic.zzchy.zzb(this.zzcie, this.zzcif, this.zzcig);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zza(ObjectWrapper.wrap(this.zzcie), ObjectWrapper.wrap(this.zzcif), ObjectWrapper.wrap(this.zzcig));
    }
}
