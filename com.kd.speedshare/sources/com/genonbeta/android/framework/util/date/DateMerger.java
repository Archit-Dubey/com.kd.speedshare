package com.genonbeta.android.framework.util.date;

import com.genonbeta.android.framework.util.listing.ComparableMerger;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateMerger<T> extends ComparableMerger<T> {
    private int mDay;
    private int mDayOfYear;
    private int mMonth;
    private long mTime;
    private int mYear;

    public DateMerger(long j) {
        Calendar instance = GregorianCalendar.getInstance();
        instance.setTime(new Date(j));
        this.mTime = j;
        this.mYear = instance.get(1);
        this.mMonth = instance.get(2);
        this.mDay = instance.get(5);
        this.mDayOfYear = instance.get(6);
    }

    public int compareTo(ComparableMerger<T> comparableMerger) {
        if (!(comparableMerger instanceof DateMerger)) {
            return -1;
        }
        DateMerger dateMerger = (DateMerger) comparableMerger;
        if (getYear() < dateMerger.getYear()) {
            return -1;
        }
        if (getYear() > dateMerger.getYear()) {
            return 1;
        }
        if (getDayOfYear() == dateMerger.getDayOfYear()) {
            return 0;
        }
        if (getDayOfYear() < dateMerger.getDayOfYear()) {
            return -1;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DateMerger)) {
            return false;
        }
        DateMerger dateMerger = (DateMerger) obj;
        if (getYear() == dateMerger.getYear() && getMonth() == dateMerger.getMonth() && getDay() == dateMerger.getDay()) {
            return true;
        }
        return false;
    }

    public int getDay() {
        return this.mDay;
    }

    public int getDayOfYear() {
        return this.mDayOfYear;
    }

    public int getMonth() {
        return this.mMonth;
    }

    public long getTime() {
        return this.mTime;
    }

    public int getYear() {
        return this.mYear;
    }
}
