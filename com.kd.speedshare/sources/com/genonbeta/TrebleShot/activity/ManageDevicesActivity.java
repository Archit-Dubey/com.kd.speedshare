package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import com.genonbeta.TrebleShot.activity.ConnectionManagerActivity;
import com.genonbeta.TrebleShot.app.Activity;
import com.kd.speedshare.R;

public class ManageDevicesActivity extends Activity {
    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_manage_devices);
        findViewById(R.id.fixConnectionButton).setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                ManageDevicesActivity.this.startActivity(new Intent(ManageDevicesActivity.this, ConnectionManagerActivity.class).putExtra("extraRequestType", ConnectionManagerActivity.RequestType.RETURN_RESULT.toString()).putExtra(ConnectionManagerActivity.EXTRA_ACTIVITY_SUBTITLE, ManageDevicesActivity.this.getString(R.string.text_fixConnection)));
            }
        });
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeAsUpIndicator((int) R.drawable.ic_close_white_24dp);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
