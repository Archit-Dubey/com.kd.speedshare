package com.genonbeta.TrebleShot.widget.recyclerview;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import androidx.recyclerview.widget.RecyclerView;
import com.genonbeta.TrebleShot.app.EditableListFragmentImpl;
import com.genonbeta.TrebleShot.object.Editable;

public class SwipeTouchSelectionListener<T extends Editable> implements RecyclerView.OnItemTouchListener {
    private boolean mActivationWaiting = true;
    private int mConsistentX = 0;
    private int mConsistentY = 0;
    private int mLastPosition = -1;
    private EditableListFragmentImpl<T> mListFragment;
    private boolean mSelectionActivated = false;
    private int mStartPosition = -1;

    public SwipeTouchSelectionListener(EditableListFragmentImpl<T> editableListFragmentImpl) {
        this.mListFragment = editableListFragmentImpl;
    }

    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        boolean z = true;
        if (motionEvent.getAction() == 0) {
            if (this.mListFragment.getSelectionConnection() == null) {
                z = false;
            }
            this.mActivationWaiting = z;
            this.mConsistentX = (int) (motionEvent.getX() / 10.0f);
            this.mConsistentY = (int) (motionEvent.getY() / 10.0f);
        } else if (2 == motionEvent.getAction() && this.mActivationWaiting && !(this.mConsistentX == ((int) (motionEvent.getX() / 10.0f)) && this.mConsistentY == ((int) (motionEvent.getY() / 10.0f)))) {
            if (motionEvent.getEventTime() - motionEvent.getDownTime() <= ((long) ViewConfiguration.getLongPressTimeout())) {
                z = false;
            }
            this.mSelectionActivated = z;
            this.mActivationWaiting = false;
        }
        return this.mSelectionActivated;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:23|24|(2:26|27)(1:28)|79|(8:31|32|(6:34|(1:36)|40|41|(4:43|(1:47)(1:46)|48|77)(1:78)|49)(1:37)|39|41|(0)(0)|49|29)|50|51) */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0077, code lost:
        if (r10.mStartPosition >= r5) goto L_0x0079;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:50:0x00a9 */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0098 A[Catch:{ NotReadyException -> 0x00a9 }] */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0115  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x00a6 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onTouchEvent(androidx.recyclerview.widget.RecyclerView r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            int r0 = r12.getAction()
            r1 = 1
            if (r1 != r0) goto L_0x000c
            r11.requestDisallowInterceptTouchEvent(r1)
            goto L_0x012d
        L_0x000c:
            r0 = 2
            int r2 = r12.getAction()
            if (r0 != r2) goto L_0x012d
            boolean r0 = r10.mSelectionActivated
            if (r0 == 0) goto L_0x012d
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl<T> r0 = r10.mListFragment
            androidx.recyclerview.widget.RecyclerView r0 = r0.getListView()
            float r2 = r12.getX()
            float r3 = r12.getY()
            android.view.View r0 = r0.findChildViewUnder(r2, r3)
            r2 = 0
            if (r0 == 0) goto L_0x00b0
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl<T> r3 = r10.mListFragment
            androidx.recyclerview.widget.RecyclerView r3 = r3.getListView()
            androidx.recyclerview.widget.RecyclerView$ViewHolder r0 = r3.findContainingViewHolder(r0)
            com.genonbeta.TrebleShot.widget.EditableListAdapter$EditableViewHolder r0 = (com.genonbeta.TrebleShot.widget.EditableListAdapter.EditableViewHolder) r0
            if (r0 == 0) goto L_0x00b0
            int r0 = r0.getAdapterPosition()
            if (r0 < 0) goto L_0x0042
            r3 = 1
            goto L_0x0043
        L_0x0042:
            r3 = 0
        L_0x0043:
            if (r3 == 0) goto L_0x00b1
            int r4 = r10.mStartPosition
            if (r4 >= 0) goto L_0x004d
            r10.mStartPosition = r0
            r10.mLastPosition = r0
        L_0x004d:
            int r4 = r10.mLastPosition
            if (r0 == r4) goto L_0x00b1
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl<T> r4 = r10.mListFragment
            com.genonbeta.TrebleShot.widget.EditableListAdapterImpl r4 = r4.getAdapterImpl()
            java.util.List r4 = r4.getList()
            monitor-enter(r4)
            int r5 = r10.mLastPosition     // Catch:{ all -> 0x00ad }
            int r6 = r10.mLastPosition     // Catch:{ all -> 0x00ad }
            if (r0 <= r6) goto L_0x0066
            int r5 = r10.mLastPosition     // Catch:{ all -> 0x00ad }
            r6 = r0
            goto L_0x0068
        L_0x0066:
            r6 = r5
            r5 = r0
        L_0x0068:
            int r7 = r6 + 1
            if (r5 >= r7) goto L_0x00a9
            int r7 = r10.mLastPosition     // Catch:{ NotReadyException -> 0x00a9 }
            if (r0 <= r7) goto L_0x0075
            int r7 = r10.mStartPosition     // Catch:{ NotReadyException -> 0x00a9 }
            if (r7 > r5) goto L_0x007b
            goto L_0x0079
        L_0x0075:
            int r7 = r10.mStartPosition     // Catch:{ NotReadyException -> 0x00a9 }
            if (r7 < r5) goto L_0x007b
        L_0x0079:
            r7 = 1
            goto L_0x007c
        L_0x007b:
            r7 = 0
        L_0x007c:
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl<T> r8 = r10.mListFragment     // Catch:{ NotReadyException -> 0x00a9 }
            com.genonbeta.android.framework.widget.PowerfulActionMode$SelectorConnection r8 = r8.getSelectionConnection()     // Catch:{ NotReadyException -> 0x00a9 }
            com.genonbeta.TrebleShot.app.EditableListFragmentImpl<T> r9 = r10.mListFragment     // Catch:{ NotReadyException -> 0x00a9 }
            com.genonbeta.TrebleShot.widget.EditableListAdapterImpl r9 = r9.getAdapterImpl()     // Catch:{ NotReadyException -> 0x00a9 }
            com.genonbeta.TrebleShot.object.Editable r9 = r9.getItem(r5)     // Catch:{ NotReadyException -> 0x00a9 }
            boolean r8 = r8.setSelected(r9, (boolean) r7)     // Catch:{ NotReadyException -> 0x00a9 }
            androidx.recyclerview.widget.RecyclerView$ViewHolder r9 = r11.findViewHolderForAdapterPosition(r5)     // Catch:{ NotReadyException -> 0x00a9 }
            com.genonbeta.android.framework.widget.RecyclerViewAdapter$ViewHolder r9 = (com.genonbeta.android.framework.widget.RecyclerViewAdapter.ViewHolder) r9     // Catch:{ NotReadyException -> 0x00a9 }
            if (r9 == 0) goto L_0x00a6
            android.view.View r9 = r9.getView()     // Catch:{ NotReadyException -> 0x00a9 }
            if (r8 == 0) goto L_0x00a2
            if (r7 == 0) goto L_0x00a2
            r7 = 1
            goto L_0x00a3
        L_0x00a2:
            r7 = 0
        L_0x00a3:
            r9.setSelected(r7)     // Catch:{ NotReadyException -> 0x00a9 }
        L_0x00a6:
            int r5 = r5 + 1
            goto L_0x0068
        L_0x00a9:
            monitor-exit(r4)     // Catch:{ all -> 0x00ad }
            r10.mLastPosition = r0
            goto L_0x00b1
        L_0x00ad:
            r11 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x00ad }
            throw r11
        L_0x00b0:
            r3 = 0
        L_0x00b1:
            int r0 = r10.mStartPosition
            if (r0 >= 0) goto L_0x00b9
            if (r3 != 0) goto L_0x00b9
            r10.mSelectionActivated = r2
        L_0x00b9:
            int r0 = r11.getHeight()
            float r0 = (float) r0
            r1 = 1077936128(0x40400000, float:3.0)
            float r3 = r0 / r1
            float r4 = r0 - r3
            float r5 = r12.getY()
            r6 = 0
            r7 = -1041235968(0xffffffffc1f00000, float:-30.0)
            r8 = 1106247680(0x41f00000, float:30.0)
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 >= 0) goto L_0x00df
            float r5 = r12.getY()
            float r0 = java.lang.Math.min(r5, r0)
            float r0 = r0 - r4
            float r0 = r0 / r3
            float r0 = r0 * r8
        L_0x00dd:
            int r0 = (int) r0
            goto L_0x00f6
        L_0x00df:
            float r0 = r12.getY()
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 <= 0) goto L_0x00f5
            float r0 = r12.getY()
            float r0 = java.lang.Math.max(r0, r6)
            float r0 = r3 - r0
            float r0 = r0 / r3
            float r0 = r0 * r7
            goto L_0x00dd
        L_0x00f5:
            r0 = 0
        L_0x00f6:
            int r3 = r11.getWidth()
            float r3 = (float) r3
            float r1 = r3 / r1
            float r4 = r3 - r1
            float r5 = r12.getX()
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 >= 0) goto L_0x0115
            float r12 = r12.getX()
            float r12 = java.lang.Math.min(r12, r3)
            float r12 = r12 - r4
            float r12 = r12 / r1
            float r12 = r12 * r8
            int r2 = (int) r12
            goto L_0x012a
        L_0x0115:
            float r3 = r12.getX()
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto L_0x012a
            float r12 = r12.getX()
            float r12 = java.lang.Math.max(r12, r6)
            float r12 = r1 - r12
            float r12 = r12 / r1
            float r7 = r7 / r12
            int r2 = (int) r7
        L_0x012a:
            r11.scrollBy(r2, r0)
        L_0x012d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.genonbeta.TrebleShot.widget.recyclerview.SwipeTouchSelectionListener.onTouchEvent(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):void");
    }

    public void onRequestDisallowInterceptTouchEvent(boolean z) {
        this.mSelectionActivated = false;
        this.mActivationWaiting = false;
        this.mStartPosition = -1;
        this.mLastPosition = -1;
        this.mConsistentX = 0;
    }
}
