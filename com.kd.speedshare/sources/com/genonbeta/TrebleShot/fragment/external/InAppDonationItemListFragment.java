package com.genonbeta.TrebleShot.fragment.external;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.anjlab.android.iab.v3.BillingProcessor;
import com.anjlab.android.iab.v3.SkuDetails;
import com.anjlab.android.iab.v3.TransactionDetails;
import com.genonbeta.TrebleShot.config.AppConfig;
import com.genonbeta.TrebleShot.util.AppUtils;
import com.genonbeta.android.framework.app.DynamicRecyclerViewFragment;
import com.genonbeta.android.framework.util.MathUtils;
import com.genonbeta.android.framework.widget.RecyclerViewAdapter;
import com.kd.speedshare.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class InAppDonationItemListFragment extends DynamicRecyclerViewFragment<SkuDetails, RecyclerViewAdapter.ViewHolder, DefaultAdapter> implements BillingProcessor.IBillingHandler {
    /* access modifiers changed from: private */
    public static final String TAG = InAppDonationItemListFragment.class.getSimpleName();
    /* access modifiers changed from: private */
    public BillingProcessor mBillingProcessor;

    public void onPurchaseHistoryRestored() {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BillingProcessor newBillingProcessor = BillingProcessor.newBillingProcessor(getActivity(), AppConfig.KEY_GOOGLE_PUBLIC, this);
        this.mBillingProcessor = newBillingProcessor;
        newBillingProcessor.initialize();
    }

    public RecyclerView.LayoutManager onLayoutManager() {
        int i = 2;
        int i2 = isScreenLarge() ? 3 : 2;
        if (!isScreenLandscape()) {
            i = 1;
        }
        return new GridLayoutManager(getContext(), i2 * i);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        useEmptyActionButton(getString(R.string.butn_retry), new View.OnClickListener() {
            public void onClick(View view) {
                InAppDonationItemListFragment.this.refreshList();
            }
        });
        setEmptyImage(R.drawable.ic_favorite_white_24dp);
        setEmptyText(getString(R.string.mesg_noInternetConnection));
    }

    public DefaultAdapter onAdapter() {
        final AnonymousClass2 r0 = new AppUtils.QuickActions<RecyclerViewAdapter.ViewHolder>() {
            public void onQuickActions(final RecyclerViewAdapter.ViewHolder viewHolder) {
                viewHolder.getView().setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        SkuDetails skuDetails = ((DefaultAdapter) InAppDonationItemListFragment.this.getAdapter()).getList().get(viewHolder.getAdapterPosition());
                        if (InAppDonationItemListFragment.this.getContext() != null) {
                            InAppDonationItemListFragment.this.mBillingProcessor.purchase(InAppDonationItemListFragment.this.getActivity(), skuDetails.productId, "Donations are not real world items");
                        }
                    }
                });
            }
        };
        return new DefaultAdapter(getContext()) {
            public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
                return (RecyclerViewAdapter.ViewHolder) AppUtils.quickAction(super.onCreateViewHolder(viewGroup, i), r0);
            }
        };
    }

    public void onProductPurchased(String str, TransactionDetails transactionDetails) {
        showToast(R.string.mesg_donationSuccessful);
    }

    public void onBillingError(int i, Throwable th) {
        showToast(R.string.mesg_somethingWentWrong);
    }

    public void onBillingInitialized() {
        refreshList();
    }

    private void showToast(final int i) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                if (InAppDonationItemListFragment.this.getContext() != null) {
                    Toast.makeText(InAppDonationItemListFragment.this.getContext(), i, 1).show();
                }
            }
        });
    }

    public class DefaultAdapter extends RecyclerViewAdapter<SkuDetails, RecyclerViewAdapter.ViewHolder> {
        private List<SkuDetails> mList = new ArrayList();

        public DefaultAdapter(Context context) {
            super(context);
        }

        public RecyclerViewAdapter.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new RecyclerViewAdapter.ViewHolder(getInflater().inflate(R.layout.list_donations, viewGroup, false));
        }

        public void onBindViewHolder(RecyclerViewAdapter.ViewHolder viewHolder, int i) {
            SkuDetails skuDetails = getList().get(i);
            TextView textView = (TextView) viewHolder.getView().findViewById(R.id.text);
            TextView textView2 = (TextView) viewHolder.getView().findViewById(R.id.text2);
            TextView textView3 = (TextView) viewHolder.getView().findViewById(R.id.text3);
            int lastIndexOf = skuDetails.title.lastIndexOf(" (");
            textView.setText(lastIndexOf != -1 ? skuDetails.title.substring(0, lastIndexOf) : skuDetails.title);
            textView2.setText(skuDetails.description);
            textView3.setText(skuDetails.priceText);
        }

        public int getItemCount() {
            return this.mList.size();
        }

        public List<SkuDetails> onLoad() {
            ArrayList arrayList = new ArrayList();
            if (InAppDonationItemListFragment.this.mBillingProcessor.isInitialized() && InAppDonationItemListFragment.this.mBillingProcessor.isOneTimePurchaseSupported()) {
                Log.d(InAppDonationItemListFragment.TAG, "Configuration is OK");
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("trebleshot.donation.1");
                arrayList2.add("trebleshot.donation.2");
                arrayList2.add("trebleshot.donation.3");
                arrayList2.add("trebleshot.donation.4");
                arrayList2.add("trebleshot.donation.5");
                arrayList2.add("trebleshot.donation.6");
                List<SkuDetails> list = null;
                try {
                    list = InAppDonationItemListFragment.this.mBillingProcessor.getPurchaseListingDetails((ArrayList<String>) arrayList2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (list != null) {
                    Collections.sort(list, new Comparator<SkuDetails>() {
                        public int compare(SkuDetails skuDetails, SkuDetails skuDetails2) {
                            return MathUtils.compare(skuDetails.priceLong, skuDetails2.priceLong);
                        }
                    });
                    arrayList.addAll(list);
                }
            }
            return arrayList;
        }

        public void onUpdate(List<SkuDetails> list) {
            synchronized (getList()) {
                getList().clear();
                getList().addAll(list);
            }
        }

        public List<SkuDetails> getList() {
            return this.mList;
        }
    }
}
