package com.genonbeta.TrebleShot.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import android.widget.Toast;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.activity.ChangeStoragePathActivity;
import com.genonbeta.TrebleShot.adapter.FileListAdapter;
import com.genonbeta.TrebleShot.app.GroupEditableListFragment;
import com.genonbeta.TrebleShot.database.AccessDatabase;
import com.genonbeta.TrebleShot.dialog.FileDeletionDialog;
import com.genonbeta.TrebleShot.dialog.FileRenameDialog;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.FileShortcutObject;
import com.genonbeta.TrebleShot.object.WritablePathObject;
import com.genonbeta.TrebleShot.service.WorkerService;
import com.genonbeta.TrebleShot.ui.callback.SharingActionModeCallback;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.util.FileUtils;
import com.genonbeta.TrebleShot.widget.GroupEditableListAdapter;
import com.genonbeta.android.database.DatabaseObject;
import com.genonbeta.android.framework.io.DocumentFile;
import com.genonbeta.android.framework.io.LocalDocumentFile;
import com.genonbeta.android.framework.widget.PowerfulActionMode;
import com.google.android.material.snackbar.Snackbar;
import com.kd.speedshare.R;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class FileListFragment extends GroupEditableListFragment<FileListAdapter.GenericFileHolder, GroupEditableListAdapter.GroupViewHolder, FileListAdapter> {
    public static final String ACTION_FILE_LIST_CHANGED = "com.genonbeta.TrebleShot.action.FILE_LIST_CHANGED";
    public static final String ARG_SELECT_BY_CLICK = "argSelectByClick";
    public static final String EXTRA_FILE_LOCATION = "extraFileLocation";
    public static final String EXTRA_FILE_NAME = "extraFile";
    public static final String EXTRA_FILE_PARENT = "extraPath";
    public static final int REQUEST_WRITE_ACCESS = 264;
    public static final String TAG = FileListFragment.class.getSimpleName();
    private IntentFilter mIntentFilter = new IntentFilter();
    private DocumentFile mLastKnownPath;
    private MediaScannerConnection mMediaScanner;
    private OnPathChangedListener mPathChangedListener;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        private Snackbar mUpdateSnackbar;

        public void onReceive(Context context, Intent intent) {
            if (FileListFragment.ACTION_FILE_LIST_CHANGED.equals(intent.getAction()) && intent.hasExtra(FileListFragment.EXTRA_FILE_PARENT)) {
                try {
                    Parcelable parcelableExtra = intent.getParcelableExtra(FileListFragment.EXTRA_FILE_PARENT);
                    if (parcelableExtra == null && ((FileListAdapter) FileListFragment.this.getAdapter()).getPath() == null) {
                        FileListFragment.this.refreshList();
                    } else if (parcelableExtra != null) {
                        final DocumentFile fromUri = FileUtils.fromUri(FileListFragment.this.getContext(), (Uri) parcelableExtra);
                        if (((FileListAdapter) FileListFragment.this.getAdapter()).getPath() != null && fromUri.getUri().equals(((FileListAdapter) FileListFragment.this.getAdapter()).getPath().getUri())) {
                            FileListFragment.this.refreshList();
                        } else if (intent.hasExtra(FileListFragment.EXTRA_FILE_NAME)) {
                            if (this.mUpdateSnackbar == null) {
                                this.mUpdateSnackbar = FileListFragment.this.createSnackbar(R.string.mesg_newFilesReceived, new Object[0]);
                            }
                            this.mUpdateSnackbar.setText((CharSequence) FileListFragment.this.getString(R.string.mesg_fileReceived, intent.getStringExtra(FileListFragment.EXTRA_FILE_NAME))).setAction((int) R.string.butn_show, (View.OnClickListener) new View.OnClickListener() {
                                public void onClick(View view) {
                                    FileListFragment.this.goPath(fromUri);
                                }
                            }).show();
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (((FileListAdapter) FileListFragment.this.getAdapter()).getPath() == null && AccessDatabase.ACTION_DATABASE_CHANGE.equals(intent.getAction())) {
                if (AccessDatabase.TABLE_WRITABLEPATH.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME)) || AccessDatabase.TABLE_FILEBOOKMARK.equals(intent.getStringExtra(AccessDatabase.EXTRA_TABLE_NAME))) {
                    FileListFragment.this.refreshList();
                }
            }
        }
    };
    private boolean mSelectByClick = false;

    public interface OnPathChangedListener {
        void onPathChanged(DocumentFile documentFile);
    }

    public static boolean handleEditingAction(int i, FileListFragment fileListFragment, List<FileListAdapter.GenericFileHolder> list) {
        final FileListAdapter fileListAdapter = (FileListAdapter) fileListFragment.getAdapter();
        if (i == R.id.action_mode_file_delete) {
            new FileDeletionDialog(fileListFragment.getContext(), list, new FileDeletionDialog.Listener(fileListFragment) {
                final /* synthetic */ FileListFragment val$fragment;

                {
                    this.val$fragment = r1;
                }

                public void onFileDeletion(WorkerService.RunningTask runningTask, Context context, DocumentFile documentFile) {
                    this.val$fragment.scanFile(documentFile);
                }

                public void onCompleted(WorkerService.RunningTask runningTask, Context context, int i) {
                    Uri uri;
                    Intent intent = new Intent(FileListFragment.ACTION_FILE_LIST_CHANGED);
                    if (fileListAdapter.getPath() == null) {
                        uri = null;
                    } else {
                        uri = fileListAdapter.getPath().getUri();
                    }
                    context.sendBroadcast(intent.putExtra(FileListFragment.EXTRA_FILE_PARENT, uri));
                }
            }).show();
            return true;
        } else if (i != R.id.action_mode_file_rename) {
            return i == R.id.action_mode_file_copy_here;
        } else {
            new FileRenameDialog(fileListFragment.getContext(), list, new FileRenameDialog.OnFileRenameListener(fileListFragment) {
                final /* synthetic */ FileListFragment val$fragment;

                {
                    this.val$fragment = r1;
                }

                public void onFileRename(DocumentFile documentFile, String str) {
                    this.val$fragment.scanFile(documentFile);
                }

                public void onFileRenameCompleted(Context context) {
                    Uri uri;
                    Intent intent = new Intent(FileListFragment.ACTION_FILE_LIST_CHANGED);
                    if (fileListAdapter.getPath() == null) {
                        uri = null;
                    } else {
                        uri = fileListAdapter.getPath().getUri();
                    }
                    context.sendBroadcast(intent.putExtra(FileListFragment.EXTRA_FILE_PARENT, uri));
                }
            }).show();
            return true;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setFilteringSupported(true);
        setDefaultOrderingCriteria(100);
        setDefaultSortingCriteria(100);
        setDefaultGroupingCriteria(101);
        setDefaultSelectionCallback(new SelectionCallback(this));
        if (getArguments() != null && getArguments().containsKey(ARG_SELECT_BY_CLICK)) {
            this.mSelectByClick = getArguments().getBoolean(ARG_SELECT_BY_CLICK, false);
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_folder_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyFiles));
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mMediaScanner = new MediaScannerConnection(getActivity(), (MediaScannerConnection.MediaScannerConnectionClient) null);
        this.mIntentFilter.addAction(ACTION_FILE_LIST_CHANGED);
        this.mIntentFilter.addAction(AccessDatabase.ACTION_DATABASE_CHANGE);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 264) {
            Uri data = intent.getData();
            if (Build.VERSION.SDK_INT >= 21 && data != null && getContext() != null) {
                getContext().getContentResolver().takePersistableUriPermission(data, 3);
                try {
                    AppUtils.getDatabase(getContext()).publish((DatabaseObject) new WritablePathObject(DocumentFile.fromUri(getContext(), data, true).getName(), data));
                    goPath((DocumentFile) null);
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                    Toast.makeText(getContext(), R.string.mesg_somethingWentWrong, 0).show();
                }
            }
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_file_list, menu);
        MenuItem findItem = menu.findItem(R.id.actions_file_list_mount_directory);
        if (Build.VERSION.SDK_INT >= 21 && findItem != null) {
            findItem.setVisible(true);
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.actions_file_list_mount_directory) {
            requestMountStorage();
            return true;
        } else if (itemId != R.id.actions_file_list_toggle_shortcut || ((FileListAdapter) getAdapter()).getPath() == null) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            shortcutItem(new FileShortcutObject(((FileListAdapter) getAdapter()).getPath().getName(), ((FileListAdapter) getAdapter()).getPath().getUri()));
            return true;
        }
    }

    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem findItem = menu.findItem(R.id.actions_file_list_toggle_shortcut);
        if (findItem != null) {
            boolean z = ((FileListAdapter) getAdapter()).getPath() != null;
            findItem.setEnabled(z);
            if (z) {
                try {
                    AppUtils.getDatabase(getContext()).reconstruct(new FileShortcutObject(((FileListAdapter) getAdapter()).getPath().getUri()));
                    findItem.setTitle(R.string.butn_removeShortcut);
                } catch (Exception unused) {
                    findItem.setTitle(R.string.butn_addShortcut);
                }
            }
        }
    }

    public FileListAdapter onAdapter() {
        final AnonymousClass4 r0 = new AppUtils.QuickActions<GroupEditableListAdapter.GroupViewHolder>() {
            public void onQuickActions(final GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
                if (!groupViewHolder.isRepresentative()) {
                    FileListFragment.this.registerLayoutViewClicks(groupViewHolder);
                    groupViewHolder.getView().findViewById(R.id.layout_image).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            if (FileListFragment.this.getSelectionConnection() != null) {
                                FileListFragment.this.getSelectionConnection().setSelected(groupViewHolder.getAdapterPosition());
                            }
                        }
                    });
                    groupViewHolder.getView().findViewById(R.id.menu).setOnClickListener(new View.OnClickListener() {
                        public void onClick(View view) {
                            final FileListAdapter.GenericFileHolder genericFileHolder = (FileListAdapter.GenericFileHolder) ((FileListAdapter) FileListFragment.this.getAdapter()).getList().get(groupViewHolder.getAdapterPosition());
                            boolean isFile = genericFileHolder.file.isFile();
                            boolean z = false;
                            boolean z2 = genericFileHolder.file.canWrite() || (genericFileHolder instanceof FileListAdapter.ShortcutDirectoryHolder);
                            boolean canRead = genericFileHolder.file.canRead();
                            boolean z3 = (genericFileHolder instanceof FileListAdapter.StorageHolderImpl) || (genericFileHolder instanceof FileListAdapter.ShortcutDirectoryHolder);
                            PopupMenu popupMenu = new PopupMenu(FileListFragment.this.getContext(), view);
                            Menu menu = popupMenu.getMenu();
                            final FileShortcutObject fileShortcutObject = null;
                            if (genericFileHolder instanceof FileListAdapter.ShortcutDirectoryHolder) {
                                fileShortcutObject = ((FileListAdapter.ShortcutDirectoryHolder) genericFileHolder).getShortcutObject();
                            } else if (genericFileHolder.file.isDirectory()) {
                                try {
                                    FileShortcutObject fileShortcutObject2 = new FileShortcutObject(genericFileHolder.file.getUri());
                                    AppUtils.getDatabase(FileListFragment.this.getContext()).reconstruct(fileShortcutObject2);
                                    fileShortcutObject = fileShortcutObject2;
                                } catch (Exception unused) {
                                }
                            }
                            popupMenu.getMenuInflater().inflate(R.menu.action_mode_file, menu);
                            menu.findItem(R.id.action_mode_file_open).setVisible(canRead && isFile);
                            menu.findItem(R.id.action_mode_file_rename).setEnabled(z2);
                            MenuItem findItem = menu.findItem(R.id.action_mode_file_delete);
                            if (z2 && !z3) {
                                z = true;
                            }
                            findItem.setEnabled(z);
                            menu.findItem(R.id.action_mode_file_show).setVisible(genericFileHolder instanceof FileListAdapter.RecentFileHolder);
                            menu.findItem(R.id.action_mode_file_change_save_path).setVisible(FileUtils.getApplicationDirectory(FileListFragment.this.getContext()).getUri().equals(genericFileHolder.file.getUri()));
                            menu.findItem(R.id.action_mode_file_eject_directory).setVisible(genericFileHolder instanceof FileListAdapter.WritablePathHolder);
                            menu.findItem(R.id.action_mode_file_toggle_shortcut).setVisible(!isFile).setTitle(fileShortcutObject == null ? R.string.butn_addShortcut : R.string.butn_removeShortcut);
                            popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                                public boolean onMenuItemClick(MenuItem menuItem) {
                                    int itemId = menuItem.getItemId();
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(genericFileHolder);
                                    if (itemId == R.id.action_mode_file_open) {
                                        FileListFragment.this.performLayoutClickOpen(groupViewHolder);
                                    } else if (itemId == R.id.action_mode_file_show && genericFileHolder.file.getParentFile() != null) {
                                        FileListFragment.this.goPath(genericFileHolder.file.getParentFile());
                                    } else if (itemId == R.id.action_mode_file_eject_directory && (genericFileHolder instanceof FileListAdapter.WritablePathHolder)) {
                                        AppUtils.getDatabase(FileListFragment.this.getContext()).remove((DatabaseObject) ((FileListAdapter.WritablePathHolder) genericFileHolder).pathObject);
                                    } else if (itemId == R.id.action_mode_file_toggle_shortcut) {
                                        FileListFragment fileListFragment = FileListFragment.this;
                                        FileShortcutObject fileShortcutObject = fileShortcutObject;
                                        if (fileShortcutObject == null) {
                                            fileShortcutObject = new FileShortcutObject(genericFileHolder.friendlyName, genericFileHolder.file.getUri());
                                        }
                                        fileListFragment.shortcutItem(fileShortcutObject);
                                    } else if (itemId != R.id.action_mode_file_change_save_path) {
                                        return !FileListFragment.handleEditingAction(itemId, FileListFragment.this, arrayList);
                                    } else {
                                        FileListFragment.this.startActivity(new Intent(FileListFragment.this.getContext(), ChangeStoragePathActivity.class));
                                    }
                                    return true;
                                }
                            });
                            popupMenu.show();
                        }
                    });
                }
            }
        };
        return new FileListAdapter(getActivity()) {
            public GroupEditableListAdapter.GroupViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                GroupEditableListAdapter.GroupViewHolder onCreateViewHolder = super.onCreateViewHolder(viewGroup, i);
                if (i != 110) {
                    return (GroupEditableListAdapter.GroupViewHolder) AppUtils.quickAction(onCreateViewHolder, r0);
                }
                FileListFragment.this.registerLayoutViewClicks(onCreateViewHolder);
                return onCreateViewHolder;
            }
        };
    }

    public boolean onDefaultClickAction(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        performLayoutClickOpen(groupViewHolder);
        return true;
    }

    public void onResume() {
        super.onResume();
        getActivity().registerReceiver(this.mReceiver, this.mIntentFilter);
        this.mMediaScanner.connect();
    }

    public void onPause() {
        super.onPause();
        getActivity().unregisterReceiver(this.mReceiver);
        this.mMediaScanner.disconnect();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (((FileListAdapter) getAdapter()).getPath() != null) {
            bundle.putString(EXTRA_FILE_LOCATION, ((FileListAdapter) getAdapter()).getPath().getUri().toString());
        }
    }

    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        if (bundle != null && bundle.containsKey(EXTRA_FILE_LOCATION)) {
            try {
                goPath(FileUtils.fromUri(getContext(), Uri.parse(bundle.getString(EXTRA_FILE_LOCATION))));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onListRefreshed() {
        DocumentFile documentFile;
        super.onListRefreshed();
        DocumentFile path = ((FileListAdapter) getAdapter()).getPath();
        if (!((this.mLastKnownPath == null && ((FileListAdapter) getAdapter()).getPath() == null) || (documentFile = this.mLastKnownPath) == null || documentFile.equals(path))) {
            getListView().scrollToPosition(0);
        }
        this.mLastKnownPath = path;
    }

    /* access modifiers changed from: protected */
    public void shortcutItem(FileShortcutObject fileShortcutObject) {
        AccessDatabase database = AppUtils.getDatabase(getContext());
        try {
            database.reconstruct(fileShortcutObject);
            database.remove((DatabaseObject) fileShortcutObject);
            createSnackbar(R.string.mesg_removed, new Object[0]).show();
        } catch (Exception unused) {
            database.insert((DatabaseObject) fileShortcutObject);
            createSnackbar(R.string.mesg_added, new Object[0]).show();
        }
    }

    public Snackbar createSnackbar(int i, Object... objArr) {
        return Snackbar.make((View) getListView(), (CharSequence) getString(i, objArr), -1);
    }

    public void goPath(DocumentFile documentFile) {
        if (documentFile == null || documentFile.canRead()) {
            OnPathChangedListener onPathChangedListener = this.mPathChangedListener;
            if (onPathChangedListener != null) {
                onPathChangedListener.onPathChanged(documentFile);
            }
            ((FileListAdapter) getAdapter()).goPath(documentFile);
            refreshList();
            return;
        }
        createSnackbar(R.string.mesg_errorReadFolder, documentFile.getName()).show();
    }

    public void requestMountStorage() {
        if (Build.VERSION.SDK_INT >= 21) {
            startActivityForResult(new Intent("android.intent.action.OPEN_DOCUMENT_TREE"), REQUEST_WRITE_ACCESS);
            Toast.makeText(getActivity(), R.string.mesg_mountDirectoryHelp, 1).show();
        }
    }

    public boolean performLayoutClick(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            FileListAdapter.GenericFileHolder genericFileHolder = (FileListAdapter.GenericFileHolder) ((FileListAdapter) getAdapter()).getItem(groupViewHolder);
            if (genericFileHolder.getViewType() == 110 && genericFileHolder.getRequestCode() == 1) {
                requestMountStorage();
            } else if ((genericFileHolder instanceof FileListAdapter.FileHolder) && this.mSelectByClick && getSelectionConnection() != null) {
                return getSelectionConnection().setSelected((RecyclerView.ViewHolder) groupViewHolder);
            } else {
                if (!(genericFileHolder instanceof FileListAdapter.DirectoryHolder)) {
                    if (!(genericFileHolder instanceof FileListAdapter.WritablePathHolder)) {
                        return super.performLayoutClick(groupViewHolder);
                    }
                }
                goPath(genericFileHolder.file);
                if (getSelectionCallback() != null && getSelectionCallback().isSelectionActivated() && !AppUtils.getDefaultPreferences(getContext()).getBoolean("helpFolderSelection", false)) {
                    createSnackbar(R.string.mesg_helpFolderSelection, new Object[0]).setAction((int) R.string.butn_gotIt, (View.OnClickListener) new View.OnClickListener() {
                        public void onClick(View view) {
                            AppUtils.getDefaultPreferences(FileListFragment.this.getContext()).edit().putBoolean("helpFolderSelection", true).apply();
                        }
                    }).show();
                }
            }
            return true;
        } catch (NotReadyException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean performLayoutLongClick(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            FileListAdapter.GenericFileHolder genericFileHolder = (FileListAdapter.GenericFileHolder) ((FileListAdapter) getAdapter()).getItem(groupViewHolder.getAdapterPosition());
            if (((genericFileHolder instanceof FileListAdapter.DirectoryHolder) || (genericFileHolder instanceof FileListAdapter.WritablePathHolder)) && getSelectionConnection() != null && getSelectionConnection().setSelected((RecyclerView.ViewHolder) groupViewHolder)) {
                return true;
            }
        } catch (NotReadyException e) {
            e.printStackTrace();
        }
        return super.performLayoutLongClick(groupViewHolder);
    }

    public boolean performLayoutClickOpen(GroupEditableListAdapter.GroupViewHolder groupViewHolder) {
        try {
            return FileUtils.openUriForeground(getActivity(), ((FileListAdapter.GenericFileHolder) ((FileListAdapter) getAdapter()).getItem(groupViewHolder)).file);
        } catch (NotReadyException unused) {
            return super.performLayoutClickOpen(groupViewHolder);
        }
    }

    public boolean scanFile(DocumentFile documentFile) {
        if (!(documentFile instanceof LocalDocumentFile) || !this.mMediaScanner.isConnected()) {
            return false;
        }
        this.mMediaScanner.scanFile(((LocalDocumentFile) documentFile).getFile().getAbsolutePath(), documentFile.isDirectory() ? documentFile.getType() : null);
        return true;
    }

    public void setOnPathChangedListener(OnPathChangedListener onPathChangedListener) {
        this.mPathChangedListener = onPathChangedListener;
    }

    private static class SelectionCallback extends SharingActionModeCallback<FileListAdapter.GenericFileHolder> {
        private FileListFragment mFragment;

        public SelectionCallback(FileListFragment fileListFragment) {
            super(fileListFragment);
            this.mFragment = fileListFragment;
        }

        public boolean onCreateActionMenu(Context context, PowerfulActionMode powerfulActionMode, Menu menu) {
            super.onCreateActionMenu(context, powerfulActionMode, menu);
            powerfulActionMode.getMenuInflater().inflate(R.menu.action_mode_file, menu);
            return true;
        }

        public boolean onActionMenuItemSelected(Context context, PowerfulActionMode powerfulActionMode, MenuItem menuItem) {
            int itemId = menuItem.getItemId();
            if (getFragment().getSelectionConnection().getSelectedItemList().size() == 0) {
                return super.onActionMenuItemSelected(context, powerfulActionMode, menuItem);
            }
            if (!FileListFragment.handleEditingAction(itemId, this.mFragment, getFragment().getSelectionConnection().getSelectedItemList())) {
                return super.onActionMenuItemSelected(context, powerfulActionMode, menuItem);
            }
            return true;
        }
    }
}
