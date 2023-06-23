package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.google.android.gms.ads.internal.zzq;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcyy implements zzddz<Bundle> {
    private final zzvh zzboz;
    private final List<Parcelable> zzgrk;
    private final Context zzvr;

    public zzcyy(Context context, zzvh zzvh, List<Parcelable> list) {
        this.zzvr = context;
        this.zzboz = zzvh;
        this.zzgrk = list;
    }

    public final /* synthetic */ void zzs(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (zzacn.zzdap.get().booleanValue()) {
            Bundle bundle2 = new Bundle();
            zzq.zzkw();
            bundle2.putString("activity", zzaye.zzav(this.zzvr));
            Bundle bundle3 = new Bundle();
            bundle3.putInt("width", this.zzboz.width);
            bundle3.putInt("height", this.zzboz.height);
            bundle2.putBundle(AccessDatabase.FIELD_TRANSFER_SIZE, bundle3);
            if (this.zzgrk.size() > 0) {
                List<Parcelable> list = this.zzgrk;
                bundle2.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
            }
            bundle.putBundle("view_hierarchy", bundle2);
        }
    }
}
