package com.genonbeta.TrebleShot.activity;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.genonbeta.TrebleShot.adapter.SmartFragmentPagerAdapter;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.app.EditableListFragmentImpl;
import com.genonbeta.TrebleShot.fragment.ApplicationListFragment;
import com.genonbeta.TrebleShot.fragment.FileExplorerFragment;
import com.genonbeta.TrebleShot.fragment.FileListFragment;
import com.genonbeta.TrebleShot.fragment.ImageListFragment;
import com.genonbeta.TrebleShot.fragment.MusicListFragment;
import com.genonbeta.TrebleShot.fragment.VideoListFragment;
import com.genonbeta.TrebleShot.ui.callback.SharingActionModeCallback;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.google.android.material.tabs.TabLayout;
import com.kd.speedshare.R;

public class ContentSharingActivity extends Activity {
    public static final String TAG = ContentSharingActivity.class.getSimpleName();
    private Activity.OnBackPressedListener mBackPressedListener;
    private PowerfulActionMode mMode;
    /* access modifiers changed from: private */
    public SharingActionModeCallback mSelectionCallback;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_content_sharing);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeAsUpIndicator((int) R.drawable.ic_close_white_24dp);
        }
        this.mMode = (PowerfulActionMode) findViewById(R.id.activity_content_sharing_action_mode);
        TabLayout tabLayout = (TabLayout) findViewById(R.id.activity_content_sharing_tab_layout);
        final ViewPager viewPager = (ViewPager) findViewById(R.id.activity_content_sharing_view_pager);
        this.mSelectionCallback = new SharingActionModeCallback((EditableListFragmentImpl) null);
        final PowerfulActionMode.SelectorConnection selectorConnection = new PowerfulActionMode.SelectorConnection(this.mMode, this.mSelectionCallback);
        final ViewPager viewPager2 = viewPager;
        final AnonymousClass1 r2 = new SmartFragmentPagerAdapter(this, getSupportFragmentManager()) {
            public void onItemInstantiated(SmartFragmentPagerAdapter.StableItem stableItem) {
                EditableListFragmentImpl editableListFragmentImpl = (EditableListFragmentImpl) stableItem.getInitiatedItem();
                editableListFragmentImpl.setSelectionCallback(ContentSharingActivity.this.mSelectionCallback);
                editableListFragmentImpl.setSelectorConnection(selectorConnection);
                if (viewPager2.getCurrentItem() == stableItem.getCurrentPosition()) {
                    ContentSharingActivity.this.attachListeners(editableListFragmentImpl);
                }
            }
        };
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean(FileListFragment.ARG_SELECT_BY_CLICK, true);
        r2.add(new SmartFragmentPagerAdapter.StableItem(0, (Class<? extends Fragment>) ApplicationListFragment.class, (Bundle) null));
        r2.add(new SmartFragmentPagerAdapter.StableItem(1, (Class<? extends Fragment>) FileExplorerFragment.class, bundle2).setTitle(getString(R.string.text_files)));
        r2.add(new SmartFragmentPagerAdapter.StableItem(2, (Class<? extends Fragment>) MusicListFragment.class, (Bundle) null));
        r2.add(new SmartFragmentPagerAdapter.StableItem(3, (Class<? extends Fragment>) ImageListFragment.class, (Bundle) null));
        r2.add(new SmartFragmentPagerAdapter.StableItem(4, (Class<? extends Fragment>) VideoListFragment.class, (Bundle) null));
        r2.createTabs(tabLayout, false, true);
        viewPager.setAdapter(r2);
        viewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(tabLayout));
        tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new TabLayout.OnTabSelectedListener() {
            public void onTabReselected(TabLayout.Tab tab) {
            }

            public void onTabUnselected(TabLayout.Tab tab) {
            }

            public void onTabSelected(TabLayout.Tab tab) {
                viewPager.setCurrentItem(tab.getPosition());
                final EditableListFragment editableListFragment = (EditableListFragment) r2.getItem(tab.getPosition());
                ContentSharingActivity.this.attachListeners(editableListFragment);
                if (editableListFragment.getAdapterImpl() != null) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                        public void run() {
                            editableListFragment.getAdapterImpl().notifyAllSelectionChanges();
                        }
                    }, 200);
                }
            }
        });
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    public void onBackPressed() {
        Activity.OnBackPressedListener onBackPressedListener = this.mBackPressedListener;
        if (onBackPressedListener != null && onBackPressedListener.onBackPressed()) {
            return;
        }
        if (this.mMode.hasActive((PowerfulActionMode.Callback) this.mSelectionCallback)) {
            this.mMode.finish((PowerfulActionMode.Callback) this.mSelectionCallback);
        } else {
            super.onBackPressed();
        }
    }

    public void attachListeners(EditableListFragmentImpl editableListFragmentImpl) {
        this.mSelectionCallback.updateProvider(editableListFragmentImpl);
        this.mBackPressedListener = editableListFragmentImpl instanceof Activity.OnBackPressedListener ? (Activity.OnBackPressedListener) editableListFragmentImpl : null;
    }
}
