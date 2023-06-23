package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.UpdateUtils;
import com.genonbeta.android.updatewithgithub.GitHubUpdater;
import com.kd.speedshare.R;

public class AboutActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_about);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setHomeAsUpIndicator((int) R.drawable.ic_close_white_24dp);
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        findViewById(R.id.orgIcon).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                AboutActivity.this.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("https://github.com/TheKDCorporation")));
            }
        });
        findViewById(R.id.activity_about_see_source_layout).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                AboutActivity.this.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(AppConfig.URI_REPO_APP)));
            }
        });
        findViewById(R.id.activity_about_translate_layout).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                AboutActivity.this.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("https://github.com/TheKDCorporation")));
            }
        });
        findViewById(R.id.activity_about_telegram_layout).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                AboutActivity.this.startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("")));
            }
        });
        findViewById(R.id.activity_about_option_fourth_layout).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                if (Keyword.Flavor.googlePlay.equals(AppUtils.getBuildFlavor())) {
                    try {
                        AboutActivity.this.startActivity(new Intent(AboutActivity.this, Class.forName("com.genonbeta.TrebleShot.activity.DonationActivity")));
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                } else {
                    AboutActivity aboutActivity = AboutActivity.this;
                    UpdateUtils.checkForUpdates(aboutActivity, UpdateUtils.getDefaultUpdater(aboutActivity), true, (GitHubUpdater.OnInfoAvailableListener) null);
                }
            }
        });
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.actions_about, menu);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
