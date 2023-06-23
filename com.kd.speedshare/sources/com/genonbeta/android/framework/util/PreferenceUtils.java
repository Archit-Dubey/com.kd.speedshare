package com.genonbeta.android.framework.util;

import android.content.SharedPreferences;
import android.util.Log;
import com.genonbeta.android.framework.preference.SuperPreferences;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;

public class PreferenceUtils {
    public static final String TAG = PreferenceUtils.class.getSimpleName();

    public static <T> boolean applyGeneric(String str, T t, SharedPreferences.Editor editor) {
        String str2 = TAG;
        Log.d(str2, "Put setting: " + str + " => " + String.valueOf(t));
        if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
            return true;
        } else if (t instanceof Float) {
            editor.putFloat(str, ((Float) t).floatValue());
            return true;
        } else if (t instanceof Integer) {
            editor.putInt(str, ((Integer) t).intValue());
            return true;
        } else if (t instanceof Long) {
            editor.putLong(str, ((Long) t).longValue());
            return true;
        } else if (t instanceof String) {
            editor.putString(str, (String) t);
            return true;
        } else if (!(t instanceof Set)) {
            return false;
        } else {
            editor.putStringSet(str, (Set) t);
            return true;
        }
    }

    public static int sync(SharedPreferences... sharedPreferencesArr) {
        int i = 0;
        if (sharedPreferencesArr.length < 2) {
            return 0;
        }
        ArrayList<SharedPreferences> arrayList = new ArrayList<>(Arrays.asList(sharedPreferencesArr));
        Collections.sort(arrayList, new Comparator<SharedPreferences>() {
            public int compare(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
                return MathUtils.compare(sharedPreferences2.getLong(SuperPreferences.KEY_SYNC_TIME, (long) sharedPreferences2.getAll().size()), sharedPreferences.getLong(SuperPreferences.KEY_SYNC_TIME, (long) sharedPreferences.getAll().size()));
            }
        });
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences sharedPreferences = (SharedPreferences) arrayList.get(0);
        sharedPreferences.edit().apply();
        Map<String, ?> all = sharedPreferences.getAll();
        arrayList.remove(0);
        for (SharedPreferences syncPreferences : arrayList) {
            i += syncPreferences(all, syncPreferences, currentTimeMillis);
        }
        return i;
    }

    public static int syncPreferences(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        return syncPreferences(sharedPreferences.getAll(), sharedPreferences2);
    }

    public static int syncPreferences(Map<String, ?> map, SharedPreferences sharedPreferences) {
        return syncPreferences(map, sharedPreferences, System.currentTimeMillis());
    }

    public static int syncPreferences(Map<String, ?> map, SharedPreferences sharedPreferences, long j) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        int i = 0;
        for (String next : map.keySet()) {
            if (applyGeneric(next, map.get(next), edit)) {
                i++;
            }
        }
        edit.apply();
        return i;
    }
}
