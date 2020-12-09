.class Lcom/android/server/location/NtpTimeHelper;
.super Ljava/lang/Object;
.source "NtpTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field static final NTP_INTERVAL:J = 0x5265c00L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RETRY_INTERVAL:J = 0x493e0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final STATE_RETRIEVING_AND_INJECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mCallback:Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInjectNtpTimeState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    const-string v0, "NtpTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/NtpTimeHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V
    .registers 5

    .line 88
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 79
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 80
    iput-object p3, p0, Lcom/android/server/location/NtpTimeHelper;->mCallback:Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;

    .line 81
    iput-object p4, p0, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 82
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/location/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    .line 83
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 84
    const/4 p2, 0x1

    const-string p3, "NtpTimeHelper"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    return-void
.end method

.method private blockingGetNtpTimeAndInject()V
    .registers 17

    .line 132
    move-object/from16 v9, p0

    .line 133
    iget-object v0, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    .line 134
    const/4 v10, 0x1

    const-wide/32 v11, 0x5265c00

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v11

    if-ltz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v10

    goto :goto_1f

    .line 136
    :cond_19
    :goto_19
    iget-object v0, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    .line 139
    :goto_1f
    monitor-enter p0

    .line 140
    const/4 v13, 0x2

    :try_start_21
    iput v13, v9, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 144
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_93

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-gez v2, :cond_93

    .line 146
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v3

    .line 147
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v5

    .line 148
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getCertaintyMillis()J

    move-result-wide v7

    .line 150
    sget-boolean v2, Lcom/android/server/location/NtpTimeHelper;->DEBUG:Z

    if-eqz v2, :cond_7c

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 152
    const-string v2, "NtpTimeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTP server returned: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") ntpResult: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " system time offset: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v14, v3, v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_7c
    iget-object v11, v9, Lcom/android/server/location/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xPxgficKWFyuwUj60WMuiGEEjdg;-><init>(Lcom/android/server/location/NtpTimeHelper;JJJ)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    nop

    .line 162
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v1}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    .line 163
    const-wide/32 v11, 0x5265c00

    goto :goto_a1

    .line 164
    :cond_93
    const-string v1, "NtpTimeHelper"

    const-string/jumbo v2, "requestTime failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, v9, Lcom/android/server/location/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v1}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v11

    .line 168
    :goto_a1
    sget-boolean v1, Lcom/android/server/location/NtpTimeHelper;->DEBUG:Z

    if-eqz v1, :cond_c9

    .line 169
    const-string v1, "NtpTimeHelper"

    const-string/jumbo v2, "onDemandTimeInjection=%s, refreshSuccess=%s, delay=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, v9, Lcom/android/server/location/NtpTimeHelper;->mOnDemandTimeInjection:Z

    .line 171
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 172
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v10

    .line 173
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v13

    .line 169
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_c9
    iget-boolean v1, v9, Lcom/android/server/location/NtpTimeHelper;->mOnDemandTimeInjection:Z

    if-nez v1, :cond_cf

    if-nez v0, :cond_d9

    .line 182
    :cond_cf
    iget-object v0, v9, Lcom/android/server/location/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;

    invoke-direct {v1, v9}, Lcom/android/server/location/-$$Lambda$7zgzwOWgEFtr6DuyW9EYKot7bHU;-><init>(Lcom/android/server/location/NtpTimeHelper;)V

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    :cond_d9
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_21 .. :try_end_da} :catchall_e2

    .line 187
    :try_start_da
    iget-object v0, v9, Lcom/android/server/location/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_df} :catch_e0

    .line 190
    goto :goto_e1

    .line 188
    :catch_e0
    move-exception v0

    .line 191
    :goto_e1
    return-void

    .line 184
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0
.end method

.method private isNetworkConnected()Z
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static synthetic lambda$xWqlqJuq4jBJ5-xhFLCwEKGVB0k(Lcom/android/server/location/NtpTimeHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/NtpTimeHelper;->blockingGetNtpTimeAndInject()V

    return-void
.end method


# virtual methods
.method declared-synchronized enablePeriodicTimeInjection()V
    .registers 2

    monitor-enter p0

    .line 92
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/NtpTimeHelper;->mOnDemandTimeInjection:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$blockingGetNtpTimeAndInject$0$NtpTimeHelper(JJJ)V
    .registers 13

    .line 159
    iget-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mCallback:Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;

    long-to-int v5, p5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;->injectTime(JJI)V

    return-void
.end method

.method declared-synchronized onNetworkAvailable()V
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    if-nez v0, :cond_8

    .line 97
    invoke-virtual {p0}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 99
    :cond_8
    monitor-exit p0

    return-void

    .line 95
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retrieveAndInjectNtpTime()V
    .registers 4

    monitor-enter p0

    .line 111
    :try_start_1
    iget v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/location/NtpTimeHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2c

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_13
    :try_start_13
    iput v1, p0, Lcom/android/server/location/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 123
    iget-object v0, p0, Lcom/android/server/location/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 124
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xWqlqJuq4jBJ5-xhFLCwEKGVB0k;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$NtpTimeHelper$xWqlqJuq4jBJ5-xhFLCwEKGVB0k;-><init>(Lcom/android/server/location/NtpTimeHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2c

    .line 125
    monitor-exit p0

    return-void

    .line 110
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
