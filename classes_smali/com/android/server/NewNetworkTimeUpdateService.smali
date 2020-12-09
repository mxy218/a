.class public Lcom/android/server/NewNetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NewNetworkTimeUpdateService.java"

# interfaces
.implements Lcom/android/server/NetworkTimeUpdateService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;,
        Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static final POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private final mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

.field private final mTime:Landroid/util/NtpTrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 246
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/NewNetworkTimeUpdateService$2;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    .line 104
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 110
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 112
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 114
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 116
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 119
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "NetworkTimeUpdateService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/os/Handler;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/NewNetworkTimeUpdateService;J)J
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NewNetworkTimeUpdateService;I)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/net/Network;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method private getNitzAge()J
    .registers 5

    .line 196
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 197
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 199
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private isAutomaticTimeRequested()Z
    .registers 4

    .line 241
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 241
    const/4 v1, 0x0

    const-string v2, "auto_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private onPollNetworkTime(I)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_5

    return-void

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 160
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 162
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    nop

    .line 164
    return-void

    .line 162
    :catchall_14
    move-exception p1

    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1d

    .line 171
    :cond_12
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    .line 172
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    .line 175
    :cond_1d
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_36

    .line 177
    invoke-direct {p0, v2, v3}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    .line 178
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 179
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->updateSystemClock(I)V

    goto :goto_53

    .line 184
    :cond_36
    iget p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 185
    iget p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz p1, :cond_4e

    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    if-gt v0, p1, :cond_45

    goto :goto_4e

    .line 189
    :cond_45
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 190
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_53

    .line 186
    :cond_4e
    :goto_4e
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    .line 193
    :cond_53
    :goto_53
    return-void
.end method

.method private registerForAlarms()V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NewNetworkTimeUpdateService$1;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method private registerForTelephonyIntents()V
    .registers 4

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method private resetAlarm(J)V
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 233
    add-long/2addr v0, p1

    .line 234
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 235
    return-void
.end method

.method private updateSystemClock(I)V
    .registers 6

    .line 208
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 209
    :goto_5
    if-nez v0, :cond_29

    .line 210
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->getNitzAge()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_12

    .line 212
    return-void

    .line 215
    :cond_12
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 216
    iget p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_29

    .line 218
    return-void

    .line 222
    :cond_29
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 223
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 318
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string p3, "NetworkTimeUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 319
    :cond_b
    const-string p1, "PollingIntervalMs: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 321
    const-string p1, "\nPollingIntervalShorterMs: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\nTryAgainTimesMax: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string p1, "TimeErrorThresholdMs: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    iget p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\nTryAgainCounter: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p1}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object p1

    .line 328
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NTP cache result: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    if-eqz p1, :cond_8a

    .line 330
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NTP result age: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_8a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 333
    return-void
.end method

.method public systemRunning()V
    .registers 4

    .line 125
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 126
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->registerForAlarms()V

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;Lcom/android/server/NewNetworkTimeUpdateService$1;)V

    iput-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 132
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 134
    new-instance v0, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    .line 135
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 136
    return-void
.end method
