package com.genonbeta.TrebleShot.fragment.external;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupMenu;
import android.widget.TextView;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.framework.app.DynamicRecyclerViewFragment;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.kd.speedshare.R;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ThirdPartyLibraryListFragment extends DynamicRecyclerViewFragment<ModuleItem, RecyclerViewAdapter.ViewHolder, LicencesAdapter> {
    public LicencesAdapter onAdapter() {
        final AnonymousClass1 r0 = new AppUtils.QuickActions<RecyclerViewAdapter.ViewHolder>() {
            public void onQuickActions(final RecyclerViewAdapter.ViewHolder viewHolder) {
                viewHolder.getView().findViewById(R.id.menu).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        final ModuleItem moduleItem = ((LicencesAdapter) ThirdPartyLibraryListFragment.this.getAdapter()).getList().get(viewHolder.getAdapterPosition());
                        PopupMenu popupMenu = new PopupMenu(ThirdPartyLibraryListFragment.this.getContext(), view);
                        popupMenu.getMenuInflater().inflate(R.menu.popup_third_party_library_item, popupMenu.getMenu());
                        boolean z = true;
                        popupMenu.getMenu().findItem(R.id.popup_visitWebPage).setEnabled(moduleItem.moduleUrl != null);
                        MenuItem findItem = popupMenu.getMenu().findItem(R.id.popup_goToLicenceURL);
                        if (moduleItem.licenceUrl == null) {
                            z = false;
                        }
                        findItem.setEnabled(z);
                        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                            public boolean onMenuItemClick(MenuItem menuItem) {
                                int itemId = menuItem.getItemId();
                                if (itemId == R.id.popup_goToLicenceURL) {
                                    ThirdPartyLibraryListFragment.this.getContext().startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(moduleItem.licenceUrl)));
                                    return true;
                                } else if (itemId != R.id.popup_visitWebPage) {
                                    return false;
                                } else {
                                    ThirdPartyLibraryListFragment.this.getContext().startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(moduleItem.moduleUrl)));
                                    return true;
                                }
                            }
                        });
                        popupMenu.show();
                    }
                });
            }
        };
        return new LicencesAdapter(getContext()) {
            public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (RecyclerViewAdapter.ViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public static class LicencesAdapter extends RecyclerViewAdapter<ModuleItem, RecyclerViewAdapter.ViewHolder> {
        private List<ModuleItem> mList = new ArrayList();

        public LicencesAdapter(Context context) {
            super(context);
        }

        public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerViewAdapter.ViewHolder(getInflater().inflate(R.layout.list_third_party_library, viewGroup, false));
        }

        public void onBindViewHolder(RecyclerViewAdapter.ViewHolder viewHolder, int i) {
            ModuleItem moduleItem = getList().get(i);
            TextView textView = (TextView) viewHolder.getView().findViewById(R.id.text2);
            ((TextView) viewHolder.getView().findViewById(R.id.text)).setText(moduleItem.moduleName);
            StringBuilder sb = new StringBuilder();
            if (moduleItem.moduleVersion != null) {
                sb.append(moduleItem.moduleVersion);
            }
            if (moduleItem.licence != null) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(moduleItem.licence);
            }
            textView.setText(sb.toString());
        }

        public int getItemCount() {
            return this.mList.size();
        }

        public List<ModuleItem> onLoad() {
            InputStream openRawResource = getContext().getResources().openRawResource(R.raw.libraries_index);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                try {
                    int read = openRawResource.read();
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(read);
                } catch (Exception unused) {
                    return new ArrayList();
                }
            }
            JSONArray jSONArray = new JSONObject(byteArrayOutputStream.toString()).getJSONArray("dependencies");
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(new ModuleItem(jSONArray.getJSONObject(i)));
            }
            return arrayList;
        }

        public void onUpdate(List<ModuleItem> list) {
            synchronized (getList()) {
                getList().clear();
                getList().addAll(list);
            }
        }

        public List<ModuleItem> getList() {
            return this.mList;
        }
    }

    public static class ModuleItem {
        public String licence;
        public String licenceUrl;
        public String moduleName;
        public String moduleUrl;
        public String moduleVersion;

        public ModuleItem(JSONObject jSONObject) throws JSONException {
            if (jSONObject.has("moduleName")) {
                this.moduleName = jSONObject.getString("moduleName");
            }
            if (jSONObject.has("moduleUrl")) {
                this.moduleUrl = jSONObject.getString("moduleUrl");
            }
            if (jSONObject.has("moduleVersion")) {
                this.moduleVersion = jSONObject.getString("moduleVersion");
            }
            if (jSONObject.has("moduleLicense")) {
                this.licence = jSONObject.getString("moduleLicense");
            }
            if (jSONObject.has("moduleLicenseUrl")) {
                this.licenceUrl = jSONObject.getString("moduleLicenseUrl");
            }
        }
    }
}
