package com.anjlab.android.iab.v3;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

class BillingBase {
    private Context context;

    BillingBase(Context context2) {
        this.context = context2;
    }

    /* access modifiers changed from: package-private */
    public Context getContext() {
        return this.context;
    }

    /* access modifiers changed from: package-private */
    public String getPreferencesBaseKey() {
        return getContext().getPackageName() + "_preferences";
    }

    private SharedPreferences getPreferences() {
        return PreferenceManager.getDefaultSharedPreferences(getContext());
    }

    /* access modifiers changed from: package-private */
    public boolean saveString(String str, String str2) {
        SharedPreferences preferences = getPreferences();
        if (preferences == null) {
            return false;
        }
        SharedPreferences.Editor edit = preferences.edit();
        edit.putString(str, str2);
        edit.commit();
        return true;
    }

    /* access modifiers changed from: package-private */
    public String loadString(String str, String str2) {
        SharedPreferences preferences = getPreferences();
        return preferences != null ? preferences.getString(str, str2) : str2;
    }

    /* access modifiers changed from: package-private */
    public boolean saveBoolean(String str, Boolean bool) {
        SharedPreferences preferences = getPreferences();
        if (preferences == null) {
            return false;
        }
        SharedPreferences.Editor edit = preferences.edit();
        edit.putBoolean(str, bool.booleanValue());
        edit.commit();
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean loadBoolean(String str, boolean z) {
        SharedPreferences preferences = getPreferences();
        return preferences != null ? preferences.getBoolean(str, z) : z;
    }
}
