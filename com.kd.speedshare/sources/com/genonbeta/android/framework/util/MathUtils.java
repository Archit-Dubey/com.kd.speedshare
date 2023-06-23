package com.genonbeta.android.framework.util;

public class MathUtils {
    public static int calculatePercentage(long j, long j2) {
        return (int) ((100.0f / ((float) j)) * ((float) j2));
    }

    public static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
