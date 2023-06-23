package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import com.genonbeta.TrebleShot.adapter.PathResolverRecyclerAdapter;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.kd.speedshare.R;
import java.io.File;

public class TransferPathResolverRecyclerAdapter extends PathResolverRecyclerAdapter<String> {
    private NetworkDevice mDevice;
    private String mHomeName;

    public TransferPathResolverRecyclerAdapter(Context context) {
        super(context);
        this.mHomeName = context.getString(R.string.text_home);
    }

    public PathResolverRecyclerAdapter.Holder.Index<String> onFirstItem() {
        if (this.mDevice != null) {
            return new PathResolverRecyclerAdapter.Holder.Index<>(this.mDevice.nickname, R.drawable.ic_device_hub_white_24dp, null);
        }
        return new PathResolverRecyclerAdapter.Holder.Index<>(this.mHomeName, R.drawable.ic_home_white_24dp, null);
    }

    public void goTo(NetworkDevice networkDevice, String[] strArr) {
        this.mDevice = networkDevice;
        StringBuilder sb = new StringBuilder();
        initAdapter();
        synchronized (getList()) {
            if (strArr != null) {
                for (String str : strArr) {
                    if (str.length() != 0) {
                        if (sb.length() > 0) {
                            sb.append(File.separator);
                        }
                        sb.append(str);
                        getList().add(new PathResolverRecyclerAdapter.Holder.Index(str, sb.toString()));
                    }
                }
            }
        }
    }
}
