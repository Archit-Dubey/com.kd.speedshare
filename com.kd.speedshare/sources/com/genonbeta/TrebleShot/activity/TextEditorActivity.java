package com.genonbeta.TrebleShot.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.genonbeta.CoolSocket.CoolSocket;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.activity.ConnectionManagerActivity;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.config.Keyword;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.object.TextStreamObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.ui.UIConnectionUtils;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.CommunicationBridge;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.ui.callback.SnackbarSupport;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.snackbar.Snackbar;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.journeyapps.barcodescanner.BarcodeEncoder;
import com.kd.speedshare.R;
import org.json.JSONObject;

public class TextEditorActivity extends Activity implements SnackbarSupport {
    public static final String ACTION_EDIT_TEXT = "genonbeta.intent.action.EDIT_TEXT";
    public static final String EXTRA_CLIPBOARD_ID = "clipboardId";
    public static final String EXTRA_SUPPORT_APPLY = "extraSupportApply";
    public static final String EXTRA_TEXT_INDEX = "extraText";
    public static final int REQUEST_CODE_CHOOSE_DEVICE = 0;
    public static final String TAG = TextEditorActivity.class.getSimpleName();
    private long mBackPressTime = 0;
    /* access modifiers changed from: private */
    public EditText mEditTextEditor;
    private TextStreamObject mTextStreamObject;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() == null || !ACTION_EDIT_TEXT.equals(getIntent().getAction())) {
            finish();
            return;
        }
        setContentView((int) R.layout.layout_text_editor_activity);
        MobileAds.initialize((Context) this, (OnInitializationCompleteListener) new OnInitializationCompleteListener() {
            public void onInitializationComplete(InitializationStatus initializationStatus) {
            }
        });
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.mEditTextEditor = (EditText) findViewById(R.id.layout_text_editor_activity_text_text_box);
        if (getIntent().hasExtra(EXTRA_CLIPBOARD_ID)) {
            this.mTextStreamObject = new TextStreamObject(getIntent().getLongExtra(EXTRA_CLIPBOARD_ID, -1));
            try {
                getDatabase().reconstruct(this.mTextStreamObject);
                this.mEditTextEditor.getText().append(this.mTextStreamObject.text);
            } catch (Exception e) {
                e.printStackTrace();
                this.mTextStreamObject = null;
            }
        } else if (getIntent().hasExtra(EXTRA_TEXT_INDEX)) {
            this.mEditTextEditor.getText().append(getIntent().getStringExtra(EXTRA_TEXT_INDEX));
        }
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 0 && intent != null && intent.hasExtra("extraDeviceId") && intent.hasExtra("extraConnectionAdapter")) {
            String stringExtra = intent.getStringExtra("extraDeviceId");
            String stringExtra2 = intent.getStringExtra("extraConnectionAdapter");
            try {
                NetworkDevice networkDevice = new NetworkDevice(stringExtra);
                NetworkDevice.Connection connection = new NetworkDevice.Connection(stringExtra, stringExtra2);
                getDatabase().reconstruct(networkDevice);
                getDatabase().reconstruct(connection);
                doCommunicate(networkDevice, connection);
            } catch (Exception unused) {
                Toast.makeText(this, R.string.mesg_somethingWentWrong, 0).show();
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        getMenuInflater().inflate(R.menu.actions_text_editor, menu);
        return true;
    }

    public void onBackPressed() {
        boolean z = true;
        boolean z2 = this.mTextStreamObject != null;
        boolean z3 = this.mEditTextEditor.getText().length() > 0;
        if (!z2 || this.mTextStreamObject.text == null || this.mTextStreamObject.text.length() <= 0) {
            z = false;
        }
        if (!z3 || ((z && this.mTextStreamObject.text.equals(this.mEditTextEditor.getText().toString())) || System.currentTimeMillis() - this.mBackPressTime < 3000)) {
            super.onBackPressed();
        } else {
            createSnackbar(z2 ? R.string.mesg_clipboardUpdateNotice : R.string.mesg_textSaveNotice, new Object[0]).setAction(z2 ? R.string.butn_update : R.string.butn_save, (View.OnClickListener) new View.OnClickListener() {
                public void onClick(View view) {
                    TextEditorActivity.this.saveText();
                    TextEditorActivity.this.finish();
                }
            }).show();
        }
        this.mBackPressTime = System.currentTimeMillis();
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        boolean z2 = getIntent() != null && getIntent().hasExtra(EXTRA_SUPPORT_APPLY) && getIntent().getBooleanExtra(EXTRA_SUPPORT_APPLY, false);
        menu.findItem(R.id.menu_action_done).setVisible(z2);
        menu.findItem(R.id.menu_action_share).setVisible(!z2);
        menu.findItem(R.id.menu_action_share_trebleshot).setVisible(!z2);
        menu.findItem(R.id.menu_action_remove).setVisible(this.mTextStreamObject != null);
        MenuItem findItem = menu.findItem(R.id.menu_action_show_as_qr_code);
        if (this.mEditTextEditor.length() > 0 && this.mEditTextEditor.length() <= 1200) {
            z = true;
        }
        findItem.setEnabled(z);
        return super.onPrepareOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_action_save) {
            saveText();
            Snackbar.make(findViewById(16908290), (int) R.string.mesg_textStreamSaved, 0).show();
            return true;
        } else if (itemId == R.id.menu_action_done) {
            setResult(-1, new Intent().putExtra(EXTRA_TEXT_INDEX, this.mEditTextEditor.getText().toString()));
            finish();
            return true;
        } else if (itemId == R.id.menu_action_copy) {
            ((ClipboardManager) getSystemService(AccessDatabase.TABLE_CLIPBOARD)).setPrimaryClip(ClipData.newPlainText("copiedText", this.mEditTextEditor.getText().toString()));
            createSnackbar(R.string.mesg_textCopiedToClipboard, new Object[0]).show();
            return true;
        } else if (itemId == R.id.menu_action_share) {
            startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").putExtra("android.intent.extra.TEXT", this.mEditTextEditor.getText().toString()).setType("text/*"), getString(R.string.text_fileShareAppChoose)));
            return true;
        } else if (itemId == R.id.menu_action_share_trebleshot) {
            startActivityForResult(new Intent(this, ConnectionManagerActivity.class).putExtra("extraRequestType", ConnectionManagerActivity.RequestType.RETURN_RESULT.toString()).putExtra(ConnectionManagerActivity.EXTRA_ACTIVITY_SUBTITLE, getString(R.string.text_sendText)), 0);
            return true;
        } else if (itemId == R.id.menu_action_show_as_qr_code) {
            if (this.mEditTextEditor.length() <= 0 || this.mEditTextEditor.length() > 1200) {
                return true;
            }
            try {
                Bitmap createBitmap = new BarcodeEncoder().createBitmap(new MultiFormatWriter().encode(this.mEditTextEditor.getText().toString(), BarcodeFormat.QR_CODE, 800, 800));
                BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this);
                View inflate = LayoutInflater.from(this).inflate(R.layout.layout_show_text_as_qr_code, (ViewGroup) null);
                GlideApp.with((FragmentActivity) this).load(createBitmap).into((ImageView) inflate.findViewById(R.id.layout_show_text_as_qr_code_image));
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -2);
                bottomSheetDialog.setTitle((int) R.string.butn_showAsQrCode);
                bottomSheetDialog.setContentView(inflate, layoutParams);
                bottomSheetDialog.show();
                return true;
            } catch (WriterException unused) {
                Toast.makeText(this, R.string.mesg_somethingWentWrong, 0).show();
                return true;
            }
        } else if (itemId == 16908332) {
            onBackPressed();
            return true;
        } else if (itemId != R.id.menu_action_remove) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            if (this.mTextStreamObject != null) {
                getDatabase().remove((DatabaseObject) this.mTextStreamObject);
            }
            this.mTextStreamObject = null;
            return true;
        }
    }

    public Snackbar createSnackbar(int i, Object... objArr) {
        return Snackbar.make(findViewById(16908290), (CharSequence) getString(i, objArr), 0);
    }

    /* access modifiers changed from: protected */
    public void doCommunicate(final NetworkDevice networkDevice, final NetworkDevice.Connection connection) {
        createSnackbar(R.string.mesg_communicating, new Object[0]).show();
        new WorkerService.RunningTask() {
            public void onRun() {
                final AnonymousClass1 r0 = new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        TextEditorActivity.this.doCommunicate(networkDevice, connection);
                    }
                };
                CommunicationBridge.connect(TextEditorActivity.this.getDatabase(), true, (CommunicationBridge.Client.ConnectionHandler) new CommunicationBridge.Client.ConnectionHandler() {
                    public void onConnect(CommunicationBridge.Client client) {
                        client.setDevice(networkDevice);
                        try {
                            JSONObject jSONObject = new JSONObject();
                            CoolSocket.ActiveConnection communicate = client.communicate(networkDevice, connection);
                            jSONObject.put(Keyword.REQUEST, (Object) Keyword.REQUEST_CLIPBOARD);
                            jSONObject.put(Keyword.TRANSFER_CLIPBOARD_TEXT, (Object) TextEditorActivity.this.mEditTextEditor.getText().toString());
                            communicate.reply(jSONObject.toString());
                            CoolSocket.ActiveConnection.Response receive = communicate.receive();
                            communicate.getSocket().close();
                            JSONObject jSONObject2 = new JSONObject(receive.response);
                            if (!jSONObject2.has(Keyword.RESULT) || !jSONObject2.getBoolean(Keyword.RESULT)) {
                                UIConnectionUtils.showConnectionRejectionInformation(TextEditorActivity.this, networkDevice, jSONObject2, r0);
                            } else {
                                TextEditorActivity.this.createSnackbar(R.string.mesg_sent, new Object[0]).show();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            UIConnectionUtils.showUnknownError(TextEditorActivity.this, r0);
                        }
                    }
                });
            }
        }.setTitle(getString(R.string.mesg_communicating)).setIconRes(com.genonbeta.TrebleShot.R.drawable.ic_compare_arrows_white_24dp_static).run(this);
    }

    public void saveText() {
        if (this.mTextStreamObject == null) {
            this.mTextStreamObject = new TextStreamObject((long) AppUtils.getUniqueNumber());
        }
        if (this.mTextStreamObject.date == 0) {
            this.mTextStreamObject.date = System.currentTimeMillis();
        }
        this.mTextStreamObject.text = this.mEditTextEditor.getText().toString();
        getDatabase().publish((DatabaseObject) this.mTextStreamObject);
    }
}
