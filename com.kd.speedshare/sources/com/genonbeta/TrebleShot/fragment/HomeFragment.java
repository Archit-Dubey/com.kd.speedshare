package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import com.genonbeta.TrebleShot.adapter.SmartFragmentPagerAdapter;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.android.framework.app.Fragment;
import com.genonbeta.android.framework.app.FragmentImpl;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.kd.speedshare.R;

public class HomeFragment extends Fragment implements TitleSupport, SnackbarSupport, FragmentImpl, Activity.OnBackPressedListener {
    private SmartFragmentPagerAdapter mAdapter;
    /* access modifiers changed from: private */
    public ViewPager mViewPager;

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.layout_home_fragment, viewGroup, false);
        final BottomNavigationView bottomNavigationView = (BottomNavigationView) inflate.findViewById(R.id.layout_home_bottom_navigation_view);
        this.mViewPager = (ViewPager) inflate.findViewById(R.id.layout_home_view_pager);
        SmartFragmentPagerAdapter smartFragmentPagerAdapter = new SmartFragmentPagerAdapter(getContext(), getChildFragmentManager());
        this.mAdapter = smartFragmentPagerAdapter;
        smartFragmentPagerAdapter.add(new SmartFragmentPagerAdapter.StableItem(0, (Class<? extends androidx.fragment.app.Fragment>) TransferGroupListFragment.class, (Bundle) null));
        this.mAdapter.add(new SmartFragmentPagerAdapter.StableItem(1, (Class<? extends androidx.fragment.app.Fragment>) FileExplorerFragment.class, (Bundle) null));
        this.mAdapter.add(new SmartFragmentPagerAdapter.StableItem(2, (Class<? extends androidx.fragment.app.Fragment>) TextStreamListFragment.class, (Bundle) null));
        this.mAdapter.createTabs(bottomNavigationView);
        this.mViewPager.setAdapter(this.mAdapter);
        this.mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            public void onPageScrollStateChanged(int i) {
            }

            public void onPageScrolled(int i, float f, int i2) {
            }

            public void onPageSelected(int i) {
                bottomNavigationView.setSelectedItemId(i);
            }
        });
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() {
            public boolean onNavigationItemSelected(MenuItem menuItem) {
                HomeFragment.this.mViewPager.setCurrentItem(menuItem.getOrder());
                return true;
            }
        });
        return inflate;
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_home);
    }

    public boolean onBackPressed() {
        androidx.fragment.app.Fragment item = this.mAdapter.getItem(this.mViewPager.getCurrentItem());
        if ((item instanceof Activity.OnBackPressedListener) && ((Activity.OnBackPressedListener) item).onBackPressed()) {
            return true;
        }
        if (this.mViewPager.getCurrentItem() <= 0) {
            return false;
        }
        this.mViewPager.setCurrentItem(0, true);
        return true;
    }
}
