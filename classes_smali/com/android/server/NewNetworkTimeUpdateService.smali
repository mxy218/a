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

.field private static final DBG:Z = true

.field private static final EPOCH_YEAR:I = 0x7b2

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static final POLL_REQUEST:I = 0x0

.field private static final PROPERTIES_BUILD_DATE:Ljava/lang/String; = "ro.build.date"

.field private static final RETRY_POLLING_TIME_INTERVAL:J = 0x1388L

.field private static final SYSTEM_FIRST_BOOT:Ljava/lang/String; = "system_first_boot"

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

.field private mRetryPollingTime:J

.field private mRetryTimesMax:I

.field private mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

.field private final mTime:Landroid/util/NtpTrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 114
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryPollingTime:J

    .line 115
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryTimesMax:I

    .line 341
    new-instance v2, Lcom/android/server/NewNetworkTimeUpdateService$2;

    invoke-direct {v2, p0}, Lcom/android/server/NewNetworkTimeUpdateService$2;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    iput-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    .line 121
    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 122
    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 124
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v2

    .line 125
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 127
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 129
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 131
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 133
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    .line 139
    .local v1, "defaultTimeout":J
    nop

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 139
    const-string/jumbo v4, "ntp_timeout"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 141
    .local v3, "timeout":J
    iget v5, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryPollingTime:J

    add-long/2addr v7, v3

    div-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryTimesMax:I

    .line 145
    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v6, 0x1

    const-string v7, "NetworkTimeUpdateService"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NewNetworkTimeUpdateService;

    .line 63
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NewNetworkTimeUpdateService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p1, "x1"  # J

    .line 63
    iput-wide p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NewNetworkTimeUpdateService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p1, "x1"  # I

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NewNetworkTimeUpdateService;

    .line 63
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/NewNetworkTimeUpdateService;
    .param p1, "x1"  # Landroid/net/Network;

    .line 63
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method private getThisYearFromBuildDate()I
    .registers 6

    .line 323
    const/16 v0, 0x7b2

    .line 325
    .local v0, "year":I
    :try_start_2
    const-string/jumbo v1, "ro.build.date"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "buildTime":Ljava/lang/String;
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "tokens":[Ljava/lang/String;
    if-eqz v2, :cond_20

    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_20

    .line 331
    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 334
    .end local v1  # "buildTime":Ljava/lang/String;
    .end local v2  # "tokens":[Ljava/lang/String;
    goto :goto_2c

    .line 329
    .restart local v1  # "buildTime":Ljava/lang/String;
    .restart local v2  # "tokens":[Ljava/lang/String;
    :cond_20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Please check value of ro.build.date !!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "year":I
    .end local p0  # "this":Lcom/android/server/NewNetworkTimeUpdateService;
    throw v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_28

    .line 332
    .end local v1  # "buildTime":Ljava/lang/String;
    .end local v2  # "tokens":[Ljava/lang/String;
    .restart local v0  # "year":I
    .restart local p0  # "this":Lcom/android/server/NewNetworkTimeUpdateService;
    :catch_28
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This year is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkTimeUpdateService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v0
.end method

.method private isAutomaticTimeRequested()Z
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 317
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
    .registers 4
    .param p1, "event"  # I

    .line 194
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_5

    return-void

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 197
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->onPollNetworkTimeUnderWakeLock(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_14

    .line 199
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private onPollNetworkTimeUnderWakeLock(I)V
    .registers 8
    .param p1, "event"  # I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPollNetworkTimeUnderWakeLock mTime.getCacheAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_32

    if-ne v2, p1, :cond_3c

    .line 212
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 214
    :cond_32
    const-string v0, "Stale NTP fix; forcing refresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceSync()Z

    .line 217
    :cond_3c
    const-string/jumbo v0, "onPollNetworkTimeUnderWakeLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_5b

    .line 221
    invoke-direct {p0, v3, v4}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/NewNetworkTimeUpdateService;->updateSystemClock(I)V

    goto :goto_7b

    .line 240
    :cond_5b
    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v0, :cond_71

    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryTimesMax:I

    if-gt v0, v1, :cond_66

    goto :goto_71

    .line 245
    :cond_66
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryPollingTime:J

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 247
    invoke-direct {p0, v3, v4}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_7b

    .line 241
    :cond_71
    :goto_71
    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    .line 242
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mRetryPollingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/NewNetworkTimeUpdateService;->resetAlarm(J)V

    .line 251
    :cond_7b
    :goto_7b
    return-void
.end method

.method private registerForAlarms()V
    .registers 5

    .line 182
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NewNetworkTimeUpdateService$1;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method private registerForTelephonyIntents()V
    .registers 4

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method private resetAlarm(J)V
    .registers 10
    .param p1, "interval"  # J

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset alarm with interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, "now":J
    add-long v2, v0, p1

    .line 309
    .local v2, "next":J
    iget-object v4, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 311
    return-void
.end method

.method private updateSystemClock(I)V
    .registers 8
    .param p1, "event"  # I

    .line 270
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 271
    .local v0, "forceUpdate":Z
    :goto_5
    const-string v1, "NetworkTimeUpdateService"

    if-nez v0, :cond_25

    .line 281
    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 282
    .local v2, "skew":J
    iget v4, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_25

    .line 283
    const-string v4, "Ignoring NTP update due to low skew"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 287
    .end local v2  # "skew":J
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSystemClock set time to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 290
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkTimeUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 415
    :cond_b
    const-string v0, "PollingIntervalMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 417
    const-string v0, "\nPollingIntervalShorterMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-wide v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainTimesMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v0, "TimeErrorThresholdMs: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget v0, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nTryAgainCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache age: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTP cache certainty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 426
    return-void
.end method

.method public systemRunning()V
    .registers 8

    .line 151
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 152
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->registerForAlarms()V

    .line 154
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 156
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/NewNetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NewNetworkTimeUpdateService;Lcom/android/server/NewNetworkTimeUpdateService$1;)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    .line 158
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mNetworkTimeUpdateCallback:Lcom/android/server/NewNetworkTimeUpdateService$NetworkTimeUpdateCallback;

    iget-object v3, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 160
    new-instance v1, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    .line 161
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NewNetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 164
    iget-object v1, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_first_boot"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_70

    .line 165
    invoke-direct {p0}, Lcom/android/server/NewNetworkTimeUpdateService;->getThisYearFromBuildDate()I

    move-result v1

    .line 166
    .local v1, "thisYear":I
    new-instance v5, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 167
    .local v5, "today":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 168
    invoke-virtual {v5, v3, v4, v1}, Landroid/text/format/Time;->set(III)V

    .line 169
    iget-object v6, p0, Lcom/android/server/NewNetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    invoke-virtual {v5, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 173
    .end local v1  # "thisYear":I
    .end local v5  # "today":Landroid/text/format/Time;
    :cond_70
    return-void
.end method
