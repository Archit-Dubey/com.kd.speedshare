package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzagv implements zzahc<zzbfn> {
    zzagv() {
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        if (zzbfn.zzabn() != null) {
            zzbfn.zzabn().zzms();
        }
        zzc zzaav = zzbfn.zzaav();
        if (zzaav != null) {
            zzaav.close();
            return;
        }
        zzc zzaaw = zzbfn.zzaaw();
        if (zzaaw != null) {
            zzaaw.close();
        } else {
            zzaxv.zzfd("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
