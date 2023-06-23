package com.genonbeta.android.framework.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter.ViewHolder;

public abstract class RecyclerViewAdapter<T, V extends ViewHolder> extends RecyclerView.Adapter<V> implements ListAdapterImpl<T> {
    private Context mContext;
    private boolean mHorizontalOrientation;
    private LayoutInflater mInflater;

    public interface OnClickListener {
        void onClick(ViewHolder viewHolder);
    }

    public RecyclerViewAdapter(Context context) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    public void onDataSetChanged() {
        notifyDataSetChanged();
    }

    public boolean isHorizontalOrientation() {
        return this.mHorizontalOrientation;
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCount() {
        return getItemCount();
    }

    public LayoutInflater getInflater() {
        return this.mInflater;
    }

    public void setUseHorizontalOrientation(boolean z) {
        this.mHorizontalOrientation = z;
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        private View mView;

        public ViewHolder(View view) {
            super(view);
            this.mView = view;
        }

        public View getView() {
            return this.mView;
        }
    }
}
