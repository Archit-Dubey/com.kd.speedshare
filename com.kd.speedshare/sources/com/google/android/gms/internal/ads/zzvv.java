package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.firebase.analytics.FirebaseAnalytics;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzvv extends zzwd<zzww> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzcia;
    private final /* synthetic */ zzamr zzcib;
    private final /* synthetic */ zzvp zzcic;
    private final /* synthetic */ zzvh zzcid;

    zzvv(zzvp zzvp, Context context, zzvh zzvh, String str, zzamr zzamr) {
        this.zzcic = zzvp;
        this.val$context = context;
        this.zzcid = zzvh;
        this.zzcia = str;
        this.zzcib = zzamr;
    }

    public final /* synthetic */ Object zzpm() {
        zzvp.zza(this.val$context, FirebaseAnalytics.Event.APP_OPEN);
        return new zzzi();
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return this.zzcic.zzchr.zza(this.val$context, this.zzcid, this.zzcia, this.zzcib, 4);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zzc(ObjectWrapper.wrap(this.val$context), this.zzcid, this.zzcia, this.zzcib, 201604000);
    }
}
