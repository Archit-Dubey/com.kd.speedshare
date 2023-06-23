package com.genonbeta.android.framework.util;

import java.util.ArrayList;
import java.util.List;

public class Interrupter {
    private List<Closer> mClosers = new ArrayList();
    private boolean mInterrupted = false;
    private boolean mInterruptedByUser = false;

    public interface Closer {
        void onClose(boolean z);
    }

    public boolean addCloser(Closer closer) {
        boolean add;
        synchronized (getClosers()) {
            add = getClosers().add(closer);
        }
        return add;
    }

    public boolean hasCloser(Closer closer) {
        boolean contains;
        synchronized (getClosers()) {
            contains = getClosers().contains(closer);
        }
        return contains;
    }

    public List<Closer> getClosers() {
        return this.mClosers;
    }

    public boolean interrupted() {
        return this.mInterrupted;
    }

    public boolean interruptedByUser() {
        return this.mInterruptedByUser;
    }

    public boolean interrupt() {
        return interrupt(true);
    }

    public boolean interrupt(boolean z) {
        if (z) {
            this.mInterruptedByUser = true;
        }
        if (interrupted()) {
            return false;
        }
        this.mInterrupted = true;
        synchronized (getClosers()) {
            for (Closer onClose : getClosers()) {
                onClose.onClose(z);
            }
        }
        return true;
    }

    public boolean removeCloser(Closer closer) {
        boolean remove;
        synchronized (getClosers()) {
            remove = getClosers().remove(closer);
        }
        return remove;
    }

    public void reset() {
        reset(true);
    }

    public void reset(boolean z) {
        this.mInterrupted = false;
        this.mInterruptedByUser = false;
        if (z) {
            removeClosers();
        }
    }

    public void removeClosers() {
        synchronized (getClosers()) {
            getClosers().clear();
        }
    }
}
