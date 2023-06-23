package com.google.android.material.picker;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.material.R;
import java.text.SimpleDateFormat;
import java.util.Locale;

public abstract class MaterialPickerDialog<S> extends Dialog {
    private TextView header;
    /* access modifiers changed from: private */
    public MaterialCalendarView<? extends S> materialCalendarView;
    /* access modifiers changed from: private */
    public S selection;
    private SimpleDateFormat simpleDateFormat;

    /* access modifiers changed from: protected */
    public abstract String getHeaderText();

    /* access modifiers changed from: protected */
    public abstract MaterialCalendarView<? extends S> getMaterialCalendarView();

    protected static final int getThemeResource(Context context, int i, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public MaterialPickerDialog(Context context) {
        this(context, 0);
    }

    public MaterialPickerDialog(Context context, int i) {
        super(context, i);
        this.simpleDateFormat = new SimpleDateFormat("MMM dd, yyyy", Locale.getDefault());
    }

    public final S getSelection() {
        return this.selection;
    }

    /* access modifiers changed from: protected */
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.materialCalendarView = getMaterialCalendarView();
        setContentView(R.layout.mtrl_date_picker_dialog);
        this.header = (TextView) findViewById(R.id.date_picker_header_title);
        ((FrameLayout) findViewById(R.id.date_picker_calendar_view_frame)).addView(this.materialCalendarView);
        this.materialCalendarView.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                MaterialPickerDialog.this.updateHeader();
            }
        });
        ((Button) findViewById(R.id.confirm_button)).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                MaterialPickerDialog materialPickerDialog = MaterialPickerDialog.this;
                Object unused = materialPickerDialog.selection = materialPickerDialog.materialCalendarView.getSelection();
                MaterialPickerDialog.this.dismiss();
            }
        });
        ((Button) findViewById(R.id.cancel_button)).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                Object unused = MaterialPickerDialog.this.selection = null;
                MaterialPickerDialog.this.cancel();
            }
        });
        updateHeader();
    }

    /* access modifiers changed from: private */
    public void updateHeader() {
        this.header.setText(getHeaderText());
    }

    public final void setSimpleDateFormat(SimpleDateFormat simpleDateFormat2) {
        this.simpleDateFormat = simpleDateFormat2;
    }

    public final SimpleDateFormat getSimpleDateFormat() {
        return this.simpleDateFormat;
    }
}
