package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.internal.measurement.zzca;
import com.google.android.gms.internal.measurement.zzcc;
import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zznn;
import com.google.android.gms.internal.measurement.zzoe;
import com.google.android.gms.internal.measurement.zzof;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: com.google.android.gms:play-services-measurement@@17.4.4 */
public class zzkk implements zzgz {
    private static volatile zzkk zza;
    private zzfx zzb;
    private zzfc zzc;
    private zzad zzd;
    private zzfj zze;
    private zzkg zzf;
    private zzo zzg;
    private final zzks zzh;
    private zzii zzi;
    private final zzgd zzj;
    private boolean zzk;
    private boolean zzl;
    private long zzm;
    private List<Runnable> zzn;
    private int zzo;
    private int zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private FileLock zzt;
    private FileChannel zzu;
    private List<Long> zzv;
    private List<Long> zzw;
    private long zzx;

    /* compiled from: com.google.android.gms:play-services-measurement@@17.4.4 */
    class zza implements zzaf {
        zzcc.zzg zza;
        List<Long> zzb;
        List<zzcc.zzc> zzc;
        private long zzd;

        private zza() {
        }

        public final void zza(zzcc.zzg zzg) {
            Preconditions.checkNotNull(zzg);
            this.zza = zzg;
        }

        public final boolean zza(long j, zzcc.zzc zzc2) {
            Preconditions.checkNotNull(zzc2);
            if (this.zzc == null) {
                this.zzc = new ArrayList();
            }
            if (this.zzb == null) {
                this.zzb = new ArrayList();
            }
            if (this.zzc.size() > 0 && zza(this.zzc.get(0)) != zza(zzc2)) {
                return false;
            }
            long zzbm = this.zzd + ((long) zzc2.zzbm());
            if (zzbm >= ((long) Math.max(0, zzaq.zzh.zza(null).intValue()))) {
                return false;
            }
            this.zzd = zzbm;
            this.zzc.add(zzc2);
            this.zzb.add(Long.valueOf(j));
            if (this.zzc.size() >= Math.max(1, zzaq.zzi.zza(null).intValue())) {
                return false;
            }
            return true;
        }

        private static long zza(zzcc.zzc zzc2) {
            return ((zzc2.zze() / 1000) / 60) / 60;
        }

        /* synthetic */ zza(zzkk zzkk, zzkn zzkn) {
            this();
        }
    }

    public static zzkk zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zza == null) {
            synchronized (zzkk.class) {
                if (zza == null) {
                    zza = new zzkk(new zzkq(context));
                }
            }
        }
        return zza;
    }

    private zzkk(zzkq zzkq) {
        this(zzkq, (zzgd) null);
    }

    private zzkk(zzkq zzkq, zzgd zzgd) {
        this.zzk = false;
        Preconditions.checkNotNull(zzkq);
        this.zzj = zzgd.zza(zzkq.zza, (zzae) null, (Long) null);
        this.zzx = -1;
        zzks zzks = new zzks(this);
        zzks.zzal();
        this.zzh = zzks;
        zzfc zzfc = new zzfc(this);
        zzfc.zzal();
        this.zzc = zzfc;
        zzfx zzfx = new zzfx(this);
        zzfx.zzal();
        this.zzb = zzfx;
        this.zzj.zzq().zza((Runnable) new zzkn(this, zzkq));
    }

    /* access modifiers changed from: private */
    public final void zza(zzkq zzkq) {
        this.zzj.zzq().zzd();
        zzad zzad = new zzad(this);
        zzad.zzal();
        this.zzd = zzad;
        this.zzj.zzb().zza((zzaa) this.zzb);
        zzo zzo2 = new zzo(this);
        zzo2.zzal();
        this.zzg = zzo2;
        zzii zzii = new zzii(this);
        zzii.zzal();
        this.zzi = zzii;
        zzkg zzkg = new zzkg(this);
        zzkg.zzal();
        this.zzf = zzkg;
        this.zze = new zzfj(this);
        if (this.zzo != this.zzp) {
            this.zzj.zzr().zzf().zza("Not all upload components initialized", Integer.valueOf(this.zzo), Integer.valueOf(this.zzp));
        }
        this.zzk = true;
    }

    /* access modifiers changed from: protected */
    public final void zza() {
        this.zzj.zzq().zzd();
        zze().zzv();
        if (this.zzj.zzc().zzc.zza() == 0) {
            this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
        }
        zzz();
    }

    public final zzx zzu() {
        return this.zzj.zzu();
    }

    public final zzy zzb() {
        return this.zzj.zzb();
    }

    public final zzez zzr() {
        return this.zzj.zzr();
    }

    public final zzfw zzq() {
        return this.zzj.zzq();
    }

    public final zzfx zzc() {
        zzb((zzkl) this.zzb);
        return this.zzb;
    }

    public final zzfc zzd() {
        zzb((zzkl) this.zzc);
        return this.zzc;
    }

    public final zzad zze() {
        zzb((zzkl) this.zzd);
        return this.zzd;
    }

    private final zzfj zzt() {
        zzfj zzfj = this.zze;
        if (zzfj != null) {
            return zzfj;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final zzkg zzv() {
        zzb((zzkl) this.zzf);
        return this.zzf;
    }

    public final zzo zzf() {
        zzb((zzkl) this.zzg);
        return this.zzg;
    }

    public final zzii zzg() {
        zzb((zzkl) this.zzi);
        return this.zzi;
    }

    public final zzks zzh() {
        zzb((zzkl) this.zzh);
        return this.zzh;
    }

    public final zzex zzi() {
        return this.zzj.zzj();
    }

    public final Context zzn() {
        return this.zzj.zzn();
    }

    public final Clock zzm() {
        return this.zzj.zzm();
    }

    public final zzkw zzj() {
        return this.zzj.zzi();
    }

    private final void zzw() {
        this.zzj.zzq().zzd();
    }

    /* access modifiers changed from: package-private */
    public final void zzk() {
        if (!this.zzk) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    private static void zzb(zzkl zzkl) {
        if (zzkl == null) {
            throw new IllegalStateException("Upload Component not created");
        } else if (!zzkl.zzaj()) {
            String valueOf = String.valueOf(zzkl.getClass());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("Component not initialized: ");
            sb.append(valueOf);
            throw new IllegalStateException(sb.toString());
        }
    }

    private final long zzx() {
        long currentTimeMillis = this.zzj.zzm().currentTimeMillis();
        zzfl zzc2 = this.zzj.zzc();
        zzc2.zzaa();
        zzc2.zzd();
        long zza2 = zzc2.zzg.zza();
        if (zza2 == 0) {
            zza2 = 1 + ((long) zzc2.zzp().zzh().nextInt(86400000));
            zzc2.zzg.zza(zza2);
        }
        return ((((currentTimeMillis + zza2) / 1000) / 60) / 60) / 24;
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzao zzao, String str) {
        zzao zzao2 = zzao;
        zzf zzb2 = zze().zzb(str);
        if (zzb2 == null || TextUtils.isEmpty(zzb2.zzl())) {
            this.zzj.zzr().zzw().zza("No app data available; dropping event", str);
            return;
        }
        Boolean zzb3 = zzb(zzb2);
        if (zzb3 == null) {
            if (!"_ui".equals(zzao2.zza)) {
                this.zzj.zzr().zzi().zza("Could not find package. appId", zzez.zza(str));
            }
        } else if (!zzb3.booleanValue()) {
            this.zzj.zzr().zzf().zza("App version does not match; dropping event. appId", zzez.zza(str));
            return;
        }
        zzn zzn2 = r2;
        zzn zzn3 = new zzn(str, zzb2.zze(), zzb2.zzl(), zzb2.zzm(), zzb2.zzn(), zzb2.zzo(), zzb2.zzp(), (String) null, zzb2.zzr(), false, zzb2.zzi(), zzb2.zzae(), 0, 0, zzb2.zzaf(), zzb2.zzag(), false, zzb2.zzf(), zzb2.zzah(), zzb2.zzq(), zzb2.zzai(), (!zzoe.zzb() || !this.zzj.zzb().zze(zzb2.zzc(), zzaq.zzbn)) ? null : zzb2.zzg());
        zzb(zzao2, zzn2);
    }

    private final void zzb(zzao zzao, zzn zzn2) {
        if (zzof.zzb() && this.zzj.zzb().zza(zzaq.zzcn)) {
            zzfd zza2 = zzfd.zza(zzao);
            this.zzj.zzi().zza(zza2.zzb, zze().zzi(zzn2.zza));
            this.zzj.zzi().zza(zza2, this.zzj.zzb().zza(zzn2.zza));
            zzao = zza2.zza();
        }
        zza(zzao, zzn2);
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzao zzao, zzn zzn2) {
        List<zzw> list;
        List<zzw> list2;
        List<zzw> list3;
        zzao zzao2 = zzao;
        zzn zzn3 = zzn2;
        Preconditions.checkNotNull(zzn2);
        Preconditions.checkNotEmpty(zzn3.zza);
        zzw();
        zzk();
        String str = zzn3.zza;
        long j = zzao2.zzd;
        zzh();
        if (zzks.zza(zzao, zzn2)) {
            if (!zzn3.zzh) {
                zzc(zzn3);
                return;
            }
            if (this.zzj.zzb().zze(str, zzaq.zzbb) && zzn3.zzu != null) {
                if (zzn3.zzu.contains(zzao2.zza)) {
                    Bundle zzb2 = zzao2.zzb.zzb();
                    zzb2.putLong("ga_safelisted", 1);
                    zzao2 = new zzao(zzao2.zza, new zzan(zzb2), zzao2.zzc, zzao2.zzd);
                } else {
                    this.zzj.zzr().zzw().zza("Dropping non-safelisted event. appId, event name, origin", str, zzao2.zza, zzao2.zzc);
                    return;
                }
            }
            zze().zzf();
            try {
                zzad zze2 = zze();
                Preconditions.checkNotEmpty(str);
                zze2.zzd();
                zze2.zzak();
                if (j < 0) {
                    zze2.zzr().zzi().zza("Invalid time querying timed out conditional properties", zzez.zza(str), Long.valueOf(j));
                    list = Collections.emptyList();
                } else {
                    list = zze2.zza("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str, String.valueOf(j)});
                }
                for (zzw next : list) {
                    if (next != null) {
                        this.zzj.zzr().zzx().zza("User property timed out", next.zza, this.zzj.zzj().zzc(next.zzc.zza), next.zzc.zza());
                        if (next.zzg != null) {
                            zzc(new zzao(next.zzg, j), zzn3);
                        }
                        zze().zze(str, next.zzc.zza);
                    }
                }
                zzad zze3 = zze();
                Preconditions.checkNotEmpty(str);
                zze3.zzd();
                zze3.zzak();
                if (j < 0) {
                    zze3.zzr().zzi().zza("Invalid time querying expired conditional properties", zzez.zza(str), Long.valueOf(j));
                    list2 = Collections.emptyList();
                } else {
                    list2 = zze3.zza("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzw next2 : list2) {
                    if (next2 != null) {
                        this.zzj.zzr().zzx().zza("User property expired", next2.zza, this.zzj.zzj().zzc(next2.zzc.zza), next2.zzc.zza());
                        zze().zzb(str, next2.zzc.zza);
                        if (next2.zzk != null) {
                            arrayList.add(next2.zzk);
                        }
                        zze().zze(str, next2.zzc.zza);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    zzc(new zzao((zzao) obj, j), zzn3);
                }
                zzad zze4 = zze();
                String str2 = zzao2.zza;
                Preconditions.checkNotEmpty(str);
                Preconditions.checkNotEmpty(str2);
                zze4.zzd();
                zze4.zzak();
                if (j < 0) {
                    zze4.zzr().zzi().zza("Invalid time querying triggered conditional properties", zzez.zza(str), zze4.zzo().zza(str2), Long.valueOf(j));
                    list3 = Collections.emptyList();
                } else {
                    list3 = zze4.zza("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str, str2, String.valueOf(j)});
                }
                ArrayList arrayList3 = new ArrayList(list3.size());
                for (zzw next3 : list3) {
                    if (next3 != null) {
                        zzkr zzkr = next3.zzc;
                        zzkt zzkt = r4;
                        zzkt zzkt2 = new zzkt(next3.zza, next3.zzb, zzkr.zza, j, zzkr.zza());
                        if (zze().zza(zzkt)) {
                            this.zzj.zzr().zzx().zza("User property triggered", next3.zza, this.zzj.zzj().zzc(zzkt.zzc), zzkt.zze);
                        } else {
                            this.zzj.zzr().zzf().zza("Too many active user properties, ignoring", zzez.zza(next3.zza), this.zzj.zzj().zzc(zzkt.zzc), zzkt.zze);
                        }
                        if (next3.zzi != null) {
                            arrayList3.add(next3.zzi);
                        }
                        next3.zzc = new zzkr(zzkt);
                        next3.zze = true;
                        zze().zza(next3);
                    }
                }
                zzc(zzao2, zzn3);
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList4.get(i2);
                    i2++;
                    zzc(new zzao((zzao) obj2, j), zzn3);
                }
                zze().b_();
            } finally {
                zze().zzh();
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:277:0x08b6, code lost:
        r11 = true;
     */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x02e4 A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x031b A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x032a  */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0351 A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x0360 A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x0394 A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* JADX WARNING: Removed duplicated region for block: B:131:0x03c1  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x017d A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0185 A[Catch:{ SQLiteException -> 0x02ac, all -> 0x0947 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzc(com.google.android.gms.measurement.internal.zzao r27, com.google.android.gms.measurement.internal.zzn r28) {
        /*
            r26 = this;
            r1 = r26
            r2 = r27
            r3 = r28
            java.lang.String r4 = "_sno"
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r28)
            java.lang.String r5 = r3.zza
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r5)
            long r5 = java.lang.System.nanoTime()
            r26.zzw()
            r26.zzk()
            java.lang.String r15 = r3.zza
            r26.zzh()
            boolean r7 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.measurement.internal.zzao) r27, (com.google.android.gms.measurement.internal.zzn) r28)
            if (r7 != 0) goto L_0x0026
            return
        L_0x0026:
            boolean r7 = r3.zzh
            if (r7 != 0) goto L_0x002e
            r1.zzc(r3)
            return
        L_0x002e:
            com.google.android.gms.measurement.internal.zzfx r7 = r26.zzc()
            java.lang.String r8 = r2.zza
            boolean r7 = r7.zzb(r15, r8)
            java.lang.String r14 = "_err"
            r13 = 0
            if (r7 == 0) goto L_0x00d9
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj
            com.google.android.gms.measurement.internal.zzez r3 = r3.zzr()
            com.google.android.gms.measurement.internal.zzfb r3 = r3.zzi()
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r15)
            com.google.android.gms.measurement.internal.zzgd r5 = r1.zzj
            com.google.android.gms.measurement.internal.zzex r5 = r5.zzj()
            java.lang.String r6 = r2.zza
            java.lang.String r5 = r5.zza((java.lang.String) r6)
            java.lang.String r6 = "Dropping blacklisted event. appId"
            r3.zza(r6, r4, r5)
            com.google.android.gms.measurement.internal.zzfx r3 = r26.zzc()
            boolean r3 = r3.zzg(r15)
            if (r3 != 0) goto L_0x0073
            com.google.android.gms.measurement.internal.zzfx r3 = r26.zzc()
            boolean r3 = r3.zzh(r15)
            if (r3 == 0) goto L_0x0071
            goto L_0x0073
        L_0x0071:
            r3 = 0
            goto L_0x0074
        L_0x0073:
            r3 = 1
        L_0x0074:
            if (r3 != 0) goto L_0x008f
            java.lang.String r4 = r2.zza
            boolean r4 = r14.equals(r4)
            if (r4 != 0) goto L_0x008f
            com.google.android.gms.measurement.internal.zzgd r4 = r1.zzj
            com.google.android.gms.measurement.internal.zzkw r7 = r4.zzi()
            r9 = 11
            java.lang.String r11 = r2.zza
            r12 = 0
            java.lang.String r10 = "_ev"
            r8 = r15
            r7.zza((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)
        L_0x008f:
            if (r3 == 0) goto L_0x00d8
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            com.google.android.gms.measurement.internal.zzf r2 = r2.zzb(r15)
            if (r2 == 0) goto L_0x00d8
            long r3 = r2.zzu()
            long r5 = r2.zzt()
            long r3 = java.lang.Math.max(r3, r5)
            com.google.android.gms.measurement.internal.zzgd r5 = r1.zzj
            com.google.android.gms.common.util.Clock r5 = r5.zzm()
            long r5 = r5.currentTimeMillis()
            long r5 = r5 - r3
            long r3 = java.lang.Math.abs(r5)
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r5 = com.google.android.gms.measurement.internal.zzaq.zzy
            java.lang.Object r5 = r5.zza(r13)
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L_0x00d8
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj
            com.google.android.gms.measurement.internal.zzez r3 = r3.zzr()
            com.google.android.gms.measurement.internal.zzfb r3 = r3.zzw()
            java.lang.String r4 = "Fetching config for blacklisted app"
            r3.zza(r4)
            r1.zza((com.google.android.gms.measurement.internal.zzf) r2)
        L_0x00d8:
            return
        L_0x00d9:
            boolean r7 = com.google.android.gms.internal.measurement.zzmd.zzb()
            if (r7 == 0) goto L_0x0108
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r8 = com.google.android.gms.measurement.internal.zzaq.zzcj
            boolean r7 = r7.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r8)
            if (r7 == 0) goto L_0x0108
            com.google.android.gms.measurement.internal.zzfd r2 = com.google.android.gms.measurement.internal.zzfd.zza(r27)
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj
            com.google.android.gms.measurement.internal.zzkw r7 = r7.zzi()
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj
            com.google.android.gms.measurement.internal.zzy r8 = r8.zzb()
            int r8 = r8.zza((java.lang.String) r15)
            r7.zza((com.google.android.gms.measurement.internal.zzfd) r2, (int) r8)
            com.google.android.gms.measurement.internal.zzao r2 = r2.zza()
        L_0x0108:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()
            r8 = 2
            boolean r7 = r7.zza((int) r8)
            if (r7 == 0) goto L_0x012e
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzx()
            com.google.android.gms.measurement.internal.zzgd r9 = r1.zzj
            com.google.android.gms.measurement.internal.zzex r9 = r9.zzj()
            java.lang.String r9 = r9.zza((com.google.android.gms.measurement.internal.zzao) r2)
            java.lang.String r10 = "Logging event"
            r7.zza(r10, r9)
        L_0x012e:
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()
            r7.zzf()
            r1.zzc(r3)     // Catch:{ all -> 0x0947 }
            boolean r7 = com.google.android.gms.internal.measurement.zzmo.zzb()     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x014e
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r9 = com.google.android.gms.measurement.internal.zzaq.zzci     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r9)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x014e
            r7 = 1
            goto L_0x014f
        L_0x014e:
            r7 = 0
        L_0x014f:
            java.lang.String r9 = "ecommerce_purchase"
            java.lang.String r10 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r9 = r9.equals(r10)     // Catch:{ all -> 0x0947 }
            java.lang.String r10 = "refund"
            if (r9 != 0) goto L_0x0172
            if (r7 == 0) goto L_0x0170
            java.lang.String r7 = "purchase"
            java.lang.String r9 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.equals(r9)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x0172
            java.lang.String r7 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r7 = r10.equals(r7)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x0170
            goto L_0x0172
        L_0x0170:
            r7 = 0
            goto L_0x0173
        L_0x0172:
            r7 = 1
        L_0x0173:
            java.lang.String r9 = "_iap"
            java.lang.String r11 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r9 = r9.equals(r11)     // Catch:{ all -> 0x0947 }
            if (r9 != 0) goto L_0x0182
            if (r7 == 0) goto L_0x0180
            goto L_0x0182
        L_0x0180:
            r9 = 0
            goto L_0x0183
        L_0x0182:
            r9 = 1
        L_0x0183:
            if (r9 == 0) goto L_0x032a
            com.google.android.gms.measurement.internal.zzan r9 = r2.zzb     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = "currency"
            java.lang.String r9 = r9.zzd(r11)     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = "value"
            if (r7 == 0) goto L_0x0203
            com.google.android.gms.measurement.internal.zzan r7 = r2.zzb     // Catch:{ all -> 0x0947 }
            java.lang.Double r7 = r7.zzc(r11)     // Catch:{ all -> 0x0947 }
            double r17 = r7.doubleValue()     // Catch:{ all -> 0x0947 }
            r19 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r17 = r17 * r19
            r21 = 0
            int r7 = (r17 > r21 ? 1 : (r17 == r21 ? 0 : -1))
            if (r7 != 0) goto L_0x01b8
            com.google.android.gms.measurement.internal.zzan r7 = r2.zzb     // Catch:{ all -> 0x0947 }
            java.lang.Long r7 = r7.zzb(r11)     // Catch:{ all -> 0x0947 }
            long r12 = r7.longValue()     // Catch:{ all -> 0x0947 }
            double r11 = (double) r12
            java.lang.Double.isNaN(r11)
            double r17 = r11 * r19
        L_0x01b8:
            r11 = 4890909195324358656(0x43e0000000000000, double:9.223372036854776E18)
            int r7 = (r17 > r11 ? 1 : (r17 == r11 ? 0 : -1))
            if (r7 > 0) goto L_0x01e6
            r11 = -4332462841530417152(0xc3e0000000000000, double:-9.223372036854776E18)
            int r7 = (r17 > r11 ? 1 : (r17 == r11 ? 0 : -1))
            if (r7 < 0) goto L_0x01e6
            long r11 = java.lang.Math.round(r17)     // Catch:{ all -> 0x0947 }
            boolean r7 = com.google.android.gms.internal.measurement.zzmo.zzb()     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x020d
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r13 = com.google.android.gms.measurement.internal.zzaq.zzci     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r13)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x020d
            java.lang.String r7 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r7 = r10.equals(r7)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x020d
            long r11 = -r11
            goto L_0x020d
        L_0x01e6:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "Data lost. Currency value is too big. appId"
            java.lang.Object r9 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r15)     // Catch:{ all -> 0x0947 }
            java.lang.Double r10 = java.lang.Double.valueOf(r17)     // Catch:{ all -> 0x0947 }
            r7.zza(r8, r9, r10)     // Catch:{ all -> 0x0947 }
            r23 = r5
            r5 = 0
            r11 = 0
            goto L_0x0319
        L_0x0203:
            com.google.android.gms.measurement.internal.zzan r7 = r2.zzb     // Catch:{ all -> 0x0947 }
            java.lang.Long r7 = r7.zzb(r11)     // Catch:{ all -> 0x0947 }
            long r11 = r7.longValue()     // Catch:{ all -> 0x0947 }
        L_0x020d:
            boolean r7 = android.text.TextUtils.isEmpty(r9)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x0315
            java.util.Locale r7 = java.util.Locale.US     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = r9.toUpperCase(r7)     // Catch:{ all -> 0x0947 }
            java.lang.String r9 = "[A-Z]{3}"
            boolean r9 = r7.matches(r9)     // Catch:{ all -> 0x0947 }
            if (r9 == 0) goto L_0x0315
            java.lang.String r9 = "_ltv_"
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch:{ all -> 0x0947 }
            int r10 = r7.length()     // Catch:{ all -> 0x0947 }
            if (r10 == 0) goto L_0x0232
            java.lang.String r7 = r9.concat(r7)     // Catch:{ all -> 0x0947 }
            goto L_0x0237
        L_0x0232:
            java.lang.String r7 = new java.lang.String     // Catch:{ all -> 0x0947 }
            r7.<init>(r9)     // Catch:{ all -> 0x0947 }
        L_0x0237:
            r10 = r7
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkt r7 = r7.zzc(r15, r10)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x0273
            java.lang.Object r9 = r7.zze     // Catch:{ all -> 0x0947 }
            boolean r9 = r9 instanceof java.lang.Long     // Catch:{ all -> 0x0947 }
            if (r9 != 0) goto L_0x0249
            goto L_0x0273
        L_0x0249:
            java.lang.Object r7 = r7.zze     // Catch:{ all -> 0x0947 }
            java.lang.Long r7 = (java.lang.Long) r7     // Catch:{ all -> 0x0947 }
            long r7 = r7.longValue()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkt r17 = new com.google.android.gms.measurement.internal.zzkt     // Catch:{ all -> 0x0947 }
            java.lang.String r9 = r2.zzc     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r13 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.common.util.Clock r13 = r13.zzm()     // Catch:{ all -> 0x0947 }
            long r18 = r13.currentTimeMillis()     // Catch:{ all -> 0x0947 }
            long r7 = r7 + r11
            java.lang.Long r13 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x0947 }
            r7 = r17
            r8 = r15
            r23 = r5
            r5 = 0
            r6 = 1
            r11 = r18
            r7.<init>(r8, r9, r10, r11, r13)     // Catch:{ all -> 0x0947 }
        L_0x0270:
            r6 = r17
            goto L_0x02da
        L_0x0273:
            r23 = r5
            r5 = 0
            r6 = 1
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r9 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r9 = r9.zzb()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r13 = com.google.android.gms.measurement.internal.zzaq.zzad     // Catch:{ all -> 0x0947 }
            int r9 = r9.zzb(r15, r13)     // Catch:{ all -> 0x0947 }
            int r9 = r9 - r6
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r15)     // Catch:{ all -> 0x0947 }
            r7.zzd()     // Catch:{ all -> 0x0947 }
            r7.zzak()     // Catch:{ all -> 0x0947 }
            android.database.sqlite.SQLiteDatabase r13 = r7.c_()     // Catch:{ SQLiteException -> 0x02ac }
            java.lang.String r8 = "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);"
            r6 = 3
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x02ac }
            r6[r5] = r15     // Catch:{ SQLiteException -> 0x02ac }
            r16 = 1
            r6[r16] = r15     // Catch:{ SQLiteException -> 0x02ac }
            java.lang.String r9 = java.lang.String.valueOf(r9)     // Catch:{ SQLiteException -> 0x02ac }
            r16 = 2
            r6[r16] = r9     // Catch:{ SQLiteException -> 0x02ac }
            r13.execSQL(r8, r6)     // Catch:{ SQLiteException -> 0x02ac }
            goto L_0x02bf
        L_0x02ac:
            r0 = move-exception
            r6 = r0
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "Error pruning currencies. appId"
            java.lang.Object r9 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r15)     // Catch:{ all -> 0x0947 }
            r7.zza(r8, r9, r6)     // Catch:{ all -> 0x0947 }
        L_0x02bf:
            com.google.android.gms.measurement.internal.zzkt r17 = new com.google.android.gms.measurement.internal.zzkt     // Catch:{ all -> 0x0947 }
            java.lang.String r9 = r2.zzc     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r6 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.common.util.Clock r6 = r6.zzm()     // Catch:{ all -> 0x0947 }
            long r18 = r6.currentTimeMillis()     // Catch:{ all -> 0x0947 }
            java.lang.Long r13 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x0947 }
            r7 = r17
            r8 = r15
            r11 = r18
            r7.<init>(r8, r9, r10, r11, r13)     // Catch:{ all -> 0x0947 }
            goto L_0x0270
        L_0x02da:
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zza((com.google.android.gms.measurement.internal.zzkt) r6)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x0318
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "Too many unique user properties are set. Ignoring user property. appId"
            java.lang.Object r9 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r15)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r10 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzex r10 = r10.zzj()     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = r6.zzc     // Catch:{ all -> 0x0947 }
            java.lang.String r10 = r10.zzc(r11)     // Catch:{ all -> 0x0947 }
            java.lang.Object r6 = r6.zze     // Catch:{ all -> 0x0947 }
            r7.zza(r8, r9, r10, r6)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r6 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r6.zzi()     // Catch:{ all -> 0x0947 }
            r9 = 9
            r10 = 0
            r11 = 0
            r12 = 0
            r8 = r15
            r7.zza((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)     // Catch:{ all -> 0x0947 }
            goto L_0x0318
        L_0x0315:
            r23 = r5
            r5 = 0
        L_0x0318:
            r11 = 1
        L_0x0319:
            if (r11 != 0) goto L_0x032d
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()     // Catch:{ all -> 0x0947 }
            r2.b_()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            r2.zzh()
            return
        L_0x032a:
            r23 = r5
            r5 = 0
        L_0x032d:
            java.lang.String r6 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r6 = com.google.android.gms.measurement.internal.zzkw.zza((java.lang.String) r6)     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r18 = r14.equals(r7)     // Catch:{ all -> 0x0947 }
            boolean r7 = com.google.android.gms.internal.measurement.zzmo.zzb()     // Catch:{ all -> 0x0947 }
            r19 = 1
            if (r7 == 0) goto L_0x0360
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r9 = com.google.android.gms.measurement.internal.zzaq.zzce     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zze(r8, r9)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x0360
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            r7.zzi()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzan r7 = r2.zzb     // Catch:{ all -> 0x0947 }
            long r7 = com.google.android.gms.measurement.internal.zzkw.zza((com.google.android.gms.measurement.internal.zzan) r7)     // Catch:{ all -> 0x0947 }
            long r7 = r7 + r19
            r11 = r7
            goto L_0x0362
        L_0x0360:
            r11 = r19
        L_0x0362:
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            long r8 = r26.zzx()     // Catch:{ all -> 0x0947 }
            r13 = 1
            r16 = 0
            r17 = 0
            r10 = r15
            r14 = r6
            r27 = r15
            r15 = r16
            r16 = r18
            com.google.android.gms.measurement.internal.zzac r7 = r7.zza(r8, r10, r11, r13, r14, r15, r16, r17)     // Catch:{ all -> 0x0947 }
            long r8 = r7.zzb     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r10 = com.google.android.gms.measurement.internal.zzaq.zzj     // Catch:{ all -> 0x0947 }
            r14 = 0
            java.lang.Object r10 = r10.zza(r14)     // Catch:{ all -> 0x0947 }
            java.lang.Integer r10 = (java.lang.Integer) r10     // Catch:{ all -> 0x0947 }
            int r10 = r10.intValue()     // Catch:{ all -> 0x0947 }
            long r10 = (long) r10     // Catch:{ all -> 0x0947 }
            long r8 = r8 - r10
            r10 = 1000(0x3e8, double:4.94E-321)
            r12 = 0
            int r15 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r15 <= 0) goto L_0x03c1
            long r8 = r8 % r10
            int r2 = (r8 > r19 ? 1 : (r8 == r19 ? 0 : -1))
            if (r2 != 0) goto L_0x03b2
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r3 = "Data loss. Too many events logged. appId, count"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r27)     // Catch:{ all -> 0x0947 }
            long r5 = r7.zzb     // Catch:{ all -> 0x0947 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0947 }
            r2.zza(r3, r4, r5)     // Catch:{ all -> 0x0947 }
        L_0x03b2:
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()     // Catch:{ all -> 0x0947 }
            r2.b_()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            r2.zzh()
            return
        L_0x03c1:
            if (r6 == 0) goto L_0x0416
            long r8 = r7.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r15 = com.google.android.gms.measurement.internal.zzaq.zzl     // Catch:{ all -> 0x0947 }
            java.lang.Object r15 = r15.zza(r14)     // Catch:{ all -> 0x0947 }
            java.lang.Integer r15 = (java.lang.Integer) r15     // Catch:{ all -> 0x0947 }
            int r15 = r15.intValue()     // Catch:{ all -> 0x0947 }
            long r14 = (long) r15     // Catch:{ all -> 0x0947 }
            long r8 = r8 - r14
            int r14 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r14 <= 0) goto L_0x0416
            long r8 = r8 % r10
            int r3 = (r8 > r19 ? 1 : (r8 == r19 ? 0 : -1))
            if (r3 != 0) goto L_0x03f5
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r3 = r3.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r3 = r3.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r4 = "Data loss. Too many public events logged. appId, count"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r27)     // Catch:{ all -> 0x0947 }
            long r6 = r7.zza     // Catch:{ all -> 0x0947 }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0947 }
            r3.zza(r4, r5, r6)     // Catch:{ all -> 0x0947 }
        L_0x03f5:
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r3.zzi()     // Catch:{ all -> 0x0947 }
            r9 = 16
            java.lang.String r10 = "_ev"
            java.lang.String r11 = r2.zza     // Catch:{ all -> 0x0947 }
            r12 = 0
            r8 = r27
            r7.zza((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()     // Catch:{ all -> 0x0947 }
            r2.b_()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            r2.zzh()
            return
        L_0x0416:
            if (r18 == 0) goto L_0x0465
            long r8 = r7.zzd     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r10 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r10 = r10.zzb()     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = r3.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r14 = com.google.android.gms.measurement.internal.zzaq.zzk     // Catch:{ all -> 0x0947 }
            int r10 = r10.zzb(r11, r14)     // Catch:{ all -> 0x0947 }
            r11 = 1000000(0xf4240, float:1.401298E-39)
            int r10 = java.lang.Math.min(r11, r10)     // Catch:{ all -> 0x0947 }
            int r10 = java.lang.Math.max(r5, r10)     // Catch:{ all -> 0x0947 }
            long r10 = (long) r10     // Catch:{ all -> 0x0947 }
            long r8 = r8 - r10
            int r10 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r10 <= 0) goto L_0x0465
            int r2 = (r8 > r19 ? 1 : (r8 == r19 ? 0 : -1))
            if (r2 != 0) goto L_0x0456
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r3 = "Too many error events logged. appId, count"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r27)     // Catch:{ all -> 0x0947 }
            long r5 = r7.zzd     // Catch:{ all -> 0x0947 }
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0947 }
            r2.zza(r3, r4, r5)     // Catch:{ all -> 0x0947 }
        L_0x0456:
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()     // Catch:{ all -> 0x0947 }
            r2.b_()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            r2.zzh()
            return
        L_0x0465:
            com.google.android.gms.measurement.internal.zzan r7 = r2.zzb     // Catch:{ all -> 0x0947 }
            android.os.Bundle r14 = r7.zzb()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "_o"
            java.lang.String r9 = r2.zzc     // Catch:{ all -> 0x0947 }
            r7.zza((android.os.Bundle) r14, (java.lang.String) r8, (java.lang.Object) r9)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            r15 = r27
            boolean r7 = r7.zzf(r15)     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = "_r"
            if (r7 == 0) goto L_0x04a4
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "_dbg"
            java.lang.Long r9 = java.lang.Long.valueOf(r19)     // Catch:{ all -> 0x0947 }
            r7.zza((android.os.Bundle) r14, (java.lang.String) r8, (java.lang.Object) r9)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.Long r8 = java.lang.Long.valueOf(r19)     // Catch:{ all -> 0x0947 }
            r7.zza((android.os.Bundle) r14, (java.lang.String) r11, (java.lang.Object) r8)     // Catch:{ all -> 0x0947 }
        L_0x04a4:
            java.lang.String r7 = "_s"
            java.lang.String r8 = r2.zza     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.equals(r8)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x04cb
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkt r7 = r7.zzc(r8, r4)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x04cb
            java.lang.Object r8 = r7.zze     // Catch:{ all -> 0x0947 }
            boolean r8 = r8 instanceof java.lang.Long     // Catch:{ all -> 0x0947 }
            if (r8 == 0) goto L_0x04cb
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r8 = r8.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.Object r7 = r7.zze     // Catch:{ all -> 0x0947 }
            r8.zza((android.os.Bundle) r14, (java.lang.String) r4, (java.lang.Object) r7)     // Catch:{ all -> 0x0947 }
        L_0x04cb:
            com.google.android.gms.measurement.internal.zzad r4 = r26.zze()     // Catch:{ all -> 0x0947 }
            long r7 = r4.zzc(r15)     // Catch:{ all -> 0x0947 }
            int r4 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r4 <= 0) goto L_0x04ee
            com.google.android.gms.measurement.internal.zzgd r4 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r4 = r4.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r4 = r4.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r9 = "Data lost. Too many events stored on disk, deleted. appId"
            java.lang.Object r10 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r15)     // Catch:{ all -> 0x0947 }
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x0947 }
            r4.zza(r9, r10, r7)     // Catch:{ all -> 0x0947 }
        L_0x04ee:
            com.google.android.gms.measurement.internal.zzal r4 = new com.google.android.gms.measurement.internal.zzal     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            java.lang.String r9 = r2.zzc     // Catch:{ all -> 0x0947 }
            java.lang.String r10 = r2.zza     // Catch:{ all -> 0x0947 }
            long r12 = r2.zzd     // Catch:{ all -> 0x0947 }
            r18 = 0
            r7 = r4
            r2 = r10
            r10 = r15
            r5 = r11
            r11 = r2
            r16 = r14
            r2 = r15
            r25 = 0
            r14 = r18
            r7.<init>((com.google.android.gms.measurement.internal.zzgd) r8, (java.lang.String) r9, (java.lang.String) r10, (java.lang.String) r11, (long) r12, (long) r14, (android.os.Bundle) r16)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r4.zzb     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzak r7 = r7.zza((java.lang.String) r2, (java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x058c
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            long r7 = r7.zzh(r2)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r9 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r9 = r9.zzb()     // Catch:{ all -> 0x0947 }
            int r9 = r9.zzb(r2)     // Catch:{ all -> 0x0947 }
            long r9 = (long) r9     // Catch:{ all -> 0x0947 }
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 < 0) goto L_0x0572
            if (r6 == 0) goto L_0x0572
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r3 = r3.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r3 = r3.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r5 = "Too many event names used, ignoring event. appId, name, supported count"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r2)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzex r7 = r7.zzj()     // Catch:{ all -> 0x0947 }
            java.lang.String r4 = r4.zzb     // Catch:{ all -> 0x0947 }
            java.lang.String r4 = r7.zza((java.lang.String) r4)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            int r7 = r7.zzb(r2)     // Catch:{ all -> 0x0947 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ all -> 0x0947 }
            r3.zza(r5, r6, r4, r7)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r7 = r3.zzi()     // Catch:{ all -> 0x0947 }
            r9 = 8
            r10 = 0
            r11 = 0
            r12 = 0
            r8 = r2
            r7.zza((java.lang.String) r8, (int) r9, (java.lang.String) r10, (java.lang.String) r11, (int) r12)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            r2.zzh()
            return
        L_0x0572:
            com.google.android.gms.measurement.internal.zzak r6 = new com.google.android.gms.measurement.internal.zzak     // Catch:{ all -> 0x0947 }
            java.lang.String r9 = r4.zzb     // Catch:{ all -> 0x0947 }
            r10 = 0
            r12 = 0
            long r14 = r4.zzc     // Catch:{ all -> 0x0947 }
            r16 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r7 = r6
            r8 = r2
            r7.<init>(r8, r9, r10, r12, r14, r16, r18, r19, r20, r21)     // Catch:{ all -> 0x0947 }
            goto L_0x059a
        L_0x058c:
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0947 }
            long r8 = r7.zzf     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzal r4 = r4.zza(r2, r8)     // Catch:{ all -> 0x0947 }
            long r8 = r4.zzc     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzak r6 = r7.zza(r8)     // Catch:{ all -> 0x0947 }
        L_0x059a:
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()     // Catch:{ all -> 0x0947 }
            r2.zza((com.google.android.gms.measurement.internal.zzak) r6)     // Catch:{ all -> 0x0947 }
            r26.zzw()     // Catch:{ all -> 0x0947 }
            r26.zzk()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r4)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r28)     // Catch:{ all -> 0x0947 }
            java.lang.String r2 = r4.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r2)     // Catch:{ all -> 0x0947 }
            java.lang.String r2 = r4.zza     // Catch:{ all -> 0x0947 }
            java.lang.String r6 = r3.zza     // Catch:{ all -> 0x0947 }
            boolean r2 = r2.equals(r6)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.common.internal.Preconditions.checkArgument(r2)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r2 = com.google.android.gms.internal.measurement.zzcc.zzg.zzbf()     // Catch:{ all -> 0x0947 }
            r6 = 1
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r2 = r2.zza((int) r6)     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = "android"
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r2 = r2.zza((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = r3.zza     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x05d9
            java.lang.String r7 = r3.zza     // Catch:{ all -> 0x0947 }
            r2.zzf((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
        L_0x05d9:
            java.lang.String r7 = r3.zzd     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x05e6
            java.lang.String r7 = r3.zzd     // Catch:{ all -> 0x0947 }
            r2.zze((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
        L_0x05e6:
            java.lang.String r7 = r3.zzc     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x05f3
            java.lang.String r7 = r3.zzc     // Catch:{ all -> 0x0947 }
            r2.zzg((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
        L_0x05f3:
            long r7 = r3.zzj     // Catch:{ all -> 0x0947 }
            r9 = -2147483648(0xffffffff80000000, double:NaN)
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 == 0) goto L_0x0602
            long r7 = r3.zzj     // Catch:{ all -> 0x0947 }
            int r8 = (int) r7     // Catch:{ all -> 0x0947 }
            r2.zzh((int) r8)     // Catch:{ all -> 0x0947 }
        L_0x0602:
            long r7 = r3.zze     // Catch:{ all -> 0x0947 }
            r2.zzf((long) r7)     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = r3.zzb     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x0614
            java.lang.String r7 = r3.zzb     // Catch:{ all -> 0x0947 }
            r2.zzk((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
        L_0x0614:
            boolean r7 = com.google.android.gms.internal.measurement.zzoe.zzb()     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x0663
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r9 = com.google.android.gms.measurement.internal.zzaq.zzbn     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zze(r8, r9)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x0663
            java.lang.String r7 = r2.zzl()     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x0641
            java.lang.String r7 = r3.zzv     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x0641
            java.lang.String r7 = r3.zzv     // Catch:{ all -> 0x0947 }
            r2.zzp(r7)     // Catch:{ all -> 0x0947 }
        L_0x0641:
            java.lang.String r7 = r2.zzl()     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x067a
            java.lang.String r7 = r2.zzo()     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x067a
            java.lang.String r7 = r3.zzr     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x067a
            java.lang.String r7 = r3.zzr     // Catch:{ all -> 0x0947 }
            r2.zzo(r7)     // Catch:{ all -> 0x0947 }
            goto L_0x067a
        L_0x0663:
            java.lang.String r7 = r2.zzl()     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x067a
            java.lang.String r7 = r3.zzr     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x067a
            java.lang.String r7 = r3.zzr     // Catch:{ all -> 0x0947 }
            r2.zzo(r7)     // Catch:{ all -> 0x0947 }
        L_0x067a:
            long r7 = r3.zzf     // Catch:{ all -> 0x0947 }
            r9 = 0
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 == 0) goto L_0x0687
            long r7 = r3.zzf     // Catch:{ all -> 0x0947 }
            r2.zzh((long) r7)     // Catch:{ all -> 0x0947 }
        L_0x0687:
            long r7 = r3.zzt     // Catch:{ all -> 0x0947 }
            r2.zzk((long) r7)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r11 = com.google.android.gms.measurement.internal.zzaq.zzaw     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zze(r8, r11)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x06a9
            com.google.android.gms.measurement.internal.zzks r7 = r26.zzh()     // Catch:{ all -> 0x0947 }
            java.util.List r7 = r7.zzf()     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x06a9
            r2.zzd((java.lang.Iterable<? extends java.lang.Integer>) r7)     // Catch:{ all -> 0x0947 }
        L_0x06a9:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfl r7 = r7.zzc()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zza     // Catch:{ all -> 0x0947 }
            android.util.Pair r7 = r7.zza((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x06dc
            java.lang.Object r8 = r7.first     // Catch:{ all -> 0x0947 }
            java.lang.CharSequence r8 = (java.lang.CharSequence) r8     // Catch:{ all -> 0x0947 }
            boolean r8 = android.text.TextUtils.isEmpty(r8)     // Catch:{ all -> 0x0947 }
            if (r8 != 0) goto L_0x06dc
            boolean r8 = r3.zzo     // Catch:{ all -> 0x0947 }
            if (r8 == 0) goto L_0x073e
            java.lang.Object r8 = r7.first     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = (java.lang.String) r8     // Catch:{ all -> 0x0947 }
            r2.zzh((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            java.lang.Object r8 = r7.second     // Catch:{ all -> 0x0947 }
            if (r8 == 0) goto L_0x073e
            java.lang.Object r7 = r7.second     // Catch:{ all -> 0x0947 }
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.booleanValue()     // Catch:{ all -> 0x0947 }
            r2.zza((boolean) r7)     // Catch:{ all -> 0x0947 }
            goto L_0x073e
        L_0x06dc:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzai r7 = r7.zzx()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            android.content.Context r8 = r8.zzn()     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zza(r8)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x073e
            boolean r7 = r3.zzp     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x073e
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            android.content.Context r7 = r7.zzn()     // Catch:{ all -> 0x0947 }
            android.content.ContentResolver r7 = r7.getContentResolver()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "android_id"
            java.lang.String r7 = android.provider.Settings.Secure.getString(r7, r8)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x071e
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = "null secure ID. appId"
            java.lang.String r11 = r2.zzj()     // Catch:{ all -> 0x0947 }
            java.lang.Object r11 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r11)     // Catch:{ all -> 0x0947 }
            r7.zza(r8, r11)     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = "null"
            goto L_0x073b
        L_0x071e:
            boolean r8 = r7.isEmpty()     // Catch:{ all -> 0x0947 }
            if (r8 == 0) goto L_0x073b
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r8 = r8.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r8 = r8.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = "empty secure ID. appId"
            java.lang.String r12 = r2.zzj()     // Catch:{ all -> 0x0947 }
            java.lang.Object r12 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r12)     // Catch:{ all -> 0x0947 }
            r8.zza(r11, r12)     // Catch:{ all -> 0x0947 }
        L_0x073b:
            r2.zzm(r7)     // Catch:{ all -> 0x0947 }
        L_0x073e:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzai r7 = r7.zzx()     // Catch:{ all -> 0x0947 }
            r7.zzaa()     // Catch:{ all -> 0x0947 }
            java.lang.String r7 = android.os.Build.MODEL     // Catch:{ all -> 0x0947 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r7 = r2.zzc((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzai r8 = r8.zzx()     // Catch:{ all -> 0x0947 }
            r8.zzaa()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = android.os.Build.VERSION.RELEASE     // Catch:{ all -> 0x0947 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r7 = r7.zzb((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzai r8 = r8.zzx()     // Catch:{ all -> 0x0947 }
            long r11 = r8.zzf()     // Catch:{ all -> 0x0947 }
            int r8 = (int) r11     // Catch:{ all -> 0x0947 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r7 = r7.zzf((int) r8)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzai r8 = r8.zzx()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r8.zzg()     // Catch:{ all -> 0x0947 }
            r7.zzd((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r8 = com.google.android.gms.measurement.internal.zzaq.zzcl     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r8)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x078b
            long r7 = r3.zzl     // Catch:{ all -> 0x0947 }
            r2.zzj((long) r7)     // Catch:{ all -> 0x0947 }
        L_0x078b:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0947 }
            boolean r7 = r7.zzab()     // Catch:{ all -> 0x0947 }
            if (r7 == 0) goto L_0x07a1
            r2.zzj()     // Catch:{ all -> 0x0947 }
            boolean r7 = android.text.TextUtils.isEmpty(r25)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x07a1
            r7 = r25
            r2.zzn(r7)     // Catch:{ all -> 0x0947 }
        L_0x07a1:
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zza     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzf r7 = r7.zzb(r8)     // Catch:{ all -> 0x0947 }
            if (r7 != 0) goto L_0x0822
            com.google.android.gms.measurement.internal.zzf r7 = new com.google.android.gms.measurement.internal.zzf     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = r3.zza     // Catch:{ all -> 0x0947 }
            r7.<init>(r8, r11)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkw r8 = r8.zzi()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r8.zzk()     // Catch:{ all -> 0x0947 }
            r7.zza((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zzk     // Catch:{ all -> 0x0947 }
            r7.zzf((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zzb     // Catch:{ all -> 0x0947 }
            r7.zzb((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfl r8 = r8.zzc()     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = r3.zza     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r8.zzb((java.lang.String) r11)     // Catch:{ all -> 0x0947 }
            r7.zze((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            r7.zzg((long) r9)     // Catch:{ all -> 0x0947 }
            r7.zza((long) r9)     // Catch:{ all -> 0x0947 }
            r7.zzb((long) r9)     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zzc     // Catch:{ all -> 0x0947 }
            r7.zzg((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            long r11 = r3.zzj     // Catch:{ all -> 0x0947 }
            r7.zzc((long) r11)     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r3.zzd     // Catch:{ all -> 0x0947 }
            r7.zzh((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            long r11 = r3.zze     // Catch:{ all -> 0x0947 }
            r7.zzd((long) r11)     // Catch:{ all -> 0x0947 }
            long r11 = r3.zzf     // Catch:{ all -> 0x0947 }
            r7.zze((long) r11)     // Catch:{ all -> 0x0947 }
            boolean r8 = r3.zzh     // Catch:{ all -> 0x0947 }
            r7.zza((boolean) r8)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r8 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r8 = r8.zzb()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r11 = com.google.android.gms.measurement.internal.zzaq.zzcl     // Catch:{ all -> 0x0947 }
            boolean r8 = r8.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r11)     // Catch:{ all -> 0x0947 }
            if (r8 != 0) goto L_0x0816
            long r11 = r3.zzl     // Catch:{ all -> 0x0947 }
            r7.zzp(r11)     // Catch:{ all -> 0x0947 }
        L_0x0816:
            long r11 = r3.zzt     // Catch:{ all -> 0x0947 }
            r7.zzf((long) r11)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r8 = r26.zze()     // Catch:{ all -> 0x0947 }
            r8.zza((com.google.android.gms.measurement.internal.zzf) r7)     // Catch:{ all -> 0x0947 }
        L_0x0822:
            java.lang.String r8 = r7.zzd()     // Catch:{ all -> 0x0947 }
            boolean r8 = android.text.TextUtils.isEmpty(r8)     // Catch:{ all -> 0x0947 }
            if (r8 != 0) goto L_0x0833
            java.lang.String r8 = r7.zzd()     // Catch:{ all -> 0x0947 }
            r2.zzi((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
        L_0x0833:
            java.lang.String r8 = r7.zzi()     // Catch:{ all -> 0x0947 }
            boolean r8 = android.text.TextUtils.isEmpty(r8)     // Catch:{ all -> 0x0947 }
            if (r8 != 0) goto L_0x0844
            java.lang.String r7 = r7.zzi()     // Catch:{ all -> 0x0947 }
            r2.zzl((java.lang.String) r7)     // Catch:{ all -> 0x0947 }
        L_0x0844:
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            java.lang.String r3 = r3.zza     // Catch:{ all -> 0x0947 }
            java.util.List r3 = r7.zza((java.lang.String) r3)     // Catch:{ all -> 0x0947 }
            r11 = 0
        L_0x084f:
            int r7 = r3.size()     // Catch:{ all -> 0x0947 }
            if (r11 >= r7) goto L_0x0886
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r7 = com.google.android.gms.internal.measurement.zzcc.zzk.zzj()     // Catch:{ all -> 0x0947 }
            java.lang.Object r8 = r3.get(r11)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkt r8 = (com.google.android.gms.measurement.internal.zzkt) r8     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r8.zzc     // Catch:{ all -> 0x0947 }
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r7 = r7.zza((java.lang.String) r8)     // Catch:{ all -> 0x0947 }
            java.lang.Object r8 = r3.get(r11)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkt r8 = (com.google.android.gms.measurement.internal.zzkt) r8     // Catch:{ all -> 0x0947 }
            long r12 = r8.zzd     // Catch:{ all -> 0x0947 }
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r7 = r7.zza((long) r12)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzks r8 = r26.zzh()     // Catch:{ all -> 0x0947 }
            java.lang.Object r12 = r3.get(r11)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzkt r12 = (com.google.android.gms.measurement.internal.zzkt) r12     // Catch:{ all -> 0x0947 }
            java.lang.Object r12 = r12.zze     // Catch:{ all -> 0x0947 }
            r8.zza((com.google.android.gms.internal.measurement.zzcc.zzk.zza) r7, (java.lang.Object) r12)     // Catch:{ all -> 0x0947 }
            r2.zza((com.google.android.gms.internal.measurement.zzcc.zzk.zza) r7)     // Catch:{ all -> 0x0947 }
            int r11 = r11 + 1
            goto L_0x084f
        L_0x0886:
            com.google.android.gms.measurement.internal.zzad r3 = r26.zze()     // Catch:{ IOException -> 0x08fb }
            com.google.android.gms.internal.measurement.zzjj r7 = r2.zzv()     // Catch:{ IOException -> 0x08fb }
            com.google.android.gms.internal.measurement.zzib r7 = (com.google.android.gms.internal.measurement.zzib) r7     // Catch:{ IOException -> 0x08fb }
            com.google.android.gms.internal.measurement.zzcc$zzg r7 = (com.google.android.gms.internal.measurement.zzcc.zzg) r7     // Catch:{ IOException -> 0x08fb }
            long r2 = r3.zza((com.google.android.gms.internal.measurement.zzcc.zzg) r7)     // Catch:{ IOException -> 0x08fb }
            com.google.android.gms.measurement.internal.zzad r7 = r26.zze()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzan r8 = r4.zze     // Catch:{ all -> 0x0947 }
            if (r8 == 0) goto L_0x08f1
            com.google.android.gms.measurement.internal.zzan r8 = r4.zze     // Catch:{ all -> 0x0947 }
            java.util.Iterator r8 = r8.iterator()     // Catch:{ all -> 0x0947 }
        L_0x08a4:
            boolean r11 = r8.hasNext()     // Catch:{ all -> 0x0947 }
            if (r11 == 0) goto L_0x08b8
            java.lang.Object r11 = r8.next()     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = (java.lang.String) r11     // Catch:{ all -> 0x0947 }
            boolean r11 = r5.equals(r11)     // Catch:{ all -> 0x0947 }
            if (r11 == 0) goto L_0x08a4
        L_0x08b6:
            r11 = 1
            goto L_0x08f2
        L_0x08b8:
            com.google.android.gms.measurement.internal.zzfx r5 = r26.zzc()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r4.zza     // Catch:{ all -> 0x0947 }
            java.lang.String r11 = r4.zzb     // Catch:{ all -> 0x0947 }
            boolean r5 = r5.zzc(r8, r11)     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r11 = r26.zze()     // Catch:{ all -> 0x0947 }
            long r12 = r26.zzx()     // Catch:{ all -> 0x0947 }
            java.lang.String r14 = r4.zza     // Catch:{ all -> 0x0947 }
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            com.google.android.gms.measurement.internal.zzac r8 = r11.zza(r12, r14, r15, r16, r17, r18, r19)     // Catch:{ all -> 0x0947 }
            if (r5 == 0) goto L_0x08f1
            long r11 = r8.zze     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzgd r5 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzy r5 = r5.zzb()     // Catch:{ all -> 0x0947 }
            java.lang.String r8 = r4.zza     // Catch:{ all -> 0x0947 }
            int r5 = r5.zzc(r8)     // Catch:{ all -> 0x0947 }
            long r13 = (long) r5     // Catch:{ all -> 0x0947 }
            int r5 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r5 >= 0) goto L_0x08f1
            goto L_0x08b6
        L_0x08f1:
            r11 = 0
        L_0x08f2:
            boolean r2 = r7.zza((com.google.android.gms.measurement.internal.zzal) r4, (long) r2, (boolean) r11)     // Catch:{ all -> 0x0947 }
            if (r2 == 0) goto L_0x0914
            r1.zzm = r9     // Catch:{ all -> 0x0947 }
            goto L_0x0914
        L_0x08fb:
            r0 = move-exception
            r3 = r0
            com.google.android.gms.measurement.internal.zzgd r4 = r1.zzj     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzez r4 = r4.zzr()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzfb r4 = r4.zzf()     // Catch:{ all -> 0x0947 }
            java.lang.String r5 = "Data loss. Failed to insert raw event metadata. appId"
            java.lang.String r2 = r2.zzj()     // Catch:{ all -> 0x0947 }
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r2)     // Catch:{ all -> 0x0947 }
            r4.zza(r5, r2, r3)     // Catch:{ all -> 0x0947 }
        L_0x0914:
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()     // Catch:{ all -> 0x0947 }
            r2.b_()     // Catch:{ all -> 0x0947 }
            com.google.android.gms.measurement.internal.zzad r2 = r26.zze()
            r2.zzh()
            r26.zzz()
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzx()
            long r3 = java.lang.System.nanoTime()
            long r3 = r3 - r23
            r5 = 500000(0x7a120, double:2.47033E-318)
            long r3 = r3 + r5
            r5 = 1000000(0xf4240, double:4.940656E-318)
            long r3 = r3 / r5
            java.lang.Long r3 = java.lang.Long.valueOf(r3)
            java.lang.String r4 = "Background event processing time, ms"
            r2.zza(r4, r3)
            return
        L_0x0947:
            r0 = move-exception
            r2 = r0
            com.google.android.gms.measurement.internal.zzad r3 = r26.zze()
            r3.zzh()
            goto L_0x0952
        L_0x0951:
            throw r2
        L_0x0952:
            goto L_0x0951
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zzc(com.google.android.gms.measurement.internal.zzao, com.google.android.gms.measurement.internal.zzn):void");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(2:94|95) */
    /* JADX WARNING: Code restructure failed: missing block: B:95:?, code lost:
        r1.zzj.zzr().zzf().zza("Failed to parse upload URL. Not uploading. appId", com.google.android.gms.measurement.internal.zzez.zza(r5), r9);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:94:0x02d0 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzl() {
        /*
            r17 = this;
            r1 = r17
            r17.zzw()
            r17.zzk()
            r0 = 1
            r1.zzs = r0
            r2 = 0
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x030c }
            r3.zzu()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzis r3 = r3.zzw()     // Catch:{ all -> 0x030c }
            java.lang.Boolean r3 = r3.zzag()     // Catch:{ all -> 0x030c }
            if (r3 != 0) goto L_0x0032
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r0 = r0.zzr()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzi()     // Catch:{ all -> 0x030c }
            java.lang.String r3 = "Upload data called on the client side before use of service was decided"
            r0.zza(r3)     // Catch:{ all -> 0x030c }
            r1.zzs = r2
            r17.zzaa()
            return
        L_0x0032:
            boolean r3 = r3.booleanValue()     // Catch:{ all -> 0x030c }
            if (r3 == 0) goto L_0x004d
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r0 = r0.zzr()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzf()     // Catch:{ all -> 0x030c }
            java.lang.String r3 = "Upload called in the client side when service should be used"
            r0.zza(r3)     // Catch:{ all -> 0x030c }
            r1.zzs = r2
            r17.zzaa()
            return
        L_0x004d:
            long r3 = r1.zzm     // Catch:{ all -> 0x030c }
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L_0x005e
            r17.zzz()     // Catch:{ all -> 0x030c }
            r1.zzs = r2
            r17.zzaa()
            return
        L_0x005e:
            r17.zzw()     // Catch:{ all -> 0x030c }
            java.util.List<java.lang.Long> r3 = r1.zzv     // Catch:{ all -> 0x030c }
            if (r3 == 0) goto L_0x0067
            r3 = 1
            goto L_0x0068
        L_0x0067:
            r3 = 0
        L_0x0068:
            if (r3 == 0) goto L_0x007f
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r0 = r0.zzr()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzx()     // Catch:{ all -> 0x030c }
            java.lang.String r3 = "Uploading requested multiple times"
            r0.zza(r3)     // Catch:{ all -> 0x030c }
            r1.zzs = r2
            r17.zzaa()
            return
        L_0x007f:
            com.google.android.gms.measurement.internal.zzfc r3 = r17.zzd()     // Catch:{ all -> 0x030c }
            boolean r3 = r3.zzf()     // Catch:{ all -> 0x030c }
            if (r3 != 0) goto L_0x00a1
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r0 = r0.zzr()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzx()     // Catch:{ all -> 0x030c }
            java.lang.String r3 = "Network not connected, ignoring upload request"
            r0.zza(r3)     // Catch:{ all -> 0x030c }
            r17.zzz()     // Catch:{ all -> 0x030c }
            r1.zzs = r2
            r17.zzaa()
            return
        L_0x00a1:
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.common.util.Clock r3 = r3.zzm()     // Catch:{ all -> 0x030c }
            long r3 = r3.currentTimeMillis()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r8 = com.google.android.gms.measurement.internal.zzaq.zzap     // Catch:{ all -> 0x030c }
            r9 = 0
            int r7 = r7.zzb(r9, r8)     // Catch:{ all -> 0x030c }
            long r10 = com.google.android.gms.measurement.internal.zzy.zzv()     // Catch:{ all -> 0x030c }
            long r10 = r3 - r10
            r8 = 0
        L_0x00bf:
            if (r8 >= r7) goto L_0x00ca
            boolean r12 = r1.zza((java.lang.String) r9, (long) r10)     // Catch:{ all -> 0x030c }
            if (r12 == 0) goto L_0x00ca
            int r8 = r8 + 1
            goto L_0x00bf
        L_0x00ca:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfl r7 = r7.zzc()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfp r7 = r7.zzc     // Catch:{ all -> 0x030c }
            long r7 = r7.zza()     // Catch:{ all -> 0x030c }
            int r10 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r10 == 0) goto L_0x00f3
            com.google.android.gms.measurement.internal.zzgd r5 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r5 = r5.zzr()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfb r5 = r5.zzw()     // Catch:{ all -> 0x030c }
            java.lang.String r6 = "Uploading events. Elapsed time since last upload attempt (ms)"
            long r7 = r3 - r7
            long r7 = java.lang.Math.abs(r7)     // Catch:{ all -> 0x030c }
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x030c }
            r5.zza(r6, r7)     // Catch:{ all -> 0x030c }
        L_0x00f3:
            com.google.android.gms.measurement.internal.zzad r5 = r17.zze()     // Catch:{ all -> 0x030c }
            java.lang.String r5 = r5.d_()     // Catch:{ all -> 0x030c }
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch:{ all -> 0x030c }
            r7 = -1
            if (r6 != 0) goto L_0x02e4
            long r10 = r1.zzx     // Catch:{ all -> 0x030c }
            int r6 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r6 != 0) goto L_0x0113
            com.google.android.gms.measurement.internal.zzad r6 = r17.zze()     // Catch:{ all -> 0x030c }
            long r6 = r6.zzaa()     // Catch:{ all -> 0x030c }
            r1.zzx = r6     // Catch:{ all -> 0x030c }
        L_0x0113:
            com.google.android.gms.measurement.internal.zzgd r6 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzy r6 = r6.zzb()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r7 = com.google.android.gms.measurement.internal.zzaq.zzf     // Catch:{ all -> 0x030c }
            int r6 = r6.zzb(r5, r7)     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r8 = com.google.android.gms.measurement.internal.zzaq.zzg     // Catch:{ all -> 0x030c }
            int r7 = r7.zzb(r5, r8)     // Catch:{ all -> 0x030c }
            int r7 = java.lang.Math.max(r2, r7)     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzad r8 = r17.zze()     // Catch:{ all -> 0x030c }
            java.util.List r6 = r8.zza((java.lang.String) r5, (int) r6, (int) r7)     // Catch:{ all -> 0x030c }
            boolean r7 = r6.isEmpty()     // Catch:{ all -> 0x030c }
            if (r7 != 0) goto L_0x0306
            java.util.Iterator r7 = r6.iterator()     // Catch:{ all -> 0x030c }
        L_0x0141:
            boolean r8 = r7.hasNext()     // Catch:{ all -> 0x030c }
            if (r8 == 0) goto L_0x0160
            java.lang.Object r8 = r7.next()     // Catch:{ all -> 0x030c }
            android.util.Pair r8 = (android.util.Pair) r8     // Catch:{ all -> 0x030c }
            java.lang.Object r8 = r8.first     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg r8 = (com.google.android.gms.internal.measurement.zzcc.zzg) r8     // Catch:{ all -> 0x030c }
            java.lang.String r10 = r8.zzad()     // Catch:{ all -> 0x030c }
            boolean r10 = android.text.TextUtils.isEmpty(r10)     // Catch:{ all -> 0x030c }
            if (r10 != 0) goto L_0x0141
            java.lang.String r7 = r8.zzad()     // Catch:{ all -> 0x030c }
            goto L_0x0161
        L_0x0160:
            r7 = r9
        L_0x0161:
            if (r7 == 0) goto L_0x0190
            r8 = 0
        L_0x0164:
            int r10 = r6.size()     // Catch:{ all -> 0x030c }
            if (r8 >= r10) goto L_0x0190
            java.lang.Object r10 = r6.get(r8)     // Catch:{ all -> 0x030c }
            android.util.Pair r10 = (android.util.Pair) r10     // Catch:{ all -> 0x030c }
            java.lang.Object r10 = r10.first     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg r10 = (com.google.android.gms.internal.measurement.zzcc.zzg) r10     // Catch:{ all -> 0x030c }
            java.lang.String r11 = r10.zzad()     // Catch:{ all -> 0x030c }
            boolean r11 = android.text.TextUtils.isEmpty(r11)     // Catch:{ all -> 0x030c }
            if (r11 != 0) goto L_0x018d
            java.lang.String r10 = r10.zzad()     // Catch:{ all -> 0x030c }
            boolean r10 = r10.equals(r7)     // Catch:{ all -> 0x030c }
            if (r10 != 0) goto L_0x018d
            java.util.List r6 = r6.subList(r2, r8)     // Catch:{ all -> 0x030c }
            goto L_0x0190
        L_0x018d:
            int r8 = r8 + 1
            goto L_0x0164
        L_0x0190:
            com.google.android.gms.internal.measurement.zzcc$zzf$zza r7 = com.google.android.gms.internal.measurement.zzcc.zzf.zzb()     // Catch:{ all -> 0x030c }
            int r8 = r6.size()     // Catch:{ all -> 0x030c }
            java.util.ArrayList r10 = new java.util.ArrayList     // Catch:{ all -> 0x030c }
            int r11 = r6.size()     // Catch:{ all -> 0x030c }
            r10.<init>(r11)     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzgd r11 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzy r11 = r11.zzb()     // Catch:{ all -> 0x030c }
            boolean r11 = r11.zzg(r5)     // Catch:{ all -> 0x030c }
            r12 = 0
        L_0x01ac:
            if (r12 >= r8) goto L_0x0217
            java.lang.Object r13 = r6.get(r12)     // Catch:{ all -> 0x030c }
            android.util.Pair r13 = (android.util.Pair) r13     // Catch:{ all -> 0x030c }
            java.lang.Object r13 = r13.first     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg r13 = (com.google.android.gms.internal.measurement.zzcc.zzg) r13     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzib$zza r13 = r13.zzbl()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzib$zza r13 = (com.google.android.gms.internal.measurement.zzib.zza) r13     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r13 = (com.google.android.gms.internal.measurement.zzcc.zzg.zza) r13     // Catch:{ all -> 0x030c }
            java.lang.Object r14 = r6.get(r12)     // Catch:{ all -> 0x030c }
            android.util.Pair r14 = (android.util.Pair) r14     // Catch:{ all -> 0x030c }
            java.lang.Object r14 = r14.second     // Catch:{ all -> 0x030c }
            java.lang.Long r14 = (java.lang.Long) r14     // Catch:{ all -> 0x030c }
            r10.add(r14)     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzgd r14 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzy r14 = r14.zzb()     // Catch:{ all -> 0x030c }
            long r14 = r14.zzf()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r14 = r13.zzg((long) r14)     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r14 = r14.zza((long) r3)     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzgd r15 = r1.zzj     // Catch:{ all -> 0x030c }
            r15.zzu()     // Catch:{ all -> 0x030c }
            r14.zzb((boolean) r2)     // Catch:{ all -> 0x030c }
            if (r11 != 0) goto L_0x01ec
            r13.zzn()     // Catch:{ all -> 0x030c }
        L_0x01ec:
            com.google.android.gms.measurement.internal.zzgd r14 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzy r14 = r14.zzb()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r15 = com.google.android.gms.measurement.internal.zzaq.zzay     // Catch:{ all -> 0x030c }
            boolean r14 = r14.zze(r5, r15)     // Catch:{ all -> 0x030c }
            if (r14 == 0) goto L_0x0211
            com.google.android.gms.internal.measurement.zzjj r14 = r13.zzv()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzib r14 = (com.google.android.gms.internal.measurement.zzib) r14     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzg r14 = (com.google.android.gms.internal.measurement.zzcc.zzg) r14     // Catch:{ all -> 0x030c }
            byte[] r14 = r14.zzbi()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzks r15 = r17.zzh()     // Catch:{ all -> 0x030c }
            long r14 = r15.zza((byte[]) r14)     // Catch:{ all -> 0x030c }
            r13.zzl((long) r14)     // Catch:{ all -> 0x030c }
        L_0x0211:
            r7.zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r13)     // Catch:{ all -> 0x030c }
            int r12 = r12 + 1
            goto L_0x01ac
        L_0x0217:
            com.google.android.gms.measurement.internal.zzgd r6 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r6 = r6.zzr()     // Catch:{ all -> 0x030c }
            r11 = 2
            boolean r6 = r6.zza((int) r11)     // Catch:{ all -> 0x030c }
            if (r6 == 0) goto L_0x0235
            com.google.android.gms.measurement.internal.zzks r6 = r17.zzh()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzjj r11 = r7.zzv()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzib r11 = (com.google.android.gms.internal.measurement.zzib) r11     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzf r11 = (com.google.android.gms.internal.measurement.zzcc.zzf) r11     // Catch:{ all -> 0x030c }
            java.lang.String r6 = r6.zza((com.google.android.gms.internal.measurement.zzcc.zzf) r11)     // Catch:{ all -> 0x030c }
            goto L_0x0236
        L_0x0235:
            r6 = r9
        L_0x0236:
            r17.zzh()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzjj r11 = r7.zzv()     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzib r11 = (com.google.android.gms.internal.measurement.zzib) r11     // Catch:{ all -> 0x030c }
            com.google.android.gms.internal.measurement.zzcc$zzf r11 = (com.google.android.gms.internal.measurement.zzcc.zzf) r11     // Catch:{ all -> 0x030c }
            byte[] r14 = r11.zzbi()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzeo<java.lang.String> r11 = com.google.android.gms.measurement.internal.zzaq.zzp     // Catch:{ all -> 0x030c }
            java.lang.Object r9 = r11.zza(r9)     // Catch:{ all -> 0x030c }
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ all -> 0x030c }
            java.net.URL r13 = new java.net.URL     // Catch:{ MalformedURLException -> 0x02d0 }
            r13.<init>(r9)     // Catch:{ MalformedURLException -> 0x02d0 }
            boolean r11 = r10.isEmpty()     // Catch:{ MalformedURLException -> 0x02d0 }
            if (r11 != 0) goto L_0x025a
            r11 = 1
            goto L_0x025b
        L_0x025a:
            r11 = 0
        L_0x025b:
            com.google.android.gms.common.internal.Preconditions.checkArgument(r11)     // Catch:{ MalformedURLException -> 0x02d0 }
            java.util.List<java.lang.Long> r11 = r1.zzv     // Catch:{ MalformedURLException -> 0x02d0 }
            if (r11 == 0) goto L_0x0272
            com.google.android.gms.measurement.internal.zzgd r10 = r1.zzj     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzez r10 = r10.zzr()     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfb r10 = r10.zzf()     // Catch:{ MalformedURLException -> 0x02d0 }
            java.lang.String r11 = "Set uploading progress before finishing the previous upload"
            r10.zza(r11)     // Catch:{ MalformedURLException -> 0x02d0 }
            goto L_0x0279
        L_0x0272:
            java.util.ArrayList r11 = new java.util.ArrayList     // Catch:{ MalformedURLException -> 0x02d0 }
            r11.<init>(r10)     // Catch:{ MalformedURLException -> 0x02d0 }
            r1.zzv = r11     // Catch:{ MalformedURLException -> 0x02d0 }
        L_0x0279:
            com.google.android.gms.measurement.internal.zzgd r10 = r1.zzj     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfl r10 = r10.zzc()     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfp r10 = r10.zzd     // Catch:{ MalformedURLException -> 0x02d0 }
            r10.zza(r3)     // Catch:{ MalformedURLException -> 0x02d0 }
            java.lang.String r3 = "?"
            if (r8 <= 0) goto L_0x0290
            com.google.android.gms.internal.measurement.zzcc$zzg r3 = r7.zza((int) r2)     // Catch:{ MalformedURLException -> 0x02d0 }
            java.lang.String r3 = r3.zzx()     // Catch:{ MalformedURLException -> 0x02d0 }
        L_0x0290:
            com.google.android.gms.measurement.internal.zzgd r4 = r1.zzj     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzez r4 = r4.zzr()     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfb r4 = r4.zzx()     // Catch:{ MalformedURLException -> 0x02d0 }
            java.lang.String r7 = "Uploading data. app, uncompressed size, data"
            int r8 = r14.length     // Catch:{ MalformedURLException -> 0x02d0 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ MalformedURLException -> 0x02d0 }
            r4.zza(r7, r3, r8, r6)     // Catch:{ MalformedURLException -> 0x02d0 }
            r1.zzr = r0     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfc r11 = r17.zzd()     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzkm r0 = new com.google.android.gms.measurement.internal.zzkm     // Catch:{ MalformedURLException -> 0x02d0 }
            r0.<init>(r1, r5)     // Catch:{ MalformedURLException -> 0x02d0 }
            r11.zzd()     // Catch:{ MalformedURLException -> 0x02d0 }
            r11.zzak()     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r13)     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r14)     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r0)     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfw r3 = r11.zzq()     // Catch:{ MalformedURLException -> 0x02d0 }
            com.google.android.gms.measurement.internal.zzfg r4 = new com.google.android.gms.measurement.internal.zzfg     // Catch:{ MalformedURLException -> 0x02d0 }
            r15 = 0
            r10 = r4
            r12 = r5
            r16 = r0
            r10.<init>(r11, r12, r13, r14, r15, r16)     // Catch:{ MalformedURLException -> 0x02d0 }
            r3.zzb((java.lang.Runnable) r4)     // Catch:{ MalformedURLException -> 0x02d0 }
            goto L_0x0306
        L_0x02d0:
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzez r0 = r0.zzr()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzf()     // Catch:{ all -> 0x030c }
            java.lang.String r3 = "Failed to parse upload URL. Not uploading. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r5)     // Catch:{ all -> 0x030c }
            r0.zza(r3, r4, r9)     // Catch:{ all -> 0x030c }
            goto L_0x0306
        L_0x02e4:
            r1.zzx = r7     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzad r0 = r17.zze()     // Catch:{ all -> 0x030c }
            long r5 = com.google.android.gms.measurement.internal.zzy.zzv()     // Catch:{ all -> 0x030c }
            long r3 = r3 - r5
            java.lang.String r0 = r0.zza((long) r3)     // Catch:{ all -> 0x030c }
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x030c }
            if (r3 != 0) goto L_0x0306
            com.google.android.gms.measurement.internal.zzad r3 = r17.zze()     // Catch:{ all -> 0x030c }
            com.google.android.gms.measurement.internal.zzf r0 = r3.zzb(r0)     // Catch:{ all -> 0x030c }
            if (r0 == 0) goto L_0x0306
            r1.zza((com.google.android.gms.measurement.internal.zzf) r0)     // Catch:{ all -> 0x030c }
        L_0x0306:
            r1.zzs = r2
            r17.zzaa()
            return
        L_0x030c:
            r0 = move-exception
            r1.zzs = r2
            r17.zzaa()
            goto L_0x0314
        L_0x0313:
            throw r0
        L_0x0314:
            goto L_0x0313
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zzl():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:118:0x0265 A[SYNTHETIC, Splitter:B:118:0x0265] */
    /* JADX WARNING: Removed duplicated region for block: B:122:0x026c A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x027a A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x03c1 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:176:0x03c3 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x03c6 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:179:0x03c7 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:228:0x05c3 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:267:0x069a A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:318:0x0835 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:325:0x0851 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:326:0x086b A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:448:0x0bae A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:449:0x0bc1 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:451:0x0bc4 A[Catch:{ IOException -> 0x0229, all -> 0x0f71 }] */
    /* JADX WARNING: Removed duplicated region for block: B:452:0x0beb A[SYNTHETIC, Splitter:B:452:0x0beb] */
    /* JADX WARNING: Removed duplicated region for block: B:566:0x0f54  */
    /* JADX WARNING: Removed duplicated region for block: B:574:0x0f6b A[SYNTHETIC, Splitter:B:574:0x0f6b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean zza(java.lang.String r44, long r45) {
        /*
            r43 = this;
            r1 = r43
            java.lang.String r2 = "_npa"
            java.lang.String r3 = ""
            com.google.android.gms.measurement.internal.zzad r4 = r43.zze()
            r4.zzf()
            com.google.android.gms.measurement.internal.zzkk$zza r4 = new com.google.android.gms.measurement.internal.zzkk$zza     // Catch:{ all -> 0x0f71 }
            r5 = 0
            r4.<init>(r1, r5)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzad r6 = r43.zze()     // Catch:{ all -> 0x0f71 }
            long r7 = r1.zzx     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r4)     // Catch:{ all -> 0x0f71 }
            r6.zzd()     // Catch:{ all -> 0x0f71 }
            r6.zzak()     // Catch:{ all -> 0x0f71 }
            r10 = -1
            r12 = 2
            r13 = 0
            r14 = 1
            android.database.sqlite.SQLiteDatabase r15 = r6.c_()     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            boolean r16 = android.text.TextUtils.isEmpty(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            if (r16 == 0) goto L_0x0097
            int r16 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r16 == 0) goto L_0x0049
            java.lang.String[] r9 = new java.lang.String[r12]     // Catch:{ SQLiteException -> 0x0044 }
            java.lang.String r16 = java.lang.String.valueOf(r7)     // Catch:{ SQLiteException -> 0x0044 }
            r9[r13] = r16     // Catch:{ SQLiteException -> 0x0044 }
            java.lang.String r16 = java.lang.String.valueOf(r45)     // Catch:{ SQLiteException -> 0x0044 }
            r9[r14] = r16     // Catch:{ SQLiteException -> 0x0044 }
            goto L_0x0051
        L_0x0044:
            r0 = move-exception
            r7 = r0
            r9 = r5
            goto L_0x0252
        L_0x0049:
            java.lang.String[] r9 = new java.lang.String[r14]     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r16 = java.lang.String.valueOf(r45)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r9[r13] = r16     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
        L_0x0051:
            int r16 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r16 == 0) goto L_0x005a
            java.lang.String r16 = "rowid <= ? and "
            r45 = r16
            goto L_0x005c
        L_0x005a:
            r45 = r3
        L_0x005c:
            int r5 = r45.length()     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            int r5 = r5 + 148
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r12.<init>(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r5 = "select app_id, metadata_fingerprint from raw_events where "
            r12.append(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r5 = r45
            r12.append(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r5 = "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"
            r12.append(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r5 = r12.toString()     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            android.database.Cursor r5 = r15.rawQuery(r5, r9)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            boolean r9 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x0245 }
            if (r9 != 0) goto L_0x008b
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x008b:
            java.lang.String r9 = r5.getString(r13)     // Catch:{ SQLiteException -> 0x0245 }
            java.lang.String r12 = r5.getString(r14)     // Catch:{ SQLiteException -> 0x0242 }
            r5.close()     // Catch:{ SQLiteException -> 0x0242 }
            goto L_0x00ea
        L_0x0097:
            int r5 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r5 == 0) goto L_0x00a8
            r5 = 2
            java.lang.String[] r9 = new java.lang.String[r5]     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r5 = 0
            r9[r13] = r5     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r5 = java.lang.String.valueOf(r7)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r9[r14] = r5     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            goto L_0x00ad
        L_0x00a8:
            java.lang.String[] r9 = new java.lang.String[r14]     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r5 = 0
            r9[r13] = r5     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
        L_0x00ad:
            int r5 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r5 == 0) goto L_0x00b4
            java.lang.String r5 = " and rowid <= ?"
            goto L_0x00b5
        L_0x00b4:
            r5 = r3
        L_0x00b5:
            int r12 = r5.length()     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            int r12 = r12 + 84
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r10.<init>(r12)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r11 = "select metadata_fingerprint from raw_events where app_id = ?"
            r10.append(r11)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            r10.append(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r5 = " order by rowid limit 1;"
            r10.append(r5)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            java.lang.String r5 = r10.toString()     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            android.database.Cursor r5 = r15.rawQuery(r5, r9)     // Catch:{ SQLiteException -> 0x024e, all -> 0x0248 }
            boolean r9 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x0245 }
            if (r9 != 0) goto L_0x00e2
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x00e2:
            java.lang.String r12 = r5.getString(r13)     // Catch:{ SQLiteException -> 0x0245 }
            r5.close()     // Catch:{ SQLiteException -> 0x0245 }
            r9 = 0
        L_0x00ea:
            java.lang.String r16 = "raw_events_metadata"
            java.lang.String[] r10 = new java.lang.String[r14]     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r11 = "metadata"
            r10[r13] = r11     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r18 = "app_id = ? and metadata_fingerprint = ?"
            r11 = 2
            java.lang.String[] r14 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x0242 }
            r14[r13] = r9     // Catch:{ SQLiteException -> 0x0242 }
            r11 = 1
            r14[r11] = r12     // Catch:{ SQLiteException -> 0x0242 }
            r20 = 0
            r21 = 0
            java.lang.String r22 = "rowid"
            java.lang.String r23 = "2"
            r11 = r15
            r15 = r11
            r17 = r10
            r19 = r14
            android.database.Cursor r5 = r15.query(r16, r17, r18, r19, r20, r21, r22, r23)     // Catch:{ SQLiteException -> 0x0242 }
            boolean r10 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x0242 }
            if (r10 != 0) goto L_0x012c
            com.google.android.gms.measurement.internal.zzez r7 = r6.zzr()     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzf()     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r8 = "Raw event metadata record is missing. appId"
            java.lang.Object r10 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ SQLiteException -> 0x0242 }
            r7.zza(r8, r10)     // Catch:{ SQLiteException -> 0x0242 }
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x012c:
            byte[] r10 = r5.getBlob(r13)     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r14 = com.google.android.gms.internal.measurement.zzcc.zzg.zzbf()     // Catch:{ IOException -> 0x0229 }
            com.google.android.gms.internal.measurement.zzjm r10 = com.google.android.gms.measurement.internal.zzks.zza(r14, (byte[]) r10)     // Catch:{ IOException -> 0x0229 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r10 = (com.google.android.gms.internal.measurement.zzcc.zzg.zza) r10     // Catch:{ IOException -> 0x0229 }
            com.google.android.gms.internal.measurement.zzjj r10 = r10.zzv()     // Catch:{ IOException -> 0x0229 }
            com.google.android.gms.internal.measurement.zzib r10 = (com.google.android.gms.internal.measurement.zzib) r10     // Catch:{ IOException -> 0x0229 }
            com.google.android.gms.internal.measurement.zzcc$zzg r10 = (com.google.android.gms.internal.measurement.zzcc.zzg) r10     // Catch:{ IOException -> 0x0229 }
            boolean r14 = r5.moveToNext()     // Catch:{ SQLiteException -> 0x0242 }
            if (r14 == 0) goto L_0x0159
            com.google.android.gms.measurement.internal.zzez r14 = r6.zzr()     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.measurement.internal.zzfb r14 = r14.zzi()     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r15 = "Get multiple raw event metadata records, expected one. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ SQLiteException -> 0x0242 }
            r14.zza(r15, r13)     // Catch:{ SQLiteException -> 0x0242 }
        L_0x0159:
            r5.close()     // Catch:{ SQLiteException -> 0x0242 }
            r4.zza(r10)     // Catch:{ SQLiteException -> 0x0242 }
            r13 = -1
            int r10 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1))
            if (r10 == 0) goto L_0x017c
            java.lang.String r10 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?"
            r13 = 3
            java.lang.String[] r14 = new java.lang.String[r13]     // Catch:{ SQLiteException -> 0x0242 }
            r13 = 0
            r14[r13] = r9     // Catch:{ SQLiteException -> 0x0242 }
            r13 = 1
            r14[r13] = r12     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch:{ SQLiteException -> 0x0242 }
            r8 = 2
            r14[r8] = r7     // Catch:{ SQLiteException -> 0x0242 }
            r18 = r10
            r19 = r14
            goto L_0x018b
        L_0x017c:
            java.lang.String r7 = "app_id = ? and metadata_fingerprint = ?"
            r8 = 2
            java.lang.String[] r10 = new java.lang.String[r8]     // Catch:{ SQLiteException -> 0x0242 }
            r8 = 0
            r10[r8] = r9     // Catch:{ SQLiteException -> 0x0242 }
            r8 = 1
            r10[r8] = r12     // Catch:{ SQLiteException -> 0x0242 }
            r18 = r7
            r19 = r10
        L_0x018b:
            java.lang.String r16 = "raw_events"
            r7 = 4
            java.lang.String[] r7 = new java.lang.String[r7]     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r8 = "rowid"
            r10 = 0
            r7[r10] = r8     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r8 = "name"
            r10 = 1
            r7[r10] = r8     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r8 = "timestamp"
            r10 = 2
            r7[r10] = r8     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r8 = "data"
            r10 = 3
            r7[r10] = r8     // Catch:{ SQLiteException -> 0x0242 }
            r20 = 0
            r21 = 0
            java.lang.String r22 = "rowid"
            r23 = 0
            r15 = r11
            r17 = r7
            android.database.Cursor r5 = r15.query(r16, r17, r18, r19, r20, r21, r22, r23)     // Catch:{ SQLiteException -> 0x0242 }
            boolean r7 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x0242 }
            if (r7 != 0) goto L_0x01d1
            com.google.android.gms.measurement.internal.zzez r7 = r6.zzr()     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzi()     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r8 = "Raw event data disappeared while in transaction. appId"
            java.lang.Object r10 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ SQLiteException -> 0x0242 }
            r7.zza(r8, r10)     // Catch:{ SQLiteException -> 0x0242 }
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x01d1:
            r7 = 0
            long r10 = r5.getLong(r7)     // Catch:{ SQLiteException -> 0x0242 }
            r7 = 3
            byte[] r8 = r5.getBlob(r7)     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r7 = com.google.android.gms.internal.measurement.zzcc.zzc.zzj()     // Catch:{ IOException -> 0x020a }
            com.google.android.gms.internal.measurement.zzjm r7 = com.google.android.gms.measurement.internal.zzks.zza(r7, (byte[]) r8)     // Catch:{ IOException -> 0x020a }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r7 = (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r7     // Catch:{ IOException -> 0x020a }
            r8 = 1
            java.lang.String r12 = r5.getString(r8)     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r8 = r7.zza((java.lang.String) r12)     // Catch:{ SQLiteException -> 0x0242 }
            r12 = 2
            long r13 = r5.getLong(r12)     // Catch:{ SQLiteException -> 0x0242 }
            r8.zza((long) r13)     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.internal.measurement.zzjj r7 = r7.zzv()     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.internal.measurement.zzib r7 = (com.google.android.gms.internal.measurement.zzib) r7     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.internal.measurement.zzcc$zzc r7 = (com.google.android.gms.internal.measurement.zzcc.zzc) r7     // Catch:{ SQLiteException -> 0x0242 }
            boolean r7 = r4.zza(r10, r7)     // Catch:{ SQLiteException -> 0x0242 }
            if (r7 != 0) goto L_0x021d
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x020a:
            r0 = move-exception
            r7 = r0
            com.google.android.gms.measurement.internal.zzez r8 = r6.zzr()     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.measurement.internal.zzfb r8 = r8.zzf()     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r10 = "Data loss. Failed to merge raw event. appId"
            java.lang.Object r11 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ SQLiteException -> 0x0242 }
            r8.zza(r10, r11, r7)     // Catch:{ SQLiteException -> 0x0242 }
        L_0x021d:
            boolean r7 = r5.moveToNext()     // Catch:{ SQLiteException -> 0x0242 }
            if (r7 != 0) goto L_0x01d1
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x0229:
            r0 = move-exception
            r7 = r0
            com.google.android.gms.measurement.internal.zzez r8 = r6.zzr()     // Catch:{ SQLiteException -> 0x0242 }
            com.google.android.gms.measurement.internal.zzfb r8 = r8.zzf()     // Catch:{ SQLiteException -> 0x0242 }
            java.lang.String r10 = "Data loss. Failed to merge raw event metadata. appId"
            java.lang.Object r11 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ SQLiteException -> 0x0242 }
            r8.zza(r10, r11, r7)     // Catch:{ SQLiteException -> 0x0242 }
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
            goto L_0x0268
        L_0x0242:
            r0 = move-exception
            r7 = r0
            goto L_0x0252
        L_0x0245:
            r0 = move-exception
            r7 = r0
            goto L_0x0251
        L_0x0248:
            r0 = move-exception
            r2 = r1
            r5 = 0
        L_0x024b:
            r1 = r0
            goto L_0x0f69
        L_0x024e:
            r0 = move-exception
            r7 = r0
            r5 = 0
        L_0x0251:
            r9 = 0
        L_0x0252:
            com.google.android.gms.measurement.internal.zzez r6 = r6.zzr()     // Catch:{ all -> 0x0f65 }
            com.google.android.gms.measurement.internal.zzfb r6 = r6.zzf()     // Catch:{ all -> 0x0f65 }
            java.lang.String r8 = "Data loss. Error selecting raw event. appId"
            java.lang.Object r9 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ all -> 0x0f65 }
            r6.zza(r8, r9, r7)     // Catch:{ all -> 0x0f65 }
            if (r5 == 0) goto L_0x0268
            r5.close()     // Catch:{ all -> 0x0f71 }
        L_0x0268:
            java.util.List<com.google.android.gms.internal.measurement.zzcc$zzc> r5 = r4.zzc     // Catch:{ all -> 0x0f71 }
            if (r5 == 0) goto L_0x0277
            java.util.List<com.google.android.gms.internal.measurement.zzcc$zzc> r5 = r4.zzc     // Catch:{ all -> 0x0f71 }
            boolean r5 = r5.isEmpty()     // Catch:{ all -> 0x0f71 }
            if (r5 == 0) goto L_0x0275
            goto L_0x0277
        L_0x0275:
            r5 = 0
            goto L_0x0278
        L_0x0277:
            r5 = 1
        L_0x0278:
            if (r5 != 0) goto L_0x0f54
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r5 = r5.zzbl()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r5 = (com.google.android.gms.internal.measurement.zzib.zza) r5     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r5 = (com.google.android.gms.internal.measurement.zzcc.zzg.zza) r5     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r5 = r5.zzc()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzgd r6 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r6 = r6.zzb()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r7 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = r7.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r8 = com.google.android.gms.measurement.internal.zzaq.zzau     // Catch:{ all -> 0x0f71 }
            boolean r6 = r6.zze(r7, r8)     // Catch:{ all -> 0x0f71 }
            r7 = -1
            r8 = -1
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x02a3:
            java.util.List<com.google.android.gms.internal.measurement.zzcc$zzc> r9 = r4.zzc     // Catch:{ all -> 0x0f71 }
            int r9 = r9.size()     // Catch:{ all -> 0x0f71 }
            r18 = r3
            java.lang.String r3 = "_fr"
            r19 = r13
            java.lang.String r13 = "_et"
            r20 = r2
            java.lang.String r2 = "_e"
            r21 = r14
            r22 = r15
            if (r12 >= r9) goto L_0x08c7
            java.util.List<com.google.android.gms.internal.measurement.zzcc$zzc> r9 = r4.zzc     // Catch:{ all -> 0x0f71 }
            java.lang.Object r9 = r9.get(r12)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r9 = (com.google.android.gms.internal.measurement.zzcc.zzc) r9     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r9 = r9.zzbl()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r9 = (com.google.android.gms.internal.measurement.zzib.zza) r9     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r9 = (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfx r14 = r43.zzc()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r15 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r15 = r15.zzx()     // Catch:{ all -> 0x0f71 }
            r16 = r12
            java.lang.String r12 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r12 = r14.zzb(r15, r12)     // Catch:{ all -> 0x0f71 }
            java.lang.String r14 = "_err"
            if (r12 == 0) goto L_0x0360
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzi()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Dropping blacklisted raw event. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r12 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = r12.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.Object r12 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r12)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzgd r13 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzex r13 = r13.zzj()     // Catch:{ all -> 0x0f71 }
            java.lang.String r15 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            java.lang.String r13 = r13.zza((java.lang.String) r15)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r12, r13)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfx r2 = r43.zzc()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r3 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = r3.zzx()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.zzg(r3)     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x032d
            com.google.android.gms.measurement.internal.zzfx r2 = r43.zzc()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r3 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = r3.zzx()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.zzh(r3)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x032b
            goto L_0x032d
        L_0x032b:
            r2 = 0
            goto L_0x032e
        L_0x032d:
            r2 = 1
        L_0x032e:
            if (r2 != 0) goto L_0x0353
            java.lang.String r2 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r14.equals(r2)     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x0353
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzkw r24 = r2.zzi()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r2 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r25 = r2.zzx()     // Catch:{ all -> 0x0f71 }
            r26 = 11
            java.lang.String r27 = "_ev"
            java.lang.String r28 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            r29 = 0
            r24.zza((java.lang.String) r25, (int) r26, (java.lang.String) r27, (java.lang.String) r28, (int) r29)     // Catch:{ all -> 0x0f71 }
        L_0x0353:
            r26 = r6
            r12 = r16
            r13 = r19
            r14 = r21
            r15 = r22
            r6 = r5
            goto L_0x08bc
        L_0x0360:
            com.google.android.gms.measurement.internal.zzfx r12 = r43.zzc()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r15 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r15 = r15.zzx()     // Catch:{ all -> 0x0f71 }
            r26 = r6
            java.lang.String r6 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r6 = r12.zzc(r15, r6)     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = "_c"
            if (r6 != 0) goto L_0x03d2
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            java.lang.String r15 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r15)     // Catch:{ all -> 0x0f71 }
            r27 = r7
            int r7 = r15.hashCode()     // Catch:{ all -> 0x0f71 }
            r28 = r10
            r10 = 94660(0x171c4, float:1.32647E-40)
            if (r7 == r10) goto L_0x03ae
            r10 = 95025(0x17331, float:1.33158E-40)
            if (r7 == r10) goto L_0x03a4
            r10 = 95027(0x17333, float:1.33161E-40)
            if (r7 == r10) goto L_0x039a
            goto L_0x03b8
        L_0x039a:
            java.lang.String r7 = "_ui"
            boolean r7 = r15.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x03b8
            r7 = 1
            goto L_0x03b9
        L_0x03a4:
            java.lang.String r7 = "_ug"
            boolean r7 = r15.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x03b8
            r7 = 2
            goto L_0x03b9
        L_0x03ae:
            java.lang.String r7 = "_in"
            boolean r7 = r15.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x03b8
            r7 = 0
            goto L_0x03b9
        L_0x03b8:
            r7 = -1
        L_0x03b9:
            if (r7 == 0) goto L_0x03c3
            r10 = 1
            if (r7 == r10) goto L_0x03c3
            r10 = 2
            if (r7 == r10) goto L_0x03c3
            r7 = 0
            goto L_0x03c4
        L_0x03c3:
            r7 = 1
        L_0x03c4:
            if (r7 == 0) goto L_0x03c7
            goto L_0x03d6
        L_0x03c7:
            r30 = r5
            r31 = r8
            r10 = r11
            r29 = r13
            r13 = r2
            r11 = r3
            goto L_0x05c1
        L_0x03d2:
            r27 = r7
            r28 = r10
        L_0x03d6:
            r29 = r13
            r7 = 0
            r10 = 0
            r15 = 0
        L_0x03db:
            int r13 = r9.zzb()     // Catch:{ all -> 0x0f71 }
            r30 = r5
            java.lang.String r5 = "_r"
            if (r15 >= r13) goto L_0x044b
            com.google.android.gms.internal.measurement.zzcc$zze r13 = r9.zza((int) r15)     // Catch:{ all -> 0x0f71 }
            java.lang.String r13 = r13.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r13 = r12.equals(r13)     // Catch:{ all -> 0x0f71 }
            if (r13 == 0) goto L_0x0414
            com.google.android.gms.internal.measurement.zzcc$zze r5 = r9.zza((int) r15)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r5 = r5.zzbl()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r5 = (com.google.android.gms.internal.measurement.zzib.zza) r5     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r5 = (com.google.android.gms.internal.measurement.zzcc.zze.zza) r5     // Catch:{ all -> 0x0f71 }
            r13 = r8
            r7 = 1
            com.google.android.gms.internal.measurement.zzcc$zze$zza r5 = r5.zza((long) r7)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r5 = r5.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r5 = (com.google.android.gms.internal.measurement.zzib) r5     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r5 = (com.google.android.gms.internal.measurement.zzcc.zze) r5     // Catch:{ all -> 0x0f71 }
            r9.zza((int) r15, (com.google.android.gms.internal.measurement.zzcc.zze) r5)     // Catch:{ all -> 0x0f71 }
            r8 = r11
            r7 = 1
            goto L_0x0444
        L_0x0414:
            r13 = r8
            com.google.android.gms.internal.measurement.zzcc$zze r8 = r9.zza((int) r15)     // Catch:{ all -> 0x0f71 }
            java.lang.String r8 = r8.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r5 = r5.equals(r8)     // Catch:{ all -> 0x0f71 }
            if (r5 == 0) goto L_0x0443
            com.google.android.gms.internal.measurement.zzcc$zze r5 = r9.zza((int) r15)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r5 = r5.zzbl()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r5 = (com.google.android.gms.internal.measurement.zzib.zza) r5     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r5 = (com.google.android.gms.internal.measurement.zzcc.zze.zza) r5     // Catch:{ all -> 0x0f71 }
            r8 = r11
            r10 = 1
            com.google.android.gms.internal.measurement.zzcc$zze$zza r5 = r5.zza((long) r10)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r5 = r5.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r5 = (com.google.android.gms.internal.measurement.zzib) r5     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r5 = (com.google.android.gms.internal.measurement.zzcc.zze) r5     // Catch:{ all -> 0x0f71 }
            r9.zza((int) r15, (com.google.android.gms.internal.measurement.zzcc.zze) r5)     // Catch:{ all -> 0x0f71 }
            r10 = 1
            goto L_0x0444
        L_0x0443:
            r8 = r11
        L_0x0444:
            int r15 = r15 + 1
            r11 = r8
            r8 = r13
            r5 = r30
            goto L_0x03db
        L_0x044b:
            r13 = r8
            r8 = r11
            if (r7 != 0) goto L_0x0484
            if (r6 == 0) goto L_0x0484
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.String r11 = "Marking event as conversion"
            com.google.android.gms.measurement.internal.zzgd r15 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzex r15 = r15.zzj()     // Catch:{ all -> 0x0f71 }
            r31 = r13
            java.lang.String r13 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            java.lang.String r13 = r15.zza((java.lang.String) r13)     // Catch:{ all -> 0x0f71 }
            r7.zza(r11, r13)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r7 = com.google.android.gms.internal.measurement.zzcc.zze.zzm()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r7 = r7.zza((java.lang.String) r12)     // Catch:{ all -> 0x0f71 }
            r13 = r2
            r11 = r3
            r2 = 1
            com.google.android.gms.internal.measurement.zzcc$zze$zza r7 = r7.zza((long) r2)     // Catch:{ all -> 0x0f71 }
            r9.zza((com.google.android.gms.internal.measurement.zzcc.zze.zza) r7)     // Catch:{ all -> 0x0f71 }
            goto L_0x0488
        L_0x0484:
            r11 = r3
            r31 = r13
            r13 = r2
        L_0x0488:
            if (r10 != 0) goto L_0x04ba
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Marking event as real-time"
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzex r7 = r7.zzj()     // Catch:{ all -> 0x0f71 }
            java.lang.String r10 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = r7.zza((java.lang.String) r10)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r7)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r2 = com.google.android.gms.internal.measurement.zzcc.zze.zzm()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r2 = r2.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            r3 = r8
            r7 = 1
            com.google.android.gms.internal.measurement.zzcc$zze$zza r2 = r2.zza((long) r7)     // Catch:{ all -> 0x0f71 }
            r9.zza((com.google.android.gms.internal.measurement.zzcc.zze.zza) r2)     // Catch:{ all -> 0x0f71 }
            goto L_0x04bb
        L_0x04ba:
            r3 = r8
        L_0x04bb:
            com.google.android.gms.measurement.internal.zzad r32 = r43.zze()     // Catch:{ all -> 0x0f71 }
            long r33 = r43.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r2 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r35 = r2.zzx()     // Catch:{ all -> 0x0f71 }
            r36 = 0
            r37 = 0
            r38 = 0
            r39 = 0
            r40 = 1
            com.google.android.gms.measurement.internal.zzac r2 = r32.zza(r33, r35, r36, r37, r38, r39, r40)     // Catch:{ all -> 0x0f71 }
            long r7 = r2.zze     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r2 = r2.zzb()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r10 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r10 = r10.zzx()     // Catch:{ all -> 0x0f71 }
            int r2 = r2.zzc(r10)     // Catch:{ all -> 0x0f71 }
            r10 = r3
            long r2 = (long) r2     // Catch:{ all -> 0x0f71 }
            int r15 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r15 <= 0) goto L_0x04f3
            zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            goto L_0x04f5
        L_0x04f3:
            r19 = 1
        L_0x04f5:
            java.lang.String r2 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r2 = com.google.android.gms.measurement.internal.zzkw.zza((java.lang.String) r2)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x05c1
            if (r6 == 0) goto L_0x05c1
            com.google.android.gms.measurement.internal.zzad r32 = r43.zze()     // Catch:{ all -> 0x0f71 }
            long r33 = r43.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r2 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r35 = r2.zzx()     // Catch:{ all -> 0x0f71 }
            r36 = 0
            r37 = 0
            r38 = 1
            r39 = 0
            r40 = 0
            com.google.android.gms.measurement.internal.zzac r2 = r32.zza(r33, r35, r36, r37, r38, r39, r40)     // Catch:{ all -> 0x0f71 }
            long r2 = r2.zzc     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzgd r5 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r5 = r5.zzb()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r7 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = r7.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r8 = com.google.android.gms.measurement.internal.zzaq.zzm     // Catch:{ all -> 0x0f71 }
            int r5 = r5.zzb(r7, r8)     // Catch:{ all -> 0x0f71 }
            long r7 = (long) r5     // Catch:{ all -> 0x0f71 }
            int r5 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r5 <= 0) goto L_0x05c1
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzi()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Too many conversions. Not logging as conversion. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r5.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r5)     // Catch:{ all -> 0x0f71 }
            r2 = -1
            r3 = 0
            r5 = 0
            r7 = 0
        L_0x0553:
            int r8 = r9.zzb()     // Catch:{ all -> 0x0f71 }
            if (r7 >= r8) goto L_0x0580
            com.google.android.gms.internal.measurement.zzcc$zze r8 = r9.zza((int) r7)     // Catch:{ all -> 0x0f71 }
            java.lang.String r15 = r8.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r15 = r12.equals(r15)     // Catch:{ all -> 0x0f71 }
            if (r15 == 0) goto L_0x0572
            com.google.android.gms.internal.measurement.zzib$zza r2 = r8.zzbl()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r2 = (com.google.android.gms.internal.measurement.zzib.zza) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r2 = (com.google.android.gms.internal.measurement.zzcc.zze.zza) r2     // Catch:{ all -> 0x0f71 }
            r3 = r2
            r2 = r7
            goto L_0x057d
        L_0x0572:
            java.lang.String r8 = r8.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r8 = r14.equals(r8)     // Catch:{ all -> 0x0f71 }
            if (r8 == 0) goto L_0x057d
            r5 = 1
        L_0x057d:
            int r7 = r7 + 1
            goto L_0x0553
        L_0x0580:
            if (r5 == 0) goto L_0x0588
            if (r3 == 0) goto L_0x0588
            r9.zzb((int) r2)     // Catch:{ all -> 0x0f71 }
            goto L_0x05c1
        L_0x0588:
            if (r3 == 0) goto L_0x05a8
            java.lang.Object r3 = r3.clone()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r3 = (com.google.android.gms.internal.measurement.zzib.zza) r3     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r3 = (com.google.android.gms.internal.measurement.zzcc.zze.zza) r3     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze$zza r3 = r3.zza((java.lang.String) r14)     // Catch:{ all -> 0x0f71 }
            r7 = 10
            com.google.android.gms.internal.measurement.zzcc$zze$zza r3 = r3.zza((long) r7)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r3 = r3.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r3 = (com.google.android.gms.internal.measurement.zzib) r3     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r3 = (com.google.android.gms.internal.measurement.zzcc.zze) r3     // Catch:{ all -> 0x0f71 }
            r9.zza((int) r2, (com.google.android.gms.internal.measurement.zzcc.zze) r3)     // Catch:{ all -> 0x0f71 }
            goto L_0x05c1
        L_0x05a8:
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Did not find conversion parameter. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r5.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r5)     // Catch:{ all -> 0x0f71 }
        L_0x05c1:
            if (r6 == 0) goto L_0x0684
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch:{ all -> 0x0f71 }
            java.util.List r3 = r9.zza()     // Catch:{ all -> 0x0f71 }
            r2.<init>(r3)     // Catch:{ all -> 0x0f71 }
            r3 = 0
            r5 = -1
            r6 = -1
        L_0x05cf:
            int r7 = r2.size()     // Catch:{ all -> 0x0f71 }
            java.lang.String r8 = "currency"
            java.lang.String r14 = "value"
            if (r3 >= r7) goto L_0x05ff
            java.lang.Object r7 = r2.get(r3)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r7 = (com.google.android.gms.internal.measurement.zzcc.zze) r7     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = r7.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r7 = r14.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x05eb
            r5 = r3
            goto L_0x05fc
        L_0x05eb:
            java.lang.Object r7 = r2.get(r3)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r7 = (com.google.android.gms.internal.measurement.zzcc.zze) r7     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = r7.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r7 = r8.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x05fc
            r6 = r3
        L_0x05fc:
            int r3 = r3 + 1
            goto L_0x05cf
        L_0x05ff:
            r3 = -1
            if (r5 == r3) goto L_0x0685
            java.lang.Object r3 = r2.get(r5)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r3 = (com.google.android.gms.internal.measurement.zzcc.zze) r3     // Catch:{ all -> 0x0f71 }
            boolean r3 = r3.zze()     // Catch:{ all -> 0x0f71 }
            if (r3 != 0) goto L_0x0635
            java.lang.Object r3 = r2.get(r5)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r3 = (com.google.android.gms.internal.measurement.zzcc.zze) r3     // Catch:{ all -> 0x0f71 }
            boolean r3 = r3.zzi()     // Catch:{ all -> 0x0f71 }
            if (r3 != 0) goto L_0x0635
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzk()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Value must be specified with a numeric type."
            r2.zza(r3)     // Catch:{ all -> 0x0f71 }
            r9.zzb((int) r5)     // Catch:{ all -> 0x0f71 }
            zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (java.lang.String) r12)     // Catch:{ all -> 0x0f71 }
            r2 = 18
            zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (int) r2, (java.lang.String) r14)     // Catch:{ all -> 0x0f71 }
            goto L_0x0684
        L_0x0635:
            r3 = -1
            if (r6 != r3) goto L_0x063b
            r2 = 1
            r7 = 3
            goto L_0x0667
        L_0x063b:
            java.lang.Object r2 = r2.get(r6)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r2 = (com.google.android.gms.internal.measurement.zzcc.zze) r2     // Catch:{ all -> 0x0f71 }
            java.lang.String r2 = r2.zzd()     // Catch:{ all -> 0x0f71 }
            int r6 = r2.length()     // Catch:{ all -> 0x0f71 }
            r7 = 3
            if (r6 == r7) goto L_0x064e
        L_0x064c:
            r2 = 1
            goto L_0x0667
        L_0x064e:
            r6 = 0
        L_0x064f:
            int r14 = r2.length()     // Catch:{ all -> 0x0f71 }
            if (r6 >= r14) goto L_0x0666
            int r14 = r2.codePointAt(r6)     // Catch:{ all -> 0x0f71 }
            boolean r15 = java.lang.Character.isLetter(r14)     // Catch:{ all -> 0x0f71 }
            if (r15 != 0) goto L_0x0660
            goto L_0x064c
        L_0x0660:
            int r14 = java.lang.Character.charCount(r14)     // Catch:{ all -> 0x0f71 }
            int r6 = r6 + r14
            goto L_0x064f
        L_0x0666:
            r2 = 0
        L_0x0667:
            if (r2 == 0) goto L_0x0686
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzk()     // Catch:{ all -> 0x0f71 }
            java.lang.String r6 = "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."
            r2.zza(r6)     // Catch:{ all -> 0x0f71 }
            r9.zzb((int) r5)     // Catch:{ all -> 0x0f71 }
            zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (java.lang.String) r12)     // Catch:{ all -> 0x0f71 }
            r2 = 19
            zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (int) r2, (java.lang.String) r8)     // Catch:{ all -> 0x0f71 }
            goto L_0x0686
        L_0x0684:
            r3 = -1
        L_0x0685:
            r7 = 3
        L_0x0686:
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r2 = r2.zzb()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r5.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r6 = com.google.android.gms.measurement.internal.zzaq.zzat     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.zze(r5, r6)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x0835
            java.lang.String r2 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            r5 = r13
            boolean r2 = r5.equals(r2)     // Catch:{ all -> 0x0f71 }
            r12 = 1000(0x3e8, double:4.94E-321)
            if (r2 == 0) goto L_0x0700
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r2 = r9.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r2 = (com.google.android.gms.internal.measurement.zzib) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r2 = (com.google.android.gms.internal.measurement.zzcc.zzc) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r2 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r2, (java.lang.String) r11)     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x06f6
            if (r10 == 0) goto L_0x06ea
            long r14 = r10.zzf()     // Catch:{ all -> 0x0f71 }
            long r24 = r9.zzf()     // Catch:{ all -> 0x0f71 }
            long r14 = r14 - r24
            long r14 = java.lang.Math.abs(r14)     // Catch:{ all -> 0x0f71 }
            int r2 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r2 > 0) goto L_0x06ea
            java.lang.Object r2 = r10.clone()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r2 = (com.google.android.gms.internal.measurement.zzib.zza) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r2 = (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2     // Catch:{ all -> 0x0f71 }
            boolean r6 = r1.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2)     // Catch:{ all -> 0x0f71 }
            if (r6 == 0) goto L_0x06ea
            r6 = r30
            r8 = r31
            r6.zza((int) r8, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2)     // Catch:{ all -> 0x0f71 }
            r7 = r27
            r14 = r29
        L_0x06e5:
            r10 = 0
        L_0x06e6:
            r28 = 0
            goto L_0x083f
        L_0x06ea:
            r6 = r30
            r8 = r31
            r28 = r9
            r7 = r21
            r14 = r29
            goto L_0x083f
        L_0x06f6:
            r6 = r30
            r8 = r31
            r11 = r27
            r14 = r29
            goto L_0x083e
        L_0x0700:
            r6 = r30
            r8 = r31
            java.lang.String r2 = "_vs"
            java.lang.String r11 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.equals(r11)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x0758
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r2 = r9.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r2 = (com.google.android.gms.internal.measurement.zzib) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r2 = (com.google.android.gms.internal.measurement.zzcc.zzc) r2     // Catch:{ all -> 0x0f71 }
            r14 = r29
            com.google.android.gms.internal.measurement.zzcc$zze r2 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r2, (java.lang.String) r14)     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x0754
            if (r28 == 0) goto L_0x074c
            long r10 = r28.zzf()     // Catch:{ all -> 0x0f71 }
            long r24 = r9.zzf()     // Catch:{ all -> 0x0f71 }
            long r10 = r10 - r24
            long r10 = java.lang.Math.abs(r10)     // Catch:{ all -> 0x0f71 }
            int r2 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r2 > 0) goto L_0x074c
            java.lang.Object r2 = r28.clone()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r2 = (com.google.android.gms.internal.measurement.zzib.zza) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r2 = (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2     // Catch:{ all -> 0x0f71 }
            boolean r10 = r1.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9)     // Catch:{ all -> 0x0f71 }
            if (r10 == 0) goto L_0x074c
            r11 = r27
            r6.zza((int) r11, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2)     // Catch:{ all -> 0x0f71 }
            r7 = r11
            goto L_0x06e5
        L_0x074c:
            r11 = r27
            r10 = r9
            r7 = r11
            r8 = r21
            goto L_0x083f
        L_0x0754:
            r11 = r27
            goto L_0x083e
        L_0x0758:
            r11 = r27
            r14 = r29
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r2 = r2.zzb()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r12 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = r12.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r13 = com.google.android.gms.measurement.internal.zzaq.zzbr     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.zze(r12, r13)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x083e
            java.lang.String r2 = "_ab"
            java.lang.String r12 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.equals(r12)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x083e
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r2 = r9.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r2 = (com.google.android.gms.internal.measurement.zzib) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r2 = (com.google.android.gms.internal.measurement.zzcc.zzc) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r2 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r2, (java.lang.String) r14)     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x083e
            if (r28 == 0) goto L_0x083e
            long r12 = r28.zzf()     // Catch:{ all -> 0x0f71 }
            long r24 = r9.zzf()     // Catch:{ all -> 0x0f71 }
            long r12 = r12 - r24
            long r12 = java.lang.Math.abs(r12)     // Catch:{ all -> 0x0f71 }
            r24 = 4000(0xfa0, double:1.9763E-320)
            int r2 = (r12 > r24 ? 1 : (r12 == r24 ? 0 : -1))
            if (r2 > 0) goto L_0x083e
            java.lang.Object r2 = r28.clone()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib$zza r2 = (com.google.android.gms.internal.measurement.zzib.zza) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r2 = (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2     // Catch:{ all -> 0x0f71 }
            r1.zzb((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9)     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = r2.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r12 = r5.equals(r12)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.common.internal.Preconditions.checkArgument(r12)     // Catch:{ all -> 0x0f71 }
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r12 = r2.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r12 = (com.google.android.gms.internal.measurement.zzib) r12     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r12 = (com.google.android.gms.internal.measurement.zzcc.zzc) r12     // Catch:{ all -> 0x0f71 }
            java.lang.String r13 = "_sn"
            com.google.android.gms.internal.measurement.zzcc$zze r12 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r12, (java.lang.String) r13)     // Catch:{ all -> 0x0f71 }
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r13 = r2.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r13 = (com.google.android.gms.internal.measurement.zzib) r13     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r13 = (com.google.android.gms.internal.measurement.zzcc.zzc) r13     // Catch:{ all -> 0x0f71 }
            java.lang.String r15 = "_sc"
            com.google.android.gms.internal.measurement.zzcc$zze r13 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r13, (java.lang.String) r15)     // Catch:{ all -> 0x0f71 }
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r15 = r2.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r15 = (com.google.android.gms.internal.measurement.zzib) r15     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r15 = (com.google.android.gms.internal.measurement.zzcc.zzc) r15     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "_si"
            com.google.android.gms.internal.measurement.zzcc$zze r3 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r15, (java.lang.String) r3)     // Catch:{ all -> 0x0f71 }
            if (r12 == 0) goto L_0x07f3
            java.lang.String r12 = r12.zzd()     // Catch:{ all -> 0x0f71 }
            goto L_0x07f5
        L_0x07f3:
            r12 = r18
        L_0x07f5:
            boolean r15 = android.text.TextUtils.isEmpty(r12)     // Catch:{ all -> 0x0f71 }
            if (r15 != 0) goto L_0x0804
            com.google.android.gms.measurement.internal.zzks r15 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = "_sn"
            r15.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (java.lang.String) r7, (java.lang.Object) r12)     // Catch:{ all -> 0x0f71 }
        L_0x0804:
            if (r13 == 0) goto L_0x080b
            java.lang.String r7 = r13.zzd()     // Catch:{ all -> 0x0f71 }
            goto L_0x080d
        L_0x080b:
            r7 = r18
        L_0x080d:
            boolean r12 = android.text.TextUtils.isEmpty(r7)     // Catch:{ all -> 0x0f71 }
            if (r12 != 0) goto L_0x081c
            com.google.android.gms.measurement.internal.zzks r12 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            java.lang.String r13 = "_sc"
            r12.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (java.lang.String) r13, (java.lang.Object) r7)     // Catch:{ all -> 0x0f71 }
        L_0x081c:
            if (r3 == 0) goto L_0x082f
            com.google.android.gms.measurement.internal.zzks r7 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = "_si"
            long r24 = r3.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.Long r3 = java.lang.Long.valueOf(r24)     // Catch:{ all -> 0x0f71 }
            r7.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9, (java.lang.String) r12, (java.lang.Object) r3)     // Catch:{ all -> 0x0f71 }
        L_0x082f:
            r6.zza((int) r11, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r2)     // Catch:{ all -> 0x0f71 }
            r7 = r11
            goto L_0x06e6
        L_0x0835:
            r5 = r13
            r11 = r27
            r14 = r29
            r6 = r30
            r8 = r31
        L_0x083e:
            r7 = r11
        L_0x083f:
            if (r26 != 0) goto L_0x08a0
            java.lang.String r2 = r9.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r5.equals(r2)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x08a0
            int r2 = r9.zzb()     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x086b
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzi()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Engagement event does not contain any parameters. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r5.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r5)     // Catch:{ all -> 0x0f71 }
            goto L_0x08a0
        L_0x086b:
            com.google.android.gms.measurement.internal.zzks r2 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r3 = r9.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r3 = (com.google.android.gms.internal.measurement.zzib) r3     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r3 = (com.google.android.gms.internal.measurement.zzcc.zzc) r3     // Catch:{ all -> 0x0f71 }
            java.lang.Object r2 = r2.zzb(r3, r14)     // Catch:{ all -> 0x0f71 }
            java.lang.Long r2 = (java.lang.Long) r2     // Catch:{ all -> 0x0f71 }
            if (r2 != 0) goto L_0x0899
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzi()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Engagement event does not include duration. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r5.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r5)     // Catch:{ all -> 0x0f71 }
            goto L_0x08a0
        L_0x0899:
            long r2 = r2.longValue()     // Catch:{ all -> 0x0f71 }
            long r2 = r22 + r2
            goto L_0x08a2
        L_0x08a0:
            r2 = r22
        L_0x08a2:
            java.util.List<com.google.android.gms.internal.measurement.zzcc$zzc> r5 = r4.zzc     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r11 = r9.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r11 = (com.google.android.gms.internal.measurement.zzib) r11     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r11 = (com.google.android.gms.internal.measurement.zzcc.zzc) r11     // Catch:{ all -> 0x0f71 }
            r12 = r16
            r5.set(r12, r11)     // Catch:{ all -> 0x0f71 }
            int r14 = r21 + 1
            r6.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r9)     // Catch:{ all -> 0x0f71 }
            r15 = r2
            r11 = r10
            r13 = r19
            r10 = r28
        L_0x08bc:
            int r12 = r12 + 1
            r5 = r6
            r3 = r18
            r2 = r20
            r6 = r26
            goto L_0x02a3
        L_0x08c7:
            r11 = r3
            r26 = r6
            r14 = r13
            r6 = r5
            r5 = r2
            if (r26 == 0) goto L_0x0924
            r2 = r21
            r15 = r22
            r3 = 0
        L_0x08d4:
            if (r3 >= r2) goto L_0x0922
            com.google.android.gms.internal.measurement.zzcc$zzc r7 = r6.zzb((int) r3)     // Catch:{ all -> 0x0f71 }
            java.lang.String r8 = r7.zzc()     // Catch:{ all -> 0x0f71 }
            boolean r8 = r5.equals(r8)     // Catch:{ all -> 0x0f71 }
            if (r8 == 0) goto L_0x08f5
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r8 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r7, (java.lang.String) r11)     // Catch:{ all -> 0x0f71 }
            if (r8 == 0) goto L_0x08f5
            r6.zzc((int) r3)     // Catch:{ all -> 0x0f71 }
            int r2 = r2 + -1
            int r3 = r3 + -1
            goto L_0x091f
        L_0x08f5:
            r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r7 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzc) r7, (java.lang.String) r14)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x091f
            boolean r8 = r7.zze()     // Catch:{ all -> 0x0f71 }
            if (r8 == 0) goto L_0x090d
            long r7 = r7.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x0f71 }
            goto L_0x090e
        L_0x090d:
            r7 = 0
        L_0x090e:
            if (r7 == 0) goto L_0x091f
            long r8 = r7.longValue()     // Catch:{ all -> 0x0f71 }
            r12 = 0
            int r10 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r10 <= 0) goto L_0x091f
            long r7 = r7.longValue()     // Catch:{ all -> 0x0f71 }
            long r15 = r15 + r7
        L_0x091f:
            r7 = 1
            int r3 = r3 + r7
            goto L_0x08d4
        L_0x0922:
            r2 = r15
            goto L_0x0926
        L_0x0924:
            r2 = r22
        L_0x0926:
            r5 = 0
            r1.zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r6, (long) r2, (boolean) r5)     // Catch:{ all -> 0x0f71 }
            java.util.List r5 = r6.zza()     // Catch:{ all -> 0x0f71 }
            java.util.Iterator r5 = r5.iterator()     // Catch:{ all -> 0x0f71 }
        L_0x0932:
            boolean r7 = r5.hasNext()     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x094c
            java.lang.Object r7 = r5.next()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r7 = (com.google.android.gms.internal.measurement.zzcc.zzc) r7     // Catch:{ all -> 0x0f71 }
            java.lang.String r8 = "_s"
            java.lang.String r7 = r7.zzc()     // Catch:{ all -> 0x0f71 }
            boolean r7 = r8.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x0932
            r5 = 1
            goto L_0x094d
        L_0x094c:
            r5 = 0
        L_0x094d:
            java.lang.String r7 = "_se"
            if (r5 == 0) goto L_0x095c
            com.google.android.gms.measurement.internal.zzad r5 = r43.zze()     // Catch:{ all -> 0x0f71 }
            java.lang.String r8 = r6.zzj()     // Catch:{ all -> 0x0f71 }
            r5.zzb((java.lang.String) r8, (java.lang.String) r7)     // Catch:{ all -> 0x0f71 }
        L_0x095c:
            java.lang.String r5 = "_sid"
            int r5 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r6, (java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            if (r5 < 0) goto L_0x0966
            r5 = 1
            goto L_0x0967
        L_0x0966:
            r5 = 0
        L_0x0967:
            if (r5 == 0) goto L_0x096e
            r5 = 1
            r1.zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r6, (long) r2, (boolean) r5)     // Catch:{ all -> 0x0f71 }
            goto L_0x0990
        L_0x096e:
            int r2 = com.google.android.gms.measurement.internal.zzks.zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r6, (java.lang.String) r7)     // Catch:{ all -> 0x0f71 }
            if (r2 < 0) goto L_0x0990
            r6.zze((int) r2)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r2 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r2 = r2.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = "Session engagement user property is in the bundle without session ID. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r5.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            r2.zza(r3, r5)     // Catch:{ all -> 0x0f71 }
        L_0x0990:
            com.google.android.gms.measurement.internal.zzks r2 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r3 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r3 = r3.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = "Checking account type status for ad personalization signals"
            r3.zza(r5)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfx r3 = r2.zzj()     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r6.zzj()     // Catch:{ all -> 0x0f71 }
            boolean r3 = r3.zze(r5)     // Catch:{ all -> 0x0f71 }
            if (r3 == 0) goto L_0x0a21
            com.google.android.gms.measurement.internal.zzad r3 = r2.zzi()     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = r6.zzj()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzf r3 = r3.zzb(r5)     // Catch:{ all -> 0x0f71 }
            if (r3 == 0) goto L_0x0a21
            boolean r3 = r3.zzaf()     // Catch:{ all -> 0x0f71 }
            if (r3 == 0) goto L_0x0a21
            com.google.android.gms.measurement.internal.zzai r3 = r2.zzl()     // Catch:{ all -> 0x0f71 }
            boolean r3 = r3.zzj()     // Catch:{ all -> 0x0f71 }
            if (r3 == 0) goto L_0x0a21
            com.google.android.gms.measurement.internal.zzez r3 = r2.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r3 = r3.zzw()     // Catch:{ all -> 0x0f71 }
            java.lang.String r5 = "Turning off ad personalization due to account type"
            r3.zza(r5)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r3 = com.google.android.gms.internal.measurement.zzcc.zzk.zzj()     // Catch:{ all -> 0x0f71 }
            r5 = r20
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r3 = r3.zza((java.lang.String) r5)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzai r2 = r2.zzl()     // Catch:{ all -> 0x0f71 }
            long r7 = r2.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r2 = r3.zza((long) r7)     // Catch:{ all -> 0x0f71 }
            r7 = 1
            com.google.android.gms.internal.measurement.zzcc$zzk$zza r2 = r2.zzb((long) r7)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r2 = r2.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r2 = (com.google.android.gms.internal.measurement.zzib) r2     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzk r2 = (com.google.android.gms.internal.measurement.zzcc.zzk) r2     // Catch:{ all -> 0x0f71 }
            r3 = 0
        L_0x09ff:
            int r7 = r6.zze()     // Catch:{ all -> 0x0f71 }
            if (r3 >= r7) goto L_0x0a1b
            com.google.android.gms.internal.measurement.zzcc$zzk r7 = r6.zzd((int) r3)     // Catch:{ all -> 0x0f71 }
            java.lang.String r7 = r7.zzc()     // Catch:{ all -> 0x0f71 }
            boolean r7 = r5.equals(r7)     // Catch:{ all -> 0x0f71 }
            if (r7 == 0) goto L_0x0a18
            r6.zza((int) r3, (com.google.android.gms.internal.measurement.zzcc.zzk) r2)     // Catch:{ all -> 0x0f71 }
            r3 = 1
            goto L_0x0a1c
        L_0x0a18:
            int r3 = r3 + 1
            goto L_0x09ff
        L_0x0a1b:
            r3 = 0
        L_0x0a1c:
            if (r3 != 0) goto L_0x0a21
            r6.zza((com.google.android.gms.internal.measurement.zzcc.zzk) r2)     // Catch:{ all -> 0x0f71 }
        L_0x0a21:
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r2 = r2.zzb()     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = r6.zzj()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r5 = com.google.android.gms.measurement.internal.zzaq.zzbm     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.zze(r3, r5)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x0a36
            zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r6)     // Catch:{ all -> 0x0f71 }
        L_0x0a36:
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r2 = r6.zzm()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzo r7 = r43.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.String r8 = r6.zzj()     // Catch:{ all -> 0x0f71 }
            java.util.List r9 = r6.zza()     // Catch:{ all -> 0x0f71 }
            java.util.List r10 = r6.zzd()     // Catch:{ all -> 0x0f71 }
            long r11 = r6.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x0f71 }
            long r12 = r6.zzg()     // Catch:{ all -> 0x0f71 }
            java.lang.Long r12 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x0f71 }
            java.util.List r3 = r7.zza(r8, r9, r10, r11, r12)     // Catch:{ all -> 0x0f71 }
            r2.zzc((java.lang.Iterable<? extends com.google.android.gms.internal.measurement.zzcc.zza>) r3)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzgd r2 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzy r2 = r2.zzb()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r3 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r3 = r3.zzx()     // Catch:{ all -> 0x0f71 }
            boolean r2 = r2.zzh(r3)     // Catch:{ all -> 0x0f71 }
            if (r2 == 0) goto L_0x0dac
            java.util.HashMap r2 = new java.util.HashMap     // Catch:{ all -> 0x0da7 }
            r2.<init>()     // Catch:{ all -> 0x0da7 }
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ all -> 0x0da7 }
            r3.<init>()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzgd r5 = r1.zzj     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzkw r5 = r5.zzi()     // Catch:{ all -> 0x0da7 }
            java.security.SecureRandom r5 = r5.zzh()     // Catch:{ all -> 0x0da7 }
            r7 = 0
        L_0x0a88:
            int r8 = r6.zzb()     // Catch:{ all -> 0x0da7 }
            if (r7 >= r8) goto L_0x0d71
            com.google.android.gms.internal.measurement.zzcc$zzc r8 = r6.zzb((int) r7)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib$zza r8 = r8.zzbl()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib$zza r8 = (com.google.android.gms.internal.measurement.zzib.zza) r8     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzc$zza r8 = (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8     // Catch:{ all -> 0x0da7 }
            java.lang.String r9 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            java.lang.String r10 = "_ep"
            boolean r9 = r9.equals(r10)     // Catch:{ all -> 0x0da7 }
            java.lang.String r10 = "_sr"
            if (r9 == 0) goto L_0x0b1e
            com.google.android.gms.measurement.internal.zzks r9 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r11 = r8.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r11 = (com.google.android.gms.internal.measurement.zzib) r11     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r11 = (com.google.android.gms.internal.measurement.zzcc.zzc) r11     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = "_en"
            java.lang.Object r9 = r9.zzb(r11, r12)     // Catch:{ all -> 0x0f71 }
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ all -> 0x0f71 }
            java.lang.Object r11 = r2.get(r9)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzak r11 = (com.google.android.gms.measurement.internal.zzak) r11     // Catch:{ all -> 0x0f71 }
            if (r11 != 0) goto L_0x0ad5
            com.google.android.gms.measurement.internal.zzad r11 = r43.zze()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r12 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = r12.zzx()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzak r11 = r11.zza((java.lang.String) r12, (java.lang.String) r9)     // Catch:{ all -> 0x0f71 }
            r2.put(r9, r11)     // Catch:{ all -> 0x0f71 }
        L_0x0ad5:
            java.lang.Long r9 = r11.zzi     // Catch:{ all -> 0x0f71 }
            if (r9 != 0) goto L_0x0b14
            java.lang.Long r9 = r11.zzj     // Catch:{ all -> 0x0f71 }
            long r12 = r9.longValue()     // Catch:{ all -> 0x0f71 }
            r14 = 1
            int r9 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r9 <= 0) goto L_0x0aee
            com.google.android.gms.measurement.internal.zzks r9 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            java.lang.Long r12 = r11.zzj     // Catch:{ all -> 0x0f71 }
            r9.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8, (java.lang.String) r10, (java.lang.Object) r12)     // Catch:{ all -> 0x0f71 }
        L_0x0aee:
            java.lang.Boolean r9 = r11.zzk     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0b09
            java.lang.Boolean r9 = r11.zzk     // Catch:{ all -> 0x0f71 }
            boolean r9 = r9.booleanValue()     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0b09
            com.google.android.gms.measurement.internal.zzks r9 = r43.zzh()     // Catch:{ all -> 0x0f71 }
            java.lang.String r10 = "_efs"
            r11 = 1
            java.lang.Long r13 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x0f71 }
            r9.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8, (java.lang.String) r10, (java.lang.Object) r13)     // Catch:{ all -> 0x0f71 }
        L_0x0b09:
            com.google.android.gms.internal.measurement.zzjj r9 = r8.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r9 = (com.google.android.gms.internal.measurement.zzib) r9     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r9 = (com.google.android.gms.internal.measurement.zzcc.zzc) r9     // Catch:{ all -> 0x0f71 }
            r3.add(r9)     // Catch:{ all -> 0x0f71 }
        L_0x0b14:
            r6.zza((int) r7, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8)     // Catch:{ all -> 0x0f71 }
        L_0x0b17:
            r44 = r4
            r15 = r5
            r1 = r6
            r4 = r7
            goto L_0x0d67
        L_0x0b1e:
            com.google.android.gms.measurement.internal.zzfx r9 = r43.zzc()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzg r11 = r4.zza     // Catch:{ all -> 0x0da7 }
            java.lang.String r11 = r11.zzx()     // Catch:{ all -> 0x0da7 }
            long r11 = r9.zzf(r11)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzgd r9 = r1.zzj     // Catch:{ all -> 0x0da7 }
            r9.zzi()     // Catch:{ all -> 0x0da7 }
            long r13 = r8.zzf()     // Catch:{ all -> 0x0da7 }
            long r13 = com.google.android.gms.measurement.internal.zzkw.zza((long) r13, (long) r11)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzjj r9 = r8.zzv()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib r9 = (com.google.android.gms.internal.measurement.zzib) r9     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzc r9 = (com.google.android.gms.internal.measurement.zzcc.zzc) r9     // Catch:{ all -> 0x0da7 }
            java.lang.String r15 = "_dbg"
            r20 = r11
            r16 = 1
            java.lang.Long r11 = java.lang.Long.valueOf(r16)     // Catch:{ all -> 0x0da7 }
            boolean r12 = android.text.TextUtils.isEmpty(r15)     // Catch:{ all -> 0x0da7 }
            if (r12 != 0) goto L_0x0bab
            if (r11 != 0) goto L_0x0b54
            goto L_0x0bab
        L_0x0b54:
            java.util.List r9 = r9.zza()     // Catch:{ all -> 0x0f71 }
            java.util.Iterator r9 = r9.iterator()     // Catch:{ all -> 0x0f71 }
        L_0x0b5c:
            boolean r12 = r9.hasNext()     // Catch:{ all -> 0x0f71 }
            if (r12 == 0) goto L_0x0bab
            java.lang.Object r12 = r9.next()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zze r12 = (com.google.android.gms.internal.measurement.zzcc.zze) r12     // Catch:{ all -> 0x0f71 }
            r44 = r9
            java.lang.String r9 = r12.zzb()     // Catch:{ all -> 0x0f71 }
            boolean r9 = r15.equals(r9)     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0ba8
            boolean r9 = r11 instanceof java.lang.Long     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0b86
            long r15 = r12.zzf()     // Catch:{ all -> 0x0f71 }
            java.lang.Long r9 = java.lang.Long.valueOf(r15)     // Catch:{ all -> 0x0f71 }
            boolean r9 = r11.equals(r9)     // Catch:{ all -> 0x0f71 }
            if (r9 != 0) goto L_0x0ba6
        L_0x0b86:
            boolean r9 = r11 instanceof java.lang.String     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0b94
            java.lang.String r9 = r12.zzd()     // Catch:{ all -> 0x0f71 }
            boolean r9 = r11.equals(r9)     // Catch:{ all -> 0x0f71 }
            if (r9 != 0) goto L_0x0ba6
        L_0x0b94:
            boolean r9 = r11 instanceof java.lang.Double     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0bab
            double r15 = r12.zzj()     // Catch:{ all -> 0x0f71 }
            java.lang.Double r9 = java.lang.Double.valueOf(r15)     // Catch:{ all -> 0x0f71 }
            boolean r9 = r11.equals(r9)     // Catch:{ all -> 0x0f71 }
            if (r9 == 0) goto L_0x0bab
        L_0x0ba6:
            r9 = 1
            goto L_0x0bac
        L_0x0ba8:
            r9 = r44
            goto L_0x0b5c
        L_0x0bab:
            r9 = 0
        L_0x0bac:
            if (r9 != 0) goto L_0x0bc1
            com.google.android.gms.measurement.internal.zzfx r9 = r43.zzc()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzg r11 = r4.zza     // Catch:{ all -> 0x0f71 }
            java.lang.String r11 = r11.zzx()     // Catch:{ all -> 0x0f71 }
            java.lang.String r12 = r8.zzd()     // Catch:{ all -> 0x0f71 }
            int r9 = r9.zzd(r11, r12)     // Catch:{ all -> 0x0f71 }
            goto L_0x0bc2
        L_0x0bc1:
            r9 = 1
        L_0x0bc2:
            if (r9 > 0) goto L_0x0beb
            com.google.android.gms.measurement.internal.zzgd r10 = r1.zzj     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzez r10 = r10.zzr()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.measurement.internal.zzfb r10 = r10.zzi()     // Catch:{ all -> 0x0f71 }
            java.lang.String r11 = "Sample rate must be positive. event, rate"
            java.lang.String r12 = r8.zzd()     // Catch:{ all -> 0x0f71 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x0f71 }
            r10.zza(r11, r12, r9)     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzjj r9 = r8.zzv()     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzib r9 = (com.google.android.gms.internal.measurement.zzib) r9     // Catch:{ all -> 0x0f71 }
            com.google.android.gms.internal.measurement.zzcc$zzc r9 = (com.google.android.gms.internal.measurement.zzcc.zzc) r9     // Catch:{ all -> 0x0f71 }
            r3.add(r9)     // Catch:{ all -> 0x0f71 }
            r6.zza((int) r7, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8)     // Catch:{ all -> 0x0f71 }
            goto L_0x0b17
        L_0x0beb:
            java.lang.String r11 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            java.lang.Object r11 = r2.get(r11)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzak r11 = (com.google.android.gms.measurement.internal.zzak) r11     // Catch:{ all -> 0x0da7 }
            if (r11 != 0) goto L_0x0c49
            com.google.android.gms.measurement.internal.zzad r11 = r43.zze()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzg r12 = r4.zza     // Catch:{ all -> 0x0da7 }
            java.lang.String r12 = r12.zzx()     // Catch:{ all -> 0x0da7 }
            java.lang.String r15 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzak r11 = r11.zza((java.lang.String) r12, (java.lang.String) r15)     // Catch:{ all -> 0x0da7 }
            if (r11 != 0) goto L_0x0c49
            com.google.android.gms.measurement.internal.zzgd r11 = r1.zzj     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzez r11 = r11.zzr()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzfb r11 = r11.zzi()     // Catch:{ all -> 0x0da7 }
            java.lang.String r12 = "Event being bundled has no eventAggregate. appId, eventName"
            com.google.android.gms.internal.measurement.zzcc$zzg r15 = r4.zza     // Catch:{ all -> 0x0da7 }
            java.lang.String r15 = r15.zzx()     // Catch:{ all -> 0x0da7 }
            java.lang.String r1 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            r11.zza(r12, r15, r1)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzak r11 = new com.google.android.gms.measurement.internal.zzak     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzg r1 = r4.zza     // Catch:{ all -> 0x0da7 }
            java.lang.String r27 = r1.zzx()     // Catch:{ all -> 0x0da7 }
            java.lang.String r28 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            r29 = 1
            r31 = 1
            r33 = 1
            long r35 = r8.zzf()     // Catch:{ all -> 0x0da7 }
            r37 = 0
            r39 = 0
            r40 = 0
            r41 = 0
            r42 = 0
            r26 = r11
            r26.<init>(r27, r28, r29, r31, r33, r35, r37, r39, r40, r41, r42)     // Catch:{ all -> 0x0da7 }
        L_0x0c49:
            com.google.android.gms.measurement.internal.zzks r1 = r43.zzh()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzjj r12 = r8.zzv()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib r12 = (com.google.android.gms.internal.measurement.zzib) r12     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzc r12 = (com.google.android.gms.internal.measurement.zzcc.zzc) r12     // Catch:{ all -> 0x0da7 }
            java.lang.String r15 = "_eid"
            java.lang.Object r1 = r1.zzb(r12, r15)     // Catch:{ all -> 0x0da7 }
            java.lang.Long r1 = (java.lang.Long) r1     // Catch:{ all -> 0x0da7 }
            if (r1 == 0) goto L_0x0c61
            r12 = 1
            goto L_0x0c62
        L_0x0c61:
            r12 = 0
        L_0x0c62:
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r12)     // Catch:{ all -> 0x0da7 }
            r15 = 1
            if (r9 != r15) goto L_0x0c97
            com.google.android.gms.internal.measurement.zzjj r1 = r8.zzv()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib r1 = (com.google.android.gms.internal.measurement.zzib) r1     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzc r1 = (com.google.android.gms.internal.measurement.zzcc.zzc) r1     // Catch:{ all -> 0x0da7 }
            r3.add(r1)     // Catch:{ all -> 0x0da7 }
            boolean r1 = r12.booleanValue()     // Catch:{ all -> 0x0da7 }
            if (r1 == 0) goto L_0x0c92
            java.lang.Long r1 = r11.zzi     // Catch:{ all -> 0x0da7 }
            if (r1 != 0) goto L_0x0c86
            java.lang.Long r1 = r11.zzj     // Catch:{ all -> 0x0da7 }
            if (r1 != 0) goto L_0x0c86
            java.lang.Boolean r1 = r11.zzk     // Catch:{ all -> 0x0da7 }
            if (r1 == 0) goto L_0x0c92
        L_0x0c86:
            r1 = 0
            com.google.android.gms.measurement.internal.zzak r9 = r11.zza(r1, r1, r1)     // Catch:{ all -> 0x0da7 }
            java.lang.String r1 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            r2.put(r1, r9)     // Catch:{ all -> 0x0da7 }
        L_0x0c92:
            r6.zza((int) r7, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8)     // Catch:{ all -> 0x0da7 }
            goto L_0x0b17
        L_0x0c97:
            int r15 = r5.nextInt(r9)     // Catch:{ all -> 0x0da7 }
            if (r15 != 0) goto L_0x0cd9
            com.google.android.gms.measurement.internal.zzks r1 = r43.zzh()     // Catch:{ all -> 0x0da7 }
            r44 = r4
            r15 = r5
            long r4 = (long) r9     // Catch:{ all -> 0x0da7 }
            java.lang.Long r9 = java.lang.Long.valueOf(r4)     // Catch:{ all -> 0x0da7 }
            r1.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8, (java.lang.String) r10, (java.lang.Object) r9)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzjj r1 = r8.zzv()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib r1 = (com.google.android.gms.internal.measurement.zzib) r1     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzc r1 = (com.google.android.gms.internal.measurement.zzcc.zzc) r1     // Catch:{ all -> 0x0da7 }
            r3.add(r1)     // Catch:{ all -> 0x0da7 }
            boolean r1 = r12.booleanValue()     // Catch:{ all -> 0x0da7 }
            if (r1 == 0) goto L_0x0cc6
            java.lang.Long r1 = java.lang.Long.valueOf(r4)     // Catch:{ all -> 0x0da7 }
            r4 = 0
            com.google.android.gms.measurement.internal.zzak r11 = r11.zza(r4, r1, r4)     // Catch:{ all -> 0x0da7 }
        L_0x0cc6:
            java.lang.String r1 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            long r4 = r8.zzf()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzak r4 = r11.zza(r4, r13)     // Catch:{ all -> 0x0da7 }
            r2.put(r1, r4)     // Catch:{ all -> 0x0da7 }
            r1 = r6
            r4 = r7
            goto L_0x0d64
        L_0x0cd9:
            r44 = r4
            r15 = r5
            java.lang.Long r4 = r11.zzh     // Catch:{ all -> 0x0da7 }
            if (r4 == 0) goto L_0x0ceb
            java.lang.Long r4 = r11.zzh     // Catch:{ all -> 0x0da7 }
            long r4 = r4.longValue()     // Catch:{ all -> 0x0da7 }
            r30 = r6
            r16 = r7
            goto L_0x0d00
        L_0x0ceb:
            r4 = r43
            com.google.android.gms.measurement.internal.zzgd r5 = r4.zzj     // Catch:{ all -> 0x0da7 }
            r5.zzi()     // Catch:{ all -> 0x0da7 }
            long r4 = r8.zzg()     // Catch:{ all -> 0x0da7 }
            r30 = r6
            r16 = r7
            r6 = r20
            long r4 = com.google.android.gms.measurement.internal.zzkw.zza((long) r4, (long) r6)     // Catch:{ all -> 0x0da7 }
        L_0x0d00:
            int r6 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r6 == 0) goto L_0x0d4e
            com.google.android.gms.measurement.internal.zzks r1 = r43.zzh()     // Catch:{ all -> 0x0da7 }
            java.lang.String r4 = "_efs"
            r5 = 1
            java.lang.Long r7 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0da7 }
            r1.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8, (java.lang.String) r4, (java.lang.Object) r7)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzks r1 = r43.zzh()     // Catch:{ all -> 0x0da7 }
            long r5 = (long) r9     // Catch:{ all -> 0x0da7 }
            java.lang.Long r4 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0da7 }
            r1.zza((com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8, (java.lang.String) r10, (java.lang.Object) r4)     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzjj r1 = r8.zzv()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzib r1 = (com.google.android.gms.internal.measurement.zzib) r1     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.internal.measurement.zzcc$zzc r1 = (com.google.android.gms.internal.measurement.zzcc.zzc) r1     // Catch:{ all -> 0x0da7 }
            r3.add(r1)     // Catch:{ all -> 0x0da7 }
            boolean r1 = r12.booleanValue()     // Catch:{ all -> 0x0da7 }
            if (r1 == 0) goto L_0x0d3e
            java.lang.Long r1 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x0da7 }
            r4 = 1
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r4)     // Catch:{ all -> 0x0da7 }
            r4 = 0
            com.google.android.gms.measurement.internal.zzak r11 = r11.zza(r4, r1, r5)     // Catch:{ all -> 0x0da7 }
        L_0x0d3e:
            java.lang.String r1 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            long r4 = r8.zzf()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzak r4 = r11.zza(r4, r13)     // Catch:{ all -> 0x0da7 }
            r2.put(r1, r4)     // Catch:{ all -> 0x0da7 }
            goto L_0x0d60
        L_0x0d4e:
            boolean r4 = r12.booleanValue()     // Catch:{ all -> 0x0da7 }
            if (r4 == 0) goto L_0x0d60
            java.lang.String r4 = r8.zzd()     // Catch:{ all -> 0x0da7 }
            r5 = 0
            com.google.android.gms.measurement.internal.zzak r1 = r11.zza(r1, r5, r5)     // Catch:{ all -> 0x0da7 }
            r2.put(r4, r1)     // Catch:{ all -> 0x0da7 }
        L_0x0d60:
            r4 = r16
            r1 = r30
        L_0x0d64:
            r1.zza((int) r4, (com.google.android.gms.internal.measurement.zzcc.zzc.zza) r8)     // Catch:{ all -> 0x0da7 }
        L_0x0d67:
            int r7 = r4 + 1
            r4 = r44
            r6 = r1
            r5 = r15
            r1 = r43
            goto L_0x0a88
        L_0x0d71:
            r44 = r4
            r1 = r6
            int r4 = r3.size()     // Catch:{ all -> 0x0da7 }
            int r5 = r1.zzb()     // Catch:{ all -> 0x0da7 }
            if (r4 >= r5) goto L_0x0d85
            com.google.android.gms.internal.measurement.zzcc$zzg$zza r4 = r1.zzc()     // Catch:{ all -> 0x0da7 }
            r4.zza((java.lang.Iterable<? extends com.google.android.gms.internal.measurement.zzcc.zzc>) r3)     // Catch:{ all -> 0x0da7 }
        L_0x0d85:
            java.util.Set r2 = r2.entrySet()     // Catch:{ all -> 0x0da7 }
            java.util.Iterator r2 = r2.iterator()     // Catch:{ all -> 0x0da7 }
        L_0x0d8d:
            boolean r3 = r2.hasNext()     // Catch:{ all -> 0x0da7 }
            if (r3 == 0) goto L_0x0daf
            java.lang.Object r3 = r2.next()     // Catch:{ all -> 0x0da7 }
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzad r4 = r43.zze()     // Catch:{ all -> 0x0da7 }
            java.lang.Object r3 = r3.getValue()     // Catch:{ all -> 0x0da7 }
            com.google.android.gms.measurement.internal.zzak r3 = (com.google.android.gms.measurement.internal.zzak) r3     // Catch:{ all -> 0x0da7 }
            r4.zza((com.google.android.gms.measurement.internal.zzak) r3)     // Catch:{ all -> 0x0da7 }
            goto L_0x0d8d
        L_0x0da7:
            r0 = move-exception
            r2 = r43
            goto L_0x0f73
        L_0x0dac:
            r44 = r4
            r1 = r6
        L_0x0daf:
            r2 = r43
            com.google.android.gms.measurement.internal.zzgd r3 = r2.zzj     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzy r3 = r3.zzb()     // Catch:{ all -> 0x0f6f }
            java.lang.String r4 = r1.zzj()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r5 = com.google.android.gms.measurement.internal.zzaq.zzbm     // Catch:{ all -> 0x0f6f }
            boolean r3 = r3.zze(r4, r5)     // Catch:{ all -> 0x0f6f }
            if (r3 != 0) goto L_0x0dc6
            zza((com.google.android.gms.internal.measurement.zzcc.zzg.zza) r1)     // Catch:{ all -> 0x0f6f }
        L_0x0dc6:
            r3 = r44
            com.google.android.gms.internal.measurement.zzcc$zzg r4 = r3.zza     // Catch:{ all -> 0x0f6f }
            java.lang.String r4 = r4.zzx()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzad r5 = r43.zze()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzf r5 = r5.zzb(r4)     // Catch:{ all -> 0x0f6f }
            if (r5 != 0) goto L_0x0df2
            com.google.android.gms.measurement.internal.zzgd r5 = r2.zzj     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzez r5 = r5.zzr()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzfb r5 = r5.zzf()     // Catch:{ all -> 0x0f6f }
            java.lang.String r6 = "Bundling raw events w/o app info. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r7 = r3.zza     // Catch:{ all -> 0x0f6f }
            java.lang.String r7 = r7.zzx()     // Catch:{ all -> 0x0f6f }
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r7)     // Catch:{ all -> 0x0f6f }
            r5.zza(r6, r7)     // Catch:{ all -> 0x0f6f }
            goto L_0x0e4d
        L_0x0df2:
            int r6 = r1.zzb()     // Catch:{ all -> 0x0f6f }
            if (r6 <= 0) goto L_0x0e4d
            long r6 = r5.zzk()     // Catch:{ all -> 0x0f6f }
            r8 = 0
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 == 0) goto L_0x0e06
            r1.zze((long) r6)     // Catch:{ all -> 0x0f6f }
            goto L_0x0e09
        L_0x0e06:
            r1.zzi()     // Catch:{ all -> 0x0f6f }
        L_0x0e09:
            long r8 = r5.zzj()     // Catch:{ all -> 0x0f6f }
            r10 = 0
            int r12 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r12 != 0) goto L_0x0e14
            goto L_0x0e15
        L_0x0e14:
            r6 = r8
        L_0x0e15:
            int r8 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r8 == 0) goto L_0x0e1d
            r1.zzd((long) r6)     // Catch:{ all -> 0x0f6f }
            goto L_0x0e20
        L_0x0e1d:
            r1.zzh()     // Catch:{ all -> 0x0f6f }
        L_0x0e20:
            r5.zzv()     // Catch:{ all -> 0x0f6f }
            long r6 = r5.zzs()     // Catch:{ all -> 0x0f6f }
            int r7 = (int) r6     // Catch:{ all -> 0x0f6f }
            r1.zzg((int) r7)     // Catch:{ all -> 0x0f6f }
            long r6 = r1.zzf()     // Catch:{ all -> 0x0f6f }
            r5.zza((long) r6)     // Catch:{ all -> 0x0f6f }
            long r6 = r1.zzg()     // Catch:{ all -> 0x0f6f }
            r5.zzb((long) r6)     // Catch:{ all -> 0x0f6f }
            java.lang.String r6 = r5.zzad()     // Catch:{ all -> 0x0f6f }
            if (r6 == 0) goto L_0x0e43
            r1.zzj((java.lang.String) r6)     // Catch:{ all -> 0x0f6f }
            goto L_0x0e46
        L_0x0e43:
            r1.zzk()     // Catch:{ all -> 0x0f6f }
        L_0x0e46:
            com.google.android.gms.measurement.internal.zzad r6 = r43.zze()     // Catch:{ all -> 0x0f6f }
            r6.zza((com.google.android.gms.measurement.internal.zzf) r5)     // Catch:{ all -> 0x0f6f }
        L_0x0e4d:
            int r5 = r1.zzb()     // Catch:{ all -> 0x0f6f }
            if (r5 <= 0) goto L_0x0eb3
            com.google.android.gms.measurement.internal.zzgd r5 = r2.zzj     // Catch:{ all -> 0x0f6f }
            r5.zzu()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzfx r5 = r43.zzc()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.internal.measurement.zzcc$zzg r6 = r3.zza     // Catch:{ all -> 0x0f6f }
            java.lang.String r6 = r6.zzx()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.internal.measurement.zzca$zzb r5 = r5.zza((java.lang.String) r6)     // Catch:{ all -> 0x0f6f }
            if (r5 == 0) goto L_0x0e77
            boolean r6 = r5.zza()     // Catch:{ all -> 0x0f6f }
            if (r6 != 0) goto L_0x0e6f
            goto L_0x0e77
        L_0x0e6f:
            long r5 = r5.zzb()     // Catch:{ all -> 0x0f6f }
            r1.zzi((long) r5)     // Catch:{ all -> 0x0f6f }
            goto L_0x0ea2
        L_0x0e77:
            com.google.android.gms.internal.measurement.zzcc$zzg r5 = r3.zza     // Catch:{ all -> 0x0f6f }
            java.lang.String r5 = r5.zzam()     // Catch:{ all -> 0x0f6f }
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch:{ all -> 0x0f6f }
            if (r5 == 0) goto L_0x0e89
            r5 = -1
            r1.zzi((long) r5)     // Catch:{ all -> 0x0f6f }
            goto L_0x0ea2
        L_0x0e89:
            com.google.android.gms.measurement.internal.zzgd r5 = r2.zzj     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzez r5 = r5.zzr()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzfb r5 = r5.zzi()     // Catch:{ all -> 0x0f6f }
            java.lang.String r6 = "Did not find measurement config or missing version info. appId"
            com.google.android.gms.internal.measurement.zzcc$zzg r7 = r3.zza     // Catch:{ all -> 0x0f6f }
            java.lang.String r7 = r7.zzx()     // Catch:{ all -> 0x0f6f }
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r7)     // Catch:{ all -> 0x0f6f }
            r5.zza(r6, r7)     // Catch:{ all -> 0x0f6f }
        L_0x0ea2:
            com.google.android.gms.measurement.internal.zzad r5 = r43.zze()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.internal.measurement.zzjj r1 = r1.zzv()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.internal.measurement.zzib r1 = (com.google.android.gms.internal.measurement.zzib) r1     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.internal.measurement.zzcc$zzg r1 = (com.google.android.gms.internal.measurement.zzcc.zzg) r1     // Catch:{ all -> 0x0f6f }
            r13 = r19
            r5.zza((com.google.android.gms.internal.measurement.zzcc.zzg) r1, (boolean) r13)     // Catch:{ all -> 0x0f6f }
        L_0x0eb3:
            com.google.android.gms.measurement.internal.zzad r1 = r43.zze()     // Catch:{ all -> 0x0f6f }
            java.util.List<java.lang.Long> r3 = r3.zzb     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r3)     // Catch:{ all -> 0x0f6f }
            r1.zzd()     // Catch:{ all -> 0x0f6f }
            r1.zzak()     // Catch:{ all -> 0x0f6f }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x0f6f }
            java.lang.String r6 = "rowid in ("
            r5.<init>(r6)     // Catch:{ all -> 0x0f6f }
            r6 = 0
        L_0x0eca:
            int r7 = r3.size()     // Catch:{ all -> 0x0f6f }
            if (r6 >= r7) goto L_0x0ee7
            if (r6 == 0) goto L_0x0ed7
            java.lang.String r7 = ","
            r5.append(r7)     // Catch:{ all -> 0x0f6f }
        L_0x0ed7:
            java.lang.Object r7 = r3.get(r6)     // Catch:{ all -> 0x0f6f }
            java.lang.Long r7 = (java.lang.Long) r7     // Catch:{ all -> 0x0f6f }
            long r7 = r7.longValue()     // Catch:{ all -> 0x0f6f }
            r5.append(r7)     // Catch:{ all -> 0x0f6f }
            int r6 = r6 + 1
            goto L_0x0eca
        L_0x0ee7:
            java.lang.String r6 = ")"
            r5.append(r6)     // Catch:{ all -> 0x0f6f }
            android.database.sqlite.SQLiteDatabase r6 = r1.c_()     // Catch:{ all -> 0x0f6f }
            java.lang.String r7 = "raw_events"
            java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x0f6f }
            r8 = 0
            int r5 = r6.delete(r7, r5, r8)     // Catch:{ all -> 0x0f6f }
            int r6 = r3.size()     // Catch:{ all -> 0x0f6f }
            if (r5 == r6) goto L_0x0f1a
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzf()     // Catch:{ all -> 0x0f6f }
            java.lang.String r6 = "Deleted fewer rows from raw events table than expected"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ all -> 0x0f6f }
            int r3 = r3.size()     // Catch:{ all -> 0x0f6f }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0f6f }
            r1.zza(r6, r5, r3)     // Catch:{ all -> 0x0f6f }
        L_0x0f1a:
            com.google.android.gms.measurement.internal.zzad r1 = r43.zze()     // Catch:{ all -> 0x0f6f }
            android.database.sqlite.SQLiteDatabase r3 = r1.c_()     // Catch:{ all -> 0x0f6f }
            java.lang.String r5 = "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"
            r6 = 2
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x0f31 }
            r7 = 0
            r6[r7] = r4     // Catch:{ SQLiteException -> 0x0f31 }
            r7 = 1
            r6[r7] = r4     // Catch:{ SQLiteException -> 0x0f31 }
            r3.execSQL(r5, r6)     // Catch:{ SQLiteException -> 0x0f31 }
            goto L_0x0f44
        L_0x0f31:
            r0 = move-exception
            r3 = r0
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzf()     // Catch:{ all -> 0x0f6f }
            java.lang.String r5 = "Failed to remove unused event metadata. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r4)     // Catch:{ all -> 0x0f6f }
            r1.zza(r5, r4, r3)     // Catch:{ all -> 0x0f6f }
        L_0x0f44:
            com.google.android.gms.measurement.internal.zzad r1 = r43.zze()     // Catch:{ all -> 0x0f6f }
            r1.b_()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzad r1 = r43.zze()
            r1.zzh()
            r1 = 1
            return r1
        L_0x0f54:
            r2 = r1
            com.google.android.gms.measurement.internal.zzad r1 = r43.zze()     // Catch:{ all -> 0x0f6f }
            r1.b_()     // Catch:{ all -> 0x0f6f }
            com.google.android.gms.measurement.internal.zzad r1 = r43.zze()
            r1.zzh()
            r1 = 0
            return r1
        L_0x0f65:
            r0 = move-exception
            r2 = r1
            goto L_0x024b
        L_0x0f69:
            if (r5 == 0) goto L_0x0f6e
            r5.close()     // Catch:{ all -> 0x0f6f }
        L_0x0f6e:
            throw r1     // Catch:{ all -> 0x0f6f }
        L_0x0f6f:
            r0 = move-exception
            goto L_0x0f73
        L_0x0f71:
            r0 = move-exception
            r2 = r1
        L_0x0f73:
            r1 = r0
            com.google.android.gms.measurement.internal.zzad r3 = r43.zze()
            r3.zzh()
            goto L_0x0f7d
        L_0x0f7c:
            throw r1
        L_0x0f7d:
            goto L_0x0f7c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zza(java.lang.String, long):boolean");
    }

    private static void zza(zzcc.zzg.zza zza2) {
        zza2.zzb(Long.MAX_VALUE).zzc(Long.MIN_VALUE);
        for (int i = 0; i < zza2.zzb(); i++) {
            zzcc.zzc zzb2 = zza2.zzb(i);
            if (zzb2.zze() < zza2.zzf()) {
                zza2.zzb(zzb2.zze());
            }
            if (zzb2.zze() > zza2.zzg()) {
                zza2.zzc(zzb2.zze());
            }
        }
    }

    private final void zza(zzcc.zzg.zza zza2, long j, boolean z) {
        zzkt zzkt;
        String str = z ? "_se" : "_lte";
        zzkt zzc2 = zze().zzc(zza2.zzj(), str);
        if (zzc2 == null || zzc2.zze == null) {
            zzkt = new zzkt(zza2.zzj(), "auto", str, this.zzj.zzm().currentTimeMillis(), Long.valueOf(j));
        } else {
            zzkt = new zzkt(zza2.zzj(), "auto", str, this.zzj.zzm().currentTimeMillis(), Long.valueOf(((Long) zzc2.zze).longValue() + j));
        }
        zzcc.zzk zzk2 = (zzcc.zzk) ((zzib) zzcc.zzk.zzj().zza(str).zza(this.zzj.zzm().currentTimeMillis()).zzb(((Long) zzkt.zze).longValue()).zzv());
        boolean z2 = false;
        int zza3 = zzks.zza(zza2, str);
        if (zza3 >= 0) {
            zza2.zza(zza3, zzk2);
            z2 = true;
        }
        if (!z2) {
            zza2.zza(zzk2);
        }
        if (j > 0) {
            zze().zza(zzkt);
            this.zzj.zzr().zzx().zza("Updated engagement user property. scope, value", z ? "session-scoped" : "lifetime", zzkt.zze);
        }
    }

    private final boolean zza(zzcc.zzc.zza zza2, zzcc.zzc.zza zza3) {
        String str;
        Preconditions.checkArgument("_e".equals(zza2.zzd()));
        zzh();
        zzcc.zze zza4 = zzks.zza((zzcc.zzc) ((zzib) zza2.zzv()), "_sc");
        String str2 = null;
        if (zza4 == null) {
            str = null;
        } else {
            str = zza4.zzd();
        }
        zzh();
        zzcc.zze zza5 = zzks.zza((zzcc.zzc) ((zzib) zza3.zzv()), "_pc");
        if (zza5 != null) {
            str2 = zza5.zzd();
        }
        if (str2 == null || !str2.equals(str)) {
            return false;
        }
        zzb(zza2, zza3);
        return true;
    }

    private final void zzb(zzcc.zzc.zza zza2, zzcc.zzc.zza zza3) {
        Preconditions.checkArgument("_e".equals(zza2.zzd()));
        zzh();
        zzcc.zze zza4 = zzks.zza((zzcc.zzc) ((zzib) zza2.zzv()), "_et");
        if (zza4.zze() && zza4.zzf() > 0) {
            long zzf2 = zza4.zzf();
            zzh();
            zzcc.zze zza5 = zzks.zza((zzcc.zzc) ((zzib) zza3.zzv()), "_et");
            if (zza5 != null && zza5.zzf() > 0) {
                zzf2 += zza5.zzf();
            }
            zzh().zza(zza3, "_et", (Object) Long.valueOf(zzf2));
            zzh().zza(zza2, "_fr", (Object) 1L);
        }
    }

    private static void zza(zzcc.zzc.zza zza2, String str) {
        List<zzcc.zze> zza3 = zza2.zza();
        for (int i = 0; i < zza3.size(); i++) {
            if (str.equals(zza3.get(i).zzb())) {
                zza2.zzb(i);
                return;
            }
        }
    }

    private static void zza(zzcc.zzc.zza zza2, int i, String str) {
        List<zzcc.zze> zza3 = zza2.zza();
        int i2 = 0;
        while (i2 < zza3.size()) {
            if (!"_err".equals(zza3.get(i2).zzb())) {
                i2++;
            } else {
                return;
            }
        }
        zza2.zza((zzcc.zze) ((zzib) zzcc.zze.zzm().zza("_err").zza(Long.valueOf((long) i).longValue()).zzv())).zza((zzcc.zze) ((zzib) zzcc.zze.zzm().zza("_ev").zzb(str).zzv()));
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    public final void zza(int i, Throwable th, byte[] bArr, String str) {
        zzad zze2;
        zzw();
        zzk();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.zzr = false;
                zzaa();
                throw th2;
            }
        }
        List<Long> list = this.zzv;
        this.zzv = null;
        boolean z = true;
        if ((i == 200 || i == 204) && th == null) {
            try {
                this.zzj.zzc().zzc.zza(this.zzj.zzm().currentTimeMillis());
                this.zzj.zzc().zzd.zza(0);
                zzz();
                this.zzj.zzr().zzx().zza("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zze().zzf();
                try {
                    for (Long next : list) {
                        try {
                            zze2 = zze();
                            long longValue = next.longValue();
                            zze2.zzd();
                            zze2.zzak();
                            if (zze2.c_().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                                throw new SQLiteException("Deleted fewer rows from queue than expected");
                            }
                        } catch (SQLiteException e) {
                            zze2.zzr().zzf().zza("Failed to delete a bundle in a queue table", e);
                            throw e;
                        } catch (SQLiteException e2) {
                            if (this.zzw == null || !this.zzw.contains(next)) {
                                throw e2;
                            }
                        }
                    }
                    zze().b_();
                    zze().zzh();
                    this.zzw = null;
                    if (!zzd().zzf() || !zzy()) {
                        this.zzx = -1;
                        zzz();
                    } else {
                        zzl();
                    }
                    this.zzm = 0;
                } catch (Throwable th3) {
                    zze().zzh();
                    throw th3;
                }
            } catch (SQLiteException e3) {
                this.zzj.zzr().zzf().zza("Database error while trying to delete uploaded bundles", e3);
                this.zzm = this.zzj.zzm().elapsedRealtime();
                this.zzj.zzr().zzx().zza("Disable upload, time", Long.valueOf(this.zzm));
            }
        } else {
            this.zzj.zzr().zzx().zza("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzj.zzc().zzd.zza(this.zzj.zzm().currentTimeMillis());
            if (i != 503) {
                if (i != 429) {
                    z = false;
                }
            }
            if (z) {
                this.zzj.zzc().zze.zza(this.zzj.zzm().currentTimeMillis());
            }
            zze().zza(list);
            zzz();
        }
        this.zzr = false;
        zzaa();
    }

    private final boolean zzy() {
        zzw();
        zzk();
        return zze().zzy() || !TextUtils.isEmpty(zze().d_());
    }

    private final void zza(zzf zzf2) {
        ArrayMap arrayMap;
        zzw();
        if (!zzoe.zzb() || !this.zzj.zzb().zze(zzf2.zzc(), zzaq.zzbn)) {
            if (TextUtils.isEmpty(zzf2.zze()) && TextUtils.isEmpty(zzf2.zzf())) {
                zza(zzf2.zzc(), 204, (Throwable) null, (byte[]) null, (Map<String, List<String>>) null);
                return;
            }
        } else if (TextUtils.isEmpty(zzf2.zze()) && TextUtils.isEmpty(zzf2.zzg()) && TextUtils.isEmpty(zzf2.zzf())) {
            zza(zzf2.zzc(), 204, (Throwable) null, (byte[]) null, (Map<String, List<String>>) null);
            return;
        }
        String zza2 = this.zzj.zzb().zza(zzf2);
        try {
            URL url = new URL(zza2);
            this.zzj.zzr().zzx().zza("Fetching remote configuration", zzf2.zzc());
            zzca.zzb zza3 = zzc().zza(zzf2.zzc());
            String zzb2 = zzc().zzb(zzf2.zzc());
            if (zza3 == null || TextUtils.isEmpty(zzb2)) {
                arrayMap = null;
            } else {
                ArrayMap arrayMap2 = new ArrayMap();
                arrayMap2.put("If-Modified-Since", zzb2);
                arrayMap = arrayMap2;
            }
            this.zzq = true;
            zzfc zzd2 = zzd();
            String zzc2 = zzf2.zzc();
            zzkp zzkp = new zzkp(this);
            zzd2.zzd();
            zzd2.zzak();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzkp);
            zzd2.zzq().zzb((Runnable) new zzfg(zzd2, zzc2, url, (byte[]) null, arrayMap, zzkp));
        } catch (MalformedURLException unused) {
            this.zzj.zzr().zzf().zza("Failed to parse config URL. Not fetching. appId", zzez.zza(zzf2.zzc()), zza2);
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x013a A[Catch:{ all -> 0x018d, all -> 0x0196 }] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x014a A[Catch:{ all -> 0x018d, all -> 0x0196 }] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0172 A[Catch:{ all -> 0x018d, all -> 0x0196 }] */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0176 A[Catch:{ all -> 0x018d, all -> 0x0196 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            r6 = this;
            r6.zzw()
            r6.zzk()
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r7)
            r0 = 0
            if (r10 != 0) goto L_0x000e
            byte[] r10 = new byte[r0]     // Catch:{ all -> 0x0196 }
        L_0x000e:
            com.google.android.gms.measurement.internal.zzgd r1 = r6.zzj     // Catch:{ all -> 0x0196 }
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()     // Catch:{ all -> 0x0196 }
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzx()     // Catch:{ all -> 0x0196 }
            java.lang.String r2 = "onConfigFetched. Response size"
            int r3 = r10.length     // Catch:{ all -> 0x0196 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0196 }
            r1.zza(r2, r3)     // Catch:{ all -> 0x0196 }
            com.google.android.gms.measurement.internal.zzad r1 = r6.zze()     // Catch:{ all -> 0x0196 }
            r1.zzf()     // Catch:{ all -> 0x0196 }
            com.google.android.gms.measurement.internal.zzad r1 = r6.zze()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzf r1 = r1.zzb(r7)     // Catch:{ all -> 0x018d }
            r2 = 200(0xc8, float:2.8E-43)
            r3 = 304(0x130, float:4.26E-43)
            r4 = 1
            if (r8 == r2) goto L_0x003e
            r2 = 204(0xcc, float:2.86E-43)
            if (r8 == r2) goto L_0x003e
            if (r8 != r3) goto L_0x0042
        L_0x003e:
            if (r9 != 0) goto L_0x0042
            r2 = 1
            goto L_0x0043
        L_0x0042:
            r2 = 0
        L_0x0043:
            if (r1 != 0) goto L_0x005a
            com.google.android.gms.measurement.internal.zzgd r8 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzez r8 = r8.zzr()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfb r8 = r8.zzi()     // Catch:{ all -> 0x018d }
            java.lang.String r9 = "App does not exist in onConfigFetched. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r7)     // Catch:{ all -> 0x018d }
            r8.zza(r9, r7)     // Catch:{ all -> 0x018d }
            goto L_0x0179
        L_0x005a:
            r5 = 404(0x194, float:5.66E-43)
            if (r2 != 0) goto L_0x00ca
            if (r8 != r5) goto L_0x0061
            goto L_0x00ca
        L_0x0061:
            com.google.android.gms.measurement.internal.zzgd r10 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.common.util.Clock r10 = r10.zzm()     // Catch:{ all -> 0x018d }
            long r10 = r10.currentTimeMillis()     // Catch:{ all -> 0x018d }
            r1.zzi((long) r10)     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzad r10 = r6.zze()     // Catch:{ all -> 0x018d }
            r10.zza((com.google.android.gms.measurement.internal.zzf) r1)     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzgd r10 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzez r10 = r10.zzr()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfb r10 = r10.zzx()     // Catch:{ all -> 0x018d }
            java.lang.String r11 = "Fetching config failed. code, error"
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x018d }
            r10.zza(r11, r1, r9)     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfx r9 = r6.zzc()     // Catch:{ all -> 0x018d }
            r9.zzc(r7)     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzgd r7 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfl r7 = r7.zzc()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfp r7 = r7.zzd     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzgd r9 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.common.util.Clock r9 = r9.zzm()     // Catch:{ all -> 0x018d }
            long r9 = r9.currentTimeMillis()     // Catch:{ all -> 0x018d }
            r7.zza(r9)     // Catch:{ all -> 0x018d }
            r7 = 503(0x1f7, float:7.05E-43)
            if (r8 == r7) goto L_0x00ae
            r7 = 429(0x1ad, float:6.01E-43)
            if (r8 != r7) goto L_0x00ad
            goto L_0x00ae
        L_0x00ad:
            r4 = 0
        L_0x00ae:
            if (r4 == 0) goto L_0x00c5
            com.google.android.gms.measurement.internal.zzgd r7 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfl r7 = r7.zzc()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfp r7 = r7.zze     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzgd r8 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.common.util.Clock r8 = r8.zzm()     // Catch:{ all -> 0x018d }
            long r8 = r8.currentTimeMillis()     // Catch:{ all -> 0x018d }
            r7.zza(r8)     // Catch:{ all -> 0x018d }
        L_0x00c5:
            r6.zzz()     // Catch:{ all -> 0x018d }
            goto L_0x0179
        L_0x00ca:
            r9 = 0
            if (r11 == 0) goto L_0x00d6
            java.lang.String r2 = "Last-Modified"
            java.lang.Object r11 = r11.get(r2)     // Catch:{ all -> 0x018d }
            java.util.List r11 = (java.util.List) r11     // Catch:{ all -> 0x018d }
            goto L_0x00d7
        L_0x00d6:
            r11 = r9
        L_0x00d7:
            if (r11 == 0) goto L_0x00e6
            int r2 = r11.size()     // Catch:{ all -> 0x018d }
            if (r2 <= 0) goto L_0x00e6
            java.lang.Object r11 = r11.get(r0)     // Catch:{ all -> 0x018d }
            java.lang.String r11 = (java.lang.String) r11     // Catch:{ all -> 0x018d }
            goto L_0x00e7
        L_0x00e6:
            r11 = r9
        L_0x00e7:
            if (r8 == r5) goto L_0x0103
            if (r8 != r3) goto L_0x00ec
            goto L_0x0103
        L_0x00ec:
            com.google.android.gms.measurement.internal.zzfx r9 = r6.zzc()     // Catch:{ all -> 0x018d }
            boolean r9 = r9.zza(r7, r10, r11)     // Catch:{ all -> 0x018d }
            if (r9 != 0) goto L_0x0124
            com.google.android.gms.measurement.internal.zzad r7 = r6.zze()     // Catch:{ all -> 0x0196 }
            r7.zzh()     // Catch:{ all -> 0x0196 }
            r6.zzq = r0
            r6.zzaa()
            return
        L_0x0103:
            com.google.android.gms.measurement.internal.zzfx r11 = r6.zzc()     // Catch:{ all -> 0x018d }
            com.google.android.gms.internal.measurement.zzca$zzb r11 = r11.zza((java.lang.String) r7)     // Catch:{ all -> 0x018d }
            if (r11 != 0) goto L_0x0124
            com.google.android.gms.measurement.internal.zzfx r11 = r6.zzc()     // Catch:{ all -> 0x018d }
            boolean r9 = r11.zza(r7, r9, r9)     // Catch:{ all -> 0x018d }
            if (r9 != 0) goto L_0x0124
            com.google.android.gms.measurement.internal.zzad r7 = r6.zze()     // Catch:{ all -> 0x0196 }
            r7.zzh()     // Catch:{ all -> 0x0196 }
            r6.zzq = r0
            r6.zzaa()
            return
        L_0x0124:
            com.google.android.gms.measurement.internal.zzgd r9 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.common.util.Clock r9 = r9.zzm()     // Catch:{ all -> 0x018d }
            long r2 = r9.currentTimeMillis()     // Catch:{ all -> 0x018d }
            r1.zzh((long) r2)     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzad r9 = r6.zze()     // Catch:{ all -> 0x018d }
            r9.zza((com.google.android.gms.measurement.internal.zzf) r1)     // Catch:{ all -> 0x018d }
            if (r8 != r5) goto L_0x014a
            com.google.android.gms.measurement.internal.zzgd r8 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzez r8 = r8.zzr()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfb r8 = r8.zzk()     // Catch:{ all -> 0x018d }
            java.lang.String r9 = "Config not found. Using empty config. appId"
            r8.zza(r9, r7)     // Catch:{ all -> 0x018d }
            goto L_0x0162
        L_0x014a:
            com.google.android.gms.measurement.internal.zzgd r7 = r6.zzj     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzez r7 = r7.zzr()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzfb r7 = r7.zzx()     // Catch:{ all -> 0x018d }
            java.lang.String r9 = "Successfully fetched config. Got network response. code, size"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x018d }
            int r10 = r10.length     // Catch:{ all -> 0x018d }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ all -> 0x018d }
            r7.zza(r9, r8, r10)     // Catch:{ all -> 0x018d }
        L_0x0162:
            com.google.android.gms.measurement.internal.zzfc r7 = r6.zzd()     // Catch:{ all -> 0x018d }
            boolean r7 = r7.zzf()     // Catch:{ all -> 0x018d }
            if (r7 == 0) goto L_0x0176
            boolean r7 = r6.zzy()     // Catch:{ all -> 0x018d }
            if (r7 == 0) goto L_0x0176
            r6.zzl()     // Catch:{ all -> 0x018d }
            goto L_0x0179
        L_0x0176:
            r6.zzz()     // Catch:{ all -> 0x018d }
        L_0x0179:
            com.google.android.gms.measurement.internal.zzad r7 = r6.zze()     // Catch:{ all -> 0x018d }
            r7.b_()     // Catch:{ all -> 0x018d }
            com.google.android.gms.measurement.internal.zzad r7 = r6.zze()     // Catch:{ all -> 0x0196 }
            r7.zzh()     // Catch:{ all -> 0x0196 }
            r6.zzq = r0
            r6.zzaa()
            return
        L_0x018d:
            r7 = move-exception
            com.google.android.gms.measurement.internal.zzad r8 = r6.zze()     // Catch:{ all -> 0x0196 }
            r8.zzh()     // Catch:{ all -> 0x0196 }
            throw r7     // Catch:{ all -> 0x0196 }
        L_0x0196:
            r7 = move-exception
            r6.zzq = r0
            r6.zzaa()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zza(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x018c  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x01aa  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzz() {
        /*
            r21 = this;
            r0 = r21
            r21.zzw()
            r21.zzk()
            long r1 = r0.zzm
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x004d
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.common.util.Clock r1 = r1.zzm()
            long r1 = r1.elapsedRealtime()
            r5 = 3600000(0x36ee80, double:1.7786363E-317)
            long r7 = r0.zzm
            long r1 = r1 - r7
            long r1 = java.lang.Math.abs(r1)
            long r5 = r5 - r1
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 <= 0) goto L_0x004b
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzx()
            java.lang.Long r2 = java.lang.Long.valueOf(r5)
            java.lang.String r3 = "Upload has been suspended. Will update scheduling later in approximately ms"
            r1.zza(r3, r2)
            com.google.android.gms.measurement.internal.zzfj r1 = r21.zzt()
            r1.zzb()
            com.google.android.gms.measurement.internal.zzkg r1 = r21.zzv()
            r1.zzf()
            return
        L_0x004b:
            r0.zzm = r3
        L_0x004d:
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            boolean r1 = r1.zzag()
            if (r1 == 0) goto L_0x0255
            boolean r1 = r21.zzy()
            if (r1 != 0) goto L_0x005d
            goto L_0x0255
        L_0x005d:
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.common.util.Clock r1 = r1.zzm()
            long r1 = r1.currentTimeMillis()
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r5 = com.google.android.gms.measurement.internal.zzaq.zzz
            r6 = 0
            java.lang.Object r5 = r5.zza(r6)
            java.lang.Long r5 = (java.lang.Long) r5
            long r7 = r5.longValue()
            long r7 = java.lang.Math.max(r3, r7)
            com.google.android.gms.measurement.internal.zzad r5 = r21.zze()
            boolean r5 = r5.zzz()
            if (r5 != 0) goto L_0x008f
            com.google.android.gms.measurement.internal.zzad r5 = r21.zze()
            boolean r5 = r5.zzk()
            if (r5 == 0) goto L_0x008d
            goto L_0x008f
        L_0x008d:
            r5 = 0
            goto L_0x0090
        L_0x008f:
            r5 = 1
        L_0x0090:
            if (r5 == 0) goto L_0x00cc
            com.google.android.gms.measurement.internal.zzgd r10 = r0.zzj
            com.google.android.gms.measurement.internal.zzy r10 = r10.zzb()
            java.lang.String r10 = r10.zzw()
            boolean r11 = android.text.TextUtils.isEmpty(r10)
            if (r11 != 0) goto L_0x00bb
            java.lang.String r11 = ".none."
            boolean r10 = r11.equals(r10)
            if (r10 != 0) goto L_0x00bb
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r10 = com.google.android.gms.measurement.internal.zzaq.zzu
            java.lang.Object r10 = r10.zza(r6)
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            long r10 = java.lang.Math.max(r3, r10)
            goto L_0x00dc
        L_0x00bb:
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r10 = com.google.android.gms.measurement.internal.zzaq.zzt
            java.lang.Object r10 = r10.zza(r6)
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            long r10 = java.lang.Math.max(r3, r10)
            goto L_0x00dc
        L_0x00cc:
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r10 = com.google.android.gms.measurement.internal.zzaq.zzs
            java.lang.Object r10 = r10.zza(r6)
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            long r10 = java.lang.Math.max(r3, r10)
        L_0x00dc:
            com.google.android.gms.measurement.internal.zzgd r12 = r0.zzj
            com.google.android.gms.measurement.internal.zzfl r12 = r12.zzc()
            com.google.android.gms.measurement.internal.zzfp r12 = r12.zzc
            long r12 = r12.zza()
            com.google.android.gms.measurement.internal.zzgd r14 = r0.zzj
            com.google.android.gms.measurement.internal.zzfl r14 = r14.zzc()
            com.google.android.gms.measurement.internal.zzfp r14 = r14.zzd
            long r14 = r14.zza()
            com.google.android.gms.measurement.internal.zzad r16 = r21.zze()
            r17 = r10
            long r9 = r16.zzw()
            com.google.android.gms.measurement.internal.zzad r11 = r21.zze()
            r19 = r7
            long r6 = r11.zzx()
            long r6 = java.lang.Math.max(r9, r6)
            int r8 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r8 != 0) goto L_0x0113
        L_0x0110:
            r10 = r3
            goto L_0x0188
        L_0x0113:
            long r6 = r6 - r1
            long r6 = java.lang.Math.abs(r6)
            long r6 = r1 - r6
            long r12 = r12 - r1
            long r8 = java.lang.Math.abs(r12)
            long r8 = r1 - r8
            long r14 = r14 - r1
            long r10 = java.lang.Math.abs(r14)
            long r1 = r1 - r10
            long r8 = java.lang.Math.max(r8, r1)
            long r10 = r6 + r19
            if (r5 == 0) goto L_0x0139
            int r5 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x0139
            long r10 = java.lang.Math.min(r6, r8)
            long r10 = r10 + r17
        L_0x0139:
            com.google.android.gms.measurement.internal.zzks r5 = r21.zzh()
            r12 = r17
            boolean r5 = r5.zza((long) r8, (long) r12)
            if (r5 != 0) goto L_0x0147
            long r10 = r8 + r12
        L_0x0147:
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0188
            int r5 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r5 < 0) goto L_0x0188
            r5 = 0
        L_0x0150:
            r6 = 20
            com.google.android.gms.measurement.internal.zzeo<java.lang.Integer> r7 = com.google.android.gms.measurement.internal.zzaq.zzab
            r8 = 0
            java.lang.Object r7 = r7.zza(r8)
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r9 = 0
            int r7 = java.lang.Math.max(r9, r7)
            int r6 = java.lang.Math.min(r6, r7)
            if (r5 >= r6) goto L_0x0110
            r6 = 1
            long r6 = r6 << r5
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r12 = com.google.android.gms.measurement.internal.zzaq.zzaa
            java.lang.Object r12 = r12.zza(r8)
            java.lang.Long r12 = (java.lang.Long) r12
            long r12 = r12.longValue()
            long r12 = java.lang.Math.max(r3, r12)
            long r12 = r12 * r6
            long r10 = r10 + r12
            int r6 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r6 <= 0) goto L_0x0185
            goto L_0x0188
        L_0x0185:
            int r5 = r5 + 1
            goto L_0x0150
        L_0x0188:
            int r1 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r1 != 0) goto L_0x01aa
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzx()
            java.lang.String r2 = "Next upload time is 0"
            r1.zza(r2)
            com.google.android.gms.measurement.internal.zzfj r1 = r21.zzt()
            r1.zzb()
            com.google.android.gms.measurement.internal.zzkg r1 = r21.zzv()
            r1.zzf()
            return
        L_0x01aa:
            com.google.android.gms.measurement.internal.zzfc r1 = r21.zzd()
            boolean r1 = r1.zzf()
            if (r1 != 0) goto L_0x01d2
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzx()
            java.lang.String r2 = "No network"
            r1.zza(r2)
            com.google.android.gms.measurement.internal.zzfj r1 = r21.zzt()
            r1.zza()
            com.google.android.gms.measurement.internal.zzkg r1 = r21.zzv()
            r1.zzf()
            return
        L_0x01d2:
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzfl r1 = r1.zzc()
            com.google.android.gms.measurement.internal.zzfp r1 = r1.zze
            long r1 = r1.zza()
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r5 = com.google.android.gms.measurement.internal.zzaq.zzq
            r6 = 0
            java.lang.Object r5 = r5.zza(r6)
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            long r5 = java.lang.Math.max(r3, r5)
            com.google.android.gms.measurement.internal.zzks r7 = r21.zzh()
            boolean r7 = r7.zza((long) r1, (long) r5)
            if (r7 != 0) goto L_0x01fe
            long r1 = r1 + r5
            long r10 = java.lang.Math.max(r10, r1)
        L_0x01fe:
            com.google.android.gms.measurement.internal.zzfj r1 = r21.zzt()
            r1.zzb()
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.common.util.Clock r1 = r1.zzm()
            long r1 = r1.currentTimeMillis()
            long r10 = r10 - r1
            int r1 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r1 > 0) goto L_0x023a
            com.google.android.gms.measurement.internal.zzeo<java.lang.Long> r1 = com.google.android.gms.measurement.internal.zzaq.zzv
            r2 = 0
            java.lang.Object r1 = r1.zza(r2)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            long r10 = java.lang.Math.max(r3, r1)
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzfl r1 = r1.zzc()
            com.google.android.gms.measurement.internal.zzfp r1 = r1.zzc
            com.google.android.gms.measurement.internal.zzgd r2 = r0.zzj
            com.google.android.gms.common.util.Clock r2 = r2.zzm()
            long r2 = r2.currentTimeMillis()
            r1.zza(r2)
        L_0x023a:
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzx()
            java.lang.Long r2 = java.lang.Long.valueOf(r10)
            java.lang.String r3 = "Upload scheduled in approximately ms"
            r1.zza(r3, r2)
            com.google.android.gms.measurement.internal.zzkg r1 = r21.zzv()
            r1.zza(r10)
            return
        L_0x0255:
            com.google.android.gms.measurement.internal.zzgd r1 = r0.zzj
            com.google.android.gms.measurement.internal.zzez r1 = r1.zzr()
            com.google.android.gms.measurement.internal.zzfb r1 = r1.zzx()
            java.lang.String r2 = "Nothing to upload or uploading impossible"
            r1.zza(r2)
            com.google.android.gms.measurement.internal.zzfj r1 = r21.zzt()
            r1.zzb()
            com.google.android.gms.measurement.internal.zzkg r1 = r21.zzv()
            r1.zzf()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zzz():void");
    }

    /* access modifiers changed from: package-private */
    public final void zza(Runnable runnable) {
        zzw();
        if (this.zzn == null) {
            this.zzn = new ArrayList();
        }
        this.zzn.add(runnable);
    }

    private final void zzaa() {
        zzw();
        if (this.zzq || this.zzr || this.zzs) {
            this.zzj.zzr().zzx().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzq), Boolean.valueOf(this.zzr), Boolean.valueOf(this.zzs));
            return;
        }
        this.zzj.zzr().zzx().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzn;
        if (list != null) {
            for (Runnable run : list) {
                run.run();
            }
            this.zzn.clear();
        }
    }

    private final Boolean zzb(zzf zzf2) {
        try {
            if (zzf2.zzm() != -2147483648L) {
                if (zzf2.zzm() == ((long) Wrappers.packageManager(this.zzj.zzn()).getPackageInfo(zzf2.zzc(), 0).versionCode)) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzj.zzn()).getPackageInfo(zzf2.zzc(), 0).versionName;
                if (zzf2.zzl() != null && zzf2.zzl().equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzo() {
        zzw();
        zzk();
        if (!this.zzl) {
            this.zzl = true;
            if (zzab()) {
                int zza2 = zza(this.zzu);
                int zzaf = this.zzj.zzy().zzaf();
                zzw();
                if (zza2 > zzaf) {
                    this.zzj.zzr().zzf().zza("Panic: can't downgrade version. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzaf));
                } else if (zza2 >= zzaf) {
                } else {
                    if (zza(zzaf, this.zzu)) {
                        this.zzj.zzr().zzx().zza("Storage version upgraded. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzaf));
                    } else {
                        this.zzj.zzr().zzf().zza("Storage version upgrade failed. Previous, current version", Integer.valueOf(zza2), Integer.valueOf(zzaf));
                    }
                }
            }
        }
    }

    private final boolean zzab() {
        FileLock fileLock;
        zzw();
        if (!this.zzj.zzb().zza(zzaq.zzbl) || (fileLock = this.zzt) == null || !fileLock.isValid()) {
            try {
                FileChannel channel = new RandomAccessFile(new File(this.zzj.zzn().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.zzu = channel;
                FileLock tryLock = channel.tryLock();
                this.zzt = tryLock;
                if (tryLock != null) {
                    this.zzj.zzr().zzx().zza("Storage concurrent access okay");
                    return true;
                }
                this.zzj.zzr().zzf().zza("Storage concurrent data access panic");
                return false;
            } catch (FileNotFoundException e) {
                this.zzj.zzr().zzf().zza("Failed to acquire storage lock", e);
                return false;
            } catch (IOException e2) {
                this.zzj.zzr().zzf().zza("Failed to access storage lock file", e2);
                return false;
            } catch (OverlappingFileLockException e3) {
                this.zzj.zzr().zzi().zza("Storage lock already acquired", e3);
                return false;
            }
        } else {
            this.zzj.zzr().zzx().zza("Storage concurrent access okay");
            return true;
        }
    }

    private final int zza(FileChannel fileChannel) {
        zzw();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzj.zzr().zzf().zza("Bad channel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0);
            int read = fileChannel.read(allocate);
            if (read != 4) {
                if (read != -1) {
                    this.zzj.zzr().zzi().zza("Unexpected data length. Bytes read", Integer.valueOf(read));
                }
                return 0;
            }
            allocate.flip();
            return allocate.getInt();
        } catch (IOException e) {
            this.zzj.zzr().zzf().zza("Failed to read from channel", e);
            return 0;
        }
    }

    private final boolean zza(int i, FileChannel fileChannel) {
        zzw();
        if (fileChannel == null || !fileChannel.isOpen()) {
            this.zzj.zzr().zzf().zza("Bad channel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i);
        allocate.flip();
        try {
            fileChannel.truncate(0);
            if (this.zzj.zzb().zza(zzaq.zzby) && Build.VERSION.SDK_INT <= 19) {
                fileChannel.position(0);
            }
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                this.zzj.zzr().zzf().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e) {
            this.zzj.zzr().zzf().zza("Failed to write to channel", e);
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzn zzn2) {
        if (this.zzv != null) {
            ArrayList arrayList = new ArrayList();
            this.zzw = arrayList;
            arrayList.addAll(this.zzv);
        }
        zzad zze2 = zze();
        String str = zzn2.zza;
        Preconditions.checkNotEmpty(str);
        zze2.zzd();
        zze2.zzak();
        try {
            SQLiteDatabase c_ = zze2.c_();
            String[] strArr = {str};
            int delete = c_.delete("apps", "app_id=?", strArr) + 0 + c_.delete("events", "app_id=?", strArr) + c_.delete("user_attributes", "app_id=?", strArr) + c_.delete("conditional_properties", "app_id=?", strArr) + c_.delete("raw_events", "app_id=?", strArr) + c_.delete("raw_events_metadata", "app_id=?", strArr) + c_.delete("queue", "app_id=?", strArr) + c_.delete("audience_filter_values", "app_id=?", strArr) + c_.delete("main_event_params", "app_id=?", strArr) + c_.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zze2.zzr().zzx().zza("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zze2.zzr().zzf().zza("Error resetting analytics data. appId, error", zzez.zza(str), e);
        }
        if (zzn2.zzh) {
            zzb(zzn2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzkr zzkr, zzn zzn2) {
        zzw();
        zzk();
        if (zze(zzn2)) {
            if (!zzn2.zzh) {
                zzc(zzn2);
                return;
            }
            int zzc2 = this.zzj.zzi().zzc(zzkr.zza);
            if (zzc2 != 0) {
                this.zzj.zzi();
                this.zzj.zzi().zza(zzn2.zza, zzc2, "_ev", zzkw.zza(zzkr.zza, 24, true), zzkr.zza != null ? zzkr.zza.length() : 0);
                return;
            }
            int zzb2 = this.zzj.zzi().zzb(zzkr.zza, zzkr.zza());
            if (zzb2 != 0) {
                this.zzj.zzi();
                String zza2 = zzkw.zza(zzkr.zza, 24, true);
                Object zza3 = zzkr.zza();
                this.zzj.zzi().zza(zzn2.zza, zzb2, "_ev", zza2, (zza3 == null || (!(zza3 instanceof String) && !(zza3 instanceof CharSequence))) ? 0 : String.valueOf(zza3).length());
                return;
            }
            Object zzc3 = this.zzj.zzi().zzc(zzkr.zza, zzkr.zza());
            if (zzc3 != null) {
                if ("_sid".equals(zzkr.zza)) {
                    long j = zzkr.zzb;
                    String str = zzkr.zze;
                    long j2 = 0;
                    zzkt zzc4 = zze().zzc(zzn2.zza, "_sno");
                    if (zzc4 == null || !(zzc4.zze instanceof Long)) {
                        if (zzc4 != null) {
                            this.zzj.zzr().zzi().zza("Retrieved last session number from database does not contain a valid (long) value", zzc4.zze);
                        }
                        zzak zza4 = zze().zza(zzn2.zza, "_s");
                        if (zza4 != null) {
                            j2 = zza4.zzc;
                            this.zzj.zzr().zzx().zza("Backfill the session number. Last used session number", Long.valueOf(j2));
                        }
                    } else {
                        j2 = ((Long) zzc4.zze).longValue();
                    }
                    zza(new zzkr("_sno", j, Long.valueOf(j2 + 1), str), zzn2);
                }
                zzkt zzkt = new zzkt(zzn2.zza, zzkr.zze, zzkr.zza, zzkr.zzb, zzc3);
                this.zzj.zzr().zzx().zza("Setting user property", this.zzj.zzj().zzc(zzkt.zzc), zzc3);
                zze().zzf();
                try {
                    zzc(zzn2);
                    boolean zza5 = zze().zza(zzkt);
                    zze().b_();
                    if (!zza5) {
                        this.zzj.zzr().zzf().zza("Too many unique user properties are set. Ignoring user property", this.zzj.zzj().zzc(zzkt.zzc), zzkt.zze);
                        this.zzj.zzi().zza(zzn2.zza, 9, (String) null, (String) null, 0);
                    }
                } finally {
                    zze().zzh();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzb(zzkr zzkr, zzn zzn2) {
        zzw();
        zzk();
        if (zze(zzn2)) {
            if (!zzn2.zzh) {
                zzc(zzn2);
            } else if (!"_npa".equals(zzkr.zza) || zzn2.zzs == null) {
                this.zzj.zzr().zzw().zza("Removing user property", this.zzj.zzj().zzc(zzkr.zza));
                zze().zzf();
                try {
                    zzc(zzn2);
                    zze().zzb(zzn2.zza, zzkr.zza);
                    zze().b_();
                    this.zzj.zzr().zzw().zza("User property removed", this.zzj.zzj().zzc(zzkr.zza));
                } finally {
                    zze().zzh();
                }
            } else {
                this.zzj.zzr().zzw().zza("Falling back to manifest metadata value for ad personalization");
                zza(new zzkr("_npa", this.zzj.zzm().currentTimeMillis(), Long.valueOf(zzn2.zzs.booleanValue() ? 1 : 0), "auto"), zzn2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzkl zzkl) {
        this.zzo++;
    }

    /* access modifiers changed from: package-private */
    public final void zzp() {
        this.zzp++;
    }

    /* access modifiers changed from: package-private */
    public final zzgd zzs() {
        return this.zzj;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x048c A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x011b A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x01cb A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x01ff A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0201 A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0205 A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0228 A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x022e A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x023b A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x024e A[Catch:{ SQLiteException -> 0x01b6, all -> 0x04b8 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzb(com.google.android.gms.measurement.internal.zzn r22) {
        /*
            r21 = this;
            r1 = r21
            r2 = r22
            java.lang.String r3 = "_sysu"
            java.lang.String r4 = "_sys"
            java.lang.String r5 = "_pfo"
            java.lang.String r6 = "_uwa"
            java.lang.String r0 = "app_id=?"
            r21.zzw()
            r21.zzk()
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r22)
            java.lang.String r7 = r2.zza
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r7)
            boolean r7 = r21.zze(r22)
            if (r7 != 0) goto L_0x0023
            return
        L_0x0023:
            com.google.android.gms.measurement.internal.zzad r7 = r21.zze()
            java.lang.String r8 = r2.zza
            com.google.android.gms.measurement.internal.zzf r7 = r7.zzb(r8)
            r8 = 0
            if (r7 == 0) goto L_0x0056
            java.lang.String r10 = r7.zze()
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r10 == 0) goto L_0x0056
            java.lang.String r10 = r2.zzb
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r10 != 0) goto L_0x0056
            r7.zzh((long) r8)
            com.google.android.gms.measurement.internal.zzad r10 = r21.zze()
            r10.zza((com.google.android.gms.measurement.internal.zzf) r7)
            com.google.android.gms.measurement.internal.zzfx r7 = r21.zzc()
            java.lang.String r10 = r2.zza
            r7.zzd(r10)
        L_0x0056:
            boolean r7 = r2.zzh
            if (r7 != 0) goto L_0x005e
            r21.zzc(r22)
            return
        L_0x005e:
            long r10 = r2.zzm
            int r7 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r7 != 0) goto L_0x006e
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj
            com.google.android.gms.common.util.Clock r7 = r7.zzm()
            long r10 = r7.currentTimeMillis()
        L_0x006e:
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj
            com.google.android.gms.measurement.internal.zzai r7 = r7.zzx()
            r7.zzi()
            int r7 = r2.zzn
            r15 = 1
            if (r7 == 0) goto L_0x0098
            if (r7 == r15) goto L_0x0098
            com.google.android.gms.measurement.internal.zzgd r12 = r1.zzj
            com.google.android.gms.measurement.internal.zzez r12 = r12.zzr()
            com.google.android.gms.measurement.internal.zzfb r12 = r12.zzi()
            java.lang.String r13 = r2.zza
            java.lang.Object r13 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r13)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.String r14 = "Incorrect app type, assuming installed app. appId, appType"
            r12.zza(r14, r13, r7)
            r7 = 0
        L_0x0098:
            com.google.android.gms.measurement.internal.zzad r12 = r21.zze()
            r12.zzf()
            com.google.android.gms.measurement.internal.zzad r12 = r21.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = r2.zza     // Catch:{ all -> 0x04b8 }
            java.lang.String r14 = "_npa"
            com.google.android.gms.measurement.internal.zzkt r14 = r12.zzc(r13, r14)     // Catch:{ all -> 0x04b8 }
            if (r14 == 0) goto L_0x00bc
            java.lang.String r12 = "auto"
            java.lang.String r13 = r14.zzb     // Catch:{ all -> 0x04b8 }
            boolean r12 = r12.equals(r13)     // Catch:{ all -> 0x04b8 }
            if (r12 == 0) goto L_0x00b8
            goto L_0x00bc
        L_0x00b8:
            r18 = r3
            r3 = 1
            goto L_0x010f
        L_0x00bc:
            java.lang.Boolean r12 = r2.zzs     // Catch:{ all -> 0x04b8 }
            if (r12 == 0) goto L_0x00f9
            com.google.android.gms.measurement.internal.zzkr r13 = new com.google.android.gms.measurement.internal.zzkr     // Catch:{ all -> 0x04b8 }
            java.lang.String r18 = "_npa"
            java.lang.Boolean r12 = r2.zzs     // Catch:{ all -> 0x04b8 }
            boolean r12 = r12.booleanValue()     // Catch:{ all -> 0x04b8 }
            if (r12 == 0) goto L_0x00cf
            r19 = 1
            goto L_0x00d1
        L_0x00cf:
            r19 = r8
        L_0x00d1:
            java.lang.Long r19 = java.lang.Long.valueOf(r19)     // Catch:{ all -> 0x04b8 }
            java.lang.String r20 = "auto"
            r8 = 1
            r12 = r13
            r8 = r13
            r13 = r18
            r18 = r3
            r9 = r14
            r3 = 1
            r14 = r10
            r16 = r19
            r17 = r20
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04b8 }
            if (r9 == 0) goto L_0x00f5
            java.lang.Object r9 = r9.zze     // Catch:{ all -> 0x04b8 }
            java.lang.Long r12 = r8.zzc     // Catch:{ all -> 0x04b8 }
            boolean r9 = r9.equals(r12)     // Catch:{ all -> 0x04b8 }
            if (r9 != 0) goto L_0x010f
        L_0x00f5:
            r1.zza((com.google.android.gms.measurement.internal.zzkr) r8, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            goto L_0x010f
        L_0x00f9:
            r18 = r3
            r9 = r14
            r3 = 1
            if (r9 == 0) goto L_0x010f
            com.google.android.gms.measurement.internal.zzkr r8 = new com.google.android.gms.measurement.internal.zzkr     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_npa"
            r16 = 0
            java.lang.String r17 = "auto"
            r12 = r8
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04b8 }
            r1.zzb((com.google.android.gms.measurement.internal.zzkr) r8, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
        L_0x010f:
            com.google.android.gms.measurement.internal.zzad r8 = r21.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r9 = r2.zza     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzf r8 = r8.zzb(r9)     // Catch:{ all -> 0x04b8 }
            if (r8 == 0) goto L_0x01c9
            com.google.android.gms.measurement.internal.zzgd r12 = r1.zzj     // Catch:{ all -> 0x04b8 }
            r12.zzi()     // Catch:{ all -> 0x04b8 }
            java.lang.String r12 = r2.zzb     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = r8.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r14 = r2.zzr     // Catch:{ all -> 0x04b8 }
            java.lang.String r15 = r8.zzf()     // Catch:{ all -> 0x04b8 }
            boolean r12 = com.google.android.gms.measurement.internal.zzkw.zza((java.lang.String) r12, (java.lang.String) r13, (java.lang.String) r14, (java.lang.String) r15)     // Catch:{ all -> 0x04b8 }
            if (r12 == 0) goto L_0x01c9
            com.google.android.gms.measurement.internal.zzgd r12 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzez r12 = r12.zzr()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzfb r12 = r12.zzi()     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "New GMP App Id passed in. Removing cached database data. appId"
            java.lang.String r14 = r8.zzc()     // Catch:{ all -> 0x04b8 }
            java.lang.Object r14 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r14)     // Catch:{ all -> 0x04b8 }
            r12.zza(r13, r14)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzad r12 = r21.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r8 = r8.zzc()     // Catch:{ all -> 0x04b8 }
            r12.zzak()     // Catch:{ all -> 0x04b8 }
            r12.zzd()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r8)     // Catch:{ all -> 0x04b8 }
            android.database.sqlite.SQLiteDatabase r13 = r12.c_()     // Catch:{ SQLiteException -> 0x01b6 }
            java.lang.String[] r14 = new java.lang.String[r3]     // Catch:{ SQLiteException -> 0x01b6 }
            r15 = 0
            r14[r15] = r8     // Catch:{ SQLiteException -> 0x01b6 }
            java.lang.String r9 = "events"
            int r9 = r13.delete(r9, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "user_attributes"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "conditional_properties"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "apps"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "raw_events"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "raw_events_metadata"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "event_filters"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "property_filters"
            int r15 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r15
            java.lang.String r15 = "audience_filter_values"
            int r0 = r13.delete(r15, r0, r14)     // Catch:{ SQLiteException -> 0x01b6 }
            int r9 = r9 + r0
            if (r9 <= 0) goto L_0x01c8
            com.google.android.gms.measurement.internal.zzez r0 = r12.zzr()     // Catch:{ SQLiteException -> 0x01b6 }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzx()     // Catch:{ SQLiteException -> 0x01b6 }
            java.lang.String r13 = "Deleted application data. app, records"
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ SQLiteException -> 0x01b6 }
            r0.zza(r13, r8, r9)     // Catch:{ SQLiteException -> 0x01b6 }
            goto L_0x01c8
        L_0x01b6:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzez r9 = r12.zzr()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzfb r9 = r9.zzf()     // Catch:{ all -> 0x04b8 }
            java.lang.String r12 = "Error deleting application data. appId, error"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r8)     // Catch:{ all -> 0x04b8 }
            r9.zza(r12, r8, r0)     // Catch:{ all -> 0x04b8 }
        L_0x01c8:
            r8 = 0
        L_0x01c9:
            if (r8 == 0) goto L_0x0228
            long r12 = r8.zzm()     // Catch:{ all -> 0x04b8 }
            r14 = -2147483648(0xffffffff80000000, double:NaN)
            int r0 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r0 == 0) goto L_0x01e3
            long r12 = r8.zzm()     // Catch:{ all -> 0x04b8 }
            r9 = r4
            long r3 = r2.zzj     // Catch:{ all -> 0x04b8 }
            int r0 = (r12 > r3 ? 1 : (r12 == r3 ? 0 : -1))
            if (r0 == 0) goto L_0x01e4
            r0 = 1
            goto L_0x01e5
        L_0x01e3:
            r9 = r4
        L_0x01e4:
            r0 = 0
        L_0x01e5:
            long r3 = r8.zzm()     // Catch:{ all -> 0x04b8 }
            int r12 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r12 != 0) goto L_0x0201
            java.lang.String r3 = r8.zzl()     // Catch:{ all -> 0x04b8 }
            if (r3 == 0) goto L_0x0201
            java.lang.String r3 = r8.zzl()     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = r2.zzc     // Catch:{ all -> 0x04b8 }
            boolean r3 = r3.equals(r4)     // Catch:{ all -> 0x04b8 }
            if (r3 != 0) goto L_0x0201
            r14 = 1
            goto L_0x0202
        L_0x0201:
            r14 = 0
        L_0x0202:
            r0 = r0 | r14
            if (r0 == 0) goto L_0x0229
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x04b8 }
            r0.<init>()     // Catch:{ all -> 0x04b8 }
            java.lang.String r3 = "_pv"
            java.lang.String r4 = r8.zzl()     // Catch:{ all -> 0x04b8 }
            r0.putString(r3, r4)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzao r3 = new com.google.android.gms.measurement.internal.zzao     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_au"
            com.google.android.gms.measurement.internal.zzan r14 = new com.google.android.gms.measurement.internal.zzan     // Catch:{ all -> 0x04b8 }
            r14.<init>(r0)     // Catch:{ all -> 0x04b8 }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04b8 }
            r1.zza((com.google.android.gms.measurement.internal.zzao) r3, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            goto L_0x0229
        L_0x0228:
            r9 = r4
        L_0x0229:
            r21.zzc(r22)     // Catch:{ all -> 0x04b8 }
            if (r7 != 0) goto L_0x023b
            com.google.android.gms.measurement.internal.zzad r0 = r21.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r3 = r2.zza     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = "_f"
            com.google.android.gms.measurement.internal.zzak r0 = r0.zza((java.lang.String) r3, (java.lang.String) r4)     // Catch:{ all -> 0x04b8 }
            goto L_0x024c
        L_0x023b:
            r3 = 1
            if (r7 != r3) goto L_0x024b
            com.google.android.gms.measurement.internal.zzad r0 = r21.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r3 = r2.zza     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = "_v"
            com.google.android.gms.measurement.internal.zzak r0 = r0.zza((java.lang.String) r3, (java.lang.String) r4)     // Catch:{ all -> 0x04b8 }
            goto L_0x024c
        L_0x024b:
            r0 = 0
        L_0x024c:
            if (r0 != 0) goto L_0x048c
            r3 = 3600000(0x36ee80, double:1.7786363E-317)
            long r12 = r10 / r3
            r14 = 1
            long r12 = r12 + r14
            long r12 = r12 * r3
            java.lang.String r0 = "_dac"
            java.lang.String r3 = "_r"
            java.lang.String r4 = "_c"
            java.lang.String r8 = "_et"
            if (r7 != 0) goto L_0x03ea
            com.google.android.gms.measurement.internal.zzkr r7 = new com.google.android.gms.measurement.internal.zzkr     // Catch:{ all -> 0x04b8 }
            java.lang.String r14 = "_fot"
            java.lang.Long r16 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x04b8 }
            java.lang.String r17 = "auto"
            r12 = r7
            r13 = r14
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04b8 }
            r1.zza((com.google.android.gms.measurement.internal.zzkr) r7, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzy r7 = r7.zzb()     // Catch:{ all -> 0x04b8 }
            java.lang.String r12 = r2.zzb     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r13 = com.google.android.gms.measurement.internal.zzaq.zzar     // Catch:{ all -> 0x04b8 }
            boolean r7 = r7.zze(r12, r13)     // Catch:{ all -> 0x04b8 }
            if (r7 == 0) goto L_0x0293
            r21.zzw()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzgd r7 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzfq r7 = r7.zzf()     // Catch:{ all -> 0x04b8 }
            java.lang.String r12 = r2.zza     // Catch:{ all -> 0x04b8 }
            r7.zza(r12)     // Catch:{ all -> 0x04b8 }
        L_0x0293:
            r21.zzw()     // Catch:{ all -> 0x04b8 }
            r21.zzk()     // Catch:{ all -> 0x04b8 }
            android.os.Bundle r7 = new android.os.Bundle     // Catch:{ all -> 0x04b8 }
            r7.<init>()     // Catch:{ all -> 0x04b8 }
            r12 = 1
            r7.putLong(r4, r12)     // Catch:{ all -> 0x04b8 }
            r7.putLong(r3, r12)     // Catch:{ all -> 0x04b8 }
            r3 = 0
            r7.putLong(r6, r3)     // Catch:{ all -> 0x04b8 }
            r7.putLong(r5, r3)     // Catch:{ all -> 0x04b8 }
            r7.putLong(r9, r3)     // Catch:{ all -> 0x04b8 }
            r14 = r18
            r7.putLong(r14, r3)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzy r3 = r3.zzb()     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = r2.zza     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r12 = com.google.android.gms.measurement.internal.zzaq.zzat     // Catch:{ all -> 0x04b8 }
            boolean r3 = r3.zze(r4, r12)     // Catch:{ all -> 0x04b8 }
            if (r3 == 0) goto L_0x02cc
            r3 = 1
            r7.putLong(r8, r3)     // Catch:{ all -> 0x04b8 }
            goto L_0x02ce
        L_0x02cc:
            r3 = 1
        L_0x02ce:
            boolean r12 = r2.zzq     // Catch:{ all -> 0x04b8 }
            if (r12 == 0) goto L_0x02d5
            r7.putLong(r0, r3)     // Catch:{ all -> 0x04b8 }
        L_0x02d5:
            com.google.android.gms.measurement.internal.zzad r0 = r21.zze()     // Catch:{ all -> 0x04b8 }
            java.lang.String r3 = r2.zza     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r3)     // Catch:{ all -> 0x04b8 }
            r0.zzd()     // Catch:{ all -> 0x04b8 }
            r0.zzak()     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = "first_open_count"
            long r3 = r0.zzh(r3, r4)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x04b8 }
            android.content.Context r0 = r0.zzn()     // Catch:{ all -> 0x04b8 }
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch:{ all -> 0x04b8 }
            if (r0 != 0) goto L_0x030f
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzez r0 = r0.zzr()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzfb r0 = r0.zzf()     // Catch:{ all -> 0x04b8 }
            java.lang.String r6 = "PackageManager is null, first open report might be inaccurate. appId"
            java.lang.String r9 = r2.zza     // Catch:{ all -> 0x04b8 }
            java.lang.Object r9 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r9)     // Catch:{ all -> 0x04b8 }
            r0.zza(r6, r9)     // Catch:{ all -> 0x04b8 }
        L_0x030b:
            r12 = 0
            goto L_0x03ce
        L_0x030f:
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ NameNotFoundException -> 0x0321 }
            android.content.Context r0 = r0.zzn()     // Catch:{ NameNotFoundException -> 0x0321 }
            com.google.android.gms.common.wrappers.PackageManagerWrapper r0 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r0)     // Catch:{ NameNotFoundException -> 0x0321 }
            java.lang.String r12 = r2.zza     // Catch:{ NameNotFoundException -> 0x0321 }
            r13 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r12, r13)     // Catch:{ NameNotFoundException -> 0x0321 }
            goto L_0x0338
        L_0x0321:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzgd r12 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzez r12 = r12.zzr()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzfb r12 = r12.zzf()     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "Package info is null, first open report might be inaccurate. appId"
            java.lang.String r15 = r2.zza     // Catch:{ all -> 0x04b8 }
            java.lang.Object r15 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r15)     // Catch:{ all -> 0x04b8 }
            r12.zza(r13, r15, r0)     // Catch:{ all -> 0x04b8 }
            r0 = 0
        L_0x0338:
            if (r0 == 0) goto L_0x038a
            long r12 = r0.firstInstallTime     // Catch:{ all -> 0x04b8 }
            r15 = 0
            int r17 = (r12 > r15 ? 1 : (r12 == r15 ? 0 : -1))
            if (r17 == 0) goto L_0x038a
            long r12 = r0.firstInstallTime     // Catch:{ all -> 0x04b8 }
            r18 = r14
            long r14 = r0.lastUpdateTime     // Catch:{ all -> 0x04b8 }
            int r0 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r0 == 0) goto L_0x036d
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzy r0 = r0.zzb()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r12 = com.google.android.gms.measurement.internal.zzaq.zzbs     // Catch:{ all -> 0x04b8 }
            boolean r0 = r0.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r12)     // Catch:{ all -> 0x04b8 }
            if (r0 == 0) goto L_0x0366
            r12 = 0
            int r0 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r0 != 0) goto L_0x036b
            r12 = 1
            r7.putLong(r6, r12)     // Catch:{ all -> 0x04b8 }
            goto L_0x036b
        L_0x0366:
            r12 = 1
            r7.putLong(r6, r12)     // Catch:{ all -> 0x04b8 }
        L_0x036b:
            r14 = 0
            goto L_0x036e
        L_0x036d:
            r14 = 1
        L_0x036e:
            com.google.android.gms.measurement.internal.zzkr r0 = new com.google.android.gms.measurement.internal.zzkr     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_fi"
            if (r14 == 0) goto L_0x0377
            r14 = 1
            goto L_0x0379
        L_0x0377:
            r14 = 0
        L_0x0379:
            java.lang.Long r16 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x04b8 }
            java.lang.String r17 = "auto"
            r12 = r0
            r6 = r18
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04b8 }
            r1.zza((com.google.android.gms.measurement.internal.zzkr) r0, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            goto L_0x038b
        L_0x038a:
            r6 = r14
        L_0x038b:
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ NameNotFoundException -> 0x039d }
            android.content.Context r0 = r0.zzn()     // Catch:{ NameNotFoundException -> 0x039d }
            com.google.android.gms.common.wrappers.PackageManagerWrapper r0 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r0)     // Catch:{ NameNotFoundException -> 0x039d }
            java.lang.String r12 = r2.zza     // Catch:{ NameNotFoundException -> 0x039d }
            r13 = 0
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r12, r13)     // Catch:{ NameNotFoundException -> 0x039d }
            goto L_0x03b4
        L_0x039d:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzgd r12 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzez r12 = r12.zzr()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzfb r12 = r12.zzf()     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "Application info is null, first open report might be inaccurate. appId"
            java.lang.String r14 = r2.zza     // Catch:{ all -> 0x04b8 }
            java.lang.Object r14 = com.google.android.gms.measurement.internal.zzez.zza((java.lang.String) r14)     // Catch:{ all -> 0x04b8 }
            r12.zza(r13, r14, r0)     // Catch:{ all -> 0x04b8 }
            r0 = 0
        L_0x03b4:
            if (r0 == 0) goto L_0x030b
            int r12 = r0.flags     // Catch:{ all -> 0x04b8 }
            r13 = 1
            r12 = r12 & r13
            if (r12 == 0) goto L_0x03c1
            r12 = 1
            r7.putLong(r9, r12)     // Catch:{ all -> 0x04b8 }
        L_0x03c1:
            int r0 = r0.flags     // Catch:{ all -> 0x04b8 }
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L_0x030b
            r12 = 1
            r7.putLong(r6, r12)     // Catch:{ all -> 0x04b8 }
            goto L_0x030b
        L_0x03ce:
            int r0 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r0 < 0) goto L_0x03d5
            r7.putLong(r5, r3)     // Catch:{ all -> 0x04b8 }
        L_0x03d5:
            com.google.android.gms.measurement.internal.zzao r0 = new com.google.android.gms.measurement.internal.zzao     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_f"
            com.google.android.gms.measurement.internal.zzan r14 = new com.google.android.gms.measurement.internal.zzan     // Catch:{ all -> 0x04b8 }
            r14.<init>(r7)     // Catch:{ all -> 0x04b8 }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04b8 }
            r1.zzb((com.google.android.gms.measurement.internal.zzao) r0, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            goto L_0x0446
        L_0x03ea:
            r5 = 1
            if (r7 != r5) goto L_0x0446
            com.google.android.gms.measurement.internal.zzkr r5 = new com.google.android.gms.measurement.internal.zzkr     // Catch:{ all -> 0x04b8 }
            java.lang.String r6 = "_fvt"
            java.lang.Long r16 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x04b8 }
            java.lang.String r17 = "auto"
            r12 = r5
            r13 = r6
            r14 = r10
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x04b8 }
            r1.zza((com.google.android.gms.measurement.internal.zzkr) r5, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            r21.zzw()     // Catch:{ all -> 0x04b8 }
            r21.zzk()     // Catch:{ all -> 0x04b8 }
            android.os.Bundle r5 = new android.os.Bundle     // Catch:{ all -> 0x04b8 }
            r5.<init>()     // Catch:{ all -> 0x04b8 }
            r6 = 1
            r5.putLong(r4, r6)     // Catch:{ all -> 0x04b8 }
            r5.putLong(r3, r6)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzy r3 = r3.zzb()     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = r2.zza     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r6 = com.google.android.gms.measurement.internal.zzaq.zzat     // Catch:{ all -> 0x04b8 }
            boolean r3 = r3.zze(r4, r6)     // Catch:{ all -> 0x04b8 }
            if (r3 == 0) goto L_0x0429
            r3 = 1
            r5.putLong(r8, r3)     // Catch:{ all -> 0x04b8 }
            goto L_0x042b
        L_0x0429:
            r3 = 1
        L_0x042b:
            boolean r6 = r2.zzq     // Catch:{ all -> 0x04b8 }
            if (r6 == 0) goto L_0x0432
            r5.putLong(r0, r3)     // Catch:{ all -> 0x04b8 }
        L_0x0432:
            com.google.android.gms.measurement.internal.zzao r0 = new com.google.android.gms.measurement.internal.zzao     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_v"
            com.google.android.gms.measurement.internal.zzan r14 = new com.google.android.gms.measurement.internal.zzan     // Catch:{ all -> 0x04b8 }
            r14.<init>(r5)     // Catch:{ all -> 0x04b8 }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04b8 }
            r1.zzb((com.google.android.gms.measurement.internal.zzao) r0, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
        L_0x0446:
            com.google.android.gms.measurement.internal.zzgd r0 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzy r0 = r0.zzb()     // Catch:{ all -> 0x04b8 }
            java.lang.String r3 = r2.zza     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r4 = com.google.android.gms.measurement.internal.zzaq.zzau     // Catch:{ all -> 0x04b8 }
            boolean r0 = r0.zze(r3, r4)     // Catch:{ all -> 0x04b8 }
            if (r0 != 0) goto L_0x04a9
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x04b8 }
            r0.<init>()     // Catch:{ all -> 0x04b8 }
            r3 = 1
            r0.putLong(r8, r3)     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzgd r3 = r1.zzj     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzy r3 = r3.zzb()     // Catch:{ all -> 0x04b8 }
            java.lang.String r4 = r2.zza     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r5 = com.google.android.gms.measurement.internal.zzaq.zzat     // Catch:{ all -> 0x04b8 }
            boolean r3 = r3.zze(r4, r5)     // Catch:{ all -> 0x04b8 }
            if (r3 == 0) goto L_0x0477
            java.lang.String r3 = "_fr"
            r4 = 1
            r0.putLong(r3, r4)     // Catch:{ all -> 0x04b8 }
        L_0x0477:
            com.google.android.gms.measurement.internal.zzao r3 = new com.google.android.gms.measurement.internal.zzao     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_e"
            com.google.android.gms.measurement.internal.zzan r14 = new com.google.android.gms.measurement.internal.zzan     // Catch:{ all -> 0x04b8 }
            r14.<init>(r0)     // Catch:{ all -> 0x04b8 }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04b8 }
            r1.zzb((com.google.android.gms.measurement.internal.zzao) r3, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
            goto L_0x04a9
        L_0x048c:
            boolean r0 = r2.zzi     // Catch:{ all -> 0x04b8 }
            if (r0 == 0) goto L_0x04a9
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x04b8 }
            r0.<init>()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzao r3 = new com.google.android.gms.measurement.internal.zzao     // Catch:{ all -> 0x04b8 }
            java.lang.String r13 = "_cd"
            com.google.android.gms.measurement.internal.zzan r14 = new com.google.android.gms.measurement.internal.zzan     // Catch:{ all -> 0x04b8 }
            r14.<init>(r0)     // Catch:{ all -> 0x04b8 }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x04b8 }
            r1.zzb((com.google.android.gms.measurement.internal.zzao) r3, (com.google.android.gms.measurement.internal.zzn) r2)     // Catch:{ all -> 0x04b8 }
        L_0x04a9:
            com.google.android.gms.measurement.internal.zzad r0 = r21.zze()     // Catch:{ all -> 0x04b8 }
            r0.b_()     // Catch:{ all -> 0x04b8 }
            com.google.android.gms.measurement.internal.zzad r0 = r21.zze()
            r0.zzh()
            return
        L_0x04b8:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzad r2 = r21.zze()
            r2.zzh()
            goto L_0x04c2
        L_0x04c1:
            throw r0
        L_0x04c2:
            goto L_0x04c1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zzb(com.google.android.gms.measurement.internal.zzn):void");
    }

    private final zzn zza(String str) {
        String str2 = str;
        zzf zzb2 = zze().zzb(str2);
        if (zzb2 == null || TextUtils.isEmpty(zzb2.zzl())) {
            this.zzj.zzr().zzw().zza("No app data available; dropping", str2);
            return null;
        }
        Boolean zzb3 = zzb(zzb2);
        if (zzb3 == null || zzb3.booleanValue()) {
            return new zzn(str, zzb2.zze(), zzb2.zzl(), zzb2.zzm(), zzb2.zzn(), zzb2.zzo(), zzb2.zzp(), (String) null, zzb2.zzr(), false, zzb2.zzi(), zzb2.zzae(), 0, 0, zzb2.zzaf(), zzb2.zzag(), false, zzb2.zzf(), zzb2.zzah(), zzb2.zzq(), zzb2.zzai(), (!zzoe.zzb() || !this.zzj.zzb().zze(str2, zzaq.zzbn)) ? null : zzb2.zzg());
        }
        this.zzj.zzr().zzf().zza("App version does not match; dropping. appId", zzez.zza(str));
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzw zzw2) {
        zzn zza2 = zza(zzw2.zza);
        if (zza2 != null) {
            zza(zzw2, zza2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(zzw zzw2, zzn zzn2) {
        Preconditions.checkNotNull(zzw2);
        Preconditions.checkNotEmpty(zzw2.zza);
        Preconditions.checkNotNull(zzw2.zzb);
        Preconditions.checkNotNull(zzw2.zzc);
        Preconditions.checkNotEmpty(zzw2.zzc.zza);
        zzw();
        zzk();
        if (zze(zzn2)) {
            if (!zzn2.zzh) {
                zzc(zzn2);
                return;
            }
            zzw zzw3 = new zzw(zzw2);
            boolean z = false;
            zzw3.zze = false;
            zze().zzf();
            try {
                zzw zzd2 = zze().zzd(zzw3.zza, zzw3.zzc.zza);
                if (zzd2 != null && !zzd2.zzb.equals(zzw3.zzb)) {
                    this.zzj.zzr().zzi().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzj.zzj().zzc(zzw3.zzc.zza), zzw3.zzb, zzd2.zzb);
                }
                if (zzd2 != null && zzd2.zze) {
                    zzw3.zzb = zzd2.zzb;
                    zzw3.zzd = zzd2.zzd;
                    zzw3.zzh = zzd2.zzh;
                    zzw3.zzf = zzd2.zzf;
                    zzw3.zzi = zzd2.zzi;
                    zzw3.zze = zzd2.zze;
                    zzw3.zzc = new zzkr(zzw3.zzc.zza, zzd2.zzc.zzb, zzw3.zzc.zza(), zzd2.zzc.zze);
                } else if (TextUtils.isEmpty(zzw3.zzf)) {
                    zzw3.zzc = new zzkr(zzw3.zzc.zza, zzw3.zzd, zzw3.zzc.zza(), zzw3.zzc.zze);
                    zzw3.zze = true;
                    z = true;
                }
                if (zzw3.zze) {
                    zzkr zzkr = zzw3.zzc;
                    zzkt zzkt = new zzkt(zzw3.zza, zzw3.zzb, zzkr.zza, zzkr.zzb, zzkr.zza());
                    if (zze().zza(zzkt)) {
                        this.zzj.zzr().zzw().zza("User property updated immediately", zzw3.zza, this.zzj.zzj().zzc(zzkt.zzc), zzkt.zze);
                    } else {
                        this.zzj.zzr().zzf().zza("(2)Too many active user properties, ignoring", zzez.zza(zzw3.zza), this.zzj.zzj().zzc(zzkt.zzc), zzkt.zze);
                    }
                    if (z && zzw3.zzi != null) {
                        zzc(new zzao(zzw3.zzi, zzw3.zzd), zzn2);
                    }
                }
                if (zze().zza(zzw3)) {
                    this.zzj.zzr().zzw().zza("Conditional property added", zzw3.zza, this.zzj.zzj().zzc(zzw3.zzc.zza), zzw3.zzc.zza());
                } else {
                    this.zzj.zzr().zzf().zza("Too many conditional properties, ignoring", zzez.zza(zzw3.zza), this.zzj.zzj().zzc(zzw3.zzc.zza), zzw3.zzc.zza());
                }
                zze().b_();
            } finally {
                zze().zzh();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzb(zzw zzw2) {
        zzn zza2 = zza(zzw2.zza);
        if (zza2 != null) {
            zzb(zzw2, zza2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzb(zzw zzw2, zzn zzn2) {
        Preconditions.checkNotNull(zzw2);
        Preconditions.checkNotEmpty(zzw2.zza);
        Preconditions.checkNotNull(zzw2.zzc);
        Preconditions.checkNotEmpty(zzw2.zzc.zza);
        zzw();
        zzk();
        if (zze(zzn2)) {
            if (!zzn2.zzh) {
                zzc(zzn2);
                return;
            }
            zze().zzf();
            try {
                zzc(zzn2);
                zzw zzd2 = zze().zzd(zzw2.zza, zzw2.zzc.zza);
                if (zzd2 != null) {
                    this.zzj.zzr().zzw().zza("Removing conditional user property", zzw2.zza, this.zzj.zzj().zzc(zzw2.zzc.zza));
                    zze().zze(zzw2.zza, zzw2.zzc.zza);
                    if (zzd2.zze) {
                        zze().zzb(zzw2.zza, zzw2.zzc.zza);
                    }
                    if (zzw2.zzk != null) {
                        Bundle bundle = null;
                        if (zzw2.zzk.zzb != null) {
                            bundle = zzw2.zzk.zzb.zzb();
                        }
                        Bundle bundle2 = bundle;
                        zzc(this.zzj.zzi().zza(zzw2.zza, zzw2.zzk.zza, bundle2, zzd2.zzb, zzw2.zzk.zzd, true, false), zzn2);
                    }
                } else {
                    this.zzj.zzr().zzi().zza("Conditional user property doesn't exist", zzez.zza(zzw2.zza), this.zzj.zzj().zzc(zzw2.zzc.zza));
                }
                zze().b_();
            } finally {
                zze().zzh();
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00de  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0112  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x0158  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0166  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0174  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x018a  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0190  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x0193  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.google.android.gms.measurement.internal.zzf zza(com.google.android.gms.measurement.internal.zzn r9, com.google.android.gms.measurement.internal.zzf r10, java.lang.String r11) {
        /*
            r8 = this;
            r0 = 1
            if (r10 != 0) goto L_0x001e
            com.google.android.gms.measurement.internal.zzf r10 = new com.google.android.gms.measurement.internal.zzf
            com.google.android.gms.measurement.internal.zzgd r1 = r8.zzj
            java.lang.String r2 = r9.zza
            r10.<init>(r1, r2)
            com.google.android.gms.measurement.internal.zzgd r1 = r8.zzj
            com.google.android.gms.measurement.internal.zzkw r1 = r1.zzi()
            java.lang.String r1 = r1.zzk()
            r10.zza((java.lang.String) r1)
            r10.zze((java.lang.String) r11)
        L_0x001c:
            r11 = 1
            goto L_0x003a
        L_0x001e:
            java.lang.String r1 = r10.zzh()
            boolean r1 = r11.equals(r1)
            if (r1 != 0) goto L_0x0039
            r10.zze((java.lang.String) r11)
            com.google.android.gms.measurement.internal.zzgd r11 = r8.zzj
            com.google.android.gms.measurement.internal.zzkw r11 = r11.zzi()
            java.lang.String r11 = r11.zzk()
            r10.zza((java.lang.String) r11)
            goto L_0x001c
        L_0x0039:
            r11 = 0
        L_0x003a:
            java.lang.String r1 = r9.zzb
            java.lang.String r2 = r10.zze()
            boolean r1 = android.text.TextUtils.equals(r1, r2)
            if (r1 != 0) goto L_0x004c
            java.lang.String r11 = r9.zzb
            r10.zzb((java.lang.String) r11)
            r11 = 1
        L_0x004c:
            java.lang.String r1 = r9.zzr
            java.lang.String r2 = r10.zzf()
            boolean r1 = android.text.TextUtils.equals(r1, r2)
            if (r1 != 0) goto L_0x005e
            java.lang.String r11 = r9.zzr
            r10.zzc((java.lang.String) r11)
            r11 = 1
        L_0x005e:
            boolean r1 = com.google.android.gms.internal.measurement.zzoe.zzb()
            if (r1 == 0) goto L_0x0088
            com.google.android.gms.measurement.internal.zzgd r1 = r8.zzj
            com.google.android.gms.measurement.internal.zzy r1 = r1.zzb()
            java.lang.String r2 = r10.zzc()
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r3 = com.google.android.gms.measurement.internal.zzaq.zzbn
            boolean r1 = r1.zze(r2, r3)
            if (r1 == 0) goto L_0x0088
            java.lang.String r1 = r9.zzv
            java.lang.String r2 = r10.zzg()
            boolean r1 = android.text.TextUtils.equals(r1, r2)
            if (r1 != 0) goto L_0x0088
            java.lang.String r11 = r9.zzv
            r10.zzd((java.lang.String) r11)
            r11 = 1
        L_0x0088:
            java.lang.String r1 = r9.zzk
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x00a2
            java.lang.String r1 = r9.zzk
            java.lang.String r2 = r10.zzi()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x00a2
            java.lang.String r11 = r9.zzk
            r10.zzf((java.lang.String) r11)
            r11 = 1
        L_0x00a2:
            long r1 = r9.zze
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x00ba
            long r1 = r9.zze
            long r5 = r10.zzo()
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00ba
            long r1 = r9.zze
            r10.zzd((long) r1)
            r11 = 1
        L_0x00ba:
            java.lang.String r1 = r9.zzc
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x00d4
            java.lang.String r1 = r9.zzc
            java.lang.String r2 = r10.zzl()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x00d4
            java.lang.String r11 = r9.zzc
            r10.zzg((java.lang.String) r11)
            r11 = 1
        L_0x00d4:
            long r1 = r9.zzj
            long r5 = r10.zzm()
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00e4
            long r1 = r9.zzj
            r10.zzc((long) r1)
            r11 = 1
        L_0x00e4:
            java.lang.String r1 = r9.zzd
            if (r1 == 0) goto L_0x00fa
            java.lang.String r1 = r9.zzd
            java.lang.String r2 = r10.zzn()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x00fa
            java.lang.String r11 = r9.zzd
            r10.zzh((java.lang.String) r11)
            r11 = 1
        L_0x00fa:
            long r1 = r9.zzf
            long r5 = r10.zzp()
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x010a
            long r1 = r9.zzf
            r10.zze((long) r1)
            r11 = 1
        L_0x010a:
            boolean r1 = r9.zzh
            boolean r2 = r10.zzr()
            if (r1 == r2) goto L_0x0118
            boolean r11 = r9.zzh
            r10.zza((boolean) r11)
            r11 = 1
        L_0x0118:
            java.lang.String r1 = r9.zzg
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L_0x0132
            java.lang.String r1 = r9.zzg
            java.lang.String r2 = r10.zzac()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L_0x0132
            java.lang.String r11 = r9.zzg
            r10.zzi((java.lang.String) r11)
            r11 = 1
        L_0x0132:
            com.google.android.gms.measurement.internal.zzgd r1 = r8.zzj
            com.google.android.gms.measurement.internal.zzy r1 = r1.zzb()
            com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzaq.zzcl
            boolean r1 = r1.zza((com.google.android.gms.measurement.internal.zzeo<java.lang.Boolean>) r2)
            if (r1 != 0) goto L_0x0150
            long r1 = r9.zzl
            long r5 = r10.zzae()
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x0150
            long r1 = r9.zzl
            r10.zzp(r1)
            r11 = 1
        L_0x0150:
            boolean r1 = r9.zzo
            boolean r2 = r10.zzaf()
            if (r1 == r2) goto L_0x015e
            boolean r11 = r9.zzo
            r10.zzb((boolean) r11)
            r11 = 1
        L_0x015e:
            boolean r1 = r9.zzp
            boolean r2 = r10.zzag()
            if (r1 == r2) goto L_0x016c
            boolean r11 = r9.zzp
            r10.zzc((boolean) r11)
            r11 = 1
        L_0x016c:
            java.lang.Boolean r1 = r9.zzs
            java.lang.Boolean r2 = r10.zzah()
            if (r1 == r2) goto L_0x017a
            java.lang.Boolean r11 = r9.zzs
            r10.zza((java.lang.Boolean) r11)
            r11 = 1
        L_0x017a:
            long r1 = r9.zzt
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0190
            long r1 = r9.zzt
            long r3 = r10.zzq()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0190
            long r1 = r9.zzt
            r10.zzf((long) r1)
            goto L_0x0191
        L_0x0190:
            r0 = r11
        L_0x0191:
            if (r0 == 0) goto L_0x019a
            com.google.android.gms.measurement.internal.zzad r9 = r8.zze()
            r9.zza((com.google.android.gms.measurement.internal.zzf) r10)
        L_0x019a:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzkk.zza(com.google.android.gms.measurement.internal.zzn, com.google.android.gms.measurement.internal.zzf, java.lang.String):com.google.android.gms.measurement.internal.zzf");
    }

    /* access modifiers changed from: package-private */
    public final zzf zzc(zzn zzn2) {
        zzw();
        zzk();
        Preconditions.checkNotNull(zzn2);
        Preconditions.checkNotEmpty(zzn2.zza);
        zzf zzb2 = zze().zzb(zzn2.zza);
        String zzb3 = this.zzj.zzc().zzb(zzn2.zza);
        if (!zznn.zzb() || !this.zzj.zzb().zza(zzaq.zzbt)) {
            return zza(zzn2, zzb2, zzb3);
        }
        if (zzb2 == null) {
            zzb2 = new zzf(this.zzj, zzn2.zza);
            zzb2.zza(this.zzj.zzi().zzk());
            zzb2.zze(zzb3);
        } else if (!zzb3.equals(zzb2.zzh())) {
            zzb2.zze(zzb3);
            zzb2.zza(this.zzj.zzi().zzk());
        }
        zzb2.zzb(zzn2.zzb);
        zzb2.zzc(zzn2.zzr);
        if (zzoe.zzb() && this.zzj.zzb().zze(zzb2.zzc(), zzaq.zzbn)) {
            zzb2.zzd(zzn2.zzv);
        }
        if (!TextUtils.isEmpty(zzn2.zzk)) {
            zzb2.zzf(zzn2.zzk);
        }
        if (zzn2.zze != 0) {
            zzb2.zzd(zzn2.zze);
        }
        if (!TextUtils.isEmpty(zzn2.zzc)) {
            zzb2.zzg(zzn2.zzc);
        }
        zzb2.zzc(zzn2.zzj);
        if (zzn2.zzd != null) {
            zzb2.zzh(zzn2.zzd);
        }
        zzb2.zze(zzn2.zzf);
        zzb2.zza(zzn2.zzh);
        if (!TextUtils.isEmpty(zzn2.zzg)) {
            zzb2.zzi(zzn2.zzg);
        }
        if (!this.zzj.zzb().zza(zzaq.zzcl)) {
            zzb2.zzp(zzn2.zzl);
        }
        zzb2.zzb(zzn2.zzo);
        zzb2.zzc(zzn2.zzp);
        zzb2.zza(zzn2.zzs);
        zzb2.zzf(zzn2.zzt);
        if (zzb2.zza()) {
            zze().zza(zzb2);
        }
        return zzb2;
    }

    /* access modifiers changed from: package-private */
    public final String zzd(zzn zzn2) {
        try {
            return (String) this.zzj.zzq().zza(new zzko(this, zzn2)).get(30000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            this.zzj.zzr().zzf().zza("Failed to get app instance id. appId", zzez.zza(zzn2.zza), e);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(boolean z) {
        zzz();
    }

    private final boolean zze(zzn zzn2) {
        return (!zzoe.zzb() || !this.zzj.zzb().zze(zzn2.zza, zzaq.zzbn)) ? !TextUtils.isEmpty(zzn2.zzb) || !TextUtils.isEmpty(zzn2.zzr) : !TextUtils.isEmpty(zzn2.zzb) || !TextUtils.isEmpty(zzn2.zzv) || !TextUtils.isEmpty(zzn2.zzr);
    }
}
