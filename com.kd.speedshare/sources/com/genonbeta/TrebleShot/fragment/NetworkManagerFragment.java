package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.NetworkUtils;
import com.genonbeta.android.framework.app.Fragment;
import com.kd.speedshare.R;
import org.json.JSONObject;

public class NetworkManagerFragment extends Fragment implements TitleSupport, IconSupport {
    private final int REQUEST_LOCATION_PERMISSION = 1;
    private Button mActionButton;
    private ImageView mCodeView;
    private ColorStateList mColorPassiveState;
    private UIConnectionUtils mConnectionUtils;
    private View mContainerText1;
    private View mContainerText2;
    private View mContainerText3;
    private IntentFilter mIntentFilter = new IntentFilter();
    /* access modifiers changed from: private */
    public UIConnectionUtils.RequestWatcher mRequestWatcher = new UIConnectionUtils.RequestWatcher() {
        public void onResultReturned(boolean z, boolean z2) {
        }
    };
    private StatusReceiver mStatusReceiver = new StatusReceiver();
    private TextView mText1;
    private TextView mText2;
    private TextView mText3;

    public int getIconRes() {
        return R.drawable.ic_wifi_white_24dp;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = getLayoutInflater().inflate(R.layout.layout_network_manager, viewGroup, false);
        this.mColorPassiveState = ColorStateList.valueOf(ContextCompat.getColor(getContext(), AppUtils.getReference(getContext(), R.attr.colorPassive)));
        this.mCodeView = (ImageView) inflate.findViewById(R.id.layout_network_manager_qr_image);
        this.mContainerText1 = inflate.findViewById(R.id.layout_network_manager_info_container_text1_container);
        this.mContainerText2 = inflate.findViewById(R.id.layout_network_manager_info_container_text2_container);
        this.mContainerText3 = inflate.findViewById(R.id.layout_network_manager_info_container_text3_container);
        this.mText1 = (TextView) inflate.findViewById(R.id.layout_network_manager_info_container_text1);
        this.mText2 = (TextView) inflate.findViewById(R.id.layout_network_manager_info_container_text2);
        this.mText3 = (TextView) inflate.findViewById(R.id.layout_network_manager_info_container_text3);
        Button button = (Button) inflate.findViewById(R.id.layout_network_manager_info_toggle_button);
        this.mActionButton = button;
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                if (!NetworkManagerFragment.this.canReadWifiInfo()) {
                    NetworkManagerFragment.this.getUIConnectionUtils().validateLocationPermission(NetworkManagerFragment.this.getActivity(), 1, NetworkManagerFragment.this.mRequestWatcher);
                } else {
                    NetworkManagerFragment.this.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
                }
            }
        });
        return inflate;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1) {
            updateState();
        }
    }

    public void onResume() {
        super.onResume();
        getContext().registerReceiver(this.mStatusReceiver, this.mIntentFilter);
        updateState();
    }

    public void onPause() {
        super.onPause();
        getContext().unregisterReceiver(this.mStatusReceiver);
    }

    public boolean canReadWifiInfo() {
        return Build.VERSION.SDK_INT < 26 || (getConnectionUtils().hasLocationPermission(getContext()) && getConnectionUtils().isLocationServiceEnabled());
    }

    public ConnectionUtils getConnectionUtils() {
        return getUIConnectionUtils().getConnectionUtils();
    }

    public UIConnectionUtils getUIConnectionUtils() {
        if (this.mConnectionUtils == null) {
            this.mConnectionUtils = new UIConnectionUtils(ConnectionUtils.getInstance(getContext()), this);
        }
        return this.mConnectionUtils;
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_useExistingNetwork);
    }

    public void updateViewsLocationDisabled() {
        updateViews((JSONObject) null, R.string.butn_enable, getString(R.string.mesg_locationPermissionRequiredAny), (String) null, (String) null);
    }

    public void updateViewsWithBlank() {
        updateViews((JSONObject) null, R.string.butn_wifiSettings, getString(R.string.mesg_connectToWiFiNetworkHelp), (String) null, (String) null);
    }

    public void updateViews(String str, String str2, String str3) {
        try {
            updateViews(new JSONObject().put(Keyword.NETWORK_ADDRESS_IP, (Object) str2).put(Keyword.NETWORK_ADDRESS_BSSID, (Object) str3), R.string.butn_wifiSettings, getString(R.string.text_easyDiscoveryHelp), str, str2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0089, code lost:
        if (r11 == null) goto L_0x00ac;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00aa, code lost:
        if (r11 != null) goto L_0x00ae;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00ac, code lost:
        r1 = 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ae, code lost:
        r7.setVisibility(r1);
        r6.mActionButton.setText(r8);
        r6.mText1.setText(r9);
        r6.mText2.setText(r10);
        r6.mText3.setText(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c5, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void updateViews(org.json.JSONObject r7, int r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            r6 = this;
            java.lang.String r0 = "pin"
            r1 = 0
            if (r7 == 0) goto L_0x0013
            int r2 = r7.length()
            if (r2 <= 0) goto L_0x0013
            android.content.Context r2 = r6.getContext()
            if (r2 == 0) goto L_0x0013
            r2 = 1
            goto L_0x0014
        L_0x0013:
            r2 = 0
        L_0x0014:
            r3 = 8
            if (r2 == 0) goto L_0x005e
            int r4 = com.genonbeta.TrebleShot.util.AppUtils.getUniqueNumber()     // Catch:{ Exception -> 0x008e }
            r7.put((java.lang.String) r0, (int) r4)     // Catch:{ Exception -> 0x008e }
            android.content.Context r5 = r6.getContext()     // Catch:{ Exception -> 0x008e }
            com.genonbeta.android.framework.preference.SuperPreferences r5 = com.genonbeta.TrebleShot.util.AppUtils.getDefaultPreferences(r5)     // Catch:{ Exception -> 0x008e }
            android.content.SharedPreferences$Editor r5 = r5.edit()     // Catch:{ Exception -> 0x008e }
            android.content.SharedPreferences$Editor r0 = r5.putInt(r0, r4)     // Catch:{ Exception -> 0x008e }
            r0.apply()     // Catch:{ Exception -> 0x008e }
            com.google.zxing.MultiFormatWriter r0 = new com.google.zxing.MultiFormatWriter     // Catch:{ Exception -> 0x008e }
            r0.<init>()     // Catch:{ Exception -> 0x008e }
            java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x008e }
            com.google.zxing.BarcodeFormat r4 = com.google.zxing.BarcodeFormat.QR_CODE     // Catch:{ Exception -> 0x008e }
            r5 = 400(0x190, float:5.6E-43)
            com.google.zxing.common.BitMatrix r7 = r0.encode(r7, r4, r5, r5)     // Catch:{ Exception -> 0x008e }
            com.journeyapps.barcodescanner.BarcodeEncoder r0 = new com.journeyapps.barcodescanner.BarcodeEncoder     // Catch:{ Exception -> 0x008e }
            r0.<init>()     // Catch:{ Exception -> 0x008e }
            android.graphics.Bitmap r7 = r0.createBitmap(r7)     // Catch:{ Exception -> 0x008e }
            android.content.Context r0 = r6.getContext()     // Catch:{ Exception -> 0x008e }
            com.genonbeta.TrebleShot.GlideRequests r0 = com.genonbeta.TrebleShot.GlideApp.with((android.content.Context) r0)     // Catch:{ Exception -> 0x008e }
            com.genonbeta.TrebleShot.GlideRequest r7 = r0.load((android.graphics.Bitmap) r7)     // Catch:{ Exception -> 0x008e }
            android.widget.ImageView r0 = r6.mCodeView     // Catch:{ Exception -> 0x008e }
            r7.into((android.widget.ImageView) r0)     // Catch:{ Exception -> 0x008e }
            goto L_0x0066
        L_0x005e:
            android.widget.ImageView r7 = r6.mCodeView     // Catch:{ Exception -> 0x008e }
            r0 = 2131165422(0x7f0700ee, float:1.794506E38)
            r7.setImageResource(r0)     // Catch:{ Exception -> 0x008e }
        L_0x0066:
            android.widget.ImageView r7 = r6.mCodeView     // Catch:{ Exception -> 0x008e }
            if (r2 == 0) goto L_0x006c
            r0 = 0
            goto L_0x006e
        L_0x006c:
            android.content.res.ColorStateList r0 = r6.mColorPassiveState     // Catch:{ Exception -> 0x008e }
        L_0x006e:
            androidx.core.widget.ImageViewCompat.setImageTintList(r7, r0)     // Catch:{ Exception -> 0x008e }
            android.view.View r7 = r6.mContainerText1
            if (r9 != 0) goto L_0x0078
            r0 = 8
            goto L_0x0079
        L_0x0078:
            r0 = 0
        L_0x0079:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText2
            if (r10 != 0) goto L_0x0083
            r0 = 8
            goto L_0x0084
        L_0x0083:
            r0 = 0
        L_0x0084:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText3
            if (r11 != 0) goto L_0x00ae
            goto L_0x00ac
        L_0x008c:
            r7 = move-exception
            goto L_0x00c6
        L_0x008e:
            r7 = move-exception
            r7.printStackTrace()     // Catch:{ all -> 0x008c }
            android.view.View r7 = r6.mContainerText1
            if (r9 != 0) goto L_0x0099
            r0 = 8
            goto L_0x009a
        L_0x0099:
            r0 = 0
        L_0x009a:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText2
            if (r10 != 0) goto L_0x00a4
            r0 = 8
            goto L_0x00a5
        L_0x00a4:
            r0 = 0
        L_0x00a5:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText3
            if (r11 != 0) goto L_0x00ae
        L_0x00ac:
            r1 = 8
        L_0x00ae:
            r7.setVisibility(r1)
            android.widget.Button r7 = r6.mActionButton
            r7.setText(r8)
            android.widget.TextView r7 = r6.mText1
            r7.setText(r9)
            android.widget.TextView r7 = r6.mText2
            r7.setText(r10)
            android.widget.TextView r7 = r6.mText3
            r7.setText(r11)
            return
        L_0x00c6:
            android.view.View r0 = r6.mContainerText1
            if (r9 != 0) goto L_0x00cd
            r2 = 8
            goto L_0x00ce
        L_0x00cd:
            r2 = 0
        L_0x00ce:
            r0.setVisibility(r2)
            android.view.View r0 = r6.mContainerText2
            if (r10 != 0) goto L_0x00d8
            r2 = 8
            goto L_0x00d9
        L_0x00d8:
            r2 = 0
        L_0x00d9:
            r0.setVisibility(r2)
            android.view.View r0 = r6.mContainerText3
            if (r11 != 0) goto L_0x00e2
            r1 = 8
        L_0x00e2:
            r0.setVisibility(r1)
            android.widget.Button r0 = r6.mActionButton
            r0.setText(r8)
            android.widget.TextView r8 = r6.mText1
            r8.setText(r9)
            android.widget.TextView r8 = r6.mText2
            r8.setText(r10)
            android.widget.TextView r8 = r6.mText3
            r8.setText(r11)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.fragment.NetworkManagerFragment.updateViews(org.json.JSONObject, int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public void updateState() {
        WifiInfo connectionInfo = getConnectionUtils().getWifiManager().getConnectionInfo();
        if (!canReadWifiInfo()) {
            updateViewsLocationDisabled();
        } else if (!getConnectionUtils().isConnectedToAnyNetwork()) {
            updateViewsWithBlank();
        } else {
            updateViews(ConnectionUtils.getCleanNetworkName(connectionInfo.getSSID()), NetworkUtils.convertInet4Address(connectionInfo.getIpAddress()), connectionInfo.getBSSID());
        }
    }

    private class StatusReceiver extends BroadcastReceiver {
        private StatusReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()) || "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                NetworkManagerFragment.this.updateState();
            }
        }
    }
}
