package com.genonbeta.TrebleShot.fragment.external;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.GlideApp;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.framework.app.DynamicRecyclerViewFragment;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.genonbeta.android.updatewithgithub.RemoteServer;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class GitHubContributorsListFragment extends DynamicRecyclerViewFragment<ContributorObject, RecyclerViewAdapter.ViewHolder, ContributorListAdapter> {
    public ContributorListAdapter onAdapter() {
        final AnonymousClass1 r0 = new AppUtils.QuickActions<RecyclerViewAdapter.ViewHolder>() {
            public void onQuickActions(final RecyclerViewAdapter.ViewHolder viewHolder) {
                viewHolder.getView().findViewById(R.id.visitView).setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        ContributorObject contributorObject = ((ContributorListAdapter) GitHubContributorsListFragment.this.getAdapter()).getList().get(viewHolder.getAdapterPosition());
                        if (GitHubContributorsListFragment.this.getContext() != null) {
                            GitHubContributorsListFragment.this.getContext().startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(String.format("", new Object[]{contributorObject.name}))));
                        }
                    }
                });
            }
        };
        return new ContributorListAdapter(getContext()) {
            public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (RecyclerViewAdapter.ViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        useEmptyActionButton(true);
        getEmptyActionButton().setText(R.string.butn_refresh);
        getEmptyActionButton().setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                GitHubContributorsListFragment.this.refreshList();
            }
        });
        setEmptyImage(R.drawable.ic_github_circle_white_24dp);
        setEmptyText(getString(R.string.mesg_noInternetConnection));
    }

    public RecyclerView.LayoutManager onLayoutManager() {
        return new GridLayoutManager(getContext(), 1);
    }

    public static class ContributorObject {
        public String name;
        public String url;
        public String urlAvatar;

        public ContributorObject(String str, String str2, String str3) {
            this.name = str;
            this.url = str2;
            this.urlAvatar = str3;
        }
    }

    public static class ContributorListAdapter extends RecyclerViewAdapter<ContributorObject, RecyclerViewAdapter.ViewHolder> {
        private List<ContributorObject> mList = new ArrayList();

        public long getItemId(int i) {
            return 0;
        }

        public ContributorListAdapter(Context context) {
            super(context);
        }

        public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerViewAdapter.ViewHolder(getInflater().inflate(R.layout.list_contributors, viewGroup, false));
        }

        public void onBindViewHolder(RecyclerViewAdapter.ViewHolder viewHolder, int i) {
            ContributorObject contributorObject = getList().get(i);
            ((TextView) viewHolder.getView().findViewById(R.id.text)).setText(contributorObject.name);
            GlideApp.with(getContext()).load(contributorObject.urlAvatar).override(90).circleCrop().into((ImageView) viewHolder.getView().findViewById(R.id.image));
        }

        public List<ContributorObject> onLoad() {
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(new RemoteServer("").connect((String) null, (String) null));
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        arrayList.add(new ContributorObject(jSONObject.getString(FirebaseAnalytics.Event.LOGIN), jSONObject.getString(ImagesContract.URL), jSONObject.getString("avatar_url")));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return arrayList;
        }

        public void onUpdate(List<ContributorObject> list) {
            synchronized (getList()) {
                getList().clear();
                getList().addAll(list);
            }
        }

        public int getItemCount() {
            return getList().size();
        }

        public List<ContributorObject> getList() {
            return this.mList;
        }
    }
}
