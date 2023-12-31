package com.google.zxing.client.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.os.Vibrator;
import android.util.Log;
import com.journeyapps.barcodescanner.R;
import java.io.IOException;

public final class BeepManager {
    private static final float BEEP_VOLUME = 0.1f;
    /* access modifiers changed from: private */
    public static final String TAG = BeepManager.class.getSimpleName();
    private static final long VIBRATE_DURATION = 200;
    private boolean beepEnabled = true;
    private final Context context;
    private boolean vibrateEnabled = false;

    public BeepManager(Activity activity) {
        activity.setVolumeControlStream(3);
        this.context = activity.getApplicationContext();
    }

    public boolean isBeepEnabled() {
        return this.beepEnabled;
    }

    public void setBeepEnabled(boolean z) {
        this.beepEnabled = z;
    }

    public boolean isVibrateEnabled() {
        return this.vibrateEnabled;
    }

    public void setVibrateEnabled(boolean z) {
        this.vibrateEnabled = z;
    }

    public synchronized void playBeepSoundAndVibrate() {
        Vibrator vibrator;
        if (this.beepEnabled) {
            playBeepSound();
        }
        if (this.vibrateEnabled && (vibrator = (Vibrator) this.context.getSystemService("vibrator")) != null) {
            vibrator.vibrate(VIBRATE_DURATION);
        }
    }

    public MediaPlayer playBeepSound() {
        AssetFileDescriptor openRawResourceFd;
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                mediaPlayer.stop();
                mediaPlayer.release();
            }
        });
        mediaPlayer.setOnErrorListener(new MediaPlayer.OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                String access$000 = BeepManager.TAG;
                Log.w(access$000, "Failed to beep " + i + ", " + i2);
                mediaPlayer.stop();
                mediaPlayer.release();
                return true;
            }
        });
        try {
            openRawResourceFd = this.context.getResources().openRawResourceFd(R.raw.zxing_beep);
            mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
            openRawResourceFd.close();
            mediaPlayer.setVolume(BEEP_VOLUME, BEEP_VOLUME);
            mediaPlayer.prepare();
            mediaPlayer.start();
            return mediaPlayer;
        } catch (IOException e) {
            Log.w(TAG, e);
            mediaPlayer.release();
            return null;
        } catch (Throwable th) {
            openRawResourceFd.close();
            throw th;
        }
    }
}
