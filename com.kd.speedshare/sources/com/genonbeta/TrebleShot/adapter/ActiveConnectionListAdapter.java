package com.genonbeta.TrebleShot.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.exception.NotReadyException;
import com.genonbeta.TrebleShot.object.Editable;
import com.genonbeta.TrebleShot.util.AddressedInterface;
import com.genonbeta.TrebleShot.util.NetworkUtils;
import com.genonbeta.TrebleShot.util.TextUtils;
import com.genonbeta.TrebleShot.widget.EditableListAdapter;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;

public class ActiveConnectionListAdapter extends EditableListAdapter<AddressedEditableInterface, EditableListAdapter.EditableViewHolder> {
    public ActiveConnectionListAdapter(Context context) {
        super(context);
    }

    public List<AddressedEditableInterface> onLoad() {
        ArrayList arrayList = new ArrayList();
        for (AddressedInterface next : NetworkUtils.getInterfaces(true, AppConfig.DEFAULT_DISABLED_INTERFACES)) {
            AddressedEditableInterface addressedEditableInterface = new AddressedEditableInterface(next, TextUtils.getAdapterName(getContext(), next));
            if (filterItem(addressedEditableInterface)) {
                arrayList.add(addressedEditableInterface);
            }
        }
        return arrayList;
    }

    public EditableListAdapter.EditableViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new EditableListAdapter.EditableViewHolder(getInflater().inflate(R.layout.list_active_connection, viewGroup, false));
    }

    public void onBindViewHolder(EditableListAdapter.EditableViewHolder editableViewHolder, int i) {
        try {
            AddressedEditableInterface addressedEditableInterface = (AddressedEditableInterface) getItem(i);
            View view = editableViewHolder.getView();
            ((TextView) view.findViewById(R.id.text)).setText(addressedEditableInterface.getSelectableTitle());
            ((TextView) view.findViewById(R.id.text2)).setText(TextUtils.makeWebShareLink(getContext(), addressedEditableInterface.getInterface().getAssociatedAddress()));
        } catch (NotReadyException e) {
            e.printStackTrace();
        }
    }

    public static class AddressedEditableInterface implements Editable {
        private AddressedInterface mInterface;
        private String mName;
        private boolean mSelected = false;

        public boolean comparisonSupported() {
            return false;
        }

        public long getComparableDate() {
            return 0;
        }

        public long getComparableSize() {
            return 0;
        }

        public void setId(long j) {
        }

        public AddressedEditableInterface(AddressedInterface addressedInterface, String str) {
            this.mInterface = addressedInterface;
            this.mName = str;
        }

        public boolean applyFilter(String[] strArr) {
            for (String lowerCase : strArr) {
                String lowerCase2 = lowerCase.toLowerCase();
                if (this.mInterface.getNetworkInterface().getDisplayName().toLowerCase().contains(lowerCase2) || this.mInterface.getAssociatedAddress().toLowerCase().contains(lowerCase2) || this.mName.toLowerCase().contains(lowerCase2)) {
                    return true;
                }
            }
            return false;
        }

        public long getId() {
            return (long) this.mInterface.getAssociatedAddress().hashCode();
        }

        public String getComparableName() {
            return this.mName;
        }

        public AddressedInterface getInterface() {
            return this.mInterface;
        }

        public String getName() {
            return this.mName;
        }

        public String getSelectableTitle() {
            return this.mName;
        }

        public boolean isSelectableSelected() {
            return this.mSelected;
        }

        public boolean setSelectableSelected(boolean z) {
            this.mSelected = z;
            return true;
        }
    }
}
