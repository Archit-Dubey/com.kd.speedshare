package com.genonbeta.android.framework.app;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.AsyncTaskLoader;
import androidx.loader.content.Loader;
import com.genonbeta.android.framework.R;
import com.genonbeta.android.framework.widget.ListAdapterImpl;
import java.util.List;

public abstract class ListFragment<Z extends ViewGroup, T, E extends ListAdapterImpl<T>> extends Fragment implements ListFragmentImpl<T> {
    public static final String TAG = "ListFragment";
    public static final int TASK_ID_REFRESH = 0;
    /* access modifiers changed from: private */
    public E mAdapter;
    private ViewGroup mContainer;
    private ViewGroup mCustomViewContainer;
    private ViewGroup mDefaultViewContainer;
    private Button mEmptyActionButton;
    private ImageView mEmptyImage;
    private TextView mEmptyText;
    private ViewGroup mEmptyView;
    private ViewGroup mListViewContainer;
    /* access modifiers changed from: private */
    public ListFragment<Z, T, E>.LoaderCallbackRefresh mLoaderCallbackRefresh = new LoaderCallbackRefresh();
    private ProgressBar mProgressView;

    public abstract Z getListView();

    public abstract E onAdapter();

    /* access modifiers changed from: protected */
    public abstract void onEnsureList();

    /* access modifiers changed from: protected */
    public void onListRefreshed() {
    }

    /* access modifiers changed from: protected */
    public abstract Z onListView(View view, ViewGroup viewGroup);

    /* access modifiers changed from: protected */
    public void onPrepareRefreshingList() {
    }

    public abstract boolean onSetListAdapter(E e);

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAdapter = onAdapter();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        View inflate = getLayoutInflater().inflate(R.layout.genfw_abstract_list_fragment, viewGroup, false);
        this.mCustomViewContainer = (ViewGroup) inflate.findViewById(R.id.genfw_customListFragment_customViewContainer);
        this.mDefaultViewContainer = (ViewGroup) inflate.findViewById(R.id.genfw_customListFragment_defaultViewContainer);
        this.mListViewContainer = (ViewGroup) inflate.findViewById(R.id.genfw_customListFragment_listViewContainer);
        this.mContainer = (ViewGroup) inflate.findViewById(R.id.genfw_customListFragment_container);
        this.mEmptyView = (ViewGroup) inflate.findViewById(R.id.genfw_customListFragment_emptyView);
        this.mEmptyText = (TextView) inflate.findViewById(R.id.genfw_customListFragment_emptyTextView);
        this.mEmptyImage = (ImageView) inflate.findViewById(R.id.genfw_customListFragment_emptyImageView);
        this.mProgressView = (ProgressBar) inflate.findViewById(R.id.genfw_customListFragment_progressView);
        this.mEmptyActionButton = (Button) inflate.findViewById(R.id.genfw_customListFragment_emptyActionButton);
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getListView() != null && getListView().getId() != R.id.genfw_customListFragment_listView) {
            getListView().setId(R.id.genfw_customListFragment_listView);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setListAdapter(this.mAdapter);
        LoaderManager.getInstance(this).initLoader(0, (Bundle) null, this.mLoaderCallbackRefresh);
    }

    public AsyncTaskLoader<List<T>> createLoader() {
        return new ListLoader(this.mAdapter);
    }

    public E getAdapter() {
        return this.mAdapter;
    }

    /* access modifiers changed from: protected */
    public ViewGroup getContainer() {
        return this.mContainer;
    }

    public ViewGroup getCustomViewContainer() {
        return this.mCustomViewContainer;
    }

    public ViewGroup getDefaultViewContainer() {
        return this.mDefaultViewContainer;
    }

    public ImageView getEmptyImage() {
        onEnsureList();
        return this.mEmptyImage;
    }

    public TextView getEmptyText() {
        onEnsureList();
        return this.mEmptyText;
    }

    /* access modifiers changed from: protected */
    public ViewGroup getEmptyView() {
        return this.mEmptyView;
    }

    /* access modifiers changed from: protected */
    public ViewGroup getListViewContainer() {
        return this.mListViewContainer;
    }

    public ListFragment<Z, T, E>.LoaderCallbackRefresh getLoaderCallbackRefresh() {
        return this.mLoaderCallbackRefresh;
    }

    public E getListAdapter() {
        return this.mAdapter;
    }

    public ProgressBar getProgressView() {
        onEnsureList();
        return this.mProgressView;
    }

    public Button getEmptyActionButton() {
        return this.mEmptyActionButton;
    }

    public void refreshList() {
        getLoaderCallbackRefresh().requestRefresh();
    }

    public void setEmptyImage(int i) {
        onEnsureList();
        this.mEmptyImage.setImageResource(i);
    }

    public void setEmptyText(CharSequence charSequence) {
        onEnsureList();
        this.mEmptyText.setText(charSequence);
    }

    public void setListAdapter(E e) {
        boolean z = false;
        boolean z2 = this.mAdapter != null;
        this.mAdapter = e;
        if (onSetListAdapter(e) && this.mContainer.getVisibility() != 0 && !z2) {
            if (getView().getWindowToken() != null) {
                z = true;
            }
            setListShown(true, z);
        }
    }

    public void setListShown(boolean z) {
        setListShown(z, true);
    }

    public void setListShown(boolean z, boolean z2) {
        onEnsureList();
        int i = 0;
        if ((this.mContainer.getVisibility() == 0) != z) {
            if (z2) {
                Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
                Animation loadAnimation2 = AnimationUtils.loadAnimation(getContext(), 17432576);
                this.mProgressView.startAnimation(z ? loadAnimation : loadAnimation2);
                ViewGroup viewGroup = this.mContainer;
                if (z) {
                    loadAnimation = loadAnimation2;
                }
                viewGroup.startAnimation(loadAnimation);
            } else {
                this.mProgressView.clearAnimation();
                this.mContainer.clearAnimation();
            }
            this.mContainer.setVisibility(z ? 0 : 8);
            ProgressBar progressBar = this.mProgressView;
            if (z) {
                i = 8;
            }
            progressBar.setVisibility(i);
        }
    }

    public void showCustomView(boolean z) {
        int i = 0;
        this.mCustomViewContainer.setVisibility(z ? 0 : 8);
        ViewGroup viewGroup = this.mDefaultViewContainer;
        if (z) {
            i = 8;
        }
        viewGroup.setVisibility(i);
    }

    public boolean toggleCustomView() {
        boolean z = getCustomViewContainer().getVisibility() == 0;
        showCustomView(!z);
        return !z;
    }

    public void useEmptyActionButton(String str, View.OnClickListener onClickListener) {
        this.mEmptyActionButton.setText(str);
        this.mEmptyActionButton.setOnClickListener(onClickListener);
        useEmptyActionButton(true);
    }

    public void useEmptyActionButton(boolean z) {
        this.mEmptyActionButton.setVisibility(z ? 0 : 8);
    }

    private class LoaderCallbackRefresh implements LoaderManager.LoaderCallbacks<List<T>> {
        private boolean mReloadRequested;
        private boolean mRunning;

        public void onLoaderReset(Loader<List<T>> loader) {
        }

        private LoaderCallbackRefresh() {
            this.mRunning = false;
            this.mReloadRequested = false;
        }

        public Loader<List<T>> onCreateLoader(int i, Bundle bundle) {
            this.mReloadRequested = false;
            this.mRunning = true;
            if (ListFragment.this.mAdapter.getCount() == 0) {
                ListFragment.this.setListShown(false);
            }
            return ListFragment.this.createLoader();
        }

        public void onLoadFinished(Loader<List<T>> loader, List<T> list) {
            if (ListFragment.this.isResumed()) {
                ListFragment.this.onPrepareRefreshingList();
                ListFragment.this.mAdapter.onUpdate(list);
                ListFragment.this.mAdapter.onDataSetChanged();
                ListFragment.this.setListShown(true);
                ListFragment.this.onListRefreshed();
            }
            if (isReloadRequested()) {
                refresh();
            }
            this.mRunning = false;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        public boolean isReloadRequested() {
            return this.mReloadRequested;
        }

        public void refresh() {
            LoaderManager.getInstance(ListFragment.this).restartLoader(0, (Bundle) null, ListFragment.this.mLoaderCallbackRefresh);
        }

        public boolean requestRefresh() {
            if (isRunning() && isReloadRequested()) {
                return false;
            }
            if (!isRunning()) {
                refresh();
            } else {
                this.mReloadRequested = true;
            }
            return true;
        }
    }

    public static class ListLoader<G> extends AsyncTaskLoader<List<G>> {
        private ListAdapterImpl<G> mAdapter;

        public ListLoader(ListAdapterImpl<G> listAdapterImpl) {
            super(listAdapterImpl.getContext());
            this.mAdapter = listAdapterImpl;
        }

        /* access modifiers changed from: protected */
        public void onStartLoading() {
            super.onStartLoading();
            forceLoad();
        }

        public List<G> loadInBackground() {
            return this.mAdapter.onLoad();
        }
    }
}
