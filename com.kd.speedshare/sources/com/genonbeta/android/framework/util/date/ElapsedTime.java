package com.genonbeta.android.framework.util.date;

public class ElapsedTime {
    private long mDays;
    private long mElapsedTime;
    private long mHours;
    private long mMinutes;
    private long mMonths;
    private long mSeconds;
    private long mYears;

    public ElapsedTime(long j) {
        set(j);
    }

    public long getElapsedTime() {
        return this.mElapsedTime;
    }

    public long getDays() {
        return this.mDays;
    }

    public long getHours() {
        return this.mHours;
    }

    public long getMinutes() {
        return this.mMinutes;
    }

    public long getMonths() {
        return this.mMonths;
    }

    public long getSeconds() {
        return this.mSeconds;
    }

    public long getYears() {
        return this.mYears;
    }

    public void set(long j) {
        this.mElapsedTime = j;
        ElapsedTimeCalculator elapsedTimeCalculator = new ElapsedTimeCalculator(j / 1000);
        this.mYears = elapsedTimeCalculator.crop(62208000);
        this.mMonths = elapsedTimeCalculator.crop(2592000);
        this.mDays = elapsedTimeCalculator.crop(86400);
        this.mHours = elapsedTimeCalculator.crop(3600);
        this.mMinutes = elapsedTimeCalculator.crop(60);
        this.mSeconds = elapsedTimeCalculator.getLeftTime();
    }

    public static class ElapsedTimeCalculator {
        private long mTime;

        public ElapsedTimeCalculator(long j) {
            this.mTime = j;
        }

        public long crop(long j) {
            if (getLeftTime() <= j) {
                return 0;
            }
            long leftTime = getLeftTime() / j;
            setTime(getLeftTime() - (j * leftTime));
            return leftTime;
        }

        public long getLeftTime() {
            return this.mTime;
        }

        public void setTime(long j) {
            this.mTime = j;
        }
    }
}
