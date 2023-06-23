package com.genonbeta.TrebleShot.util;

import android.net.wifi.WifiConfiguration;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class NetworkUtils {
    public static String bytesToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            byte b2 = b & 255;
            if (b2 < 16) {
                sb.append("0");
            }
            sb.append(Integer.toHexString(b2).toUpperCase());
        }
        return sb.toString();
    }

    public static String convertInet4Address(int i) {
        return String.format("%d.%d.%d.%d", new Object[]{Integer.valueOf(i & 255), Integer.valueOf((i >> 8) & 255), Integer.valueOf((i >> 16) & 255), Integer.valueOf((i >> 24) & 255)});
    }

    public static String getAddressPrefix(String str) {
        return str.substring(0, str.lastIndexOf(".") + 1);
    }

    public static List<String> getMACAddressList(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            for (T t : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (str == null || t.getName().equalsIgnoreCase(str)) {
                    byte[] hardwareAddress = t.getHardwareAddress();
                    if (hardwareAddress != null) {
                        StringBuilder sb = new StringBuilder();
                        int length = hardwareAddress.length;
                        for (int i = 0; i < length; i++) {
                            sb.append(String.format("%02X:", new Object[]{Byte.valueOf(hardwareAddress[i])}));
                        }
                        if (sb.length() > 0) {
                            sb.deleteCharAt(sb.length() - 1);
                        }
                        arrayList.add(sb.toString());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public static List<AddressedInterface> getInterfaces(boolean z, String[] strArr) {
        boolean z2;
        ArrayList arrayList = new ArrayList();
        try {
            for (T t : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (strArr == null || strArr.length <= 0) {
                    z2 = false;
                } else {
                    z2 = false;
                    for (String contains : strArr) {
                        if (t.getDisplayName().contains(contains)) {
                            z2 = true;
                        }
                    }
                }
                if (!z2) {
                    for (T t2 : Collections.list(t.getInetAddresses())) {
                        if (!t2.isLoopbackAddress()) {
                            String upperCase = t2.getHostAddress().toUpperCase();
                            boolean z3 = t2 instanceof Inet4Address;
                            if (z && z3) {
                                arrayList.add(new AddressedInterface(t, upperCase));
                            } else if (!z) {
                                int indexOf = upperCase.indexOf(37);
                                if (indexOf >= 0) {
                                    upperCase = upperCase.substring(0, indexOf);
                                }
                                arrayList.add(new AddressedInterface(t, upperCase));
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public static int getAllowedKeyManagement(WifiConfiguration wifiConfiguration) {
        String bitSet = wifiConfiguration.allowedKeyManagement.toString();
        try {
            return Integer.valueOf(bitSet.substring(1, bitSet.length() - 1)).intValue();
        } catch (Exception unused) {
            return -1;
        }
    }

    public static byte[] getUTF8Bytes(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (Exception unused) {
            return null;
        }
    }

    public static String loadFileAsString(String str) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(str), 1024);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
            byte[] bArr = new byte[1024];
            boolean z = false;
            int i = 0;
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                if (i == 0 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65) {
                    byteArrayOutputStream.write(bArr, 3, read - 3);
                    z = true;
                } else {
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                i += read;
            }
            return z ? new String(byteArrayOutputStream.toByteArray(), "UTF-8") : new String(byteArrayOutputStream.toByteArray());
        } finally {
            try {
                bufferedInputStream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean ping(String str, int i) {
        try {
            return InetAddress.getByName(str).isReachable(i);
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean ping(String str) {
        try {
            Runtime runtime = Runtime.getRuntime();
            if (runtime.exec("/system/bin/ping -c 1 -w 100 " + str).waitFor() == 0) {
                return true;
            }
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        } catch (InterruptedException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean testSocket(String str, int i) {
        InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i);
        Socket socket = new Socket();
        try {
            socket.bind((SocketAddress) null);
            socket.connect(inetSocketAddress);
            socket.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
