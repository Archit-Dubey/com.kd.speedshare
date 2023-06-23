package com.genonbeta.TrebleShot.activity;

import android.content.Intent;
import android.widget.Toast;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.kd.speedshare.R;

public class ChangeStoragePathActivity extends Activity {
    public static final int REQUEST_CHOOSE_FOLDER = 1;

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        startActivityForResult(new Intent(this, FilePickerActivity.class).setAction(FilePickerActivity.ACTION_CHOOSE_DIRECTORY).putExtra(FilePickerActivity.EXTRA_START_PATH, FileUtils.getApplicationDirectory(getApplicationContext()).getUri().toString()).putExtra(FilePickerActivity.EXTRA_ACTIVITY_TITLE, getString(R.string.text_storagePath)), 1);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (intent != null && i2 == -1 && i == 1 && intent.hasExtra(FilePickerActivity.EXTRA_CHOSEN_PATH)) {
            getDefaultPreferences().edit().putString("storage_path", intent.getParcelableExtra(FilePickerActivity.EXTRA_CHOSEN_PATH).toString()).apply();
            Toast.makeText(this, "👍", 0).show();
        }
        finish();
    }
}
