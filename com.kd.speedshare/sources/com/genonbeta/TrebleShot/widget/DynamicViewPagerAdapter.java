package com.genonbeta.TrebleShot.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.List;

public class DynamicViewPagerAdapter extends PagerAdapter {
    private List<View> views = new ArrayList();

    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public int getItemPosition(Object obj) {
        int indexOf = this.views.indexOf(obj);
        if (indexOf == -1) {
            return -2;
        }
        return indexOf;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View view = this.views.get(i);
        viewGroup.addView(view);
        return view;
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView(this.views.get(i));
    }

    public int getCount() {
        return this.views.size();
    }

    public int addView(View view) {
        return addView(view, this.views.size());
    }

    public int addView(View view, int i) {
        this.views.add(i, view);
        return i;
    }

    public int removeView(ViewPager viewPager, View view) {
        return removeView(viewPager, this.views.indexOf(view));
    }

    public int removeView(ViewPager viewPager, int i) {
        viewPager.setAdapter((PagerAdapter) null);
        this.views.remove(i);
        viewPager.setAdapter(this);
        return i;
    }

    public View getView(int i) {
        return this.views.get(i);
    }
}
