package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzeiv {
    static String zzam(zzeer zzeer) {
        zzeiy zzeiy = new zzeiy(zzeer);
        StringBuilder sb = new StringBuilder(zzeiy.size());
        for (int i = 0; i < zzeiy.size(); i++) {
            byte zzft = zzeiy.zzft(i);
            if (zzft == 34) {
                sb.append("\\\"");
            } else if (zzft == 39) {
                sb.append("\\'");
            } else if (zzft != 92) {
                switch (zzft) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (zzft >= 32 && zzft <= 126) {
                            sb.append((char) zzft);
                            break;
                        } else {
                            sb.append('\\');
                            sb.append((char) (((zzft >>> 6) & 3) + 48));
                            sb.append((char) (((zzft >>> 3) & 7) + 48));
                            sb.append((char) ((zzft & 7) + 48));
                            break;
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }
}
