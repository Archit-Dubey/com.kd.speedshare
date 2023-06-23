package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzalh implements zzajp, zzale {
    private final zzalf zzdgz;
    private final HashSet<AbstractMap.SimpleEntry<String, zzahc<? super zzalf>>> zzdha = new HashSet<>();

    public zzalh(zzalf zzalf) {
        this.zzdgz = zzalf;
    }

    public final void zza(String str, Map map) {
        zzajo.zza((zzajp) this, str, map);
    }

    public final void zza(String str, JSONObject jSONObject) {
        zzajo.zza((zzajp) this, str, jSONObject);
    }

    public final void zzb(String str, JSONObject jSONObject) {
        zzajo.zzb(this, str, jSONObject);
    }

    public final void zzj(String str, String str2) {
        zzajo.zza((zzajp) this, str, str2);
    }

    public final void zzdb(String str) {
        this.zzdgz.zzdb(str);
    }

    public final void zza(String str, zzahc<? super zzalf> zzahc) {
        this.zzdgz.zza(str, zzahc);
        this.zzdha.add(new AbstractMap.SimpleEntry(str, zzahc));
    }

    public final void zzb(String str, zzahc<? super zzalf> zzahc) {
        this.zzdgz.zzb(str, zzahc);
        this.zzdha.remove(new AbstractMap.SimpleEntry(str, zzahc));
    }

    public final void zztf() {
        Iterator<AbstractMap.SimpleEntry<String, zzahc<? super zzalf>>> it = this.zzdha.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry next = it.next();
            String valueOf = String.valueOf(((zzahc) next.getValue()).toString());
            zzaxv.zzeh(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.zzdgz.zzb((String) next.getKey(), (zzahc) next.getValue());
        }
        this.zzdha.clear();
    }
}
