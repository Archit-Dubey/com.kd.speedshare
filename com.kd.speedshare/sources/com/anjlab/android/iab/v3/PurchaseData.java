package com.anjlab.android.iab.v3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;

public class PurchaseData implements Parcelable {
    public static final Parcelable.Creator<PurchaseData> CREATOR = new Parcelable.Creator<PurchaseData>() {
        public PurchaseData createFromParcel(Parcel parcel) {
            return new PurchaseData(parcel);
        }

        public PurchaseData[] newArray(int i) {
            return new PurchaseData[i];
        }
    };
    public boolean autoRenewing;
    public String developerPayload;
    public String orderId;
    public String packageName;
    public String productId;
    public PurchaseState purchaseState;
    public Date purchaseTime;
    public String purchaseToken;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.orderId);
        parcel.writeString(this.packageName);
        parcel.writeString(this.productId);
        Date date = this.purchaseTime;
        parcel.writeLong(date != null ? date.getTime() : -1);
        PurchaseState purchaseState2 = this.purchaseState;
        parcel.writeInt(purchaseState2 == null ? -1 : purchaseState2.ordinal());
        parcel.writeString(this.developerPayload);
        parcel.writeString(this.purchaseToken);
        parcel.writeByte(this.autoRenewing ? (byte) 1 : 0);
    }

    public PurchaseData() {
    }

    protected PurchaseData(Parcel parcel) {
        Date date;
        this.orderId = parcel.readString();
        this.packageName = parcel.readString();
        this.productId = parcel.readString();
        long readLong = parcel.readLong();
        PurchaseState purchaseState2 = null;
        if (readLong == -1) {
            date = null;
        } else {
            date = new Date(readLong);
        }
        this.purchaseTime = date;
        int readInt = parcel.readInt();
        this.purchaseState = readInt != -1 ? PurchaseState.values()[readInt] : purchaseState2;
        this.developerPayload = parcel.readString();
        this.purchaseToken = parcel.readString();
        this.autoRenewing = parcel.readByte() != 0;
    }
}
