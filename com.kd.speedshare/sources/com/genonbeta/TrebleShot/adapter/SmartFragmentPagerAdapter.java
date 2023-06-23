package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MenuItem;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.List;

public class SmartFragmentPagerAdapter extends FragmentPagerAdapter {
    private Context mContext;
    private List<StableItem> mItems = new ArrayList();

    public void onItemInstantiated(StableItem stableItem) {
    }

    public SmartFragmentPagerAdapter(Context context, FragmentManager fragmentManager) {
        super(fragmentManager);
        this.mContext = context;
    }

    public void add(StableItem stableItem) {
        this.mItems.add(stableItem);
    }

    public void add(int i, StableItem stableItem) {
        this.mItems.add(i, stableItem);
    }

    public void createTabs(TabLayout tabLayout) {
        createTabs(tabLayout, true, true);
    }

    public void createTabs(TabLayout tabLayout, boolean z, boolean z2) {
        if (getCount() > 0) {
            for (int i = 0; i < getCount(); i++) {
                StableItem stableItem = getStableItem(i);
                Fragment item = getItem(i);
                TabLayout.Tab newTab = tabLayout.newTab();
                if ((item instanceof IconSupport) && z) {
                    newTab.setIcon(((IconSupport) item).getIconRes());
                }
                if (!stableItem.iconOnly && z2) {
                    if (stableItem.title != null && stableItem.title.length() > 0) {
                        newTab.setText((CharSequence) stableItem.title);
                    } else if (item instanceof TitleSupport) {
                        newTab.setText(((TitleSupport) item).getTitle(getContext()));
                    }
                }
                tabLayout.addTab(newTab);
            }
        }
    }

    public void createTabs(BottomNavigationView bottomNavigationView) {
        CharSequence charSequence;
        if (getCount() > 0) {
            for (int i = 0; i < getCount(); i++) {
                StableItem stableItem = getStableItem(i);
                Fragment item = getItem(i);
                if (stableItem.title != null && stableItem.title.length() > 0) {
                    charSequence = stableItem.title;
                } else if (item instanceof TitleSupport) {
                    charSequence = ((TitleSupport) item).getTitle(getContext());
                } else {
                    charSequence = String.valueOf(i);
                }
                MenuItem add = bottomNavigationView.getMenu().add(0, i, i, charSequence);
                if (item instanceof IconSupport) {
                    add.setIcon(((IconSupport) item).getIconRes());
                }
            }
        }
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
        StableItem stableItem = getStableItem(i);
        stableItem.mInitiatedItem = fragment;
        stableItem.mCurrentPosition = i;
        onItemInstantiated(stableItem);
        return fragment;
    }

    public Context getContext() {
        return this.mContext;
    }

    public int getCount() {
        return this.mItems.size();
    }

    public List<StableItem> getFragments() {
        return this.mItems;
    }

    public long getItemId(int i) {
        return getStableItem(i).itemId;
    }

    public Fragment getItem(int i) {
        StableItem stableItem = getStableItem(i);
        Fragment initiatedItem = stableItem.getInitiatedItem();
        if (initiatedItem == null) {
            initiatedItem = Fragment.instantiate(getContext(), stableItem.clazzName);
        }
        initiatedItem.setArguments(stableItem.arguments);
        return initiatedItem;
    }

    public CharSequence getPageTitle(int i) {
        Fragment item = getItem(i);
        if (item instanceof TitleSupport) {
            return ((TitleSupport) item).getTitle(getContext());
        }
        return super.getPageTitle(i);
    }

    public StableItem getStableItem(int i) {
        return this.mItems.get(i);
    }

    public static class StableItem implements Parcelable {
        public static final Parcelable.Creator<StableItem> CREATOR = new Parcelable.Creator<StableItem>() {
            public StableItem createFromParcel(Parcel parcel) {
                return new StableItem(parcel);
            }

            public StableItem[] newArray(int i) {
                return new StableItem[i];
            }
        };
        public Bundle arguments;
        public String clazzName;
        public boolean iconOnly;
        public long itemId;
        protected int mCurrentPosition;
        protected Fragment mInitiatedItem;
        public String title;

        public int describeContents() {
            return 0;
        }

        public StableItem(long j, String str, Bundle bundle) {
            this.mCurrentPosition = -1;
            this.itemId = j;
            this.clazzName = str;
            this.arguments = bundle;
        }

        public StableItem(long j, Class<? extends Fragment> cls, Bundle bundle) {
            this(j, cls.getName(), bundle);
        }

        public StableItem(Parcel parcel) {
            this(parcel.readLong(), parcel.readString(), parcel.readBundle());
            setTitle(parcel.readString());
            setIconOnly(parcel.readInt() != 1 ? false : true);
        }

        public int getCurrentPosition() {
            return this.mCurrentPosition;
        }

        public Fragment getInitiatedItem() {
            return this.mInitiatedItem;
        }

        public StableItem setIconOnly(boolean z) {
            this.iconOnly = z;
            return this;
        }

        public StableItem setTitle(String str) {
            this.title = str;
            return this;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.itemId);
            parcel.writeString(this.clazzName);
            parcel.writeBundle(this.arguments);
            parcel.writeString(this.title);
            parcel.writeInt(this.iconOnly ? 1 : 0);
        }
    }
}
