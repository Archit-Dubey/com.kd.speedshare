package com.genonbeta.TrebleShot.fragment.inner;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.genonbeta.android.framework.app.Fragment;
import com.genonbeta.android.framework.app.FragmentImpl;
import com.kd.speedshare.R;

public class ConcurrentTaskFragment extends Fragment implements FragmentImpl {
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.layout_concurrent_task_fragment, viewGroup, false);
    }
}
