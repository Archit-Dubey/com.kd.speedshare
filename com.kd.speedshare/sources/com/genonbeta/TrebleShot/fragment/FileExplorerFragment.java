package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.FileListAdapter;
import com.genonbeta.TrebleShot.adapter.PathResolverRecyclerAdapter;
import com.genonbeta.TrebleShot.app.Activity;
import com.genonbeta.TrebleShot.dialog.FolderCreationDialog;
import com.genonbeta.TrebleShot.ui.callback.DetachListener;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.android.framework.io.DocumentFile;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;
import java.io.File;
import java.util.ArrayList;

public class FileExplorerFragment extends FileListFragment implements Activity.OnBackPressedListener, DetachListener, IconSupport, TitleSupport {
    public static final String TAG = FileExplorerFragment.class.getSimpleName();
    private FilePathResolverRecyclerAdapter mPathAdapter;
    private RecyclerView mPathView;
    private DocumentFile mRequestedPath = null;

    public int getIconRes() {
        return R.drawable.ic_folder_white_24dp;
    }

    public static DocumentFile getReadableFolder(DocumentFile documentFile) {
        DocumentFile parentFile = documentFile.getParentFile();
        if (parentFile == null) {
            return null;
        }
        return parentFile.canRead() ? parentFile : getReadableFolder(parentFile);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setDividerView(R.id.fragment_fileexplorer_separator);
    }

    /* access modifiers changed from: protected */
    public RecyclerView onListView(View view, ViewGroup viewGroup) {
        View inflate = getLayoutInflater().inflate(R.layout.layout_file_explorer, (ViewGroup) null, false);
        viewGroup.addView(inflate);
        this.mPathView = (RecyclerView) inflate.findViewById(R.id.fragment_fileexplorer_pathresolver);
        FilePathResolverRecyclerAdapter filePathResolverRecyclerAdapter = new FilePathResolverRecyclerAdapter(getContext());
        this.mPathAdapter = filePathResolverRecyclerAdapter;
        filePathResolverRecyclerAdapter.setOnClickListener(new PathResolverRecyclerAdapter.OnClickListener<DocumentFile>() {
            public void onClick(PathResolverRecyclerAdapter.Holder<DocumentFile> holder) {
                FileExplorerFragment.this.goPath((DocumentFile) holder.index.object);
            }
        });
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity(), 0, false);
        linearLayoutManager.setStackFromEnd(true);
        this.mPathView.setLayoutManager(linearLayoutManager);
        this.mPathView.setHasFixedSize(true);
        this.mPathView.setAdapter(this.mPathAdapter);
        return super.onListView(view, (ViewGroup) inflate.findViewById(R.id.fragment_fileexplorer_listViewContainer));
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        DocumentFile documentFile = this.mRequestedPath;
        if (documentFile != null) {
            requestPath(documentFile);
        }
    }

    public boolean onBackPressed() {
        DocumentFile path = ((FileListAdapter) getAdapter()).getPath();
        if (path == null) {
            return false;
        }
        DocumentFile readableFolder = getReadableFolder(path);
        if (readableFolder == null || File.separator.equals(readableFolder.getName())) {
            goPath((DocumentFile) null);
            return true;
        }
        goPath(readableFolder);
        return true;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_file_explorer, menu);
    }

    /* access modifiers changed from: protected */
    public void onListRefreshed() {
        super.onListRefreshed();
        this.mPathAdapter.goTo(((FileListAdapter) getAdapter()).getPath());
        this.mPathAdapter.notifyDataSetChanged();
        if (this.mPathAdapter.getItemCount() > 0) {
            this.mPathView.smoothScrollToPosition(this.mPathAdapter.getItemCount() - 1);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.actions_file_explorer_create_folder) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (((FileListAdapter) getAdapter()).getPath() == null || !((FileListAdapter) getAdapter()).getPath().canWrite()) {
            Snackbar.make((View) getListView(), (int) R.string.mesg_currentPathUnavailable, -1).show();
            return true;
        }
        new FolderCreationDialog(getContext(), ((FileListAdapter) getAdapter()).getPath(), new FolderCreationDialog.OnFolderCreatedListener() {
            public void onFolderCreated(DocumentFile documentFile) {
                FileExplorerFragment.this.refreshList();
            }
        }).show();
        return true;
    }

    public PathResolverRecyclerAdapter getPathAdapter() {
        return this.mPathAdapter;
    }

    public RecyclerView getPathView() {
        return this.mPathView;
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_fileExplorer);
    }

    public void requestPath(DocumentFile documentFile) {
        if (!isAdded()) {
            this.mRequestedPath = documentFile;
            return;
        }
        this.mRequestedPath = null;
        goPath(documentFile);
    }

    private class FilePathResolverRecyclerAdapter extends PathResolverRecyclerAdapter<DocumentFile> {
        public FilePathResolverRecyclerAdapter(Context context) {
            super(context);
        }

        public PathResolverRecyclerAdapter.Holder.Index<DocumentFile> onFirstItem() {
            return new PathResolverRecyclerAdapter.Holder.Index<>(getContext().getString(R.string.text_home), R.drawable.ic_home_white_24dp, null);
        }

        public void goTo(DocumentFile documentFile) {
            ArrayList arrayList = new ArrayList();
            while (documentFile != null) {
                PathResolverRecyclerAdapter.Holder.Index index = new PathResolverRecyclerAdapter.Holder.Index(documentFile.getName(), documentFile);
                arrayList.add(index);
                documentFile = documentFile.getParentFile();
                if (documentFile == null && ".".equals(index.title)) {
                    index.title = FileExplorerFragment.this.getString(R.string.text_fileRoot);
                }
            }
            initAdapter();
            synchronized (getList()) {
                while (arrayList.size() != 0) {
                    int size = arrayList.size() - 1;
                    getList().add(arrayList.get(size));
                    arrayList.remove(size);
                }
            }
        }
    }
}
