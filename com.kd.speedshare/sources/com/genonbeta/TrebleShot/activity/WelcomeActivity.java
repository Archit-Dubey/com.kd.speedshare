package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.transition.TransitionManager;
import androidx.viewpager.widget.ViewPager;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.DynamicViewPagerAdapter;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.kd.speedshare.R;

public class WelcomeActivity extends Activity {
    public static final String TAG = WelcomeActivity.class.getSimpleName();
    private ViewGroup mPermissionsView;
    private ViewGroup mProfileView;
    private ViewGroup mSplashView;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_welcome);
        setSkipPermissionRequest(true);
        setWelcomePageDisallowed(true);
        final FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.activity_welcome_view_next);
        final AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById(R.id.activity_welcome_view_previous);
        final ProgressBar progressBar = (ProgressBar) findViewById(R.id.activity_welcome_progress_bar);
        final ViewPager viewPager = (ViewPager) findViewById(R.id.activity_welcome_view_pager);
        final DynamicViewPagerAdapter dynamicViewPagerAdapter = new DynamicViewPagerAdapter();
        int color = ContextCompat.getColor(this, AppUtils.getReference(this, R.attr.colorSecondary));
        if (Build.VERSION.SDK_INT < 21) {
            Drawable wrap = DrawableCompat.wrap(progressBar.getProgressDrawable());
            DrawableCompat.setTint(wrap, color);
            progressBar.setProgressDrawable(DrawableCompat.unwrap(wrap));
        } else {
            progressBar.setProgressTintList(ColorStateList.valueOf(color));
        }
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(R.layout.layout_welcome_page_1, (ViewGroup) null, false);
        this.mSplashView = viewGroup;
        dynamicViewPagerAdapter.addView(viewGroup);
        if (Build.VERSION.SDK_INT >= 23) {
            ViewGroup viewGroup2 = (ViewGroup) getLayoutInflater().inflate(R.layout.layout_welcome_page_3, (ViewGroup) null, false);
            this.mPermissionsView = viewGroup2;
            dynamicViewPagerAdapter.addView(viewGroup2);
            checkPermissionsState();
            this.mPermissionsView.findViewById(R.id.layout_welcome_page_3_request_button).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    WelcomeActivity.this.requestRequiredPermissions(false);
                }
            });
        }
        ViewGroup viewGroup3 = (ViewGroup) getLayoutInflater().inflate(R.layout.layout_welcome_page_2, (ViewGroup) null, false);
        this.mProfileView = viewGroup3;
        dynamicViewPagerAdapter.addView(viewGroup3);
        setUserProfile();
        dynamicViewPagerAdapter.addView(getLayoutInflater().inflate(R.layout.layout_welcome_page_4, (ViewGroup) null, false));
        View inflate = getLayoutInflater().inflate(R.layout.layout_welcome_page_5, (ViewGroup) null, false);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.3f, 1.0f);
        alphaAnimation.setDuration(2000);
        alphaAnimation.setRepeatCount(-1);
        alphaAnimation.setRepeatMode(2);
        inflate.findViewById(R.id.layout_welcome_page_5_text).setAnimation(alphaAnimation);
        dynamicViewPagerAdapter.addView(inflate);
        progressBar.setMax((dynamicViewPagerAdapter.getCount() - 1) * 100);
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                if (viewPager.getCurrentItem() - 1 >= 0) {
                    ViewPager viewPager = viewPager;
                    viewPager.setCurrentItem(viewPager.getCurrentItem() - 1, true);
                }
            }
        });
        floatingActionButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                if (viewPager.getCurrentItem() + 1 < dynamicViewPagerAdapter.getCount()) {
                    ViewPager viewPager = viewPager;
                    viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
                    return;
                }
                WelcomeActivity.this.getDefaultPreferences().edit().putBoolean("introduction_shown", true).apply();
                WelcomeActivity.this.startActivity(new Intent(WelcomeActivity.this, HomeActivity.class));
                WelcomeActivity.this.finish();
            }
        });
        final DynamicViewPagerAdapter dynamicViewPagerAdapter2 = dynamicViewPagerAdapter;
        viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            public void onPageScrollStateChanged(int i) {
            }

            public void onPageScrolled(int i, float f, int i2) {
                progressBar.setProgress((i * 100) + ((int) (100.0f * f)));
                if (i == 0) {
                    progressBar.setAlpha(f);
                    appCompatImageView.setAlpha(f);
                    return;
                }
                progressBar.setAlpha(1.0f);
                appCompatImageView.setAlpha(1.0f);
            }

            public void onPageSelected(int i) {
                new OvershootInterpolator();
                floatingActionButton.setImageResource(i + 1 >= dynamicViewPagerAdapter2.getCount() ? R.drawable.ic_check_white_24dp : R.drawable.ic_navigate_next_white_24dp);
            }
        });
        viewPager.setAdapter(dynamicViewPagerAdapter);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        slideSplashView();
        setUserProfile();
        checkPermissionsState();
    }

    public void onUserProfileUpdated() {
        super.onUserProfileUpdated();
        setUserProfile();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        checkPermissionsState();
    }

    /* access modifiers changed from: protected */
    public void checkPermissionsState() {
        if (Build.VERSION.SDK_INT >= 23) {
            boolean checkRunningConditions = AppUtils.checkRunningConditions(this);
            int i = 0;
            this.mPermissionsView.findViewById(R.id.layout_welcome_page_3_perm_ok_image).setVisibility(checkRunningConditions ? 0 : 8);
            View findViewById = this.mPermissionsView.findViewById(R.id.layout_welcome_page_3_request_button);
            if (checkRunningConditions) {
                i = 8;
            }
            findViewById.setVisibility(i);
        }
    }

    /* access modifiers changed from: protected */
    public void setUserProfile() {
        if (this.mProfileView != null) {
            NetworkDevice localDevice = AppUtils.getLocalDevice(getApplicationContext());
            ((TextView) this.mProfileView.findViewById(R.id.header_default_device_name_text)).setText(localDevice.nickname);
            ((TextView) this.mProfileView.findViewById(R.id.header_default_device_version_text)).setText(localDevice.versionName);
            loadProfilePictureInto(localDevice.nickname, (ImageView) this.mProfileView.findViewById(R.id.layout_profile_picture_image_default));
            ((ImageView) this.mProfileView.findViewById(R.id.layout_profile_picture_image_preferred)).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    WelcomeActivity.this.startProfileEditor();
                }
            });
            TransitionManager.beginDelayedTransition(this.mProfileView);
        }
    }

    /* access modifiers changed from: protected */
    public void slideSplashView() {
        this.mSplashView.findViewById(R.id.layout_welcome_page_1_splash_image).setAnimation(AnimationUtils.loadAnimation(this, R.anim.enter_from_bottom_centered));
        this.mSplashView.findViewById(R.id.layout_welcome_page_1_details).setAnimation(AnimationUtils.loadAnimation(this, R.anim.enter_from_bottom));
    }
}
