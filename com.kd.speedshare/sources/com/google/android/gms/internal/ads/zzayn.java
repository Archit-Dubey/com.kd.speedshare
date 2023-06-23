package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.os.StatFs;
import android.view.View;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzayn extends zzayo {
    public final int zzxn() {
        return 14;
    }

    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    public final long zzxr() {
        if (!((Boolean) zzwg.zzpw().zzd(zzaav.zzcra)).booleanValue()) {
            return -1;
        }
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
