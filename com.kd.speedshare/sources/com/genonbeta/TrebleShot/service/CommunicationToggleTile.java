package com.genonbeta.TrebleShot.service;

import android.app.ActivityManager;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import com.genonbeta.TrebleShot.util.AppUtils;

public class CommunicationToggleTile extends TileService {
    public void onDestroy() {
        super.onDestroy();
    }

    public void onTileAdded() {
        super.onTileAdded();
    }

    public void onTileRemoved() {
        super.onTileRemoved();
    }

    public void onStartListening() {
        super.onStartListening();
        updateTileState();
    }

    public void onStopListening() {
        super.onStopListening();
    }

    public void onClick() {
        super.onClick();
        if (isMyServiceRunning(CommunicationService.class)) {
            stopService(new Intent(getApplicationContext(), CommunicationService.class));
        } else {
            AppUtils.startForegroundService(this, new Intent(getApplicationContext(), CommunicationService.class));
        }
        updateTileState();
    }

    private boolean isMyServiceRunning(Class<?> cls) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) getSystemService("activity")).getRunningServices(Integer.MAX_VALUE)) {
            if (cls.getName().equals(runningServiceInfo.service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    private void updateTileState() {
        updateTileState(isMyServiceRunning(CommunicationService.class) ? 2 : 1);
    }

    private void updateTileState(int i) {
        Tile qsTile = getQsTile();
        if (qsTile != null) {
            qsTile.setState(i);
            Icon icon = qsTile.getIcon();
            if (i != 2) {
                icon.setTint(-7829368);
            } else {
                icon.setTint(-1);
            }
            qsTile.updateTile();
        }
    }
}
