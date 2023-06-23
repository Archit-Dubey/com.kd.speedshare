package com.genonbeta.android.framework.app;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListView;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.widget.ListViewAdapter;

public abstract class ListViewFragment<T, E extends ListViewAdapter<T>> extends ListFragment<ListView, T, E> {
    private final Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public ListView mListView;
    private final AdapterView.OnItemClickListener mOnClickListener = new AdapterView.OnItemClickListener() {
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ListViewFragment.this.onListItemClick((ListView) adapterView, view, i, j);
        }
    };
    private final Runnable mRequestFocus = new Runnable() {
        public void run() {
            ListViewFragment.this.mListView.focusableViewAvailable(ListViewFragment.this.mListView);
        }
    };

    public void onListItemClick(ListView listView, View view, int i, long j) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        ListView listView = (ListView) onCreateView.findViewById(R.id.genfw_customListFragment_listView);
        this.mListView = listView;
        if (listView == null) {
            this.mListView = onListView((View) getContainer(), getListViewContainer());
        }
        this.mListView.setOnItemClickListener(this.mOnClickListener);
        this.mListView.setEmptyView(getEmptyView());
        return onCreateView;
    }

    /* access modifiers changed from: protected */
    public ListView onListView(View view, ViewGroup viewGroup) {
        ListView listView = new ListView(getContext());
        listView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
        viewGroup.addView(listView);
        return listView;
    }

    /* access modifiers changed from: protected */
    public void onEnsureList() {
        this.mListView.setEmptyView(getEmptyView());
        this.mHandler.post(this.mRequestFocus);
    }

    public boolean onSetListAdapter(E e) {
        ListView listView = this.mListView;
        if (listView == null) {
            return false;
        }
        listView.setAdapter(e);
        return true;
    }

    public ListView getListView() {
        onEnsureList();
        return this.mListView;
    }
}
