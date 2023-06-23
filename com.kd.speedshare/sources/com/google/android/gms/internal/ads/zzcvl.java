package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public class zzcvl extends zzamw {
    private final zzbtv zzfpa;
    private final zzbtl zzfpq;
    private final zzbss zzftu;
    private final zzbui zzfty;
    private final zzbtc zzfuv;
    private final zzbsk zzfuw;
    private final zzbwj zzgby;
    private final zzbwg zzgnk;
    private final zzbyz zzgnu;

    public zzcvl(zzbsk zzbsk, zzbtc zzbtc, zzbtl zzbtl, zzbtv zzbtv, zzbwj zzbwj, zzbui zzbui, zzbyz zzbyz, zzbwg zzbwg, zzbss zzbss) {
        this.zzfuw = zzbsk;
        this.zzfuv = zzbtc;
        this.zzfpq = zzbtl;
        this.zzfpa = zzbtv;
        this.zzgby = zzbwj;
        this.zzfty = zzbui;
        this.zzgnu = zzbyz;
        this.zzgnk = zzbwg;
        this.zzftu = zzbss;
    }

    public final void onAdFailedToLoad(int i) {
    }

    public final void zza(zzaep zzaep, String str) {
    }

    public final void zza(zzamy zzamy) {
    }

    public void zza(zzaud zzaud) throws RemoteException {
    }

    public final void zzb(Bundle bundle) throws RemoteException {
    }

    public void zzb(zzaub zzaub) {
    }

    public final void zzc(int i, String str) {
    }

    public final void zzdm(String str) {
    }

    public void zztu() throws RemoteException {
    }

    public final void onAdClicked() {
        this.zzfuw.onAdClicked();
    }

    public final void onAdClosed() {
        this.zzfty.zzud();
    }

    public final void onAdLeftApplication() {
        this.zzfpq.onAdLeftApplication();
    }

    public final void onAdOpened() {
        this.zzfty.zzue();
        this.zzgnk.zzajj();
    }

    public final void onAppEvent(String str, String str2) {
        this.zzgby.onAppEvent(str, str2);
    }

    public final void onAdLoaded() {
        this.zzfpa.onAdLoaded();
    }

    public void onAdImpression() {
        this.zzfuv.onAdImpression();
        this.zzgnk.zzaji();
    }

    public final void onVideoPause() {
        this.zzgnu.onVideoPause();
    }

    public void zztt() {
        this.zzgnu.onVideoStart();
    }

    public void onVideoEnd() {
        this.zzgnu.onVideoEnd();
    }

    public final void onVideoPlay() throws RemoteException {
        this.zzgnu.onVideoPlay();
    }

    @Deprecated
    public final void zzdc(int i) throws RemoteException {
        this.zzftu.zzc(new zzuy(i, "", ""));
    }

    public final void zzdn(String str) {
        this.zzftu.zzc(new zzuy(0, str, ""));
    }
}
