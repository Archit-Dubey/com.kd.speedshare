package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.fragment.BarcodeConnectFragment;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener;
import com.kd.speedshare.R;

public class BarcodeScannerActivity extends Activity {
    public static final String EXTRA_CONNECTION_ADAPTER = "extraConnectionAdapter";
    public static final String EXTRA_DEVICE_ID = "extraDeviceId";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_barcode_scanner);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        setResult(0);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        BarcodeConnectFragment barcodeConnectFragment = (BarcodeConnectFragment) getSupportFragmentManager().findFragmentById(R.id.barcodeScannerFragment);
        if (barcodeConnectFragment != null) {
            barcodeConnectFragment.setDeviceSelectedListener(new NetworkDeviceSelectedListener() {
                public boolean isListenerEffective() {
                    return true;
                }

                public boolean onNetworkDeviceSelected(NetworkDevice networkDevice, NetworkDevice.Connection connection) {
                    BarcodeScannerActivity.this.setResult(-1, new Intent().putExtra("extraDeviceId", networkDevice.deviceId).putExtra("extraConnectionAdapter", connection.adapterName));
                    BarcodeScannerActivity.this.finish();
                    return true;
                }
            });
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (16908332 != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }
}
