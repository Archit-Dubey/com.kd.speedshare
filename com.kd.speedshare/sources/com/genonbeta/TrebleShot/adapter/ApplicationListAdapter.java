package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.object.Shareable;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.kd.speedshare.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ApplicationListAdapter extends EditableListAdapter<PackageHolder, EditableListAdapter.EditableViewHolder> {
    private PackageManager mManager;
    private SharedPreferences mPreferences;

    public ApplicationListAdapter(Context context, SharedPreferences sharedPreferences) {
        super(context);
        this.mPreferences = sharedPreferences;
        this.mManager = context.getPackageManager();
    }

    public List<PackageHolder> onLoad() {
        ArrayList arrayList = new ArrayList();
        boolean z = this.mPreferences.getBoolean("show_system_apps", false);
        for (PackageInfo next : getContext().getPackageManager().getInstalledPackages(128)) {
            ApplicationInfo applicationInfo = next.applicationInfo;
            if ((applicationInfo.flags & 1) != 1 || z) {
                PackageHolder packageHolder = new PackageHolder(String.valueOf(applicationInfo.loadLabel(this.mManager)), applicationInfo, next.versionName, next.packageName, new File(applicationInfo.sourceDir));
                if (filterItem(packageHolder)) {
                    arrayList.add(packageHolder);
                }
            }
        }
        Collections.sort(arrayList, getDefaultComparator());
        return arrayList;
    }

    public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new EditableListAdapter.EditableViewHolder(getInflater().inflate(R.layout.list_application, viewGroup, false));
    }

    public void onBindViewHolder(EditableListAdapter.EditableViewHolder editableViewHolder, int i) {
        try {
            View view = editableViewHolder.getView();
            PackageHolder packageHolder = (PackageHolder) getItem(i);
            ((TextView) view.findViewById(R.id.text)).setText(packageHolder.friendlyName);
            ((TextView) view.findViewById(R.id.text2)).setText(packageHolder.version);
            view.setSelected(packageHolder.isSelectableSelected());
            GlideApp.with(getContext()).load((Object) packageHolder.appInfo).override(160).centerCrop().into((ImageView) view.findViewById(R.id.image));
        } catch (Exception unused) {
        }
    }

    public static class PackageHolder extends Shareable {
        public static final String FORMAT = ".apk";
        public static final String MIME_TYPE = FileUtils.getFileContentType(FORMAT);
        public ApplicationInfo appInfo;
        public String packageName;
        public String version;

        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public PackageHolder(java.lang.String r15, android.content.pm.ApplicationInfo r16, java.lang.String r17, java.lang.String r18, java.io.File r19) {
            /*
                r14 = this;
                r11 = r14
                r12 = r16
                r13 = r17
                java.lang.String r0 = r12.packageName
                int r0 = r0.hashCode()
                long r1 = (long) r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r3 = r15
                r0.append(r15)
                java.lang.String r4 = "_"
                r0.append(r4)
                r0.append(r13)
                java.lang.String r4 = ".apk"
                r0.append(r4)
                java.lang.String r4 = r0.toString()
                java.lang.String r5 = MIME_TYPE
                long r6 = r19.lastModified()
                long r8 = r19.length()
                android.net.Uri r10 = android.net.Uri.fromFile(r19)
                r0 = r14
                r0.<init>(r1, r3, r4, r5, r6, r8, r10)
                r11.appInfo = r12
                r11.version = r13
                r0 = r18
                r11.packageName = r0
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.adapter.ApplicationListAdapter.PackageHolder.<init>(java.lang.String, android.content.pm.ApplicationInfo, java.lang.String, java.lang.String, java.io.File):void");
        }
    }
}
