package com.genonbeta.TrebleShot.object;

import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.exception.AssigneeNotFoundException;
import com.genonbeta.TrebleShot.exception.ConnectionNotFoundException;
import com.genonbeta.TrebleShot.exception.DeviceNotFoundException;
import com.genonbeta.TrebleShot.exception.TransferGroupNotFoundException;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TransferGroup;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.android.database.DatabaseObject;

public class TransferInstance {
    /* access modifiers changed from: private */
    public TransferGroup.Assignee mAssignee;
    /* access modifiers changed from: private */
    public NetworkDevice.Connection mConnection;
    /* access modifiers changed from: private */
    public NetworkDevice mDevice;
    /* access modifiers changed from: private */
    public TransferGroup mGroup;

    public TransferInstance(AccessDatabase accessDatabase, long j, String str, boolean z) throws TransferGroupNotFoundException, DeviceNotFoundException, ConnectionNotFoundException, AssigneeNotFoundException {
        buildAll(accessDatabase, j, str, z);
    }

    private TransferInstance() {
    }

    /* access modifiers changed from: protected */
    public void buildAll(AccessDatabase accessDatabase, long j, String str, boolean z) throws TransferGroupNotFoundException, DeviceNotFoundException, ConnectionNotFoundException, AssigneeNotFoundException {
        buildGroup(accessDatabase, j);
        if (z) {
            buildDevice(accessDatabase, str);
            buildAssignee(accessDatabase, this.mGroup, this.mDevice);
            buildConnection(accessDatabase, this.mAssignee);
        } else {
            buildConnection(accessDatabase, str);
            buildDevice(accessDatabase, this.mConnection.deviceId);
            buildAssignee(accessDatabase, this.mGroup, this.mDevice);
        }
        NetworkDeviceLoader.processConnection(accessDatabase, getDevice(), getConnection());
        if (!getAssignee().connectionAdapter.equals(getConnection().adapterName)) {
            getAssignee().connectionAdapter = getConnection().adapterName;
            accessDatabase.publish((DatabaseObject) getAssignee());
        }
    }

    /* access modifiers changed from: protected */
    public void buildAssignee(AccessDatabase accessDatabase, TransferGroup transferGroup, NetworkDevice networkDevice) throws AssigneeNotFoundException {
        if (this.mAssignee == null) {
            try {
                TransferGroup.Assignee assignee = new TransferGroup.Assignee(transferGroup, networkDevice);
                accessDatabase.reconstruct(assignee);
                this.mAssignee = assignee;
            } catch (Exception unused) {
                throw new AssigneeNotFoundException();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void buildConnection(AccessDatabase accessDatabase, String str) throws ConnectionNotFoundException {
        if (this.mConnection == null) {
            try {
                NetworkDevice.Connection connection = new NetworkDevice.Connection(str);
                accessDatabase.reconstruct(connection);
                this.mConnection = connection;
            } catch (Exception unused) {
                throw new ConnectionNotFoundException();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void buildConnection(AccessDatabase accessDatabase, TransferGroup.Assignee assignee) throws ConnectionNotFoundException {
        if (this.mConnection == null) {
            try {
                NetworkDevice.Connection connection = new NetworkDevice.Connection(assignee);
                accessDatabase.reconstruct(connection);
                this.mConnection = connection;
            } catch (Exception unused) {
                throw new ConnectionNotFoundException();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void buildDevice(AccessDatabase accessDatabase, String str) throws DeviceNotFoundException {
        if (this.mDevice == null) {
            try {
                NetworkDevice networkDevice = new NetworkDevice(str);
                accessDatabase.reconstruct(networkDevice);
                this.mDevice = networkDevice;
            } catch (Exception unused) {
                throw new DeviceNotFoundException();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void buildGroup(AccessDatabase accessDatabase, long j) throws TransferGroupNotFoundException {
        if (this.mGroup == null) {
            try {
                TransferGroup transferGroup = new TransferGroup(j);
                accessDatabase.reconstruct(transferGroup);
                this.mGroup = transferGroup;
            } catch (Exception unused) {
                throw new TransferGroupNotFoundException();
            }
        }
    }

    public TransferGroup.Assignee getAssignee() {
        return this.mAssignee;
    }

    public NetworkDevice.Connection getConnection() {
        return this.mConnection;
    }

    public NetworkDevice getDevice() {
        return this.mDevice;
    }

    public TransferGroup getGroup() {
        return this.mGroup;
    }

    public static class Builder {
        private TransferInstance mTransferInstance = new TransferInstance();

        public TransferInstance build(AccessDatabase accessDatabase, long j, String str, boolean z) throws AssigneeNotFoundException, DeviceNotFoundException, TransferGroupNotFoundException, ConnectionNotFoundException {
            this.mTransferInstance.buildAll(accessDatabase, j, str, z);
            return this.mTransferInstance;
        }

        public Builder supply(TransferGroup transferGroup) {
            TransferGroup unused = this.mTransferInstance.mGroup = transferGroup;
            return this;
        }

        public Builder supply(NetworkDevice networkDevice) {
            NetworkDevice unused = this.mTransferInstance.mDevice = networkDevice;
            return this;
        }

        public Builder supply(NetworkDevice.Connection connection) {
            NetworkDevice.Connection unused = this.mTransferInstance.mConnection = connection;
            return this;
        }

        public Builder supply(TransferGroup.Assignee assignee) {
            TransferGroup.Assignee unused = this.mTransferInstance.mAssignee = assignee;
            return this;
        }
    }
}
