package com.google.android.material.picker;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
import java.util.Calendar;

public class MonthInYearAdapter extends BaseAdapter {
    private static final int MAXIMUM_WEEKS = Calendar.getInstance().getMaximum(4);
    private final MonthInYear monthInYear;
    private final int textViewSize;

    MonthInYearAdapter(Context context, MonthInYear monthInYear2) {
        this.monthInYear = monthInYear2;
        TypedValue resolveAttribute = MaterialAttributes.resolveAttribute(context, R.attr.minTouchTargetSize);
        if (resolveAttribute == null) {
            this.textViewSize = (int) context.getResources().getDimension(R.dimen.mtrl_min_touch_target_size);
        } else {
            this.textViewSize = (int) resolveAttribute.getDimension(context.getResources().getDisplayMetrics());
        }
    }

    public Calendar getItem(int i) {
        if (i < this.monthInYear.daysFromStartOfWeekToFirstOfMonth() || i > lastPositionInMonth()) {
            return null;
        }
        return this.monthInYear.getDay(positionToDay(i));
    }

    public long getItemId(int i) {
        return (long) (i / this.monthInYear.daysInWeek);
    }

    public int getCount() {
        return this.monthInYear.daysInWeek * MAXIMUM_WEEKS;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = new TextView(viewGroup.getContext());
            textView.setHeight(this.textViewSize);
        }
        int firstPositionInMonth = i - firstPositionInMonth();
        if (firstPositionInMonth < 0 || firstPositionInMonth >= this.monthInYear.daysInMonth) {
            textView.setVisibility(4);
        } else {
            textView.setText(String.valueOf(firstPositionInMonth + 1));
            textView.setVisibility(0);
        }
        return textView;
    }

    public int firstPositionInMonth() {
        return this.monthInYear.daysFromStartOfWeekToFirstOfMonth();
    }

    public int lastPositionInMonth() {
        return (this.monthInYear.daysFromStartOfWeekToFirstOfMonth() + this.monthInYear.daysInMonth) - 1;
    }

    public int positionToDay(int i) {
        return (i - this.monthInYear.daysFromStartOfWeekToFirstOfMonth()) + 1;
    }

    public boolean withinMonth(int i) {
        return i >= firstPositionInMonth() && i <= lastPositionInMonth();
    }
}
