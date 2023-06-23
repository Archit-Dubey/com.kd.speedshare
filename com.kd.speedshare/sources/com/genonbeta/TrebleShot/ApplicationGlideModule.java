package com.genonbeta.TrebleShot;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Util;
import java.io.IOException;

public final class ApplicationGlideModule extends AppGlideModule {
    public void registerComponents(Context context, Glide glide, Registry registry) {
        super.registerComponents(context, glide, registry);
        registry.append(ApplicationInfo.class, ApplicationInfo.class, new ModelLoaderFactory<ApplicationInfo, ApplicationInfo>() {
            public void teardown() {
            }

            public ModelLoader<ApplicationInfo, ApplicationInfo> build(MultiModelLoaderFactory multiModelLoaderFactory) {
                return new ApplicationIconModelLoader();
            }
        }).append(ApplicationInfo.class, Drawable.class, new ApplicationIconDecoder(context));
    }

    private class ApplicationIconModelLoader implements ModelLoader<ApplicationInfo, ApplicationInfo> {
        public boolean handles(ApplicationInfo applicationInfo) {
            return true;
        }

        private ApplicationIconModelLoader() {
        }

        public ModelLoader.LoadData<ApplicationInfo> buildLoadData(final ApplicationInfo applicationInfo, int i, int i2, Options options) {
            return new ModelLoader.LoadData<>(new ObjectKey(applicationInfo), new DataFetcher<ApplicationInfo>() {
                public void cancel() {
                }

                public void cleanup() {
                }

                public void loadData(Priority priority, DataFetcher.DataCallback<? super ApplicationInfo> dataCallback) {
                    dataCallback.onDataReady(applicationInfo);
                }

                public Class<ApplicationInfo> getDataClass() {
                    return ApplicationInfo.class;
                }

                public DataSource getDataSource() {
                    return DataSource.LOCAL;
                }
            });
        }
    }

    private class ApplicationIconDecoder implements ResourceDecoder<ApplicationInfo, Drawable> {
        private final Context context;

        public boolean handles(ApplicationInfo applicationInfo, Options options) throws IOException {
            return true;
        }

        public ApplicationIconDecoder(Context context2) {
            this.context = context2;
        }

        public Resource<Drawable> decode(ApplicationInfo applicationInfo, int i, int i2, Options options) throws IOException {
            return new DrawableResource<Drawable>(applicationInfo.loadIcon(this.context.getPackageManager())) {
                public void recycle() {
                }

                public Class<Drawable> getResourceClass() {
                    return Drawable.class;
                }

                public int getSize() {
                    if (this.drawable instanceof BitmapDrawable) {
                        return Util.getBitmapByteSize(((BitmapDrawable) this.drawable).getBitmap());
                    }
                    return 1;
                }
            };
        }
    }
}
