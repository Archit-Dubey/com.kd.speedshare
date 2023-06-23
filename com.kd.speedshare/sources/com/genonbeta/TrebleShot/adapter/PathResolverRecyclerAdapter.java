package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public abstract class PathResolverRecyclerAdapter<T> extends RecyclerView.Adapter<Holder> {
    /* access modifiers changed from: private */
    public OnClickListener<T> mClickListener;
    private Context mContext;
    private List<Holder.Index<T>> mList = new ArrayList();

    public interface OnClickListener<E> {
        void onClick(Holder<E> holder);
    }

    public abstract Holder.Index<T> onFirstItem();

    public PathResolverRecyclerAdapter(Context context) {
        this.mContext = context;
        initAdapter();
    }

    public Holder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new Holder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_pathresolver, (ViewGroup) null));
    }

    public void onBindViewHolder(final Holder holder, int i) {
        holder.index = this.mList.get(i);
        holder.text.setText(holder.index.title);
        holder.image.setImageResource(holder.index.imgRes);
        if (this.mClickListener != null) {
            holder.text.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    PathResolverRecyclerAdapter.this.mClickListener.onClick(holder);
                }
            });
        }
    }

    public void initAdapter() {
        synchronized (getList()) {
            getList().clear();
            getList().add(onFirstItem());
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getItemCount() {
        return this.mList.size();
    }

    public List<Holder.Index<T>> getList() {
        return this.mList;
    }

    public void setOnClickListener(OnClickListener<T> onClickListener) {
        this.mClickListener = onClickListener;
    }

    public static class Holder<E> extends RecyclerView.ViewHolder {
        public View container;
        public ImageView image;
        public Index<E> index;
        public Button text;

        private Holder(View view) {
            super(view);
            this.container = view;
            this.image = (ImageView) view.findViewById(R.id.list_pathresolver_image);
            this.text = (Button) view.findViewById(R.id.list_pathresolver_text);
        }

        public static class Index<D> {
            public int imgRes;
            public D object;
            public String title;

            public Index(String str, int i, D d) {
                this.title = str;
                this.imgRes = i;
                this.object = d;
            }

            public Index(String str, D d) {
                this(str, R.drawable.ic_keyboard_arrow_right_white_24dp, d);
            }
        }
    }
}
