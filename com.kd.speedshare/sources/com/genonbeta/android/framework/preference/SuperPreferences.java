package com.genonbeta.android.framework.preference;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

public class SuperPreferences implements SharedPreferences {
    public static final String KEY_SYNC_TIME = "__SYNC_TIME";
    /* access modifiers changed from: private */
    public OnPreferenceUpdateListener mUpdateListener;
    private SharedPreferences mWeakManager;

    public interface OnPreferenceUpdateListener {
        void onPreferenceUpdate(SuperPreferences superPreferences, boolean z);
    }

    public SuperPreferences(SharedPreferences sharedPreferences) {
        this.mWeakManager = sharedPreferences;
    }

    public SharedPreferences getWeakManager() {
        return this.mWeakManager;
    }

    public Map<String, ?> getAll() {
        return this.mWeakManager.getAll();
    }

    public String getString(String str, String str2) {
        return this.mWeakManager.getString(str, str2);
    }

    public Set<String> getStringSet(String str, Set<String> set) {
        return this.mWeakManager.getStringSet(str, set);
    }

    public int getInt(String str, int i) {
        return this.mWeakManager.getInt(str, i);
    }

    public long getLong(String str, long j) {
        return this.mWeakManager.getLong(str, j);
    }

    public float getFloat(String str, float f) {
        return this.mWeakManager.getFloat(str, f);
    }

    public boolean getBoolean(String str, boolean z) {
        return this.mWeakManager.getBoolean(str, z);
    }

    public boolean contains(String str) {
        return this.mWeakManager.contains(str);
    }

    public SharedPreferences.Editor edit() {
        return new SuperEditor(this.mWeakManager.edit());
    }

    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mWeakManager.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mWeakManager.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    public void setOnPreferenceUpdateListener(OnPreferenceUpdateListener onPreferenceUpdateListener) {
        this.mUpdateListener = onPreferenceUpdateListener;
    }

    public class SuperEditor implements SharedPreferences.Editor {
        private SharedPreferences.Editor mEditor;

        public SuperEditor(SharedPreferences.Editor editor) {
            this.mEditor = editor;
        }

        public SharedPreferences.Editor putString(String str, String str2) {
            this.mEditor.putString(str, str2);
            return this;
        }

        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            this.mEditor.putStringSet(str, set);
            return this;
        }

        public SharedPreferences.Editor putInt(String str, int i) {
            this.mEditor.putInt(str, i);
            return this;
        }

        public SharedPreferences.Editor putLong(String str, long j) {
            this.mEditor.putLong(str, j);
            return this;
        }

        public SharedPreferences.Editor putFloat(String str, float f) {
            this.mEditor.putFloat(str, f);
            return this;
        }

        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.mEditor.putBoolean(str, z);
            return this;
        }

        public SharedPreferences.Editor remove(String str) {
            this.mEditor.remove(str);
            return this;
        }

        public SharedPreferences.Editor clear() {
            this.mEditor.clear();
            return this;
        }

        public boolean commit() {
            this.mEditor.putLong(SuperPreferences.KEY_SYNC_TIME, System.currentTimeMillis());
            boolean commit = this.mEditor.commit();
            if (SuperPreferences.this.mUpdateListener != null) {
                SuperPreferences.this.mUpdateListener.onPreferenceUpdate(SuperPreferences.this, false);
            }
            return commit;
        }

        public void apply() {
            this.mEditor.putLong(SuperPreferences.KEY_SYNC_TIME, System.currentTimeMillis());
            this.mEditor.apply();
            if (SuperPreferences.this.mUpdateListener != null) {
                SuperPreferences.this.mUpdateListener.onPreferenceUpdate(SuperPreferences.this, false);
            }
        }
    }
}
