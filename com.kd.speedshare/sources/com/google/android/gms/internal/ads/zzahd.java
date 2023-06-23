package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
final class zzahd implements zzahc<zzbfn> {
    zzahd() {
    }

    public final /* synthetic */ void zza(Object obj, Map map) {
        zzbfn zzbfn = (zzbfn) obj;
        zzq.zzkw();
        DisplayMetrics zza = zzaye.zza((WindowManager) zzbfn.getContext().getSystemService("window"));
        int i = zza.widthPixels;
        int i2 = zza.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        ((View) zzbfn).getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        zzbfn.zza("locationReady", hashMap);
        zzaxv.zzfd("GET LOCATION COMPILED");
    }
}
