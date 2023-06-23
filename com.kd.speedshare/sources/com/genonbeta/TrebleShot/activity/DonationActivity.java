package com.genonbeta.TrebleShot.activity;

import android.os.Bundle;
import android.view.animation.Animation;
import android.widget.TextView;
import com.genonbeta.TrebleShot.app.Activity;
import com.kd.speedshare.R;

public class DonationActivity extends Activity {
    private Animation mAnimation;
    private TextView mDeveloperText;
    private String[] mTexts;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_donation);
    }
}
