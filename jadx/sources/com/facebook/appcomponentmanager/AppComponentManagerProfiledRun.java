package com.facebook.appcomponentmanager;

import java.io.Serializable;

/* loaded from: classes.dex */
public class AppComponentManagerProfiledRun implements Serializable {
    public static final long serialVersionUID = 1;
    public long mDurationInMilliseconds;
    public String mTrigger;
    public int mUpdatedComponents;

    public void setDurationInMilliseconds(int i) {
        this.mDurationInMilliseconds = i;
    }

    public long getDurationInMilliseconds() {
        return this.mDurationInMilliseconds;
    }

    public String getTrigger() {
        return this.mTrigger;
    }

    public int getUpdatedComponents() {
        return this.mUpdatedComponents;
    }

    public AppComponentManagerProfiledRun(String str, int i, long j) {
        this.mTrigger = str;
        this.mUpdatedComponents = i;
        this.mDurationInMilliseconds = j;
    }

    public void setTrigger(String str) {
        this.mTrigger = str;
    }

    public void setUpdatedComponents(int i) {
        this.mUpdatedComponents = i;
    }

    public AppComponentManagerProfiledRun() {
    }
}
