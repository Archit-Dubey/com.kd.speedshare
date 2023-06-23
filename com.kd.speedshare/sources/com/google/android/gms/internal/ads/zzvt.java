package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzvt extends zzwd<zzawr> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzamr zzcib;

    zzvt(zzvp zzvp, Context context, zzamr zzamr) {
        this.val$context = context;
        this.zzcib = zzamr;
    }

    /* access modifiers changed from: protected */
    public final /* bridge */ /* synthetic */ Object zzpm() {
        return null;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzpo */
    public final zzawr zzpn() {
        try {
            return ((zzaww) zzbaz.zza(this.val$context, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", zzvw.zzbxr)).zzd(ObjectWrapper.wrap(this.val$context), this.zzcib, 201604000);
        } catch (RemoteException | zzbbb | NullPointerException unused) {
            return null;
        }
    }

    public final /* synthetic */ Object zza(zzxf zzxf) throws RemoteException {
        return zzxf.zzb(ObjectWrapper.wrap(this.val$context), this.zzcib, 201604000);
    }
}
