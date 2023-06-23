package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzrr {
    private final int zzbtt;
    private final int zzbtu;
    private final int zzbtv;
    private final zzro zzbtw = new zzrv();

    public zzrr(int i) {
        this.zzbtu = i;
        this.zzbtt = 6;
        this.zzbtv = 0;
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            sb.append(((String) obj).toLowerCase(Locale.US));
            sb.append(10);
        }
        return zzbt(sb.toString());
    }

    private final String zzbt(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zzrt zzrt = new zzrt();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzbtu, new zzrq(this));
        for (String zzd : split) {
            String[] zzd2 = zzrs.zzd(zzd, false);
            if (zzd2.length != 0) {
                zzrx.zza(zzd2, this.zzbtu, this.zzbtt, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzrt.write(this.zzbtw.zzbs(((zzrw) it.next()).zzbua));
            } catch (IOException e) {
                zzaxv.zzc("Error while writing hash to byteStream", e);
            }
        }
        return zzrt.toString();
    }
}
