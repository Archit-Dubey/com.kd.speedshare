package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegb;

/* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
public final class zzbw {

    /* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
    public static final class zza extends zzegb<zza, C0000zza> implements zzehn {
        /* access modifiers changed from: private */
        public static final zza zzek;
        private static volatile zzehy<zza> zzel;
        private int zzdw;
        private String zzdx = "";
        private long zzdy;
        private String zzdz = "";
        private String zzea = "";
        private String zzeb = "";
        private long zzec;
        private long zzed;
        private String zzee = "";
        private long zzef;
        private String zzeg = "";
        private String zzeh = "";
        private zzegm<zzb> zzei = zzbfh();
        private int zzej;

        /* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
        public static final class zzb extends zzegb<zzb, C0001zza> implements zzehn {
            private static volatile zzehy<zzb> zzel;
            /* access modifiers changed from: private */
            public static final zzb zzeo;
            private int zzdw;
            private String zzem = "";
            private String zzen = "";

            private zzb() {
            }

            /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zzb$zza  reason: collision with other inner class name */
            /* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
            public static final class C0001zza extends zzegb.zzb<zzb, C0001zza> implements zzehn {
                private C0001zza() {
                    super(zzb.zzeo);
                }

                /* synthetic */ C0001zza(zzbv zzbv) {
                    this();
                }
            }

            /* access modifiers changed from: protected */
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzbv.zzdv[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C0001zza((zzbv) null);
                    case 3:
                        return zza((zzehl) zzeo, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzdw", "zzem", "zzen"});
                    case 4:
                        return zzeo;
                    case 5:
                        zzehy<zzb> zzehy = zzel;
                        if (zzehy == null) {
                            synchronized (zzb.class) {
                                zzehy = zzel;
                                if (zzehy == null) {
                                    zzehy = new zzegb.zza<>(zzeo);
                                    zzel = zzehy;
                                }
                            }
                        }
                        return zzehy;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            static {
                zzb zzb = new zzb();
                zzeo = zzb;
                zzegb.zza(zzb.class, zzb);
            }
        }

        /* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
        public enum zzc implements zzegg {
            UNKNOWN(0),
            ENABLED(1),
            DISABLED(2);
            
            private static final zzegf<zzc> zzes = null;
            private final int value;

            public final int zzw() {
                return this.value;
            }

            public static zzc zzh(int i) {
                if (i == 0) {
                    return UNKNOWN;
                }
                if (i == 1) {
                    return ENABLED;
                }
                if (i != 2) {
                    return null;
                }
                return DISABLED;
            }

            public static zzegi zzx() {
                return zzbz.zzeu;
            }

            public final String toString() {
                return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            private zzc(int i) {
                this.value = i;
            }

            static {
                zzes = new zzbx();
            }
        }

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zza  reason: collision with other inner class name */
        /* compiled from: com.google.android.gms:play-services-gass@@19.2.0 */
        public static final class C0000zza extends zzegb.zzb<zza, C0000zza> implements zzehn {
            private C0000zza() {
                super(zza.zzek);
            }

            public final C0000zza zzj(String str) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzo(str);
                return this;
            }

            public final C0000zza zzc(long j) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzd(j);
                return this;
            }

            public final C0000zza zzk(String str) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzp(str);
                return this;
            }

            public final C0000zza zzl(String str) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzq(str);
                return this;
            }

            public final C0000zza zzm(String str) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzr(str);
                return this;
            }

            public final C0000zza zzn(String str) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzs(str);
                return this;
            }

            public final C0000zza zza(zzc zzc) {
                if (this.zziem) {
                    zzbfm();
                    this.zziem = false;
                }
                ((zza) this.zziel).zzb(zzc);
                return this;
            }

            /* synthetic */ C0000zza(zzbv zzbv) {
                this();
            }
        }

        /* access modifiers changed from: private */
        public final void zzo(String str) {
            str.getClass();
            this.zzdw |= 1;
            this.zzdx = str;
        }

        /* access modifiers changed from: private */
        public final void zzd(long j) {
            this.zzdw |= 2;
            this.zzdy = j;
        }

        /* access modifiers changed from: private */
        public final void zzp(String str) {
            str.getClass();
            this.zzdw |= 4;
            this.zzdz = str;
        }

        /* access modifiers changed from: private */
        public final void zzq(String str) {
            str.getClass();
            this.zzdw |= 8;
            this.zzea = str;
        }

        /* access modifiers changed from: private */
        public final void zzr(String str) {
            str.getClass();
            this.zzdw |= 16;
            this.zzeb = str;
        }

        /* access modifiers changed from: private */
        public final void zzs(String str) {
            str.getClass();
            this.zzdw |= 1024;
            this.zzeh = str;
        }

        /* access modifiers changed from: private */
        public final void zzb(zzc zzc2) {
            this.zzej = zzc2.zzw();
            this.zzdw |= 2048;
        }

        public static C0000zza zzt() {
            return (C0000zza) zzek.zzbfc();
        }

        /* access modifiers changed from: protected */
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzbv.zzdv[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C0000zza((zzbv) null);
                case 3:
                    return zza((zzehl) zzek, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzdw", "zzdx", "zzdy", "zzdz", "zzea", "zzeb", "zzec", "zzed", "zzee", "zzef", "zzeg", "zzeh", "zzei", zzb.class, "zzej", zzc.zzx()});
                case 4:
                    return zzek;
                case 5:
                    zzehy<zza> zzehy = zzel;
                    if (zzehy == null) {
                        synchronized (zza.class) {
                            zzehy = zzel;
                            if (zzehy == null) {
                                zzehy = new zzegb.zza<>(zzek);
                                zzel = zzehy;
                            }
                        }
                    }
                    return zzehy;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            zza zza = new zza();
            zzek = zza;
            zzegb.zza(zza.class, zza);
        }
    }
}
