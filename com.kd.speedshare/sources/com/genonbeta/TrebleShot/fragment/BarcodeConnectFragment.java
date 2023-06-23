package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiInfo;
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
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.genonbeta.TrebleShot.activity.ConnectionManagerActivity;
import com.genonbeta.TrebleShot.activity.TextEditorActivity;
import com.genonbeta.TrebleShot.adapter.NetworkDeviceListAdapter;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TextStreamObject;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.ui.UITask;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.NetworkDeviceSelectedListener;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.ConnectionUtils;
import com.genonbeta.TrebleShot.util.NetworkDeviceLoader;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.app.Fragment;
import com.genonbeta.android.framework.util.Interrupter;
import com.google.zxing.ResultPoint;
import com.journeyapps.barcodescanner.BarcodeCallback;
import com.journeyapps.barcodescanner.BarcodeResult;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.kd.speedshare.R;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class BarcodeConnectFragment extends Fragment implements TitleSupport, UITask, IconSupport, ConnectionManagerActivity.DeviceSelectionSupport {
    public static final int REQUEST_PERMISSION_CAMERA = 1;
    public static final int REQUEST_PERMISSION_LOCATION = 2;
    public static final int REQUEST_TURN_WIFI_ON = 4;
    public static final String TAG = "BarcodeConnectFragment";
    /* access modifiers changed from: private */
    public DecoratedBarcodeView mBarcodeView;
    private Button mConductButton;
    private ViewGroup mConductContainer;
    private ImageView mConductImage;
    private TextView mConductText;
    /* access modifiers changed from: private */
    public UIConnectionUtils mConnectionUtils;
    /* access modifiers changed from: private */
    public NetworkDeviceSelectedListener mDeviceSelectedListener;
    private IntentFilter mIntentFilter = new IntentFilter();
    private boolean mPermissionRequestedCamera = false;
    private boolean mPermissionRequestedLocation = false;
    /* access modifiers changed from: private */
    public UIConnectionUtils.RequestWatcher mPermissionWatcher = new UIConnectionUtils.RequestWatcher() {
        public void onResultReturned(boolean z, boolean z2) {
            if (BarcodeConnectFragment.this.isResumed()) {
                BarcodeConnectFragment.this.updateState();
            } else {
                BarcodeConnectFragment.this.mBarcodeView.pauseAndWait();
            }
        }
    };
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction()) || "android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || "android.location.PROVIDERS_CHANGED".equals(intent.getAction())) {
                BarcodeConnectFragment.this.updateState();
            }
        }
    };
    private NetworkDeviceLoader.OnDeviceRegisteredListener mRegisteredListener = new NetworkDeviceLoader.OnDeviceRegisteredListener() {
        public void onDeviceRegistered(AccessDatabase accessDatabase, NetworkDevice networkDevice, NetworkDevice.Connection connection) {
            if (BarcodeConnectFragment.this.mDeviceSelectedListener != null) {
                BarcodeConnectFragment.this.mDeviceSelectedListener.onNetworkDeviceSelected(networkDevice, connection);
            }
        }
    };
    private boolean mShowAsText = false;
    private View mTaskContainer;
    private Button mTaskInterruptButton;
    private ImageView mTextModeIndicator;

    public int getIconRes() {
        return R.drawable.ic_qrcode_white_24dp;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mConnectionUtils = new UIConnectionUtils(ConnectionUtils.getInstance(getContext()), this);
        this.mIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mIntentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.mIntentFilter.addAction("android.location.PROVIDERS_CHANGED");
        setHasOptionsMenu(true);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.layout_barcode_connect, viewGroup, false);
        this.mConductContainer = (ViewGroup) inflate.findViewById(R.id.layout_barcode_connect_conduct_container);
        this.mTextModeIndicator = (ImageView) inflate.findViewById(R.id.layout_barcode_connect_mode_text_indicator);
        this.mConductButton = (Button) inflate.findViewById(R.id.layout_barcode_connect_conduct_button);
        this.mBarcodeView = (DecoratedBarcodeView) inflate.findViewById(R.id.layout_barcode_connect_barcode_view);
        this.mConductText = (TextView) inflate.findViewById(R.id.layout_barcode_connect_conduct_text);
        this.mConductImage = (ImageView) inflate.findViewById(R.id.layout_barcode_connect_conduct_image);
        this.mTaskContainer = inflate.findViewById(R.id.container_task);
        this.mTaskInterruptButton = (Button) inflate.findViewById(R.id.task_interrupter_button);
        return inflate;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_barcode_scanner, menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.show_help) {
            new AlertDialog.Builder(getActivity()).setMessage((int) R.string.text_scanQRCodeHelp).setPositiveButton(17039370, (DialogInterface.OnClickListener) null).show();
        } else if (itemId != R.id.change_mode) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            boolean z = !this.mShowAsText;
            this.mShowAsText = z;
            this.mTextModeIndicator.setVisibility(z ? 0 : 8);
            menuItem.setIcon(this.mShowAsText ? R.drawable.ic_qrcode_white_24dp : R.drawable.ic_short_text_white_24dp);
            createSnackbar(this.mShowAsText ? R.string.mesg_qrScannerTextMode : R.string.mesg_qrScannerDefaultMode, new Object[0]).show();
            updateState();
        }
        return true;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mBarcodeView.decodeContinuous(new BarcodeCallback() {
            public void possibleResultPoints(List<ResultPoint> list) {
            }

            public void barcodeResult(BarcodeResult barcodeResult) {
                BarcodeConnectFragment.this.handleBarcode(barcodeResult.getResult().getText());
            }
        });
    }

    public void onResume() {
        super.onResume();
        getContext().registerReceiver(this.mReceiver, this.mIntentFilter);
        updateState();
    }

    public void onPause() {
        super.onPause();
        getContext().unregisterReceiver(this.mReceiver);
        this.mBarcodeView.pauseAndWait();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (strArr.length > 0) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if ("android.permission.CAMERA".equals(strArr[i2]) && iArr[i2] == 0) {
                    updateState();
                    this.mPermissionRequestedCamera = false;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void handleBarcode(final String str) {
        AnonymousClass5 r4 = new DialogInterface.OnDismissListener() {
            public void onDismiss(DialogInterface dialogInterface) {
                BarcodeConnectFragment.this.updateState();
            }
        };
        try {
            if (!this.mShowAsText) {
                JSONObject jSONObject = new JSONObject(str);
                NetworkDeviceListAdapter.HotspotNetwork hotspotNetwork = new NetworkDeviceListAdapter.HotspotNetwork();
                final int i = jSONObject.has(Keyword.NETWORK_PIN) ? jSONObject.getInt(Keyword.NETWORK_PIN) : -1;
                if (jSONObject.has(Keyword.NETWORK_NAME)) {
                    hotspotNetwork.SSID = jSONObject.getString(Keyword.NETWORK_NAME);
                    hotspotNetwork.qrConnection = true;
                    if (jSONObject.has(Keyword.NETWORK_PASSWORD)) {
                        hotspotNetwork.password = jSONObject.getString(Keyword.NETWORK_PASSWORD);
                        hotspotNetwork.keyManagement = jSONObject.getInt(Keyword.NETWORK_KEYMGMT);
                    }
                    makeAcquaintance(hotspotNetwork, i);
                } else if (jSONObject.has(Keyword.NETWORK_ADDRESS_IP)) {
                    String string = jSONObject.getString(Keyword.NETWORK_ADDRESS_BSSID);
                    final String string2 = jSONObject.getString(Keyword.NETWORK_ADDRESS_IP);
                    WifiInfo connectionInfo = this.mConnectionUtils.getConnectionUtils().getWifiManager().getConnectionInfo();
                    if (connectionInfo == null || connectionInfo.getBSSID() == null || !connectionInfo.getBSSID().equals(string)) {
                        this.mBarcodeView.pauseAndWait();
                        new AlertDialog.Builder(getActivity()).setMessage((int) R.string.mesg_errorNotSameNetwork).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_skip, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                BarcodeConnectFragment.this.makeAcquaintance(string2, i);
                            }
                        }).setOnDismissListener(r4).show();
                        return;
                    }
                    makeAcquaintance(string2, i);
                } else {
                    throw new JSONException("Failed to attain known variables.");
                }
            } else {
                throw new JSONException("Showing as text.");
            }
        } catch (JSONException e) {
            e.printStackTrace();
            this.mBarcodeView.pauseAndWait();
            new AlertDialog.Builder(getActivity()).setTitle((int) R.string.text_unrecognizedQrCode).setMessage((CharSequence) str).setNegativeButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null).setPositiveButton((int) R.string.butn_show, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    TextStreamObject textStreamObject = new TextStreamObject((long) AppUtils.getUniqueNumber(), str);
                    AppUtils.getDatabase(BarcodeConnectFragment.this.getContext()).publish((DatabaseObject) textStreamObject);
                    Toast.makeText(BarcodeConnectFragment.this.getContext(), R.string.mesg_textStreamSaved, 0).show();
                    BarcodeConnectFragment.this.startActivity(new Intent(BarcodeConnectFragment.this.getContext(), TextEditorActivity.class).setAction(TextEditorActivity.ACTION_EDIT_TEXT).putExtra(TextEditorActivity.EXTRA_CLIPBOARD_ID, textStreamObject.id));
                }
            }).setNeutralButton((int) R.string.butn_copyToClipboard, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (BarcodeConnectFragment.this.getContext() != null) {
                        ((ClipboardManager) BarcodeConnectFragment.this.getContext().getSystemService(AccessDatabase.TABLE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText("copiedText", str));
                        Toast.makeText(BarcodeConnectFragment.this.getContext(), R.string.mesg_textCopiedToClipboard, 0).show();
                    }
                }
            }).setOnDismissListener(r4).show();
        }
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_scanQrCode);
    }

    /* access modifiers changed from: protected */
    public void makeAcquaintance(Object obj, int i) {
        this.mConnectionUtils.makeAcquaintance(getActivity(), this, obj, i, this.mRegisteredListener);
    }

    public void setDeviceSelectedListener(NetworkDeviceSelectedListener networkDeviceSelectedListener) {
        this.mDeviceSelectedListener = networkDeviceSelectedListener;
    }

    public void updateState(boolean z, final Interrupter interrupter) {
        if (!isAdded()) {
            this.mBarcodeView.pauseAndWait();
            return;
        }
        int i = 0;
        if (z) {
            this.mBarcodeView.pauseAndWait();
            setConductItemsShowing(false);
        } else {
            this.mBarcodeView.resume();
            updateState();
        }
        View view = this.mTaskContainer;
        if (!z) {
            i = 8;
        }
        view.setVisibility(i);
        this.mTaskInterruptButton.setOnClickListener(z ? new View.OnClickListener() {
            public void onClick(View view) {
                interrupter.interrupt();
            }
        } : null);
    }

    public void updateState() {
        if (isAdded()) {
            boolean isWifiEnabled = this.mConnectionUtils.getConnectionUtils().getWifiManager().isWifiEnabled();
            int i = 0;
            boolean z = ContextCompat.checkSelfPermission(getContext(), "android.permission.CAMERA") == 0;
            boolean z2 = Build.VERSION.SDK_INT < 26 || this.mConnectionUtils.getConnectionUtils().canAccessLocation();
            boolean z3 = (isWifiEnabled || this.mShowAsText) && z && z2;
            if (!z3) {
                this.mBarcodeView.pauseAndWait();
                if (!z) {
                    this.mConductImage.setImageResource(R.drawable.ic_camera_white_144dp);
                    this.mConductText.setText(R.string.text_cameraPermissionRequired);
                    this.mConductButton.setText(R.string.butn_ask);
                    this.mConductButton.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            ActivityCompat.requestPermissions(BarcodeConnectFragment.this.getActivity(), new String[]{"android.permission.CAMERA"}, 1);
                        }
                    });
                    if (!this.mPermissionRequestedCamera) {
                        ActivityCompat.requestPermissions(getActivity(), new String[]{"android.permission.CAMERA"}, 1);
                    }
                    this.mPermissionRequestedCamera = true;
                } else if (!z2) {
                    this.mConductImage.setImageResource(R.drawable.ic_perm_device_information_white_144dp);
                    this.mConductText.setText(R.string.mesg_locationPermissionRequiredAny);
                    this.mConductButton.setText(R.string.butn_enable);
                    this.mConductButton.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            BarcodeConnectFragment.this.mConnectionUtils.validateLocationPermission(BarcodeConnectFragment.this.getActivity(), 2, BarcodeConnectFragment.this.mPermissionWatcher);
                        }
                    });
                    if (!this.mPermissionRequestedLocation) {
                        ActivityCompat.requestPermissions(getActivity(), new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, 1);
                    }
                    this.mPermissionRequestedLocation = true;
                } else {
                    this.mConductImage.setImageResource(R.drawable.ic_signal_wifi_off_white_144dp);
                    this.mConductText.setText(R.string.text_scanQRWifiRequired);
                    this.mConductButton.setText(R.string.butn_enable);
                    this.mConductButton.setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            BarcodeConnectFragment.this.mConnectionUtils.turnOnWiFi(BarcodeConnectFragment.this.getActivity(), 4, BarcodeConnectFragment.this.mPermissionWatcher);
                        }
                    });
                }
            } else {
                this.mBarcodeView.resume();
                this.mConductText.setText(R.string.text_scanQRCodeHelp);
            }
            setConductItemsShowing(!z3);
            DecoratedBarcodeView decoratedBarcodeView = this.mBarcodeView;
            if (!z3) {
                i = 8;
            }
            decoratedBarcodeView.setVisibility(i);
        }
    }

    /* access modifiers changed from: protected */
    public void setConductItemsShowing(boolean z) {
        this.mConductContainer.setVisibility(z ? 0 : 8);
    }

    public void updateTaskStarted(Interrupter interrupter) {
        updateState(true, interrupter);
    }

    public void updateTaskStopped() {
        updateState(false, (Interrupter) null);
    }
}
