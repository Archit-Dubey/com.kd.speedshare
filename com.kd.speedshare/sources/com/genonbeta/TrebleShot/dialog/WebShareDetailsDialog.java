package com.genonbeta.TrebleShot.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.GlideApp;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.journeyapps.barcodescanner.BarcodeEncoder;
import com.kd.speedshare.R;

public class WebShareDetailsDialog extends AlertDialog.Builder {
    public WebShareDetailsDialog(Context context, String str) {
        super(context);
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_web_share_details, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.image);
        setView(inflate);
        setPositiveButton((int) R.string.butn_close, (DialogInterface.OnClickListener) null);
        ((TextView) inflate.findViewById(R.id.text)).setText(str);
        try {
            GlideApp.with(getContext()).load(new BarcodeEncoder().createBitmap(new MultiFormatWriter().encode(str, BarcodeFormat.QR_CODE, 400, 400))).into(imageView);
        } catch (WriterException e) {
            e.printStackTrace();
        }
    }
}
