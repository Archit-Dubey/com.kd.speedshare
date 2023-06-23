package com.genonbeta.android.database;

import java.util.HashMap;
import java.util.Map;

public class CursorItem {
    private Map<String, Object> mList = new HashMap();

    public CursorItem clear() {
        this.mList.clear();
        return this;
    }

    public boolean exists(String str) {
        return this.mList.containsKey(str) && this.mList.get(str) != null;
    }

    public boolean getBoolean(String str) {
        return Boolean.valueOf(getString(str)).booleanValue();
    }

    public double getDouble(String str) {
        try {
            return Double.valueOf(getString(str)).doubleValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0.0d;
        }
    }

    public float getFloat(String str) {
        try {
            return Float.valueOf(getString(str)).floatValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0.0f;
        }
    }

    public int getInt(String str) {
        try {
            return Integer.valueOf(getString(str)).intValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public long getLong(String str) {
        try {
            return Long.valueOf(getString(str)).longValue();
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getString(String str) {
        if (this.mList.get(str) == null) {
            return null;
        }
        return String.valueOf(this.mList.get(str));
    }

    public int length() {
        return this.mList.size();
    }

    public Map<String, Object> list() {
        return this.mList;
    }

    public CursorItem put(String str, Object obj) {
        this.mList.put(str, obj);
        return this;
    }

    public CursorItem putAll(CursorItem cursorItem) {
        list().putAll(cursorItem.list());
        return this;
    }

    public int size() {
        return this.mList.size();
    }
}
