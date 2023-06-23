package com.genonbeta.android.framework.widget;

import android.content.Context;
import android.view.LayoutInflater;
import java.util.List;

public interface ListAdapterImpl<T> {
    Context getContext();

    int getCount();

    LayoutInflater getInflater();

    List<T> getList();

    void onDataSetChanged();

    List<T> onLoad();

    void onUpdate(List<T> list);
}
