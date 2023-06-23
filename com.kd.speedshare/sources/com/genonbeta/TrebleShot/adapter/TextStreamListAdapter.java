package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.TextStreamObject;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.SQLQuery;
import com.kd.speedshare.R;

public class TextStreamListAdapter extends GroupEditableListAdapter<TextStreamObject, GroupEditableListAdapter.GroupViewHolder> {
    private AccessDatabase mDatabase;

    public TextStreamListAdapter(Context context, AccessDatabase accessDatabase) {
        super(context, 110);
        this.mDatabase = accessDatabase;
    }

    /* access modifiers changed from: protected */
    public void onLoad(GroupEditableListAdapter.GroupLister<TextStreamObject> groupLister) {
        for (TextStreamObject offerObliged : this.mDatabase.castQuery(new SQLQuery.Select(AccessDatabase.TABLE_CLIPBOARD, new String[0]), TextStreamObject.class)) {
            groupLister.offerObliged(this, offerObliged);
        }
    }

    /* access modifiers changed from: protected */
    public TextStreamObject onGenerateRepresentative(String str) {
        return new TextStreamObject(str);
    }

    public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 100) {
            return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.layout_list_title, viewGroup, false), (int) R.id.layout_list_title_text);
        }
        return new GroupEditableListAdapter.GroupViewHolder(getInflater().inflate(R.layout.list_text_stream, viewGroup, false));
    }

    public void onBindViewHolder(GroupEditableListAdapter.GroupViewHolder groupViewHolder, int i) {
        try {
            TextStreamObject textStreamObject = (TextStreamObject) getItem(i);
            if (!groupViewHolder.tryBinding(textStreamObject)) {
                View view = groupViewHolder.getView();
                TextView textView = (TextView) view.findViewById(R.id.text3);
                view.setSelected(textStreamObject.isSelectableSelected());
                ((TextView) view.findViewById(R.id.text)).setText(textStreamObject.text);
                ((TextView) view.findViewById(R.id.text2)).setText(DateUtils.formatDateTime(getContext(), textStreamObject.date, 1));
                textView.setVisibility(getGroupBy() != 110 ? 0 : 8);
                if (getGroupBy() != 110) {
                    textView.setText(getSectionNameDate(textStreamObject.date));
                }
            }
        } catch (Exception unused) {
        }
    }
}
