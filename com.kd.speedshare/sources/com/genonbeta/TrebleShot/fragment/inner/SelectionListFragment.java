package com.genonbeta.TrebleShot.fragment.inner;

import android.content.Context;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import com.genonbeta.TrebleShot.ui.callback.IconSupport;
import com.genonbeta.TrebleShot.ui.callback.TitleSupport;
import com.genonbeta.android.framework.app.DynamicRecyclerViewFragment;
import com.genonbeta.android.framework.object.Selectable;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SelectionListFragment extends DynamicRecyclerViewFragment<Selectable, RecyclerViewAdapter.ViewHolder, MyAdapter> implements IconSupport, TitleSupport {
    public int getIconRes() {
        return R.drawable.ic_insert_drive_file_white_24dp;
    }

    public MyAdapter onAdapter() {
        return new MyAdapter(getContext());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(R.menu.actions_selection_list, menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.actions_selection_list_check_all) {
            updateSelection(true);
        } else if (itemId != R.id.actions_selection_list_undo_all) {
            return super.onOptionsItemSelected(menuItem);
        } else {
            updateSelection(false);
        }
        return true;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_insert_drive_file_white_24dp);
        setEmptyText(getString(R.string.text_listEmpty));
        useEmptyActionButton(getString(R.string.butn_refresh), new View.OnClickListener() {
            public void onClick(View view) {
                SelectionListFragment.this.refreshList();
            }
        });
    }

    public void onResume() {
        super.onResume();
        refreshList();
    }

    public CharSequence getTitle(Context context) {
        return context.getString(R.string.text_files);
    }

    public boolean updateSelection(boolean z) {
        if (getAdapter() == null) {
            return false;
        }
        synchronized (((MyAdapter) getAdapter()).getList()) {
            Iterator<Selectable> it = ((MyAdapter) getAdapter()).getList().iterator();
            while (it.hasNext()) {
                it.next().setSelectableSelected(z);
            }
        }
        ((MyAdapter) getAdapter()).notifyDataSetChanged();
        return true;
    }

    public static class MyAdapter extends RecyclerViewAdapter<Selectable, RecyclerViewAdapter.ViewHolder> {
        private final ArrayList<Selectable> mList = new ArrayList<>();
        private final ArrayList<Selectable> mPendingList = new ArrayList<>();

        public MyAdapter(Context context) {
            super(context);
        }

        public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            final RecyclerViewAdapter.ViewHolder viewHolder = new RecyclerViewAdapter.ViewHolder(getInflater().inflate(R.layout.list_selection, viewGroup, false));
            final AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) viewHolder.getView().findViewById(R.id.checkbox);
            viewHolder.getView().setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    MyAdapter myAdapter = MyAdapter.this;
                    myAdapter.checkReversed(appCompatCheckBox, myAdapter.getList().get(viewHolder.getAdapterPosition()));
                }
            });
            appCompatCheckBox.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    MyAdapter myAdapter = MyAdapter.this;
                    myAdapter.checkReversed(appCompatCheckBox, myAdapter.getList().get(viewHolder.getAdapterPosition()));
                }
            });
            return viewHolder;
        }

        public void onBindViewHolder(RecyclerViewAdapter.ViewHolder viewHolder, int i) {
            Selectable selectable = getList().get(i);
            ((TextView) viewHolder.getView().findViewById(R.id.text)).setText(selectable.getSelectableTitle());
            ((AppCompatCheckBox) viewHolder.getView().findViewById(R.id.checkbox)).setChecked(selectable.isSelectableSelected());
        }

        public int getItemCount() {
            return this.mList.size();
        }

        public List<Selectable> onLoad() {
            ArrayList arrayList = new ArrayList(this.mPendingList);
            this.mPendingList.clear();
            return arrayList;
        }

        public void onUpdate(List<Selectable> list) {
            synchronized (getList()) {
                this.mList.clear();
                this.mList.addAll(list);
            }
        }

        public ArrayList<Selectable> getList() {
            return this.mList;
        }

        public void checkReversed(AppCompatCheckBox appCompatCheckBox, Selectable selectable) {
            if (selectable.setSelectableSelected(!selectable.isSelectableSelected())) {
                appCompatCheckBox.setChecked(selectable.isSelectableSelected());
            }
        }

        /* access modifiers changed from: protected */
        public void load(ArrayList<? extends Selectable> arrayList) {
            if (arrayList != null) {
                synchronized (this.mPendingList) {
                    this.mPendingList.clear();
                    this.mPendingList.addAll(arrayList);
                }
            }
        }
    }
}
