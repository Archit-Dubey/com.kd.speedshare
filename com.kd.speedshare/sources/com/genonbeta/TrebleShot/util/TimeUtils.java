package com.genonbeta.TrebleShot.util;

import android.content.Context;
import android.text.format.DateUtils;
import com.genonbeta.android.framework.util.date.ElapsedTime;
import com.kd.speedshare.R;
import java.util.ArrayList;

public class TimeUtils {
    public static CharSequence formatDateTime(Context context, long j) {
        return DateUtils.formatDateTime(context, j, 17);
    }

    public static String getDuration(long j) {
        StringBuilder sb = new StringBuilder();
        ElapsedTime.ElapsedTimeCalculator elapsedTimeCalculator = new ElapsedTime.ElapsedTimeCalculator(j / 1000);
        long crop = elapsedTimeCalculator.crop(3600);
        long crop2 = elapsedTimeCalculator.crop(60);
        long leftTime = elapsedTimeCalculator.getLeftTime();
        if (crop > 0) {
            if (crop < 10) {
                sb.append("0");
            }
            sb.append(crop);
            sb.append(":");
        }
        if (crop2 < 10) {
            sb.append("0");
        }
        sb.append(crop2);
        sb.append(":");
        if (leftTime < 10) {
            sb.append("0");
        }
        sb.append(leftTime);
        return sb.toString();
    }

    public static String getFriendlyElapsedTime(Context context, long j) {
        ElapsedTime elapsedTime = new ElapsedTime(j);
        ArrayList<String> arrayList = new ArrayList<>();
        if (elapsedTime.getYears() > 0) {
            arrayList.add(context.getString(R.string.text_yearCountShort, new Object[]{Long.valueOf(elapsedTime.getYears())}));
        }
        if (elapsedTime.getMonths() > 0) {
            arrayList.add(context.getString(R.string.text_monthCountShort, new Object[]{Long.valueOf(elapsedTime.getMonths())}));
        }
        if (elapsedTime.getYears() == 0) {
            if (elapsedTime.getDays() > 0) {
                arrayList.add(context.getString(R.string.text_dayCountShort, new Object[]{Long.valueOf(elapsedTime.getDays())}));
            }
            if (elapsedTime.getMonths() == 0) {
                if (elapsedTime.getHours() > 0) {
                    arrayList.add(context.getString(R.string.text_hourCountShort, new Object[]{Long.valueOf(elapsedTime.getHours())}));
                }
                if (elapsedTime.getDays() == 0) {
                    if (elapsedTime.getMinutes() > 0) {
                        arrayList.add(context.getString(R.string.text_minuteCountShort, new Object[]{Long.valueOf(elapsedTime.getMinutes())}));
                    }
                    if (elapsedTime.getHours() == 0) {
                        arrayList.add(context.getString(R.string.text_secondCountShort, new Object[]{Long.valueOf(elapsedTime.getSeconds())}));
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        for (String str : arrayList) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static String getTimeAgo(Context context, long j) {
        int currentTimeMillis = (int) ((System.currentTimeMillis() - j) / 1000);
        if (currentTimeMillis == 0) {
            return context.getString(R.string.text_timeJustNow);
        }
        if (currentTimeMillis < 60) {
            return context.getResources().getQuantityString(R.plurals.text_secondsAgo, currentTimeMillis, new Object[]{Integer.valueOf(currentTimeMillis)});
        } else if (currentTimeMillis >= 3600) {
            return context.getString(R.string.text_longAgo);
        } else {
            int i = currentTimeMillis / 60;
            return context.getResources().getQuantityString(R.plurals.text_minutesAgo, i, new Object[]{Integer.valueOf(i)});
        }
    }
}
