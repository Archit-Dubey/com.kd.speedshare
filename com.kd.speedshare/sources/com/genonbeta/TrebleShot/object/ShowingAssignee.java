package com.genonbeta.TrebleShot.object;

import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TransferGroup;
import java.util.Locale;

public class ShowingAssignee extends TransferGroup.Assignee implements Editable {
    public NetworkDevice.Connection connection;
    public NetworkDevice device;

    public boolean applyFilter(String[] strArr) {
        return false;
    }

    public boolean comparisonSupported() {
        return false;
    }

    public long getComparableSize() {
        return 0;
    }

    public boolean isSelectableSelected() {
        return false;
    }

    public void setId(long j) {
    }

    public boolean setSelectableSelected(boolean z) {
        return false;
    }

    public long getId() {
        return (long) String.format(Locale.getDefault(), "%s_%d", new Object[]{this.deviceId, Long.valueOf(this.groupId)}).hashCode();
    }

    public String getComparableName() {
        return this.device.nickname;
    }

    public long getComparableDate() {
        return this.device.lastUsageTime;
    }

    public String getSelectableTitle() {
        return this.device.nickname;
    }
}
