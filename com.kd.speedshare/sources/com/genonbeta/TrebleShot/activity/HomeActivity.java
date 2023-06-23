package com.genonbeta.TrebleShot.activity;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.dialog.ShareAppDialog;
import com.genonbeta.TrebleShot.fragment.HomeFragment;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.ui.callback.PowerfulActionModeSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.google.android.material.navigation.NavigationView;
import com.kd.speedshare.R;

public class HomeActivity extends Activity implements NavigationView.OnNavigationItemSelectedListener, PowerfulActionModeSupport {
    public static final int REQUEST_PERMISSION_ALL = 1;
    private PowerfulActionMode mActionMode;
    private int mChosenMenuItemId;
    private DrawerLayout mDrawerLayout;
    private long mExitPressTime;
    private IntentFilter mFilter = new IntentFilter();
    private HomeFragment mHomeFragment;
    private NavigationView mNavigationView;
    private BroadcastReceiver mReceiver = null;
    /* access modifiers changed from: private */
    public MenuItem mTrustZoneToggle;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        MenuItem findItem;
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_main);
        final Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        this.mHomeFragment = (HomeFragment) getSupportFragmentManager().findFragmentById(R.id.activitiy_home_fragment);
        this.mActionMode = (PowerfulActionMode) findViewById(R.id.content_powerful_action_mode);
        this.mNavigationView = (NavigationView) findViewById(R.id.nav_view);
        this.mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.mTrustZoneToggle = this.mNavigationView.getMenu().findItem(R.id.menu_activity_trustzone);
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, this.mDrawerLayout, toolbar, R.string.text_navigationDrawerOpen, R.string.text_navigationDrawerClose);
        this.mDrawerLayout.addDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.syncState();
        this.mFilter.addAction(CommunicationService.ACTION_TRUSTZONE_STATUS);
        this.mDrawerLayout.addDrawerListener(new DrawerLayout.SimpleDrawerListener() {
            public void onDrawerClosed(View view) {
                HomeActivity.this.applyAwaitingDrawerAction();
            }
        });
        this.mNavigationView.setNavigationItemSelectedListener(this);
        this.mActionMode.setOnSelectionTaskListener(new PowerfulActionMode.OnSelectionTaskListener() {
            public void onSelectionTask(boolean z, PowerfulActionMode powerfulActionMode) {
                toolbar.setVisibility(!z ? 0 : 8);
            }
        });
        if (!AppUtils.isLatestChangeLogSeen(this)) {
            new AlertDialog.Builder(this).setMessage((int) R.string.mesg_versionUpdatedChangelog).setPositiveButton((int) R.string.butn_yes, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    AppUtils.publishLatestChangelogSeen(HomeActivity.this);
                    HomeActivity.this.startActivity(new Intent(HomeActivity.this, ChangelogActivity.class));
                }
            }).setNeutralButton((int) R.string.butn_never, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    HomeActivity.this.getDefaultPreferences().edit().putBoolean("show_changelog_dialog", false).apply();
                }
            }).setNegativeButton((int) R.string.butn_no, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    AppUtils.publishLatestChangelogSeen(HomeActivity.this);
                    Toast.makeText(HomeActivity.this, R.string.mesg_versionUpdatedChangelogRejected, 0).show();
                }
            }).show();
        }
        if (Keyword.Flavor.googlePlay.equals(AppUtils.getBuildFlavor()) && (findItem = this.mNavigationView.getMenu().findItem(R.id.menu_activity_main_donate)) != null) {
            findItem.setVisible(true);
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        createHeaderView();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        ActivityReceiver activityReceiver = new ActivityReceiver();
        this.mReceiver = activityReceiver;
        registerReceiver(activityReceiver, this.mFilter);
        requestTrustZoneStatus();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        BroadcastReceiver broadcastReceiver = this.mReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
        this.mReceiver = null;
    }

    public boolean onNavigationItemSelected(MenuItem menuItem) {
        this.mChosenMenuItemId = menuItem.getItemId();
        DrawerLayout drawerLayout = this.mDrawerLayout;
        if (drawerLayout == null) {
            return true;
        }
        drawerLayout.closeDrawer((int) GravityCompat.START);
        return true;
    }

    public void onBackPressed() {
        if (!this.mHomeFragment.onBackPressed()) {
            DrawerLayout drawerLayout = this.mDrawerLayout;
            if (drawerLayout != null && drawerLayout.isDrawerOpen((int) GravityCompat.START)) {
                this.mDrawerLayout.closeDrawer((int) GravityCompat.START);
            } else if (System.currentTimeMillis() - this.mExitPressTime < 2000) {
                super.onBackPressed();
            } else {
                this.mExitPressTime = System.currentTimeMillis();
                Toast.makeText(this, R.string.mesg_secureExit, 0).show();
            }
        }
    }

    public void onUserProfileUpdated() {
        createHeaderView();
    }

    /* access modifiers changed from: private */
    public void applyAwaitingDrawerAction() {
        int i = this.mChosenMenuItemId;
        if (i != 0) {
            if (R.id.menu_activity_main_manage_devices == i) {
                startActivity(new Intent(this, ManageDevicesActivity.class));
            } else if (R.id.menu_activity_main_about == i) {
                startActivity(new Intent(this, AboutActivity.class));
            } else if (R.id.menu_activity_main_send_application == i) {
                new ShareAppDialog(this).show();
            } else if (R.id.menu_activity_main_web_share == i) {
                startActivity(new Intent(this, WebShareActivity.class));
            } else if (R.id.menu_activity_main_preferences == i) {
                startActivity(new Intent(this, PreferencesActivity.class));
            } else if (R.id.menu_activity_main_exit == i) {
                exitApp();
            } else if (R.id.menu_activity_main_donate == i) {
                try {
                    startActivity(new Intent(this, Class.forName("com.genonbeta.TrebleShot.activity.DonationActivity")));
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
            } else if (R.id.menu_activity_main_dev_survey == i) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle((int) R.string.text_developmentSurvey);
                builder.setMessage((int) R.string.text_developmentSurveySummary);
                builder.setNegativeButton((int) R.string.genfw_uwg_later, (DialogInterface.OnClickListener) null);
                builder.setPositiveButton((int) R.string.butn_temp_doIt, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        try {
                            HomeActivity.this.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("https://docs.google.com/forms/d/e/1FAIpQLSd_JkPpiJZ4tjP7TDgtsE9hG66N1X8xDRYkm-_L6jR66CICEg/viewform?usp=sf_link")));
                        } catch (ActivityNotFoundException unused) {
                            Toast.makeText(HomeActivity.this, R.string.mesg_temp_noBrowser, 0).show();
                        }
                    }
                });
                builder.show();
            } else if (R.id.menu_activity_trustzone == i) {
                toggleTrustZone();
            }
        }
        this.mChosenMenuItemId = 0;
    }

    private void createHeaderView() {
        int i = 0;
        View headerView = this.mNavigationView.getHeaderView(0);
        MenuItem findItem = this.mNavigationView.getMenu().findItem(R.id.menu_activity_main_dev_survey);
        Configuration configuration = getApplication().getResources().getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = configuration.getLocales();
            if (locales.size() > 0) {
                while (true) {
                    if (i >= locales.size()) {
                        break;
                    } else if (locales.get(i).toLanguageTag().startsWith("en")) {
                        findItem.setVisible(true);
                        break;
                    } else {
                        i++;
                    }
                }
            }
        } else {
            findItem.setVisible(configuration.locale.toString().startsWith("en"));
        }
        if (headerView != null) {
            NetworkDevice localDevice = AppUtils.getLocalDevice(getApplicationContext());
            ((TextView) headerView.findViewById(R.id.header_default_device_name_text)).setText(localDevice.nickname);
            ((TextView) headerView.findViewById(R.id.header_default_device_version_text)).setText(localDevice.versionName);
            loadProfilePictureInto(localDevice.nickname, (ImageView) headerView.findViewById(R.id.layout_profile_picture_image_default));
            ((ImageView) headerView.findViewById(R.id.layout_profile_picture_image_preferred)).setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    HomeActivity.this.startProfileEditor();
                }
            });
        }
    }

    public PowerfulActionMode getPowerfulActionMode() {
        return this.mActionMode;
    }

    public void requestTrustZoneStatus() {
        AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_REQUEST_TRUSTZONE_STATUS));
    }

    public void toggleTrustZone() {
        AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_TOGGLE_SEAMLESS_MODE));
    }

    private class ActivityReceiver extends BroadcastReceiver {
        private ActivityReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if (CommunicationService.ACTION_TRUSTZONE_STATUS.equals(intent.getAction()) && HomeActivity.this.mTrustZoneToggle != null) {
                HomeActivity.this.mTrustZoneToggle.setTitle(intent.getBooleanExtra(CommunicationService.EXTRA_STATUS_STARTED, false) ? R.string.butn_turnTrustZoneOff : R.string.butn_turnTrustZoneOn);
            }
        }
    }
}
