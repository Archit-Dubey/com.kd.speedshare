package com.genonbeta.TrebleShot.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.adapter.ApplicationListAdapter;
import com.genonbeta.TrebleShot.app.EditableListFragment;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.kd.speedshare.R;

public class ApplicationListFragment extends EditableListFragment<ApplicationListAdapter.PackageHolder, EditableListAdapter.EditableViewHolder, ApplicationListAdapter> implements TitleSupport {
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setFilteringSupported(true);
        setHasOptionsMenu(true);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_android_head_white_24dp);
        setEmptyText(getString(R.string.text_listEmptyApp));
    }

    public ApplicationListAdapter onAdapter() {
        final AnonymousClass1 r0 = new AppUtils.QuickActions<EditableListAdapter.EditableViewHolder>() {
            public void onQuickActions(final EditableListAdapter.EditableViewHolder editableViewHolder) {
                ApplicationListFragment.this.registerLayoutViewClicks(editableViewHolder);
                editableViewHolder.getView().findViewById(R.id.visitView).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        ApplicationListFragment.this.performLayoutClickOpen(editableViewHolder);
                    }
                });
                editableViewHolder.getView().findViewById(R.id.selector).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        if (ApplicationListFragment.this.getSelectionConnection() != null) {
                            ApplicationListFragment.this.getSelectionConnection().setSelected(editableViewHolder.getAdapterPosition());
                        }
                    }
                });
            }
        };
        return new ApplicationListAdapter(getActivity(), AppUtils.getDefaultPreferences(getContext())) {
            public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (EditableListAdapter.EditableViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public boolean onDefaultClickAction(EditableListAdapter.EditableViewHolder editableViewHolder) {
        if (getSelectionConnection() != null) {
            return getSelectionConnection().setSelected((RecyclerView.ViewHolder) editableViewHolder);
        }
        return performLayoutClickOpen(editableViewHolder);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_application, menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.show_system_apps) {
            return super.onOptionsItemSelected(menuItem);
        }
        AppUtils.getDefaultPreferences(getContext()).edit().putBoolean("show_system_apps", !AppUtils.getDefaultPreferences(getContext()).getBoolean("show_system_apps", false)).apply();
        refreshList();
        return true;
    }

    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(R.id.show_system_apps).setChecked(AppUtils.getDefaultPreferences(getContext()).getBoolean("show_system_apps", false));
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_application);
    }

    public boolean performLayoutClickOpen(EditableListAdapter.EditableViewHolder editableViewHolder) {
        try {
            final Intent launchIntentForPackage = getActivity().getPackageManager().getLaunchIntentForPackage(((ApplicationListAdapter.PackageHolder) ((ApplicationListAdapter) getAdapter()).getItem(editableViewHolder)).packageName);
            if (launchIntentForPackage != null) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                builder.setMessage((int) R.string.ques_launchApplication);
                builder.setNegativeButton((int) R.string.butn_cancel, (DialogInterface.OnClickListener) null);
                builder.setPositiveButton((int) R.string.butn_appLaunch, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        ApplicationListFragment.this.startActivity(launchIntentForPackage);
                    }
                });
                builder.show();
                return true;
            }
            Toast.makeText(getActivity(), R.string.mesg_launchApplicationError, 0).show();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
