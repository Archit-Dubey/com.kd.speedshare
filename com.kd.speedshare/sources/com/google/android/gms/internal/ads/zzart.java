package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzart extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzart> CREATOR = new zzarw();
    private final ApplicationInfo applicationInfo;
    private final int versionCode;
    private final zzbbd zzboy;
    private final zzvh zzboz;
    private final float zzbru;
    private final String zzbum;
    private final String zzcio;
    private final boolean zzdik;
    private final zzadj zzdkn;
    private final List<String> zzdko;
    private final int zzdmt;
    private final int zzdmu;
    private final Bundle zzdpi;
    private final zzve zzdpj;
    private final PackageInfo zzdpk;
    private final String zzdpl;
    private final String zzdpm;
    private final Bundle zzdpn;
    private final int zzdpo;
    private final Bundle zzdpp;
    private final boolean zzdpq;
    private final String zzdpr;
    private final long zzdps;
    private final String zzdpt;
    private final List<String> zzdpu;
    private final String zzdpv;
    private final List<String> zzdpw;
    private final long zzdpx;
    private final String zzdpy;
    private final float zzdpz;
    private final int zzdqa;
    private final int zzdqb;
    private final boolean zzdqc;
    private final boolean zzdqd;
    private final String zzdqe;
    private final boolean zzdqf;
    private final String zzdqg;
    private final int zzdqh;
    private final Bundle zzdqi;
    private final String zzdqj;
    private final zzyo zzdqk;
    private final boolean zzdql;
    private final Bundle zzdqm;
    private final String zzdqn;
    private final String zzdqo;
    private final String zzdqp;
    private final boolean zzdqq;
    private final List<Integer> zzdqr;
    private final String zzdqs;
    private final List<String> zzdqt;
    private final int zzdqu;
    private final boolean zzdqv;
    private final boolean zzdqw;
    private final boolean zzdqx;
    private final ArrayList<String> zzdqy;
    private final String zzdqz;
    private final zzaio zzdra;
    private final String zzdrb;
    private final Bundle zzdrc;

    zzart(int i, Bundle bundle, zzve zzve, zzvh zzvh, String str, ApplicationInfo applicationInfo2, PackageInfo packageInfo, String str2, String str3, String str4, zzbbd zzbbd, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, zzadj zzadj, List<String> list3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, boolean z4, String str9, String str10, boolean z5, int i7, Bundle bundle4, String str11, zzyo zzyo, boolean z6, Bundle bundle5, String str12, String str13, String str14, boolean z7, List<Integer> list4, String str15, List<String> list5, int i8, boolean z8, boolean z9, boolean z10, ArrayList<String> arrayList, String str16, zzaio zzaio, String str17, Bundle bundle6) {
        List<String> list6;
        List<String> list7;
        this.versionCode = i;
        this.zzdpi = bundle;
        this.zzdpj = zzve;
        this.zzboz = zzvh;
        this.zzbum = str;
        this.applicationInfo = applicationInfo2;
        this.zzdpk = packageInfo;
        this.zzdpl = str2;
        this.zzdpm = str3;
        this.zzcio = str4;
        this.zzboy = zzbbd;
        this.zzdpn = bundle2;
        this.zzdpo = i2;
        this.zzdko = list;
        if (list3 == null) {
            list6 = Collections.emptyList();
        } else {
            list6 = Collections.unmodifiableList(list3);
        }
        this.zzdpw = list6;
        this.zzdpp = bundle3;
        this.zzdpq = z;
        this.zzdmt = i3;
        this.zzdmu = i4;
        this.zzbru = f;
        this.zzdpr = str5;
        this.zzdps = j;
        this.zzdpt = str6;
        if (list2 == null) {
            list7 = Collections.emptyList();
        } else {
            list7 = Collections.unmodifiableList(list2);
        }
        this.zzdpu = list7;
        this.zzdpv = str7;
        this.zzdkn = zzadj;
        this.zzdpx = j2;
        this.zzdpy = str8;
        this.zzdpz = f2;
        this.zzdqf = z2;
        this.zzdqa = i5;
        this.zzdqb = i6;
        this.zzdqc = z3;
        this.zzdqd = z4;
        this.zzdqe = str9;
        this.zzdqg = str10;
        this.zzdik = z5;
        this.zzdqh = i7;
        this.zzdqi = bundle4;
        this.zzdqj = str11;
        this.zzdqk = zzyo;
        this.zzdql = z6;
        this.zzdqm = bundle5;
        this.zzdqn = str12;
        this.zzdqo = str13;
        this.zzdqp = str14;
        this.zzdqq = z7;
        this.zzdqr = list4;
        this.zzdqs = str15;
        this.zzdqt = list5;
        this.zzdqu = i8;
        this.zzdqv = z8;
        this.zzdqw = z9;
        this.zzdqx = z10;
        this.zzdqy = arrayList;
        this.zzdqz = str16;
        this.zzdra = zzaio;
        this.zzdrb = str17;
        this.zzdrc = bundle6;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzdpi, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzdpj, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzboz, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzbum, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.applicationInfo, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzdpk, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzdpl, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzdpm, false);
        SafeParcelWriter.writeString(parcel, 10, this.zzcio, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzboy, i, false);
        SafeParcelWriter.writeBundle(parcel, 12, this.zzdpn, false);
        SafeParcelWriter.writeInt(parcel, 13, this.zzdpo);
        SafeParcelWriter.writeStringList(parcel, 14, this.zzdko, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.zzdpp, false);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzdpq);
        SafeParcelWriter.writeInt(parcel, 18, this.zzdmt);
        SafeParcelWriter.writeInt(parcel, 19, this.zzdmu);
        SafeParcelWriter.writeFloat(parcel, 20, this.zzbru);
        SafeParcelWriter.writeString(parcel, 21, this.zzdpr, false);
        SafeParcelWriter.writeLong(parcel, 25, this.zzdps);
        SafeParcelWriter.writeString(parcel, 26, this.zzdpt, false);
        SafeParcelWriter.writeStringList(parcel, 27, this.zzdpu, false);
        SafeParcelWriter.writeString(parcel, 28, this.zzdpv, false);
        SafeParcelWriter.writeParcelable(parcel, 29, this.zzdkn, i, false);
        SafeParcelWriter.writeStringList(parcel, 30, this.zzdpw, false);
        SafeParcelWriter.writeLong(parcel, 31, this.zzdpx);
        SafeParcelWriter.writeString(parcel, 33, this.zzdpy, false);
        SafeParcelWriter.writeFloat(parcel, 34, this.zzdpz);
        SafeParcelWriter.writeInt(parcel, 35, this.zzdqa);
        SafeParcelWriter.writeInt(parcel, 36, this.zzdqb);
        SafeParcelWriter.writeBoolean(parcel, 37, this.zzdqc);
        SafeParcelWriter.writeBoolean(parcel, 38, this.zzdqd);
        SafeParcelWriter.writeString(parcel, 39, this.zzdqe, false);
        SafeParcelWriter.writeBoolean(parcel, 40, this.zzdqf);
        SafeParcelWriter.writeString(parcel, 41, this.zzdqg, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.zzdik);
        SafeParcelWriter.writeInt(parcel, 43, this.zzdqh);
        SafeParcelWriter.writeBundle(parcel, 44, this.zzdqi, false);
        SafeParcelWriter.writeString(parcel, 45, this.zzdqj, false);
        SafeParcelWriter.writeParcelable(parcel, 46, this.zzdqk, i, false);
        SafeParcelWriter.writeBoolean(parcel, 47, this.zzdql);
        SafeParcelWriter.writeBundle(parcel, 48, this.zzdqm, false);
        SafeParcelWriter.writeString(parcel, 49, this.zzdqn, false);
        SafeParcelWriter.writeString(parcel, 50, this.zzdqo, false);
        SafeParcelWriter.writeString(parcel, 51, this.zzdqp, false);
        SafeParcelWriter.writeBoolean(parcel, 52, this.zzdqq);
        SafeParcelWriter.writeIntegerList(parcel, 53, this.zzdqr, false);
        SafeParcelWriter.writeString(parcel, 54, this.zzdqs, false);
        SafeParcelWriter.writeStringList(parcel, 55, this.zzdqt, false);
        SafeParcelWriter.writeInt(parcel, 56, this.zzdqu);
        SafeParcelWriter.writeBoolean(parcel, 57, this.zzdqv);
        SafeParcelWriter.writeBoolean(parcel, 58, this.zzdqw);
        SafeParcelWriter.writeBoolean(parcel, 59, this.zzdqx);
        SafeParcelWriter.writeStringList(parcel, 60, this.zzdqy, false);
        SafeParcelWriter.writeString(parcel, 61, this.zzdqz, false);
        SafeParcelWriter.writeParcelable(parcel, 63, this.zzdra, i, false);
        SafeParcelWriter.writeString(parcel, 64, this.zzdrb, false);
        SafeParcelWriter.writeBundle(parcel, 65, this.zzdrc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
