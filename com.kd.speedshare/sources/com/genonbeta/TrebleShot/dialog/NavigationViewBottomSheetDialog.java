package com.genonbeta.TrebleShot.dialog;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.navigation.NavigationView;
import com.kd.speedshare.R;

public class NavigationViewBottomSheetDialog extends BottomSheetDialog {
    public NavigationViewBottomSheetDialog(Activity activity, int i, int i2, NavigationView.OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        super(activity);
        View inflate = LayoutInflater.from(activity).inflate(R.layout.layout_navigation_view_bottom_sheet, (ViewGroup) null, false);
        NavigationView navigationView = (NavigationView) inflate.findViewById(R.id.nav_view);
        activity.getMenuInflater().inflate(i, navigationView.getMenu());
        navigationView.setCheckedItem(i2);
        navigationView.setNavigationItemSelectedListener(onNavigationItemSelectedListener);
        setContentView(inflate);
    }
}
