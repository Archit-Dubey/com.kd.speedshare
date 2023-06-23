package com.genonbeta.TrebleShot.object;

import android.net.Uri;
import com.genonbeta.TrebleShot.util.TextUtils;

public class Shareable implements Editable {
    public long date;
    public String fileName;
    public String friendlyName;
    public long id;
    private boolean isSelected = false;
    public String mimeType;
    public long size;
    public Uri uri;

    public boolean comparisonSupported() {
        return true;
    }

    public Shareable() {
    }

    public Shareable(long j, String str, String str2, String str3, long j2, long j3, Uri uri2) {
        this.id = j;
        this.friendlyName = str;
        this.fileName = str2;
        this.mimeType = str3;
        this.date = j2;
        this.size = j3;
        this.uri = uri2;
    }

    public boolean applyFilter(String[] strArr) {
        for (String str : strArr) {
            String str2 = this.friendlyName;
            if (str2 != null && str2.toLowerCase().contains(str.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    public boolean isSelectableSelected() {
        return this.isSelected;
    }

    public String getComparableName() {
        return getSelectableTitle();
    }

    public long getComparableDate() {
        return this.date;
    }

    public long getComparableSize() {
        return this.size;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long j) {
        this.id = j;
    }

    public String getSelectableTitle() {
        return this.friendlyName;
    }

    public boolean equals(Object obj) {
        return obj instanceof Shareable ? ((Shareable) obj).uri.equals(this.uri) : super.equals(obj);
    }

    public boolean searchMatches(String str) {
        return TextUtils.searchWord(this.friendlyName, str);
    }

    public boolean setSelectableSelected(boolean z) {
        this.isSelected = z;
        return true;
    }
}
