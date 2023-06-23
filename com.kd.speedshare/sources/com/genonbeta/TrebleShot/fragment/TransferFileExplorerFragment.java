package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.PathResolverRecyclerAdapter;
import com.genonbeta.TrebleShot.adapter.TransferListAdapter;
import com.genonbeta.TrebleShot.adapter.TransferPathResolverRecyclerAdapter;
import com.genonbeta.TrebleShot.object.NetworkDevice;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.kd.speedshare.R;
import java.io.File;

public class TransferFileExplorerFragment extends TransferListFragment implements TitleSupport {
    private TransferPathResolverRecyclerAdapter mPathAdapter;
    private RecyclerView mPathView;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDividerView(R.id.layout_transfer_explorer_separator);
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(View view, ViewGroup viewGroup) {
        View inflate = getLayoutInflater().inflate(R.layout.layout_transfer_explorer, (ViewGroup) null, false);
        viewGroup.addView(inflate);
        this.mPathView = (RecyclerView) inflate.findViewById(R.id.layout_transfer_explorer_recycler);
        this.mPathAdapter = new TransferPathResolverRecyclerAdapter(getContext());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        linearLayoutManager.setStackFromEnd(true);
        this.mPathView.setHasFixedSize(true);
        this.mPathView.setLayoutManager(linearLayoutManager);
        this.mPathView.setAdapter(this.mPathAdapter);
        this.mPathAdapter.setOnClickListener(new PathResolverRecyclerAdapter.OnClickListener<String>() {
            public void onClick(PathResolverRecyclerAdapter.Holder<String> holder) {
                TransferFileExplorerFragment transferFileExplorerFragment = TransferFileExplorerFragment.this;
                transferFileExplorerFragment.goPath(((TransferListAdapter) transferFileExplorerFragment.getAdapter()).getGroupId(), (String) holder.index.object);
            }
        });
        return super.onListView(view, (ViewGroup) inflate.findViewById(R.id.layout_transfer_explorer_fragment_content));
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setSnackbarContainer(view.findViewById(R.id.layout_transfer_explorer_fragment_content));
    }

    /* access modifiers changed from: protected */
    public void onListRefreshed() {
        String[] strArr;
        super.onListRefreshed();
        String path = ((TransferListAdapter) getAdapter()).getPath();
        TransferPathResolverRecyclerAdapter transferPathResolverRecyclerAdapter = this.mPathAdapter;
        NetworkDevice device = ((TransferListAdapter) getAdapter()).getDevice();
        if (path == null) {
            strArr = null;
        } else {
            strArr = path.split(File.separator);
        }
        transferPathResolverRecyclerAdapter.goTo(device, strArr);
        this.mPathAdapter.notifyDataSetChanged();
        if (this.mPathAdapter.getItemCount() > 0) {
            this.mPathView.smoothScrollToPosition(this.mPathAdapter.getItemCount() - 1);
        }
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_files);
    }
}
