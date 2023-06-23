package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
public final class zzaqf {
    private static final Object lock = new Object();
    private static boolean zzdmy = false;
    private static boolean zzzg = false;
    private zzdpi zzdmz;

    public final boolean zzp(Context context) {
        synchronized (lock) {
            if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
                return false;
            }
            if (zzzg) {
                return true;
            }
            try {
                zzq(context);
                boolean zzau = this.zzdmz.zzau(ObjectWrapper.wrap(context));
                zzzg = zzau;
                return zzau;
            } catch (RemoteException e) {
                e = e;
                zzbba.zze("#007 Could not call remote method.", e);
                return false;
            } catch (NullPointerException e2) {
                e = e2;
                zzbba.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    private final void zzq(Context context) {
        synchronized (lock) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue() && !zzdmy) {
                try {
                    zzdmy = true;
                    this.zzdmz = (zzdpi) zzbaz.zza(context, "com.google.android.gms.ads.omid.DynamiteOmid", zzaqe.zzbxr);
                } catch (zzbbb e) {
                    zzbba.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final String getVersion(Context context) {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
            return null;
        }
        try {
            zzq(context);
            String valueOf = String.valueOf(this.zzdmz.getVersion());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzbba.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4) {
        return zza(str, webView, str2, str3, str4, "Google");
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (lock) {
            try {
                if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
                    if (zzzg) {
                        try {
                            return this.zzdmz.zza(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            zzbba.zze("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        }
    }

    public final void zzab(IObjectWrapper iObjectWrapper) {
        synchronized (lock) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
                if (zzzg) {
                    try {
                        this.zzdmz.zzab(iObjectWrapper);
                    } catch (RemoteException | NullPointerException e) {
                        zzbba.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }

    public final void zzac(IObjectWrapper iObjectWrapper) {
        synchronized (lock) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
                if (zzzg) {
                    try {
                        this.zzdmz.zzac(iObjectWrapper);
                    } catch (RemoteException | NullPointerException e) {
                        zzbba.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }

    public final void zza(IObjectWrapper iObjectWrapper, View view) {
        synchronized (lock) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
                if (zzzg) {
                    try {
                        this.zzdmz.zzc(iObjectWrapper, ObjectWrapper.wrap(view));
                    } catch (RemoteException | NullPointerException e) {
                        zzbba.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }

    public final void zzb(IObjectWrapper iObjectWrapper, View view) {
        synchronized (lock) {
            if (((Boolean) zzwg.zzpw().zzd(zzaav.zzctk)).booleanValue()) {
                if (zzzg) {
                    try {
                        this.zzdmz.zzd(iObjectWrapper, ObjectWrapper.wrap(view));
                    } catch (RemoteException | NullPointerException e) {
                        zzbba.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }
}
