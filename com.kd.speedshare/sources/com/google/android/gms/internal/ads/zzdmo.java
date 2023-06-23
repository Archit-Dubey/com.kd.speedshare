package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzty;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzdmo implements zzdml {
    private final ConcurrentHashMap<zzdmv, zzdmm> zzhcq;
    private zzdms zzhcr;
    private zzdmq zzhcs = new zzdmq();

    public zzdmo(zzdms zzdms) {
        this.zzhcq = new ConcurrentHashMap<>(zzdms.zzhdl);
        this.zzhcr = zzdms;
    }

    public final synchronized zzdmw<?> zza(zzdmv zzdmv) {
        zzdmw<?> zzdmw;
        zzdmm zzdmm = this.zzhcq.get(zzdmv);
        zzdmw = null;
        if (zzdmm != null) {
            zzdmw = zzdmm.zzasz();
            if (zzdmw == null) {
                this.zzhcs.zzath();
            }
            zza(zzdmw, zzdmm.zzatd());
        } else {
            this.zzhcs.zzatg();
            zza((zzdmw<?>) null, (zzdnm) null);
        }
        return zzdmw;
    }

    public final synchronized boolean zza(zzdmv zzdmv, zzdmw<?> zzdmw) {
        boolean zzb;
        zzdmm zzdmm = this.zzhcq.get(zzdmv);
        zzdmw.zzhee = zzq.zzld().currentTimeMillis();
        if (zzdmm == null) {
            zzdmm = new zzdmm(this.zzhcr.zzhdl, this.zzhcr.zzhdm * 1000);
            if (this.zzhcq.size() == this.zzhcr.zzhdk) {
                int i = zzdmn.zzhcp[this.zzhcr.zzhdp - 1];
                long j = Long.MAX_VALUE;
                zzdmv zzdmv2 = null;
                if (i == 1) {
                    for (Map.Entry next : this.zzhcq.entrySet()) {
                        if (((zzdmm) next.getValue()).getCreationTimeMillis() < j) {
                            j = ((zzdmm) next.getValue()).getCreationTimeMillis();
                            zzdmv2 = (zzdmv) next.getKey();
                        }
                    }
                    if (zzdmv2 != null) {
                        this.zzhcq.remove(zzdmv2);
                    }
                } else if (i == 2) {
                    for (Map.Entry next2 : this.zzhcq.entrySet()) {
                        if (((zzdmm) next2.getValue()).zzata() < j) {
                            j = ((zzdmm) next2.getValue()).zzata();
                            zzdmv2 = (zzdmv) next2.getKey();
                        }
                    }
                    if (zzdmv2 != null) {
                        this.zzhcq.remove(zzdmv2);
                    }
                } else if (i == 3) {
                    int i2 = Integer.MAX_VALUE;
                    for (Map.Entry next3 : this.zzhcq.entrySet()) {
                        if (((zzdmm) next3.getValue()).zzatb() < i2) {
                            i2 = ((zzdmm) next3.getValue()).zzatb();
                            zzdmv2 = (zzdmv) next3.getKey();
                        }
                    }
                    if (zzdmv2 != null) {
                        this.zzhcq.remove(zzdmv2);
                    }
                }
                this.zzhcs.zzatj();
            }
            this.zzhcq.put(zzdmv, zzdmm);
            this.zzhcs.zzati();
        }
        zzb = zzdmm.zzb(zzdmw);
        this.zzhcs.zzatk();
        zzdmp zzatl = this.zzhcs.zzatl();
        zzdnm zzatd = zzdmm.zzatd();
        if (zzdmw != null) {
            zzdmw.zzhec.zzair().zzd((zzty.zzb) ((zzegb) zzty.zzb.zznf().zza(zzty.zzb.zza.zznh().zza(zzty.zzb.C0017zzb.IN_MEMORY).zza(zzty.zzb.zze.zznl().zzs(zzatl.zzhct).zzt(zzatl.zzhcu).zzcc(zzatd.zzhez))).zzbfq()));
        }
        dumpToLog();
        return zzb;
    }

    public final synchronized boolean zzb(zzdmv zzdmv) {
        zzdmm zzdmm = this.zzhcq.get(zzdmv);
        if (zzdmm == null) {
            return true;
        }
        if (zzdmm.size() < this.zzhcr.zzhdl) {
            return true;
        }
        return false;
    }

    @Deprecated
    public final zzdmv zza(zzve zzve, String str, zzvo zzvo) {
        return new zzdmy(zzve, str, new zzasu(this.zzhcr.zzvr).zzvf().zzdtk, this.zzhcr.zzhdn, zzvo);
    }

    public final zzdms zzasy() {
        return this.zzhcr;
    }

    private final void zza(zzdmw<?> zzdmw, zzdnm zzdnm) {
        if (zzdmw != null) {
            zzdmw.zzhec.zzair().zzc((zzty.zzb) ((zzegb) zzty.zzb.zznf().zza(zzty.zzb.zza.zznh().zza(zzty.zzb.C0017zzb.IN_MEMORY).zza(zzty.zzb.zzd.zznj().zzq(zzdnm.zzhfa).zzca(zzdnm.zzhez))).zzbfq()));
        }
        dumpToLog();
    }

    private final void dumpToLog() {
        if (zzdms.zzatn()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzhcr.zzhdj);
            sb.append(" PoolCollection");
            sb.append(this.zzhcs.zzatm());
            int i = 0;
            for (Map.Entry next : this.zzhcq.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(next.getValue());
                sb.append("#");
                sb.append(((zzdmv) next.getKey()).hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < ((zzdmm) next.getValue()).size(); i2++) {
                    sb.append("[O]");
                }
                for (int size = ((zzdmm) next.getValue()).size(); size < this.zzhcr.zzhdl; size++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(((zzdmm) next.getValue()).zzatc());
                sb.append("\n");
            }
            while (i < this.zzhcr.zzhdk) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzaxv.zzee(sb.toString());
        }
    }
}
