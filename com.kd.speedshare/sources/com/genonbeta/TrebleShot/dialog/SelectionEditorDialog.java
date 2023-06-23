package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.android.framework.object.Selectable;
import com.kd.speedshare.R;
import java.util.List;

public class SelectionEditorDialog<T extends Selectable> extends AlertDialog.Builder {
    private SelectionEditorDialog<T>.SelfAdapter mAdapter;
    /* access modifiers changed from: private */
    public LayoutInflater mLayoutInflater;
    /* access modifiers changed from: private */
    public List<T> mList;
    private ListView mListView;

    public SelectionEditorDialog(Context context, List<T> list) {
        super(context);
        this.mList = list;
        LayoutInflater from = LayoutInflater.from(context);
        this.mLayoutInflater = from;
        View inflate = from.inflate(R.layout.layout_selection_editor, (ViewGroup) null, false);
        this.mListView = (ListView) inflate.findViewById(R.id.listView);
        SelectionEditorDialog<T>.SelfAdapter selfAdapter = new SelfAdapter();
        this.mAdapter = selfAdapter;
        this.mListView.setAdapter(selfAdapter);
        this.mListView.setDividerHeight(0);
        if (this.mList.size() > 0) {
            setView(inflate);
        } else {
            setMessage((int) R.string.text_listEmpty);
        }
        setTitle((int) R.string.text_previewAndEditList);
        setNeutralButton((int) R.string.butn_check, (DialogInterface.OnClickListener) null);
        setNegativeButton((int) R.string.butn_uncheck, (DialogInterface.OnClickListener) null);
        setPositiveButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
    }

    public void checkReversed(View view, Selectable selectable) {
        selectable.setSelectableSelected(!selectable.isSelectableSelected());
        view.setVisibility(selectable.isSelectableSelected() ? 8 : 0);
    }

    public void massCheck(boolean z) {
        for (T selectableSelected : this.mList) {
            selectableSelected.setSelectableSelected(z);
        }
        this.mAdapter.notifyDataSetChanged();
    }

    public AlertDialog show() {
        AlertDialog show = super.show();
        show.getButton(-3).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                SelectionEditorDialog.this.massCheck(true);
            }
        });
        show.getButton(-2).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                SelectionEditorDialog.this.massCheck(false);
            }
        });
        return show;
    }

    private class SelfAdapter extends BaseAdapter {
        public long getItemId(int i) {
            return 0;
        }

        private SelfAdapter() {
        }

        public int getCount() {
            return SelectionEditorDialog.this.mList.size();
        }

        public Object getItem(int i) {
            return SelectionEditorDialog.this.mList.get(i);
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            if (view == null) {
                view = SelectionEditorDialog.this.mLayoutInflater.inflate(R.layout.list_selection, viewGroup, false);
            }
            final Selectable selectable = (Selectable) getItem(i);
            final View findViewById = view.findViewById(R.id.removalSign);
            ((TextView) view.findViewById(R.id.text)).setText(selectable.getSelectableTitle());
            if (selectable.isSelectableSelected()) {
                i2 = 8;
            }
            findViewById.setVisibility(i2);
            view.setClickable(true);
            view.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    SelectionEditorDialog.this.checkReversed(findViewById, selectable);
                }
            });
            return view;
        }
    }
}
