package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzvu extends zzwd<zzaqi> {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzvp zzcic;

    zzvu(zzvp zzvp, Activity activity) {
        this.zzcic = zzvp;
        this.val$activity = activity;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ Object zzpm() {
        zzvp.zza((Context) this.val$activity, "ad_overlay");
        return null;
    }

    public final /* synthetic */ Object zzpn() throws RemoteException {
        return this.zzcic.zzchx.zzc(this.val$activity);
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zzb(ObjectWrapper.wrap(this.val$activity));
    }
}
