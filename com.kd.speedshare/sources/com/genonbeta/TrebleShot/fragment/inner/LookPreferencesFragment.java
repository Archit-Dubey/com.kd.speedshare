package com.genonbeta.TrebleShot.fragment.inner;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.preference.PreferenceFragmentCompat;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.PreferenceUtils;
import com.kd.speedshare.R;

public class LookPreferencesFragment extends PreferenceFragmentCompat implements SharedPreferences.OnSharedPreferenceChangeListener {
    public void onCreatePreferences(Bundle bundle, String str) {
        addPreferencesFromResource(R.xml.preference_introduction_look);
    }

    public void onResume() {
        super.onResume();
        getPreferenceManager().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    }

    public void onPause() {
        super.onPause();
        getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (("custom_fonts".equals(str) || "dark_theme".equals(str) || "amoled_theme".equals(str)) && getActivity() != null) {
            PreferenceUtils.syncPreferences((SharedPreferences) AppUtils.getDefaultLocalPreferences(getContext()), AppUtils.getDefaultPreferences(getContext()).getWeakManager());
            getActivity().recreate();
        }
    }
}
