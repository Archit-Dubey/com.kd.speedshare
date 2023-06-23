package com.genonbeta.android.framework.app;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter.ViewHolder;

public abstract class RecyclerViewFragment<T, V extends RecyclerViewAdapter.ViewHolder, E extends RecyclerViewAdapter<T, V>> extends ListFragment<RecyclerView, T, E> {
    private final Handler mHandler = new Handler();
    /* access modifiers changed from: private */
    public RecyclerView mRecyclerView;
    private final Runnable mRequestFocus = new Runnable() {
        public void run() {
            RecyclerViewFragment.this.mRecyclerView.focusableViewAvailable(RecyclerViewFragment.this.mRecyclerView);
        }
    };

    /* access modifiers changed from: protected */
    public void onListRefreshed() {
        super.onListRefreshed();
        int i = 0;
        boolean z = ((RecyclerViewAdapter) getAdapter()).getCount() == 0;
        getEmptyView().setVisibility(z ? 0 : 8);
        RecyclerView listView = getListView();
        if (z) {
            i = 8;
        }
        listView.setVisibility(i);
    }

    public RecyclerView.LayoutManager onLayoutManager() {
        return getDefaultLayoutManager();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        RecyclerView recyclerView = (RecyclerView) onCreateView.findViewById(R.id.genfw_customListFragment_listView);
        this.mRecyclerView = recyclerView;
        if (recyclerView == null) {
            this.mRecyclerView = onListView((View) getContainer(), getListViewContainer());
        }
        return onCreateView;
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(View view, ViewGroup viewGroup) {
        RecyclerView recyclerView = new RecyclerView(getContext());
        recyclerView.setLayoutManager(onLayoutManager());
        recyclerView.setLayoutParams(new GridLayoutManager.LayoutParams(-1, -1));
        viewGroup.addView(recyclerView);
        return recyclerView;
    }

    /* access modifiers changed from: protected */
    public void onEnsureList() {
        this.mHandler.post(this.mRequestFocus);
    }

    public boolean onSetListAdapter(E e) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            return false;
        }
        recyclerView.setAdapter(e);
        return true;
    }

    public RecyclerView.LayoutManager getDefaultLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    public RecyclerView getListView() {
        return this.mRecyclerView;
    }
}
