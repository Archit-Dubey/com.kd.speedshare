package com.genonbeta.TrebleShot.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.transition.TransitionManager;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.kd.speedshare.R;

public class WebShareActivity extends Activity {
    public static final String EXTRA_WEBSERVER_START_REQUIRED = "extraStartRequired";
    private FloatingActionButton mFAB;
    private IntentFilter mFilter = new IntentFilter();
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (CommunicationService.ACTION_WEBSHARE_STATUS.equals(intent.getAction())) {
                WebShareActivity.this.updateWebShareStatus(intent.getBooleanExtra(CommunicationService.EXTRA_STATUS_STARTED, false));
            }
        }
    };

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_web_share);
        MobileAds.initialize((Context) this, (OnInitializationCompleteListener) new OnInitializationCompleteListener() {
            public void onInitializationComplete(InitializationStatus initializationStatus) {
            }
        });
        this.mFilter.addAction(CommunicationService.ACTION_WEBSHARE_STATUS);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(R.id.content_fab);
        this.mFAB = floatingActionButton;
        floatingActionButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                WebShareActivity.this.toggleWebShare(false);
            }
        });
        if (getIntent() != null && getIntent().hasExtra(EXTRA_WEBSERVER_START_REQUIRED) && getIntent().getBooleanExtra(EXTRA_WEBSERVER_START_REQUIRED, false)) {
            toggleWebShare(true);
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        registerReceiver(this.mReceiver, this.mFilter);
        requestWebShareStatus();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        unregisterReceiver(this.mReceiver);
        this.mFAB.setAnimation((Animation) null);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    public void requestWebShareStatus() {
        AppUtils.startForegroundService(this, new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_REQUEST_WEBSHARE_STATUS));
    }

    public void toggleWebShare(boolean z) {
        Intent action = new Intent(this, CommunicationService.class).setAction(CommunicationService.ACTION_TOGGLE_WEBSHARE);
        if (z) {
            action.putExtra(CommunicationService.EXTRA_TOGGLE_WEBSHARE_START_ALWAYS, true);
        }
        AppUtils.startForegroundService(this, action);
    }

    public void updateWebShareStatus(boolean z) {
        this.mFAB.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(this, z ? R.color.colorError : R.color.colorSecondary)));
        this.mFAB.setImageResource(z ? R.drawable.ic_pause_white_24dp : R.drawable.ic_play_arrow_white_24dp);
        if (this.mFAB.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) {
            ((CoordinatorLayout.LayoutParams) this.mFAB.getLayoutParams()).gravity = z ? 81 : 17;
            FloatingActionButton floatingActionButton = this.mFAB;
            floatingActionButton.setLayoutParams(floatingActionButton.getLayoutParams());
            if (this.mFAB.getParent() != null && (this.mFAB.getParent() instanceof ViewGroup)) {
                TransitionManager.beginDelayedTransition((ViewGroup) this.mFAB.getParent());
            }
        }
        if (z) {
            this.mFAB.setAnimation((Animation) null);
            return;
        }
        this.mFAB.setVisibility(0);
        this.mFAB.setAnimation(AnimationUtils.loadAnimation(this, R.anim.pulse));
    }
}
