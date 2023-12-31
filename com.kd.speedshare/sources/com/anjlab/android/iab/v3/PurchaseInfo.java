package com.anjlab.android.iab.v3;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class PurchaseInfo implements Parcelable {
    public static final Parcelable.Creator<PurchaseInfo> CREATOR = new Parcelable.Creator<PurchaseInfo>() {
        public PurchaseInfo createFromParcel(Parcel parcel) {
            return new PurchaseInfo(parcel);
        }

        public PurchaseInfo[] newArray(int i) {
            return new PurchaseInfo[i];
        }
    };
    private static final String LOG_TAG = "iabv3.purchaseInfo";
    public final PurchaseData purchaseData = parseResponseDataImpl();
    public final String responseData;
    public final String signature;

    public int describeContents() {
        return 0;
    }

    public PurchaseInfo(String str, String str2) {
        this.responseData = str;
        this.signature = str2;
    }

    @Deprecated
    public PurchaseData parseResponseData() {
        return parseResponseDataImpl();
    }

    /* access modifiers changed from: package-private */
    public PurchaseData parseResponseDataImpl() {
        try {
            JSONObject jSONObject = new JSONObject(this.responseData);
            PurchaseData purchaseData2 = new PurchaseData();
            purchaseData2.orderId = jSONObject.optString(Constants.RESPONSE_ORDER_ID);
            purchaseData2.packageName = jSONObject.optString(Constants.RESPONSE_PACKAGE_NAME);
            purchaseData2.productId = jSONObject.optString(Constants.RESPONSE_PRODUCT_ID);
            long optLong = jSONObject.optLong(Constants.RESPONSE_PURCHASE_TIME, 0);
            purchaseData2.purchaseTime = optLong != 0 ? new Date(optLong) : null;
            purchaseData2.purchaseState = PurchaseState.values()[jSONObject.optInt(Constants.RESPONSE_PURCHASE_STATE, 1)];
            purchaseData2.developerPayload = jSONObject.optString(Constants.RESPONSE_DEVELOPER_PAYLOAD);
            purchaseData2.purchaseToken = jSONObject.getString(Constants.RESPONSE_PURCHASE_TOKEN);
            purchaseData2.autoRenewing = jSONObject.optBoolean(Constants.RESPONSE_AUTO_RENEWING);
            return purchaseData2;
        } catch (JSONException e) {
            Log.e(LOG_TAG, "Failed to parse response data", e);
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.responseData);
        parcel.writeString(this.signature);
    }

    protected PurchaseInfo(Parcel parcel) {
        this.responseData = parcel.readString();
        this.signature = parcel.readString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PurchaseInfo)) {
            return false;
        }
        PurchaseInfo purchaseInfo = (PurchaseInfo) obj;
        if (!this.responseData.equals(purchaseInfo.responseData) || !this.signature.equals(purchaseInfo.signature) || !this.purchaseData.purchaseToken.equals(purchaseInfo.purchaseData.purchaseToken) || !this.purchaseData.purchaseTime.equals(purchaseInfo.purchaseData.purchaseTime)) {
            return false;
        }
        return true;
    }
}
