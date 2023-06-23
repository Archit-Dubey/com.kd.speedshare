package com.genonbeta.android.framework.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

public class SweetImageLoader<Object, ImageType> extends AsyncTask<Object, Void, ImageType> {
    private Context mContext;
    private Handler<Object, ImageType> mHandler;
    private WeakReference<ImageView> mImageViewReference;
    private Object mObject;

    public interface Handler<V, L> {
        L onLoadBitmap(V v);
    }

    public SweetImageLoader(Handler<Object, ImageType> handler, Context context) {
        this.mHandler = handler;
        this.mContext = context;
    }

    /* access modifiers changed from: protected */
    public void onPostExecute(ImageType imagetype) {
        ImageView imageView = (ImageView) getImageViewReference().get();
        if (!isCancelled() && imageView != null && getObject().equals(((Holder) imageView.getTag()).getObject())) {
            imageView.setAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
            if (!isCancelled() && imagetype != null) {
                if (imagetype instanceof Bitmap) {
                    imageView.setImageBitmap((Bitmap) imagetype);
                } else if (imagetype instanceof Drawable) {
                    imageView.setImageDrawable((Drawable) imagetype);
                } else {
                    throw new UnsupportedOperationException("Class for loading is not supported: " + imagetype.getClass().getName());
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    @SafeVarargs
    public final ImageType doInBackground(Object... objectArr) {
        this.mObject = objectArr[0];
        return this.mHandler.onLoadBitmap(getObject());
    }

    public Context getContext() {
        return this.mContext;
    }

    public WeakReference<ImageView> getImageViewReference() {
        return this.mImageViewReference;
    }

    public Object getObject() {
        return this.mObject;
    }

    public void setImageView(ImageView imageView) {
        this.mImageViewReference = new WeakReference<>(imageView);
    }

    public void setObject(Object object) {
        this.mObject = object;
    }

    public static <J, Y> void load(Handler<J, Y> handler, Context context, ImageView imageView, J j) {
        if (imageView.getTag() == null) {
            imageView.setTag(new Holder());
        }
        Holder holder = (Holder) imageView.getTag();
        if (!j.equals(holder.getObject())) {
            if (holder.getSweetImageLoader() != null) {
                holder.getSweetImageLoader().cancel(true);
            }
            imageView.setImageBitmap((Bitmap) null);
            holder.object = j;
            holder.sweetImageLoader = new SweetImageLoader(handler, context);
            holder.getSweetImageLoader().setImageView(imageView);
            holder.getSweetImageLoader().execute(new Object[]{j});
        }
    }

    private static class Holder {
        public Object object;
        public SweetImageLoader sweetImageLoader;

        private Holder() {
        }

        public Object getObject() {
            return this.object;
        }

        public SweetImageLoader getSweetImageLoader() {
            return this.sweetImageLoader;
        }
    }
}
