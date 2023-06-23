package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzcdg {
    private final Executor executor;
    private final zzadj zzdkn;
    private final zzaxx zzdyn;
    private final Executor zzflp;
    private final zzdla zzfpv;
    private final zzcck zzfuu;
    private final zzcco zzfwa;
    private final zzccj zzfwi;
    private final zzcdo zzfyi;
    private final zzcdw zzfyj;

    public zzcdg(zzaxx zzaxx, zzdla zzdla, zzcco zzcco, zzcck zzcck, zzcdo zzcdo, zzcdw zzcdw, Executor executor2, Executor executor3, zzccj zzccj) {
        this.zzdyn = zzaxx;
        this.zzfpv = zzdla;
        this.zzdkn = zzdla.zzdkn;
        this.zzfwa = zzcco;
        this.zzfuu = zzcck;
        this.zzfyi = zzcdo;
        this.zzfyj = zzcdw;
        this.zzflp = executor2;
        this.executor = executor3;
        this.zzfwi = zzccj;
    }

    public final void zza(zzcee zzcee) {
        this.zzflp.execute(new zzcdj(this, zzcee));
    }

    private static void zza(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    public final void zzc(zzcee zzcee) {
        if (zzcee != null && this.zzfyi != null && zzcee.zzaml() != null && this.zzfwa.zzals()) {
            try {
                zzcee.zzaml().addView(this.zzfyi.zzamr());
            } catch (zzbfz e) {
                zzaxv.zza("web view can not be obtained", e);
            }
        }
    }

    public final void zzd(zzcee zzcee) {
        if (zzcee != null) {
            Context context = zzcee.zzahk().getContext();
            if (zzbae.zza(this.zzfwa.zzfxi)) {
                if (!(context instanceof Activity)) {
                    zzaxv.zzee("Activity context is needed for policy validator.");
                } else if (this.zzfyj != null && zzcee.zzaml() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        windowManager.addView(this.zzfyj.zza(this.zzfwa.zzfxi, zzcee.zzaml(), windowManager), zzbae.zzyb());
                    } catch (zzbfz e) {
                        zzaxv.zza("web view can not be obtained", e);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public static boolean zza(zzcee zzcee, String[] strArr) {
        Map<String, WeakReference<View>> zzami = zzcee.zzami();
        if (zzami == null) {
            return false;
        }
        for (String str : strArr) {
            if (zzami.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        View zzalk = this.zzfuu.zzalk();
        if (zzalk == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzalk.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzalk.getParent()).removeView(zzalk);
        }
        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcro)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(zzalk, layoutParams);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzfuu.zzalk() == null) {
            return;
        }
        if (2 == this.zzfuu.zzalg() || 1 == this.zzfuu.zzalg()) {
            this.zzdyn.zza(this.zzfpv.zzhaz, String.valueOf(this.zzfuu.zzalg()), z);
        } else if (6 == this.zzfuu.zzalg()) {
            this.zzdyn.zza(this.zzfpv.zzhaz, "2", z);
            this.zzdyn.zza(this.zzfpv.zzhaz, "1", z);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zze(zzcee zzcee) {
        ViewGroup viewGroup;
        View view;
        ViewGroup viewGroup2;
        IObjectWrapper iObjectWrapper;
        Drawable drawable;
        int i = 0;
        IObjectWrapper iObjectWrapper2 = null;
        if (this.zzfwa.zzalu() || this.zzfwa.zzalt()) {
            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW};
            int i2 = 0;
            while (true) {
                if (i2 < 2) {
                    View zzge = zzcee.zzge(strArr[i2]);
                    if (zzge != null && (zzge instanceof ViewGroup)) {
                        viewGroup = (ViewGroup) zzge;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
        }
        viewGroup = null;
        boolean z = viewGroup != null;
        Context context = zzcee.zzahk().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.zzfuu.zzalh() != null) {
            view = this.zzfuu.zzalh();
            zzadj zzadj = this.zzdkn;
            if (zzadj != null && !z) {
                zza(layoutParams, zzadj.zzbnj);
                view.setLayoutParams(layoutParams);
            }
        } else if (!(this.zzfuu.zzsd() instanceof zzada)) {
            view = null;
        } else {
            zzada zzada = (zzada) this.zzfuu.zzsd();
            if (!z) {
                zza(layoutParams, zzada.zzrw());
            }
            zzadd zzadd = new zzadd(context, zzada, layoutParams);
            zzadd.setContentDescription((CharSequence) zzwg.zzpw().zzd(zzaav.zzcrl));
            view = zzadd;
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(zzcee.zzahk().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(view);
                FrameLayout zzaml = zzcee.zzaml();
                if (zzaml != null) {
                    zzaml.addView(adChoicesView);
                }
            }
            zzcee.zza(zzcee.zzamk(), view, true);
        }
        String[] strArr2 = zzcde.zzfxw;
        int length = strArr2.length;
        while (true) {
            if (i >= length) {
                viewGroup2 = null;
                break;
            }
            View zzge2 = zzcee.zzge(strArr2[i]);
            if (zzge2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzge2;
                break;
            }
            i++;
        }
        this.executor.execute(new zzcdi(this, viewGroup2));
        if (viewGroup2 == null) {
            return;
        }
        if (!zza(viewGroup2)) {
            viewGroup2.removeAllViews();
            View zzahk = zzcee.zzahk();
            Context context2 = zzahk != null ? zzahk.getContext() : null;
            if (context2 != null) {
                if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcrk)).booleanValue()) {
                    zzado zzsn = this.zzfwi.zzsn();
                    if (zzsn != null) {
                        try {
                            iObjectWrapper = zzsn.zzsa();
                        } catch (RemoteException unused) {
                            zzaxv.zzfd("Could not get main image drawable");
                            return;
                        }
                    } else {
                        return;
                    }
                } else {
                    zzadt zzali = this.zzfuu.zzali();
                    if (zzali != null) {
                        try {
                            iObjectWrapper = zzali.zzry();
                        } catch (RemoteException unused2) {
                            zzaxv.zzfd("Could not get drawable from image");
                            return;
                        }
                    } else {
                        return;
                    }
                }
                if (iObjectWrapper != null && (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) != null) {
                    ImageView imageView = new ImageView(context2);
                    imageView.setImageDrawable(drawable);
                    if (zzcee != null) {
                        iObjectWrapper2 = zzcee.zzamn();
                    }
                    if (iObjectWrapper2 != null) {
                        if (((Boolean) zzwg.zzpw().zzd(zzaav.zzcvo)).booleanValue()) {
                            imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapper2));
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                            viewGroup2.addView(imageView);
                        }
                    }
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                }
            }
        } else if (this.zzfuu.zzall() != null) {
            this.zzfuu.zzall().zza((zzadh) new zzcdl(this, zzcee, viewGroup2));
        }
    }
}
