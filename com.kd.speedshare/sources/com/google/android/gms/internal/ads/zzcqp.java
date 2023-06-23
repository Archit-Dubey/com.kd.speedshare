package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzto;
import com.google.android.gms.internal.ads.zzty;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcqp {
    private zzbbd zzdpd;
    private zzcpz zzgjr;
    private zztm zzgkd;
    private Context zzvr;

    public zzcqp(Context context, zzbbd zzbbd, zztm zztm, zzcpz zzcpz) {
        this.zzvr = context;
        this.zzdpd = zzbbd;
        this.zzgkd = zztm;
        this.zzgjr = zzcpz;
    }

    public final void zzapn() {
        try {
            this.zzgjr.zza(new zzcqo(this));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzaxv.zzfb(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Void zzb(SQLiteDatabase sQLiteDatabase) throws Exception {
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        ArrayList<zzty.zzo.zza> zza = zzcqm.zza(sQLiteDatabase);
        zzty.zzo zzo = (zzty.zzo) ((zzegb) zzty.zzo.zzoi().zzcd(this.zzvr.getPackageName()).zzce(Build.MODEL).zzcl(zzcqm.zza(sQLiteDatabase2, 0)).zze(zza).zzcm(zzcqm.zza(sQLiteDatabase2, 1)).zzes(zzq.zzld().currentTimeMillis()).zzet(zzcqm.zzb(sQLiteDatabase2, 2)).zzbfq());
        ArrayList arrayList = zza;
        int size = arrayList.size();
        long j = 0;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            zzty.zzo.zza zza2 = (zzty.zzo.zza) obj;
            if (zza2.zzok() == zzui.ENUM_TRUE && zza2.getTimestamp() > j) {
                j = zza2.getTimestamp();
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(j));
            sQLiteDatabase2.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", (String[]) null);
        }
        this.zzgkd.zza((zztp) new zzcqr(zzo));
        this.zzgkd.zza((zztp) new zzcqq((zzty.zzu) ((zzegb) zzty.zzu.zzos().zzcs(this.zzdpd.zzedd).zzct(this.zzdpd.zzede).zzcu(this.zzdpd.zzedf ? 0 : 2).zzbfq())));
        this.zzgkd.zza(zzto.zza.C0014zza.OFFLINE_UPLOAD);
        sQLiteDatabase2.delete("offline_signal_contents", (String) null, (String[]) null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", 0);
        sQLiteDatabase2.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put("value", 0);
        sQLiteDatabase2.update("offline_signal_statistics", contentValues3, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }
}
