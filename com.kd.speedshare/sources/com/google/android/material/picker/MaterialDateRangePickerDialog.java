package com.google.android.material.picker;

import android.content.Context;
import android.util.Pair;
import com.google.android.material.R;
import java.util.Calendar;

public class MaterialDateRangePickerDialog extends MaterialPickerDialog<Pair<Calendar, Calendar>> {
    private final MaterialDateRangePickerView materialDateRangePicker;

    public MaterialDateRangePickerDialog(Context context) {
        this(context, 0);
    }

    public MaterialDateRangePickerDialog(Context context, int i) {
        super(context, getThemeResource(context, R.attr.materialDateRangePickerDialogTheme, i));
        this.materialDateRangePicker = new MaterialDateRangePickerView(getContext());
    }

    /* access modifiers changed from: protected */
    public MaterialCalendarView<Pair<Calendar, Calendar>> getMaterialCalendarView() {
        return this.materialDateRangePicker;
    }

    /* access modifiers changed from: protected */
    public String getHeaderText() {
        Pair<Calendar, Calendar> selection = this.materialDateRangePicker.getSelection();
        if (selection == null) {
            return getContext().getResources().getString(R.string.mtrl_picker_range_header_prompt);
        }
        String format = getSimpleDateFormat().format(((Calendar) selection.first).getTime());
        String format2 = getSimpleDateFormat().format(((Calendar) selection.second).getTime());
        return getContext().getResources().getString(R.string.mtrl_picker_range_header_selected, new Object[]{format, format2});
    }
}
