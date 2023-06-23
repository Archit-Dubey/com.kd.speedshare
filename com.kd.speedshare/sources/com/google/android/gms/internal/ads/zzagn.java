package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzagn implements zzahc<zzbfn> {
    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                zzaxv.zzfd("No label given for CSI tick.");
            } else if (TextUtils.isEmpty(str4)) {
                zzaxv.zzfd("No timestamp given for CSI tick.");
            } else {
                try {
                    long elapsedRealtime = zzq.zzld().elapsedRealtime() + (Long.parseLong(str4) - zzq.zzld().currentTimeMillis());
                    if (TextUtils.isEmpty(str3)) {
                        str3 = "native:view_load";
                    }
                    zzbfn.zzzn().zzb(str2, str3, elapsedRealtime);
                } catch (NumberFormatException e) {
                    zzaxv.zzd("Malformed timestamp for CSI tick.", e);
                }
            }
        } else if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                zzaxv.zzfd("No value given for CSI experiment.");
                return;
            }
            zzabi zzrp = zzbfn.zzzn().zzrp();
            if (zzrp == null) {
                zzaxv.zzfd("No ticker for WebView, dropping experiment ID.");
            } else {
                zzrp.zzh("e", str5);
            }
        } else if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                zzaxv.zzfd("No value given for CSI extra.");
            } else if (TextUtils.isEmpty(str6)) {
                zzaxv.zzfd("No name given for CSI extra.");
            } else {
                zzabi zzrp2 = zzbfn.zzzn().zzrp();
                if (zzrp2 == null) {
                    zzaxv.zzfd("No ticker for WebView, dropping extra parameter.");
                } else {
                    zzrp2.zzh(str6, str7);
                }
            }
        }
    }
}
