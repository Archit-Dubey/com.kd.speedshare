package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzmn implements Parcelable.Creator<zzmk> {
    zzmn() {
    }

    public final /* synthetic */ Object[] newArray(int i) {
        return new zzmk[i];
    }

    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        return new zzmk(parcel);
    }
}
