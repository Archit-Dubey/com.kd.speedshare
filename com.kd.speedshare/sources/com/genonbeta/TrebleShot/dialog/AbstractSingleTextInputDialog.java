package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.kd.speedshare.R;

public abstract class AbstractSingleTextInputDialog extends AbstractFailureAwareDialog {
    private EditText mEditText;
    private ViewGroup mView;

    public AbstractSingleTextInputDialog(Context context) {
        super(context);
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.layout_dialog_single_text_input, (ViewGroup) null);
        this.mView = viewGroup;
        this.mEditText = (EditText) viewGroup.findViewById(R.id.layout_dialog_single_text_input_text);
        setView((View) this.mView);
        setTitle((int) R.string.text_createFolder);
        setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
        this.mEditText.requestFocus();
    }

    public ViewGroup getContainerView() {
        return this.mView;
    }

    public EditText getEditText() {
        return this.mEditText;
    }
}
