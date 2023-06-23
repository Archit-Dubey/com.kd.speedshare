package com.genonbeta.TrebleShot.service;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.service.chooser.ChooserTarget;
import android.service.chooser.ChooserTargetService;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.graphics.drawable.TextDrawable;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.database.SQLQuery;
import java.util.ArrayList;
import java.util.List;

public class DeviceChooserService extends ChooserTargetService {
    public List<ChooserTarget> onGetChooserTargets(ComponentName componentName, IntentFilter intentFilter) {
        AccessDatabase database = AppUtils.getDatabase(getApplicationContext());
        ArrayList arrayList = new ArrayList();
        TextDrawable.IShapeBuilder defaultIconBuilder = AppUtils.getDefaultIconBuilder(getApplicationContext());
        for (NetworkDevice next : database.castQuery(new SQLQuery.Select(AccessDatabase.TABLE_DEVICES, new String[0]), NetworkDevice.class)) {
            if (!next.isLocalAddress) {
                Bundle bundle = new Bundle();
                bundle.putString("extraDeviceId", next.deviceId);
                TextDrawable buildRound = defaultIconBuilder.buildRound(next.nickname);
                Bitmap createBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                buildRound.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                buildRound.draw(canvas);
                arrayList.add(new ChooserTarget(next.nickname, Icon.createWithBitmap(createBitmap), ((float) next.lastUsageTime) / ((float) System.currentTimeMillis()), componentName, bundle));
            }
        }
        return arrayList;
    }
}
