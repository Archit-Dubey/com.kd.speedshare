package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzann extends zzamv {
    /* access modifiers changed from: private */
    public final Object zzdka;
    private zzano zzdkb;
    private zzatx zzdkc;
    private IObjectWrapper zzdkd;
    /* access modifiers changed from: private */
    public MediationRewardedAd zzdke;

    public zzann(MediationAdapter mediationAdapter) {
        this.zzdka = mediationAdapter;
    }

    public zzann(Adapter adapter) {
        this.zzdka = adapter;
    }

    public final IObjectWrapper zztj() throws RemoteException {
        Object obj = this.zzdka;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzvh zzvh, zzve zzve, String str, zzamx zzamx) throws RemoteException {
        zza(iObjectWrapper, zzvh, zzve, str, (String) null, zzamx);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzvh zzvh, zzve zzve, String str, String str2, zzamx zzamx) throws RemoteException {
        Date date;
        AdSize zza;
        zzvh zzvh2 = zzvh;
        zzve zzve2 = zzve;
        String str3 = str;
        if (this.zzdka instanceof MediationBannerAdapter) {
            zzbba.zzee("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzdka;
                Bundle bundle = null;
                HashSet hashSet = zzve2.zzcgu != null ? new HashSet(zzve2.zzcgu) : null;
                if (zzve2.zzcgs == -1) {
                    date = null;
                } else {
                    date = new Date(zzve2.zzcgs);
                }
                zzank zzank = new zzank(date, zzve2.zzcgt, hashSet, zzve2.zznb, zzc(zzve), zzve2.zzadg, zzve2.zzche, zzve2.zzadh, zza(str3, zzve2));
                if (zzve2.zzcgz != null) {
                    bundle = zzve2.zzcgz.getBundle(mediationBannerAdapter.getClass().getName());
                }
                Bundle bundle2 = bundle;
                if (zzvh2.zzchp) {
                    zza = zzb.zza(zzvh2.width, zzvh2.height);
                } else {
                    zza = zzb.zza(zzvh2.width, zzvh2.height, zzvh2.zzacv);
                }
                mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzano(zzamx), zza(str3, zzve2, str2), zza, zzank, bundle2);
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final Bundle zztm() {
        Object obj = this.zzdka;
        if (obj instanceof zzbid) {
            return ((zzbid) obj).zztm();
        }
        String canonicalName = zzbid.class.getCanonicalName();
        String canonicalName2 = this.zzdka.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzbba.zzfd(sb.toString());
        return new Bundle();
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzve zzve, String str, zzamx zzamx) throws RemoteException {
        zza(iObjectWrapper, zzve, str, (String) null, zzamx);
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzve zzve, String str, String str2, zzamx zzamx) throws RemoteException {
        Date date;
        zzve zzve2 = zzve;
        String str3 = str;
        if (this.zzdka instanceof MediationInterstitialAdapter) {
            zzbba.zzee("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzdka;
                Bundle bundle = null;
                HashSet hashSet = zzve2.zzcgu != null ? new HashSet(zzve2.zzcgu) : null;
                if (zzve2.zzcgs == -1) {
                    date = null;
                } else {
                    date = new Date(zzve2.zzcgs);
                }
                zzank zzank = new zzank(date, zzve2.zzcgt, hashSet, zzve2.zznb, zzc(zzve), zzve2.zzadg, zzve2.zzche, zzve2.zzadh, zza(str3, zzve2));
                if (zzve2.zzcgz != null) {
                    bundle = zzve2.zzcgz.getBundle(mediationInterstitialAdapter.getClass().getName());
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzano(zzamx), zza(str3, zzve2, str2), zzank, bundle);
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.zzdka;
        if (obj instanceof zzbic) {
            return ((zzbic) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbic.class.getCanonicalName();
        String canonicalName2 = this.zzdka.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzbba.zzfd(sb.toString());
        return new Bundle();
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzve zzve, String str, String str2, zzamx zzamx, zzadj zzadj, List<String> list) throws RemoteException {
        Date date;
        zzve zzve2 = zzve;
        String str3 = str;
        Object obj = this.zzdka;
        if (obj instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                Bundle bundle = null;
                HashSet hashSet = zzve2.zzcgu != null ? new HashSet(zzve2.zzcgu) : null;
                if (zzve2.zzcgs == -1) {
                    date = null;
                } else {
                    date = new Date(zzve2.zzcgs);
                }
                zzans zzans = new zzans(date, zzve2.zzcgt, hashSet, zzve2.zznb, zzc(zzve), zzve2.zzadg, zzadj, list, zzve2.zzche, zzve2.zzadh, zza(str3, zzve2));
                if (zzve2.zzcgz != null) {
                    bundle = zzve2.zzcgz.getBundle(mediationNativeAdapter.getClass().getName());
                }
                this.zzdkb = new zzano(zzamx);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzdkb, zza(str3, zzve2, str2), zzans, bundle);
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final Bundle zztn() {
        return new Bundle();
    }

    public final zzana zztk() {
        NativeAdMapper zztx = this.zzdkb.zztx();
        if (zztx instanceof NativeAppInstallAdMapper) {
            return new zzanq((NativeAppInstallAdMapper) zztx);
        }
        return null;
    }

    public final zzang zztq() {
        UnifiedNativeAdMapper zzty = this.zzdkb.zzty();
        if (zzty != null) {
            return new zzaoi(zzty);
        }
        return null;
    }

    public final zzanf zztl() {
        NativeAdMapper zztx = this.zzdkb.zztx();
        if (zztx instanceof NativeContentAdMapper) {
            return new zzant((NativeContentAdMapper) zztx);
        }
        return null;
    }

    public final zzaep zztp() {
        NativeCustomTemplateAd zztz = this.zzdkb.zztz();
        if (zztz instanceof zzaeq) {
            return ((zzaeq) zztz).zzsk();
        }
        return null;
    }

    public final boolean zzto() {
        return this.zzdka instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzve zzve, String str, zzatx zzatx, String str2) throws RemoteException {
        Bundle bundle;
        zzank zzank;
        Date date;
        zzve zzve2 = zzve;
        zzatx zzatx2 = zzatx;
        String str3 = str2;
        Object obj = this.zzdka;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbba.zzee("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdka;
                Bundle zza = zza(str3, zzve2, (String) null);
                if (zzve2 != null) {
                    HashSet hashSet = zzve2.zzcgu != null ? new HashSet(zzve2.zzcgu) : null;
                    if (zzve2.zzcgs == -1) {
                        date = null;
                    } else {
                        date = new Date(zzve2.zzcgs);
                    }
                    zzank zzank2 = new zzank(date, zzve2.zzcgt, hashSet, zzve2.zznb, zzc(zzve), zzve2.zzadg, zzve2.zzche, zzve2.zzadh, zza(str3, zzve2));
                    bundle = zzve2.zzcgz != null ? zzve2.zzcgz.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                    zzank = zzank2;
                } else {
                    zzank = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzank, str, new zzauc(zzatx2), zza, bundle);
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            this.zzdkd = iObjectWrapper;
            this.zzdkc = zzatx2;
            zzatx2.zzaf(ObjectWrapper.wrap(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzatx zzatx, List<String> list) throws RemoteException {
        if (this.zzdka instanceof InitializableMediationRewardedVideoAdAdapter) {
            zzbba.zzee("Initialize rewarded video adapter.");
            try {
                InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzdka;
                ArrayList arrayList = new ArrayList();
                for (String zza : list) {
                    arrayList.add(zza(zza, (zzve) null, (String) null));
                }
                initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzauc(zzatx), arrayList);
            } catch (Throwable th) {
                zzbba.zzd("Could not initialize rewarded video adapter.", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void zza(zzve zzve, String str) throws RemoteException {
        zza(zzve, str, (String) null);
    }

    public final void zza(zzve zzve, String str, String str2) throws RemoteException {
        Date date;
        zzve zzve2 = zzve;
        String str3 = str;
        Object obj = this.zzdka;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbba.zzee("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzdka;
                Bundle bundle = null;
                HashSet hashSet = zzve2.zzcgu != null ? new HashSet(zzve2.zzcgu) : null;
                if (zzve2.zzcgs == -1) {
                    date = null;
                } else {
                    date = new Date(zzve2.zzcgs);
                }
                zzank zzank = new zzank(date, zzve2.zzcgt, hashSet, zzve2.zznb, zzc(zzve), zzve2.zzadg, zzve2.zzche, zzve2.zzadh, zza(str3, zzve2));
                if (zzve2.zzcgz != null) {
                    bundle = zzve2.zzcgz.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(zzank, zza(str3, zzve2, str2), bundle);
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            zzb(this.zzdkd, zzve2, str3, new zzanr((Adapter) this.zzdka, this.zzdkc));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void showVideo() throws RemoteException {
        Object obj = this.zzdka;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbba.zzee("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzdka).showVideo();
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzdke;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzdkd));
            } else {
                zzbba.zzfb("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final boolean isInitialized() throws RemoteException {
        Object obj = this.zzdka;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbba.zzee("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzdka).isInitialized();
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return this.zzdkc != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void zzb(IObjectWrapper iObjectWrapper, zzve zzve, String str, zzamx zzamx) throws RemoteException {
        zzve zzve2 = zzve;
        String str2 = str;
        if (this.zzdka instanceof Adapter) {
            zzbba.zzee("Requesting rewarded ad from adapter.");
            try {
                MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza = zza(zzamx);
                Bundle zza2 = zza(str2, zzve2, (String) null);
                Bundle zzd = zzd(zzve2);
                boolean zzc = zzc(zzve);
                Location location = zzve2.zznb;
                int i = zzve2.zzadg;
                int i2 = zzve2.zzadh;
                String zza3 = zza(str2, zzve2);
                MediationRewardedAdConfiguration mediationRewardedAdConfiguration = r5;
                MediationRewardedAdConfiguration mediationRewardedAdConfiguration2 = new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zza2, zzd, zzc, location, i, i2, zza3, "");
                ((Adapter) this.zzdka).loadRewardedAd(mediationRewardedAdConfiguration, zza);
            } catch (Exception e) {
                zzbba.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void zzc(IObjectWrapper iObjectWrapper, zzve zzve, String str, zzamx zzamx) throws RemoteException {
        zzve zzve2 = zzve;
        String str2 = str;
        if (this.zzdka instanceof Adapter) {
            zzbba.zzee("Requesting rewarded interstitial ad from adapter.");
            try {
                MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza = zza(zzamx);
                Bundle zza2 = zza(str2, zzve2, (String) null);
                Bundle zzd = zzd(zzve2);
                boolean zzc = zzc(zzve);
                Location location = zzve2.zznb;
                int i = zzve2.zzadg;
                int i2 = zzve2.zzadh;
                String zza3 = zza(str2, zzve2);
                MediationRewardedAdConfiguration mediationRewardedAdConfiguration = r5;
                MediationRewardedAdConfiguration mediationRewardedAdConfiguration2 = new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), "", zza2, zzd, zzc, location, i, i2, zza3, "");
                ((Adapter) this.zzdka).loadRewardedInterstitialAd(mediationRewardedAdConfiguration, zza);
            } catch (Exception e) {
                zzbba.zzc("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzdka instanceof Adapter) {
            zzbba.zzee("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzdke;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            } else {
                zzbba.zzfb("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void setImmersiveMode(boolean z) throws RemoteException {
        Object obj = this.zzdka;
        if (!(obj instanceof OnImmersiveModeUpdatedListener)) {
            String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzee(sb.toString());
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            zzbba.zzc("", th);
        }
    }

    public final zzyi getVideoController() {
        Object obj = this.zzdka;
        if (!(obj instanceof zza)) {
            return null;
        }
        try {
            return ((zza) obj).getVideoController();
        } catch (Throwable th) {
            zzbba.zzc("", th);
            return null;
        }
    }

    public final void showInterstitial() throws RemoteException {
        if (this.zzdka instanceof MediationInterstitialAdapter) {
            zzbba.zzee("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzdka).showInterstitial();
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzdka.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbba.zzfd(sb.toString());
            throw new RemoteException();
        }
    }

    public final void destroy() throws RemoteException {
        Object obj = this.zzdka;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    public final void pause() throws RemoteException {
        Object obj = this.zzdka;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    public final void resume() throws RemoteException {
        Object obj = this.zzdka;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                zzbba.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    public final void zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zzdka;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, zzaie zzaie, List<zzaim> list) throws RemoteException {
        AdFormat adFormat;
        if (this.zzdka instanceof Adapter) {
            zzanm zzanm = new zzanm(this, zzaie);
            ArrayList arrayList = new ArrayList();
            for (zzaim next : list) {
                String str = next.zzdev;
                char c = 65535;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals("banner")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -239580146:
                        if (str.equals("rewarded")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 604727084:
                        if (str.equals("interstitial")) {
                            c = 1;
                            break;
                        }
                        break;
                }
                if (c == 0) {
                    adFormat = AdFormat.BANNER;
                } else if (c == 1) {
                    adFormat = AdFormat.INTERSTITIAL;
                } else if (c == 2) {
                    adFormat = AdFormat.REWARDED;
                } else if (c == 3) {
                    adFormat = AdFormat.NATIVE;
                } else {
                    throw new RemoteException();
                }
                arrayList.add(new MediationConfiguration(adFormat, next.extras));
            }
            ((Adapter) this.zzdka).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzanm, arrayList);
            return;
        }
        throw new RemoteException();
    }

    public final zzapl zztr() {
        Object obj = this.zzdka;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapl.zza(((Adapter) obj).getVersionInfo());
    }

    public final zzapl zzts() {
        Object obj = this.zzdka;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapl.zza(((Adapter) obj).getSDKVersionInfo());
    }

    private final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> zza(zzamx zzamx) {
        return new zzanp(this, zzamx);
    }

    private final Bundle zza(String str, zzve zzve, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzbba.zzee(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                bundle = bundle2;
            }
            if (this.zzdka instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzve != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzve.zzadg);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzbba.zzc("", th);
            throw new RemoteException();
        }
    }

    private static boolean zzc(zzve zzve) {
        if (zzve.zzcgv) {
            return true;
        }
        zzwg.zzps();
        return zzbaq.zzyh();
    }

    private static String zza(String str, zzve zzve) {
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return zzve.zzadi;
        }
    }

    private final Bundle zzd(zzve zzve) {
        Bundle bundle;
        if (zzve.zzcgz == null || (bundle = zzve.zzcgz.getBundle(this.zzdka.getClass().getName())) == null) {
            return new Bundle();
        }
        return bundle;
    }
}
