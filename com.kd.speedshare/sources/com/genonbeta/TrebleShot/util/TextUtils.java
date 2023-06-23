package com.genonbeta.TrebleShot.util;

import android.content.Context;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TransferObject;
import com.kd.speedshare.R;
import java.text.NumberFormat;
import java.util.HashMap;

public class TextUtils {
    public static int getAdapterName(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("wlan", Integer.valueOf(R.string.text_interfaceWireless));
        hashMap.put("p2p", Integer.valueOf(R.string.text_interfaceWifiDirect));
        hashMap.put("bt-pan", Integer.valueOf(R.string.text_interfaceBluetooth));
        hashMap.put("eth", Integer.valueOf(R.string.text_interfaceEthernet));
        hashMap.put("tun", Integer.valueOf(R.string.text_interfaceVPN));
        hashMap.put("unk", Integer.valueOf(R.string.text_interfaceUnknown));
        for (String str2 : hashMap.keySet()) {
            if (str.startsWith(str2)) {
                return ((Integer) hashMap.get(str2)).intValue();
            }
        }
        return -1;
    }

    public static String getAdapterName(Context context, NetworkDevice.Connection connection) {
        return getAdapterName(context, connection.adapterName);
    }

    public static String getAdapterName(Context context, AddressedInterface addressedInterface) {
        return getAdapterName(context, addressedInterface.getNetworkInterface().getDisplayName());
    }

    public static String getAdapterName(Context context, String str) {
        int adapterName = getAdapterName(str);
        if (adapterName == -1) {
            return str;
        }
        return context.getString(adapterName);
    }

    public static String getLetters(String str, int i) {
        if (str == null || str.length() == 0) {
            str = "?";
        }
        int i2 = i - 1;
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split(" ")) {
            if (sb.length() > i2) {
                break;
            }
            if (str2.length() != 0) {
                sb.append(str2.charAt(0));
            }
        }
        return sb.toString().toUpperCase();
    }

    /* renamed from: com.genonbeta.TrebleShot.util.TextUtils$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag;

        /* JADX WARNING: Can't wrap try/catch for region: R(12:0|1|2|3|4|5|6|7|8|9|10|12) */
        /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0012 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001d */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0028 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0033 */
        static {
            /*
                com.genonbeta.TrebleShot.object.TransferObject$Flag[] r0 = com.genonbeta.TrebleShot.object.TransferObject.Flag.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag = r0
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.DONE     // Catch:{ NoSuchFieldError -> 0x0012 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0012 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0012 }
            L_0x0012:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag     // Catch:{ NoSuchFieldError -> 0x001d }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.IN_PROGRESS     // Catch:{ NoSuchFieldError -> 0x001d }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001d }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001d }
            L_0x001d:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag     // Catch:{ NoSuchFieldError -> 0x0028 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.PENDING     // Catch:{ NoSuchFieldError -> 0x0028 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0028 }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0028 }
            L_0x0028:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag     // Catch:{ NoSuchFieldError -> 0x0033 }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.INTERRUPTED     // Catch:{ NoSuchFieldError -> 0x0033 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0033 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0033 }
            L_0x0033:
                int[] r0 = $SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag     // Catch:{ NoSuchFieldError -> 0x003e }
                com.genonbeta.TrebleShot.object.TransferObject$Flag r1 = com.genonbeta.TrebleShot.object.TransferObject.Flag.REMOVED     // Catch:{ NoSuchFieldError -> 0x003e }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x003e }
                r2 = 5
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x003e }
            L_0x003e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.util.TextUtils.AnonymousClass1.<clinit>():void");
        }
    }

    public static String getTransactionFlagString(Context context, TransferObject transferObject, NumberFormat numberFormat) {
        int i = AnonymousClass1.$SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag[transferObject.flag.ordinal()];
        if (i == 1) {
            return numberFormat.format(1.0d);
        }
        if (i != 2) {
            return context.getString(getTransactionFlagString(transferObject.flag));
        }
        return numberFormat.format((transferObject.fileSize == 0 || transferObject.flag.getBytesValue() == 0) ? 0.0d : Long.valueOf(transferObject.flag.getBytesValue()).doubleValue() / Long.valueOf(transferObject.fileSize).doubleValue());
    }

    public static int getTransactionFlagString(TransferObject.Flag flag) {
        int i = AnonymousClass1.$SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag[flag.ordinal()];
        if (i == 1) {
            return R.string.text_taskCompleted;
        }
        if (i == 2) {
            return R.string.text_flagRunning;
        }
        if (i == 3) {
            return R.string.text_flagPending;
        }
        if (i != 4) {
            return i != 5 ? R.string.text_unknown : R.string.text_flagRemoved;
        }
        return R.string.text_flagInterrupted;
    }

    public static String makeWebShareLink(Context context, String str) {
        return context.getString(R.string.mode_webShareAddress, new Object[]{str, Integer.valueOf(AppConfig.SERVER_PORT_WEBSHARE)});
    }

    public static boolean searchWord(String str, String str2) {
        return str2 == null || str2.length() == 0 || str.toLowerCase().contains(str2.toLowerCase());
    }

    public static String trimText(String str, int i) {
        return (str == null || str.length() <= i) ? str : str.substring(0, i);
    }
}
