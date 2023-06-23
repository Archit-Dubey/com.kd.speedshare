package com.genonbeta.android.framework.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;

public abstract class ListViewAdapter<T> extends BaseAdapter implements ListAdapterImpl<T> {
    public Context mContext;
    private LayoutInflater mInflater;

    public ListViewAdapter(Context context) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    public void onDataSetChanged() {
        notifyDataSetChanged();
    }

    public Context getContext() {
        return this.mContext;
    }

    public LayoutInflater getInflater() {
        return this.mInflater;
    }
}
