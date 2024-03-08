package X;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: X.07u  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C017307u {
    public static ExecutorService A00;
    public static ExecutorService A01;
    public static final ExecutorService A02;
    public static final ExecutorService A03;
    public static final ExecutorService A04;
    public static final ScheduledExecutorService A05;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        A03 = new ThreadPoolExecutor(0, 1, 15L, timeUnit, new LinkedBlockingQueue(), new ThreadFactoryC017207t("main", 5));
        A04 = new ThreadPoolExecutor(1, 1, 15L, timeUnit, new LinkedBlockingQueue(), new ThreadFactoryC017207t("single", 0));
        A02 = new ThreadPoolExecutor(0, 1, 10L, timeUnit, new LinkedBlockingQueue(), new ThreadFactoryC017207t("startup", 0));
        A05 = new ScheduledThreadPoolExecutor(3, new ThreadFactoryC017207t("scheduled", 10));
    }

    public static ExecutorService A00() {
        if (A01 == null) {
            synchronized (C017307u.class) {
                ExecutorService executorService = A01;
                if (executorService != null) {
                    return executorService;
                }
                A01 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC017207t("sender", 10));
            }
        }
        return A01;
    }

    public static synchronized ExecutorService A01() {
        ExecutorService executorService;
        synchronized (C017307u.class) {
            executorService = A00;
            if (executorService == null) {
                executorService = new ThreadPoolExecutor(0, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC017207t("background", 10));
                A00 = executorService;
            }
        }
        return executorService;
    }
}
