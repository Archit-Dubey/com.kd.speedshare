package com.genonbeta.TrebleShot.app;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.widget.Toast;
import androidx.appcompat.widget.SearchView;
import com.genonbeta.TrebleShot.object.Shareable;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.genonbeta.TrebleShot.widget.EditableListAdapter.EditableViewHolder;
import com.kd.speedshare.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public abstract class ShareableListFragment<T extends Shareable, V extends EditableListAdapter.EditableViewHolder, E extends EditableListAdapter<T, V>> extends EditableListFragment<T, V, E> {
    private List<T> mCachedList = new ArrayList();
    private String mDefaultEmptyText = null;
    private boolean mSearchActive = false;
    private SearchView.OnQueryTextListener mSearchComposer = new SearchView.OnQueryTextListener() {
        public boolean onQueryTextSubmit(String str) {
            return ShareableListFragment.this.search(str);
        }

        public boolean onQueryTextChange(String str) {
            return ShareableListFragment.this.search(str);
        }
    };
    private boolean mSearchSupport = true;
    private Toast mToastNoResult = null;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (getSearchSupport()) {
            menuInflater.inflate(R.menu.actions_search, menu);
            SearchView searchView = (SearchView) menu.findItem(R.id.search).getActionView();
            searchView.setOnQueryTextListener(this.mSearchComposer);
            searchView.setMaxWidth(500);
        }
    }

    public List<T> getCachedList() {
        return this.mCachedList;
    }

    public boolean getSearchSupport() {
        return this.mSearchSupport;
    }

    public void setSearchSupport(boolean z) {
        this.mSearchSupport = z;
    }

    public boolean isRefreshLocked() {
        return super.isRefreshLocked() || this.mSearchActive;
    }

    public boolean search(String str) {
        boolean z = str != null && str.length() > 0;
        this.mSearchActive = z;
        if (z) {
            if (this.mCachedList.size() == 0) {
                this.mCachedList.addAll(((EditableListAdapter) getAdapter()).getList());
            }
            ArrayList arrayList = new ArrayList();
            for (T t : this.mCachedList) {
                if (t.searchMatches(str)) {
                    arrayList.add(t);
                }
            }
            if (arrayList.size() > 0) {
                ((EditableListAdapter) getAdapter()).onUpdate(arrayList);
                ((EditableListAdapter) getAdapter()).notifyDataSetChanged();
                Toast toast = this.mToastNoResult;
                if (toast != null) {
                    toast.cancel();
                }
            } else {
                String string = getString(R.string.text_emptySearchResult, str);
                Toast toast2 = this.mToastNoResult;
                if (toast2 == null) {
                    Toast makeText = Toast.makeText(getContext(), string, 0);
                    this.mToastNoResult = makeText;
                    makeText.setGravity(48, makeText.getXOffset(), this.mToastNoResult.getYOffset());
                } else {
                    toast2.setText(string);
                }
                this.mToastNoResult.show();
            }
        } else if (!loadIfRequested() && this.mCachedList.size() != 0) {
            ((EditableListAdapter) getAdapter()).onUpdate(this.mCachedList);
            ((EditableListAdapter) getAdapter()).notifyDataSetChanged();
            this.mCachedList.clear();
        }
        if (this.mDefaultEmptyText == null) {
            this.mDefaultEmptyText = String.valueOf(getEmptyText().getText());
        }
        setEmptyText(this.mSearchActive ? getString(R.string.text_emptySearchResult, str) : this.mDefaultEmptyText);
        if (((EditableListAdapter) getAdapter()).getCount() > 0) {
            return true;
        }
        return false;
    }

    public static class MIMEGrouper {
        public static final String TYPE_GENERIC = "*";
        private boolean mLocked;
        private String mMajor;
        private String mMinor;

        public boolean isLocked() {
            return this.mLocked;
        }

        public String getMajor() {
            String str = this.mMajor;
            return str == null ? TYPE_GENERIC : str;
        }

        public String getMinor() {
            String str = this.mMinor;
            return str == null ? TYPE_GENERIC : str;
        }

        public void process(String str) {
            if (str != null && str.length() >= 3 && str.contains(File.separator)) {
                String[] split = str.split(File.separator);
                process(split[0], split[1]);
            }
        }

        public void process(String str, String str2) {
            if (this.mMajor == null || this.mMinor == null) {
                this.mMajor = str;
                this.mMinor = str2;
            } else if (getMajor().equals(TYPE_GENERIC)) {
                this.mLocked = true;
            } else if (!getMajor().equals(str)) {
                this.mMajor = TYPE_GENERIC;
                this.mMinor = TYPE_GENERIC;
                this.mLocked = true;
            } else if (!getMinor().equals(str2)) {
                this.mMinor = TYPE_GENERIC;
            }
        }

        public String toString() {
            return getMajor() + File.separator + getMinor();
        }
    }
}
