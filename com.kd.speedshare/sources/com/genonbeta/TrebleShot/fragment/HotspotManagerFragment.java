package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.net.wifi.WifiConfiguration;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.receiver.NetworkStatusReceiver;
import com.genonbeta.TrebleShot.service.CommunicationService;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.HotspotUtils;
import com.genonbeta.TrebleShot.util.NetworkUtils;
import com.genonbeta.android.framework.app.Fragment;
import com.google.android.gms.ads.AdView;
import com.kd.speedshare.R;
import org.json.JSONObject;

public class HotspotManagerFragment extends Fragment implements TitleSupport, IconSupport {
    public static final int REQUEST_LOCATION_PERMISSION_FOR_HOTSPOT = 643;
    private AdView mAdView;
    private ImageView mCodeView;
    private ColorStateList mColorPassiveState;
    private UIConnectionUtils mConnectionUtils;
    private View mContainerText1;
    private View mContainerText2;
    private View mContainerText3;
    private MenuItem mHelpMenuItem;
    private boolean mHotspotStartedExternally = false;
    private UIConnectionUtils.RequestWatcher mHotspotWatcher = new UIConnectionUtils.RequestWatcher() {
        public void onResultReturned(boolean z, boolean z2) {
            boolean unused = HotspotManagerFragment.this.mWaitForHotspot = z2;
        }
    };
    private IntentFilter mIntentFilter = new IntentFilter();
    private StatusReceiver mStatusReceiver = new StatusReceiver();
    private TextView mText1;
    private TextView mText2;
    private TextView mText3;
    private Button mToggleButton;
    /* access modifiers changed from: private */
    public boolean mWaitForHotspot = false;
    /* access modifiers changed from: private */
    public boolean mWaitForWiFi = false;
    private UIConnectionUtils.RequestWatcher mWiFiWatcher = new UIConnectionUtils.RequestWatcher() {
        public void onResultReturned(boolean z, boolean z2) {
            boolean unused = HotspotManagerFragment.this.mWaitForWiFi = z2;
        }
    };

    public int getIconRes() {
        return R.drawable.ic_wifi_tethering_white_24dp;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mIntentFilter.addAction(CommunicationService.ACTION_HOTSPOT_STATUS);
        this.mIntentFilter.addAction(NetworkStatusReceiver.WIFI_AP_STATE_CHANGED);
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = getLayoutInflater().inflate(R.layout.layout_hotspot_manager, viewGroup, false);
        this.mColorPassiveState = ColorStateList.valueOf(ContextCompat.getColor(getContext(), AppUtils.getReference(getContext(), R.attr.colorPassive)));
        this.mCodeView = (ImageView) inflate.findViewById(R.id.layout_hotspot_manager_qr_image);
        this.mToggleButton = (Button) inflate.findViewById(R.id.layout_hotspot_manager_info_toggle_button);
        this.mContainerText1 = inflate.findViewById(R.id.layout_hotspot_manager_info_container_text1_container);
        this.mContainerText2 = inflate.findViewById(R.id.layout_hotspot_manager_info_container_text2_container);
        this.mContainerText3 = inflate.findViewById(R.id.layout_hotspot_manager_info_container_text3_container);
        this.mText1 = (TextView) inflate.findViewById(R.id.layout_hotspot_manager_info_container_text1);
        this.mText2 = (TextView) inflate.findViewById(R.id.layout_hotspot_manager_info_container_text2);
        this.mText3 = (TextView) inflate.findViewById(R.id.layout_hotspot_manager_info_container_text3);
        this.mToggleButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                HotspotManagerFragment.this.toggleHotspot();
            }
        });
        return inflate;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_hotspot_manager, menu);
        this.mHelpMenuItem = menu.findItem(R.id.show_help);
        showMenu();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.show_help || getConnectionUtils().getHotspotUtils().getConfiguration() == null) {
            return super.onOptionsItemSelected(menuItem);
        }
        String str = getConnectionUtils().getHotspotUtils().getConfiguration().SSID;
        String friendlySSID = AppUtils.getFriendlySSID(str);
        new AlertDialog.Builder(getActivity()).setMessage((CharSequence) getString(R.string.mesg_hotspotCreatedInfo, str, friendlySSID)).setPositiveButton(17039370, (DialogInterface.OnClickListener) null).show();
        return true;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (643 == i) {
            toggleHotspot();
        }
    }

    public void onResume() {
        super.onResume();
        getContext().registerReceiver(this.mStatusReceiver, this.mIntentFilter);
        updateState();
        if (this.mWaitForHotspot) {
            toggleHotspot();
        }
    }

    public void onPause() {
        super.onPause();
        getContext().unregisterReceiver(this.mStatusReceiver);
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
        return context.getString(R.string.text_startHotspot);
    }

    /* access modifiers changed from: private */
    public void toggleHotspot() {
        if (this.mHotspotStartedExternally) {
            startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
        } else {
            getUIConnectionUtils().toggleHotspot(true, getActivity(), 643, this.mHotspotWatcher);
        }
    }

    private void updateViewsWithBlank() {
        this.mHotspotStartedExternally = false;
        updateViews((JSONObject) null, getString(R.string.text_qrCodeHotspotDisabledHelp), (String) null, (String) null, R.string.text_startHotspot);
    }

    /* access modifiers changed from: private */
    public void updateViewsStartedExternally() {
        this.mHotspotStartedExternally = true;
        updateViews((JSONObject) null, getString(R.string.text_hotspotStartedExternallyNotice), (String) null, (String) null, R.string.butn_stopHotspot);
    }

    /* access modifiers changed from: private */
    public void updateViews(String str, String str2, int i) {
        this.mHotspotStartedExternally = false;
        try {
            updateViews(new JSONObject().put(Keyword.NETWORK_NAME, (Object) str).put(Keyword.NETWORK_PASSWORD, (Object) str2).put(Keyword.NETWORK_KEYMGMT, i), getString(R.string.text_qrCodeAvailableHelp), str, str2, R.string.butn_stopHotspot);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0089, code lost:
        if (r10 == null) goto L_0x00ac;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00aa, code lost:
        if (r10 != null) goto L_0x00ae;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00ac, code lost:
        r1 = 8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ae, code lost:
        r7.setVisibility(r1);
        r6.mText1.setText(r8);
        r6.mText2.setText(r9);
        r6.mText3.setText(r10);
        r6.mToggleButton.setText(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00c5, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void updateViews(org.json.JSONObject r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, int r11) {
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
            if (r8 != 0) goto L_0x0078
            r0 = 8
            goto L_0x0079
        L_0x0078:
            r0 = 0
        L_0x0079:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText2
            if (r9 != 0) goto L_0x0083
            r0 = 8
            goto L_0x0084
        L_0x0083:
            r0 = 0
        L_0x0084:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText3
            if (r10 != 0) goto L_0x00ae
            goto L_0x00ac
        L_0x008c:
            r7 = move-exception
            goto L_0x00c6
        L_0x008e:
            r7 = move-exception
            r7.printStackTrace()     // Catch:{ all -> 0x008c }
            android.view.View r7 = r6.mContainerText1
            if (r8 != 0) goto L_0x0099
            r0 = 8
            goto L_0x009a
        L_0x0099:
            r0 = 0
        L_0x009a:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText2
            if (r9 != 0) goto L_0x00a4
            r0 = 8
            goto L_0x00a5
        L_0x00a4:
            r0 = 0
        L_0x00a5:
            r7.setVisibility(r0)
            android.view.View r7 = r6.mContainerText3
            if (r10 != 0) goto L_0x00ae
        L_0x00ac:
            r1 = 8
        L_0x00ae:
            r7.setVisibility(r1)
            android.widget.TextView r7 = r6.mText1
            r7.setText(r8)
            android.widget.TextView r7 = r6.mText2
            r7.setText(r9)
            android.widget.TextView r7 = r6.mText3
            r7.setText(r10)
            android.widget.Button r7 = r6.mToggleButton
            r7.setText(r11)
            return
        L_0x00c6:
            android.view.View r0 = r6.mContainerText1
            if (r8 != 0) goto L_0x00cd
            r2 = 8
            goto L_0x00ce
        L_0x00cd:
            r2 = 0
        L_0x00ce:
            r0.setVisibility(r2)
            android.view.View r0 = r6.mContainerText2
            if (r9 != 0) goto L_0x00d8
            r2 = 8
            goto L_0x00d9
        L_0x00d8:
            r2 = 0
        L_0x00d9:
            r0.setVisibility(r2)
            android.view.View r0 = r6.mContainerText3
            if (r10 != 0) goto L_0x00e2
            r1 = 8
        L_0x00e2:
            r0.setVisibility(r1)
            android.widget.TextView r0 = r6.mText1
            r0.setText(r8)
            android.widget.TextView r8 = r6.mText2
            r8.setText(r9)
            android.widget.TextView r8 = r6.mText3
            r8.setText(r10)
            android.widget.Button r8 = r6.mToggleButton
            r8.setText(r11)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.fragment.HotspotManagerFragment.updateViews(org.json.JSONObject, java.lang.String, java.lang.String, java.lang.String, int):void");
    }

    private void showMenu() {
        MenuItem menuItem = this.mHelpMenuItem;
        if (menuItem != null) {
            menuItem.setVisible(getConnectionUtils().getHotspotUtils().getConfiguration() != null && getConnectionUtils().getHotspotUtils().isEnabled());
        }
    }

    /* access modifiers changed from: private */
    public void updateState() {
        boolean isEnabled = getUIConnectionUtils().getConnectionUtils().getHotspotUtils().isEnabled();
        WifiConfiguration configuration = getConnectionUtils().getHotspotUtils().getConfiguration();
        showMenu();
        if (!isEnabled) {
            updateViewsWithBlank();
        } else if ((getConnectionUtils().getHotspotUtils() instanceof HotspotUtils.HackAPI) && configuration != null) {
            updateViews(configuration.SSID, configuration.preSharedKey, NetworkUtils.getAllowedKeyManagement(configuration));
        } else if (Build.VERSION.SDK_INT >= 26) {
            AppUtils.startForegroundService(getActivity(), new Intent(getActivity(), CommunicationService.class).setAction(CommunicationService.ACTION_REQUEST_HOTSPOT_STATUS));
        }
    }

    private class StatusReceiver extends BroadcastReceiver {
        private StatusReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if (NetworkStatusReceiver.WIFI_AP_STATE_CHANGED.equals(intent.getAction())) {
                HotspotManagerFragment.this.updateState();
            } else if (!CommunicationService.ACTION_HOTSPOT_STATUS.equals(intent.getAction())) {
            } else {
                if (intent.getBooleanExtra(CommunicationService.EXTRA_HOTSPOT_ENABLED, false)) {
                    HotspotManagerFragment.this.updateViews(intent.getStringExtra(CommunicationService.EXTRA_HOTSPOT_NAME), intent.getStringExtra(CommunicationService.EXTRA_HOTSPOT_PASSWORD), intent.getIntExtra(CommunicationService.EXTRA_HOTSPOT_KEY_MGMT, 0));
                } else if (HotspotManagerFragment.this.getConnectionUtils().getHotspotUtils().isEnabled() && !intent.getBooleanExtra(CommunicationService.EXTRA_HOTSPOT_DISABLING, false)) {
                    HotspotManagerFragment.this.updateViewsStartedExternally();
                }
            }
        }
    }
}
