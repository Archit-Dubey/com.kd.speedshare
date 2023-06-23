package com.genonbeta.TrebleShot.fragment.external;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.framework.app.DynamicRecyclerViewFragment;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.genonbeta.android.updatewithgithub.RemoteServer;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class GitHubChangelogListFragment extends DynamicRecyclerViewFragment<VersionObject, RecyclerViewAdapter.ViewHolder, VersionListAdapter> {
    public VersionListAdapter onAdapter() {
        return new VersionListAdapter(getContext());
    }

    public void onResume() {
        super.onResume();
        AppUtils.publishLatestChangelogSeen(getActivity());
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyImage(R.drawable.ic_github_circle_white_24dp);
        setEmptyText(getString(R.string.mesg_noInternetConnection));
        useEmptyActionButton(true);
        getEmptyActionButton().setText(R.string.butn_refresh);
        getEmptyActionButton().setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                GitHubChangelogListFragment.this.refreshList();
            }
        });
        onEnsureList();
    }

    public static class VersionObject {
        public String changes;
        public String name;
        public String tag;

        public VersionObject(String str, String str2, String str3) {
            this.tag = str;
            this.name = str2;
            this.changes = str3;
        }
    }

    public static class VersionListAdapter extends RecyclerViewAdapter<VersionObject, RecyclerViewAdapter.ViewHolder> {
        private String mCurrentVersion;
        private List<VersionObject> mList = new ArrayList();

        public long getItemId(int i) {
            return 0;
        }

        public VersionListAdapter(Context context) {
            super(context);
            this.mCurrentVersion = AppUtils.getLocalDevice(context).versionName;
        }

        public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerViewAdapter.ViewHolder(getInflater().inflate(R.layout.list_changelog, viewGroup, false));
        }

        public void onBindViewHolder(RecyclerViewAdapter.ViewHolder viewHolder, int i) {
            VersionObject versionObject = getList().get(i);
            ImageView imageView = (ImageView) viewHolder.getView().findViewById(R.id.image_check);
            ((TextView) viewHolder.getView().findViewById(R.id.text1)).setText(versionObject.name);
            ((TextView) viewHolder.getView().findViewById(R.id.text2)).setText(versionObject.changes);
            imageView.setVisibility(this.mCurrentVersion.equals(versionObject.tag) ? 0 : 8);
        }

        public List<VersionObject> onLoad() {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(new RemoteServer("").connect((String) null, (String) null));
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        arrayList.add(new VersionObject(jSONObject.getString("tag_name"), jSONObject.getString("name"), jSONObject.getString("body")));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return arrayList;
        }

        public void onUpdate(List<VersionObject> list) {
            synchronized (getList()) {
                getList().clear();
                getList().addAll(list);
            }
        }

        public int getItemCount() {
            return getList().size();
        }

        public List<VersionObject> getList() {
            return this.mList;
        }
    }
}
