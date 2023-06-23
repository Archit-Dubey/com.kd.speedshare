package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzank implements MediationAdRequest {
    private final String zzadi;
    private final int zzcgt;
    private final boolean zzche;
    private final int zzdjw;
    private final int zzdjx;
    private final Date zzmx;
    private final Set<String> zzmz;
    private final boolean zzna;
    private final Location zznb;

    public zzank(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.zzmx = date;
        this.zzcgt = i;
        this.zzmz = set;
        this.zznb = location;
        this.zzna = z;
        this.zzdjw = i2;
        this.zzche = z2;
        this.zzdjx = i3;
        this.zzadi = str;
    }

    @Deprecated
    public final Date getBirthday() {
        return this.zzmx;
    }

    @Deprecated
    public final int getGender() {
        return this.zzcgt;
    }

    public final Set<String> getKeywords() {
        return this.zzmz;
    }

    public final Location getLocation() {
        return this.zznb;
    }

    public final boolean isTesting() {
        return this.zzna;
    }

    public final int taggedForChildDirectedTreatment() {
        return this.zzdjw;
    }

    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzche;
    }
}
