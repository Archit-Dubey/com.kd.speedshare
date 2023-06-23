package com.google.android.material.picker;

import android.content.Context;
import com.google.android.material.R;
import java.util.Calendar;

public class MaterialDatePickerDialog extends MaterialPickerDialog<Calendar> {
    private final MaterialDatePickerView materialDatePicker;

    public MaterialDatePickerDialog(Context context) {
        this(context, 0);
    }

    public MaterialDatePickerDialog(Context context, int i) {
        super(context, getThemeResource(context, R.attr.materialDatePickerDialogTheme, i));
        this.materialDatePicker = new MaterialDatePickerView(getContext());
    }

    /* access modifiers changed from: protected */
    public MaterialCalendarView<Calendar> getMaterialCalendarView() {
        return this.materialDatePicker;
    }

    /* access modifiers changed from: protected */
    public String getHeaderText() {
        Calendar selection = this.materialDatePicker.getSelection();
        if (selection == null) {
            return getContext().getResources().getString(R.string.mtrl_picker_header_prompt);
        }
        String format = getSimpleDateFormat().format(selection.getTime());
        return getContext().getResources().getString(R.string.mtrl_picker_header_selected, new Object[]{format});
    }
}
