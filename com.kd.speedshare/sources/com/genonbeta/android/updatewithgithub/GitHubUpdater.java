package com.genonbeta.android.updatewithgithub;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.genonbeta.TrebleShot.adapter.ApplicationListAdapter;
import com.genonbeta.android.framework.R;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONObject;

public class GitHubUpdater {
    public static final String TAG = GitHubUpdater.class.getSimpleName();
    /* access modifiers changed from: private */
    public Context mContext;
    /* access modifiers changed from: private */
    public boolean mPreReleaseIncluded;
    /* access modifiers changed from: private */
    public String mRepo;
    /* access modifiers changed from: private */
    public int mThemeRes;

    public interface OnInfoAvailableListener {
        void onInfoAvailable(boolean z, String str, String str2, String str3, String str4);
    }

    public GitHubUpdater(Context context, String str, int i, boolean z) {
        this.mContext = context;
        this.mRepo = str;
        this.mThemeRes = i;
        this.mPreReleaseIncluded = z;
    }

    public void checkForUpdates(final boolean z, final OnInfoAvailableListener onInfoAvailableListener) {
        if (z) {
            Toast.makeText(this.mContext, R.string.genfw_uwg_check_for_updates_ongoing, 1).show();
        }
        new Thread() {
            public void run() {
                JSONObject jSONObject;
                super.run();
                Looper.prepare();
                try {
                    Log.d(GitHubUpdater.TAG, "Checking updates");
                    GitHubUpdater.this.mContext.setTheme(GitHubUpdater.this.mThemeRes);
                    String connect = new RemoteServer(GitHubUpdater.this.mRepo).connect((String) null, (String) null);
                    Log.d(GitHubUpdater.TAG, "Server connected");
                    String str = GitHubUpdater.this.mContext.getPackageManager().getPackageInfo(GitHubUpdater.this.mContext.getApplicationInfo().packageName, 0).versionName;
                    final String appLabel = GitHubUpdater.this.getAppLabel(GitHubUpdater.this.mContext);
                    JSONArray jSONArray = new JSONArray(connect);
                    if (jSONArray.length() > 0) {
                        String str2 = GitHubUpdater.TAG;
                        Log.d(str2, "Reading releases: (total) " + jSONArray.length());
                        int i = 0;
                        while (true) {
                            if (i >= jSONArray.length()) {
                                break;
                            }
                            jSONObject = jSONArray.getJSONObject(i);
                            if (!jSONObject.getBoolean("prerelease") || GitHubUpdater.this.mPreReleaseIncluded) {
                                final String string = jSONObject.getString("tag_name");
                                String string2 = jSONObject.getString("name");
                                String string3 = jSONObject.getString("published_at");
                                String string4 = jSONObject.getString("body");
                                ComparableVersion comparableVersion = new ComparableVersion(string);
                                ComparableVersion comparableVersion2 = new ComparableVersion(str);
                            } else {
                                i++;
                            }
                        }
                        final String string5 = jSONObject.getString("tag_name");
                        String string22 = jSONObject.getString("name");
                        String string32 = jSONObject.getString("published_at");
                        String string42 = jSONObject.getString("body");
                        ComparableVersion comparableVersion3 = new ComparableVersion(string5);
                        ComparableVersion comparableVersion22 = new ComparableVersion(str);
                        if (onInfoAvailableListener != null) {
                            onInfoAvailableListener.onInfoAvailable(comparableVersion3.compareTo(comparableVersion22) > 0, string5, string22, string42, string32);
                        }
                        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + "/" + appLabel + " v" + string5 + ApplicationListAdapter.PackageHolder.FORMAT);
                        if (z && comparableVersion3.compareTo(comparableVersion22) > 0) {
                            String str3 = GitHubUpdater.TAG;
                            Log.d(str3, "New version found: " + string5);
                            if (jSONObject.has("assets")) {
                                Log.d(GitHubUpdater.TAG, "Reading assets");
                                JSONArray jSONArray2 = jSONObject.getJSONArray("assets");
                                if (jSONArray2.length() > 0) {
                                    String str4 = GitHubUpdater.TAG;
                                    Log.d(str4, "Assets is cached: (total) " + jSONArray2.length());
                                    final String string6 = jSONArray2.getJSONObject(0).getString("browser_download_url");
                                    final File file2 = file;
                                    String str5 = string5;
                                    AnonymousClass1 r1 = new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            if (file2.isFile()) {
                                                file2.delete();
                                            }
                                            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(string6));
                                            request.setTitle(GitHubUpdater.this.mContext.getString(R.string.genfw_uwg_downloading_update_title, new Object[]{appLabel, string5}));
                                            request.setDescription(GitHubUpdater.this.mContext.getString(R.string.genfw_uwg_downloading_update_description, new Object[]{appLabel}));
                                            String str = Environment.DIRECTORY_DOWNLOADS;
                                            request.setDestinationInExternalPublicDir(str, appLabel + " v" + string5 + ApplicationListAdapter.PackageHolder.FORMAT);
                                            request.setMimeType("application/vnd.android.package-archive");
                                            request.setNotificationVisibility(1);
                                            ((DownloadManager) GitHubUpdater.this.mContext.getSystemService("download")).enqueue(request);
                                        }
                                    };
                                    AnonymousClass2 r12 = new DialogInterface.OnClickListener() {
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            GitHubUpdater.this.mContext.startActivity(new Intent("android.intent.action.VIEW_DOWNLOADS"));
                                        }
                                    };
                                    AlertDialog.Builder title = new AlertDialog.Builder(GitHubUpdater.this.mContext).setTitle(R.string.genfw_uwg_update_available);
                                    if (file.isFile()) {
                                        String str6 = GitHubUpdater.TAG;
                                        Log.d(str6, "File already exists: " + file.getName());
                                        title.setMessage(R.string.genfw_uwg_update_exists).setNeutralButton(R.string.genfw_uwg_download, (DialogInterface.OnClickListener) r1).setPositiveButton(R.string.genfw_uwg_open, (DialogInterface.OnClickListener) r12);
                                    } else {
                                        Log.d(GitHubUpdater.TAG, "Update is downloadable");
                                        title.setMessage((CharSequence) String.format(GitHubUpdater.this.mContext.getString(R.string.genfw_uwg_update_body), new Object[]{str, str5, string32, string42})).setPositiveButton(R.string.genfw_uwg_download_now, (DialogInterface.OnClickListener) r1);
                                    }
                                    title.setNegativeButton(R.string.genfw_uwg_later, (DialogInterface.OnClickListener) null).show();
                                } else {
                                    Log.d(GitHubUpdater.TAG, "No downloadable file is provided");
                                }
                            } else {
                                Toast.makeText(GitHubUpdater.this.mContext, R.string.genfw_uwg_no_update_available, 1).show();
                            }
                        } else if (z) {
                            Toast.makeText(GitHubUpdater.this.mContext, R.string.genfw_uwg_currently_latest_version_info, 1).show();
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Log.d(GitHubUpdater.TAG, "Error occurred");
                    if (z) {
                        Toast.makeText(GitHubUpdater.this.mContext, R.string.genfw_uwg_version_check_error, 1).show();
                    }
                } catch (Throwable th) {
                    Looper.loop();
                    throw th;
                }
                Looper.loop();
            }
        }.start();
    }

    public String getAppLabel(Context context) {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = context.getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            applicationInfo = null;
        }
        return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "Unknown");
    }

    public static boolean isNewVersion(Context context, String str) {
        try {
            if (new ComparableVersion(str).compareTo(new ComparableVersion(context.getPackageManager().getPackageInfo(context.getApplicationInfo().packageName, 0).versionName)) > 0) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isNewVersion(String str) {
        return isNewVersion(this.mContext, str);
    }
}
