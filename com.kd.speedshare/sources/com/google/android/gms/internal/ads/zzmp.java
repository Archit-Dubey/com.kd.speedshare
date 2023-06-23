package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzmp implements zzjz, zzmz, zznl, zzou<zzms> {
    /* access modifiers changed from: private */
    public final Handler handler;
    private final Uri uri;
    private final Handler zzaek;
    /* access modifiers changed from: private */
    public boolean zzafn;
    private boolean zzagj;
    private long zzaih;
    private final zzok zzaoh;
    private final int zzbde;
    /* access modifiers changed from: private */
    public final zzmw zzbdf;
    private final zzna zzbdg;
    private final zzoi zzbdh;
    /* access modifiers changed from: private */
    public final String zzbdi;
    /* access modifiers changed from: private */
    public final long zzbdj;
    private final zzov zzbdk = new zzov("Loader:ExtractorMediaPeriod");
    private final zzmv zzbdl;
    private final zzpd zzbdm;
    private final Runnable zzbdn;
    /* access modifiers changed from: private */
    public final Runnable zzbdo;
    /* access modifiers changed from: private */
    public final SparseArray<zznj> zzbdp;
    /* access modifiers changed from: private */
    public zzmy zzbdq;
    private zzkc zzbdr;
    private boolean zzbds;
    private boolean zzbdt;
    private boolean zzbdu;
    private int zzbdv;
    private zznr zzbdw;
    private boolean[] zzbdx;
    private boolean[] zzbdy;
    private boolean zzbdz;
    private long zzbea;
    private long zzbeb;
    private int zzbec;
    private boolean zzbed;
    private long zzcp;

    public zzmp(Uri uri2, zzok zzok, zzjx[] zzjxArr, int i, Handler handler2, zzmw zzmw, zzna zzna, zzoi zzoi, String str, int i2) {
        this.uri = uri2;
        this.zzaoh = zzok;
        this.zzbde = i;
        this.zzaek = handler2;
        this.zzbdf = zzmw;
        this.zzbdg = zzna;
        this.zzbdh = zzoi;
        this.zzbdi = str;
        this.zzbdj = (long) i2;
        this.zzbdl = new zzmv(zzjxArr, this);
        this.zzbdm = new zzpd();
        this.zzbdn = new zzmo(this);
        this.zzbdo = new zzmr(this);
        this.handler = new Handler();
        this.zzbeb = -9223372036854775807L;
        this.zzbdp = new SparseArray<>();
        this.zzcp = -1;
    }

    public final void zzef(long j) {
    }

    public final void release() {
        this.zzbdk.zza((Runnable) new zzmq(this, this.zzbdl));
        this.handler.removeCallbacksAndMessages((Object) null);
        this.zzafn = true;
    }

    public final void zza(zzmy zzmy, long j) {
        this.zzbdq = zzmy;
        this.zzbdm.open();
        startLoading();
    }

    public final void zzhn() throws IOException {
        this.zzbdk.zzbi(Integer.MIN_VALUE);
    }

    public final zznr zzho() {
        return this.zzbdw;
    }

    public final long zza(zzod[] zzodArr, boolean[] zArr, zznk[] zznkArr, boolean[] zArr2, long j) {
        zzpb.checkState(this.zzagj);
        for (int i = 0; i < zzodArr.length; i++) {
            if (zznkArr[i] != null && (zzodArr[i] == null || !zArr[i])) {
                int zza = zznkArr[i].track;
                zzpb.checkState(this.zzbdx[zza]);
                this.zzbdv--;
                this.zzbdx[zza] = false;
                this.zzbdp.valueAt(zza).disable();
                zznkArr[i] = null;
            }
        }
        boolean z = false;
        for (int i2 = 0; i2 < zzodArr.length; i2++) {
            if (zznkArr[i2] == null && zzodArr[i2] != null) {
                zzod zzod = zzodArr[i2];
                zzpb.checkState(zzod.length() == 1);
                zzpb.checkState(zzod.zzbe(0) == 0);
                int zza2 = this.zzbdw.zza(zzod.zzik());
                zzpb.checkState(!this.zzbdx[zza2]);
                this.zzbdv++;
                this.zzbdx[zza2] = true;
                zznkArr[i2] = new zzmu(this, zza2);
                zArr2[i2] = true;
                z = true;
            }
        }
        if (!this.zzbdt) {
            int size = this.zzbdp.size();
            for (int i3 = 0; i3 < size; i3++) {
                if (!this.zzbdx[i3]) {
                    this.zzbdp.valueAt(i3).disable();
                }
            }
        }
        if (this.zzbdv == 0) {
            this.zzbdu = false;
            if (this.zzbdk.isLoading()) {
                this.zzbdk.zzis();
            }
        } else if (!this.zzbdt ? j != 0 : z) {
            j = zzeg(j);
            for (int i4 = 0; i4 < zznkArr.length; i4++) {
                if (zznkArr[i4] != null) {
                    zArr2[i4] = true;
                }
            }
        }
        this.zzbdt = true;
        return j;
    }

    public final boolean zzee(long j) {
        if (this.zzbed) {
            return false;
        }
        if (this.zzagj && this.zzbdv == 0) {
            return false;
        }
        boolean open = this.zzbdm.open();
        if (this.zzbdk.isLoading()) {
            return open;
        }
        startLoading();
        return true;
    }

    public final long zzhm() {
        if (this.zzbdv == 0) {
            return Long.MIN_VALUE;
        }
        return zzhq();
    }

    public final long zzhp() {
        if (!this.zzbdu) {
            return -9223372036854775807L;
        }
        this.zzbdu = false;
        return this.zzbea;
    }

    public final long zzhq() {
        long j;
        if (this.zzbed) {
            return Long.MIN_VALUE;
        }
        if (zzhv()) {
            return this.zzbeb;
        }
        if (this.zzbdz) {
            j = Long.MAX_VALUE;
            int size = this.zzbdp.size();
            for (int i = 0; i < size; i++) {
                if (this.zzbdy[i]) {
                    j = Math.min(j, this.zzbdp.valueAt(i).zzhu());
                }
            }
        } else {
            j = zzhu();
        }
        return j == Long.MIN_VALUE ? this.zzbea : j;
    }

    public final long zzeg(long j) {
        if (!this.zzbdr.isSeekable()) {
            j = 0;
        }
        this.zzbea = j;
        int size = this.zzbdp.size();
        boolean z = !zzhv();
        int i = 0;
        while (z && i < size) {
            if (this.zzbdx[i]) {
                z = this.zzbdp.valueAt(i).zze(j, false);
            }
            i++;
        }
        if (!z) {
            this.zzbeb = j;
            this.zzbed = false;
            if (this.zzbdk.isLoading()) {
                this.zzbdk.zzis();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.zzbdp.valueAt(i2).zzk(this.zzbdx[i2]);
                }
            }
        }
        this.zzbdu = false;
        return j;
    }

    /* access modifiers changed from: package-private */
    public final boolean zzba(int i) {
        if (!this.zzbed) {
            return !zzhv() && this.zzbdp.valueAt(i).zzid();
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void zzhr() throws IOException {
        this.zzbdk.zzbi(Integer.MIN_VALUE);
    }

    /* access modifiers changed from: package-private */
    public final int zza(int i, zzhs zzhs, zzjm zzjm, boolean z) {
        if (this.zzbdu || zzhv()) {
            return -3;
        }
        return this.zzbdp.valueAt(i).zza(zzhs, zzjm, z, this.zzbed, this.zzbea);
    }

    /* access modifiers changed from: package-private */
    public final void zzd(int i, long j) {
        zznj valueAt = this.zzbdp.valueAt(i);
        if (!this.zzbed || j <= valueAt.zzhu()) {
            valueAt.zze(j, true);
        } else {
            valueAt.zzih();
        }
    }

    public final zzke zzc(int i, int i2) {
        zznj zznj = this.zzbdp.get(i);
        if (zznj != null) {
            return zznj;
        }
        zznj zznj2 = new zznj(this.zzbdh);
        zznj2.zza(this);
        this.zzbdp.put(i, zznj2);
        return zznj2;
    }

    public final void zzgr() {
        this.zzbds = true;
        this.handler.post(this.zzbdn);
    }

    public final void zza(zzkc zzkc) {
        this.zzbdr = zzkc;
        this.handler.post(this.zzbdn);
    }

    public final void zzf(zzhq zzhq) {
        this.handler.post(this.zzbdn);
    }

    /* access modifiers changed from: private */
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, boolean], vars: [r4v0 ?, r4v3 ?, r4v5 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:51)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    public final void zzhs() {
        /*
            r8 = this;
            boolean r0 = r8.zzafn
            if (r0 != 0) goto L_0x009d
            boolean r0 = r8.zzagj
            if (r0 != 0) goto L_0x009d
            com.google.android.gms.internal.ads.zzkc r0 = r8.zzbdr
            if (r0 == 0) goto L_0x009d
            boolean r0 = r8.zzbds
            if (r0 != 0) goto L_0x0012
            goto L_0x009d
        L_0x0012:
            android.util.SparseArray<com.google.android.gms.internal.ads.zznj> r0 = r8.zzbdp
            int r0 = r0.size()
            r1 = 0
            r2 = 0
        L_0x001a:
            if (r2 >= r0) goto L_0x002e
            android.util.SparseArray<com.google.android.gms.internal.ads.zznj> r3 = r8.zzbdp
            java.lang.Object r3 = r3.valueAt(r2)
            com.google.android.gms.internal.ads.zznj r3 = (com.google.android.gms.internal.ads.zznj) r3
            com.google.android.gms.internal.ads.zzhq r3 = r3.zzie()
            if (r3 != 0) goto L_0x002b
            return
        L_0x002b:
            int r2 = r2 + 1
            goto L_0x001a
        L_0x002e:
            com.google.android.gms.internal.ads.zzpd r2 = r8.zzbdm
            r2.zzit()
            com.google.android.gms.internal.ads.zzno[] r2 = new com.google.android.gms.internal.ads.zzno[r0]
            boolean[] r3 = new boolean[r0]
            r8.zzbdy = r3
            boolean[] r3 = new boolean[r0]
            r8.zzbdx = r3
            com.google.android.gms.internal.ads.zzkc r3 = r8.zzbdr
            long r3 = r3.getDurationUs()
            r8.zzaih = r3
            r3 = 0
        L_0x0046:
            r4 = 1
            if (r3 >= r0) goto L_0x007c
            android.util.SparseArray<com.google.android.gms.internal.ads.zznj> r5 = r8.zzbdp
            java.lang.Object r5 = r5.valueAt(r3)
            com.google.android.gms.internal.ads.zznj r5 = (com.google.android.gms.internal.ads.zznj) r5
            com.google.android.gms.internal.ads.zzhq r5 = r5.zzie()
            com.google.android.gms.internal.ads.zzno r6 = new com.google.android.gms.internal.ads.zzno
            com.google.android.gms.internal.ads.zzhq[] r7 = new com.google.android.gms.internal.ads.zzhq[r4]
            r7[r1] = r5
            r6.<init>(r7)
            r2[r3] = r6
            java.lang.String r5 = r5.zzagw
            boolean r6 = com.google.android.gms.internal.ads.zzpe.zzbf(r5)
            if (r6 != 0) goto L_0x0070
            boolean r5 = com.google.android.gms.internal.ads.zzpe.zzbe(r5)
            if (r5 == 0) goto L_0x006f
            goto L_0x0070
        L_0x006f:
            r4 = 0
        L_0x0070:
            boolean[] r5 = r8.zzbdy
            r5[r3] = r4
            boolean r5 = r8.zzbdz
            r4 = r4 | r5
            r8.zzbdz = r4
            int r3 = r3 + 1
            goto L_0x0046
        L_0x007c:
            com.google.android.gms.internal.ads.zznr r0 = new com.google.android.gms.internal.ads.zznr
            r0.<init>(r2)
            r8.zzbdw = r0
            r8.zzagj = r4
            com.google.android.gms.internal.ads.zzna r0 = r8.zzbdg
            com.google.android.gms.internal.ads.zznp r1 = new com.google.android.gms.internal.ads.zznp
            long r2 = r8.zzaih
            com.google.android.gms.internal.ads.zzkc r4 = r8.zzbdr
            boolean r4 = r4.isSeekable()
            r1.<init>(r2, r4)
            r2 = 0
            r0.zzb(r1, r2)
            com.google.android.gms.internal.ads.zzmy r0 = r8.zzbdq
            r0.zza(r8)
        L_0x009d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmp.zzhs():void");
    }

    private final void zza(zzms zzms) {
        if (this.zzcp == -1) {
            this.zzcp = zzms.zzcp;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0057, code lost:
        r0 = r9.zzbdr;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void startLoading() {
        /*
            r9 = this;
            com.google.android.gms.internal.ads.zzms r6 = new com.google.android.gms.internal.ads.zzms
            android.net.Uri r2 = r9.uri
            com.google.android.gms.internal.ads.zzok r3 = r9.zzaoh
            com.google.android.gms.internal.ads.zzmv r4 = r9.zzbdl
            com.google.android.gms.internal.ads.zzpd r5 = r9.zzbdm
            r0 = r6
            r1 = r9
            r0.<init>(r1, r2, r3, r4, r5)
            boolean r0 = r9.zzagj
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 == 0) goto L_0x0040
            boolean r0 = r9.zzhv()
            com.google.android.gms.internal.ads.zzpb.checkState(r0)
            long r3 = r9.zzaih
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0031
            long r7 = r9.zzbeb
            int r0 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r0 < 0) goto L_0x0031
            r0 = 1
            r9.zzbed = r0
            r9.zzbeb = r1
            return
        L_0x0031:
            com.google.android.gms.internal.ads.zzkc r0 = r9.zzbdr
            long r3 = r9.zzbeb
            long r3 = r0.zzdz(r3)
            long r7 = r9.zzbeb
            r6.zze(r3, r7)
            r9.zzbeb = r1
        L_0x0040:
            int r0 = r9.zzht()
            r9.zzbec = r0
            int r0 = r9.zzbde
            r3 = -1
            if (r0 != r3) goto L_0x0067
            boolean r0 = r9.zzagj
            if (r0 == 0) goto L_0x0066
            long r3 = r9.zzcp
            r7 = -1
            int r0 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r0 != 0) goto L_0x0066
            com.google.android.gms.internal.ads.zzkc r0 = r9.zzbdr
            if (r0 == 0) goto L_0x0064
            long r3 = r0.getDurationUs()
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0064
            goto L_0x0066
        L_0x0064:
            r0 = 6
            goto L_0x0067
        L_0x0066:
            r0 = 3
        L_0x0067:
            com.google.android.gms.internal.ads.zzov r1 = r9.zzbdk
            r1.zza(r6, r9, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmp.startLoading():void");
    }

    private final int zzht() {
        int size = this.zzbdp.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.zzbdp.valueAt(i2).zzic();
        }
        return i;
    }

    private final long zzhu() {
        int size = this.zzbdp.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.zzbdp.valueAt(i).zzhu());
        }
        return j;
    }

    private final boolean zzhv() {
        return this.zzbeb != -9223372036854775807L;
    }

    public final /* synthetic */ int zza(zzow zzow, long j, long j2, IOException iOException) {
        zzkc zzkc;
        zzms zzms = (zzms) zzow;
        zza(zzms);
        Handler handler2 = this.zzaek;
        if (!(handler2 == null || this.zzbdf == null)) {
            handler2.post(new zzmt(this, iOException));
        }
        if (iOException instanceof zznq) {
            return 3;
        }
        boolean z = zzht() > this.zzbec;
        if (this.zzcp == -1 && ((zzkc = this.zzbdr) == null || zzkc.getDurationUs() == -9223372036854775807L)) {
            this.zzbea = 0;
            this.zzbdu = this.zzagj;
            int size = this.zzbdp.size();
            for (int i = 0; i < size; i++) {
                this.zzbdp.valueAt(i).zzk(!this.zzagj || this.zzbdx[i]);
            }
            zzms.zze(0, 0);
        }
        this.zzbec = zzht();
        return z ? 1 : 0;
    }

    public final /* synthetic */ void zza(zzow zzow, long j, long j2, boolean z) {
        zza((zzms) zzow);
        if (!z && this.zzbdv > 0) {
            int size = this.zzbdp.size();
            for (int i = 0; i < size; i++) {
                this.zzbdp.valueAt(i).zzk(this.zzbdx[i]);
            }
            this.zzbdq.zza(this);
        }
    }

    public final /* synthetic */ void zza(zzow zzow, long j, long j2) {
        zza((zzms) zzow);
        this.zzbed = true;
        if (this.zzaih == -9223372036854775807L) {
            long zzhu = zzhu();
            this.zzaih = zzhu == Long.MIN_VALUE ? 0 : zzhu + 10000;
            this.zzbdg.zzb(new zznp(this.zzaih, this.zzbdr.isSeekable()), (Object) null);
        }
        this.zzbdq.zza(this);
    }
}
