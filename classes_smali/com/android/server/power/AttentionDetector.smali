.class public Lcom/android/server/power/AttentionDetector;
.super Ljava/lang/Object;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/AttentionDetector$UserSwitchObserver;,
        Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AttentionDetector"


# instance fields
.field protected mAttentionManager:Landroid/attention/AttentionManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mContentResolver:Landroid/content/ContentResolver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsSettingEnabled:Z

.field private mLastActedOnNextScreenDimming:J

.field private mLastUserActivityTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMaxAttentionApiTimeoutMillis:J

.field protected mMaximumExtensionMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mOnUserAttention:Ljava/lang/Runnable;

.field protected mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mRequestId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWakefulness:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6
    .param p1, "onUserAttention"  # Ljava/lang/Runnable;
    .param p2, "lock"  # Ljava/lang/Object;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 124
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    .line 125
    iput-object p2, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    iput v1, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/AttentionDetector;

    .line 55
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/AttentionDetector;

    .line 55
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/AttentionDetector;

    .line 55
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/AttentionDetector;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/AttentionDetector;

    .line 55
    iget v0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/AttentionDetector;

    .line 55
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/AttentionDetector;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/AttentionDetector;

    .line 55
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    return-void
.end method

.method private cancelCurrentRequestIfAny()V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 266
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    :cond_15
    return-void
.end method

.method private resetConsecutiveExtensionCount()V
    .registers 6

    .line 272
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 273
    .local v3, "previousCount":J
    cmp-long v0, v3, v1

    if-lez v0, :cond_11

    .line 274
    const/16 v0, 0xa8

    invoke-static {v0, v3, v4}, Landroid/util/StatsLog;->write(IJ)I

    .line 276
    :cond_11
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 304
    const-string v0, "AttentionDetector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxAttentionApiTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaxAttentionApiTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastUserActivityTime(excludingAttention)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttentionServiceSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method getAttentionTimeout()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 280
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaxAttentionApiTimeoutMillis:J

    return-wide v0
.end method

.method isAttentionServiceSupported()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/attention/AttentionManagerInternal;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onUserActivity(JI)I
    .registers 6
    .param p1, "eventTime"  # J
    .param p3, "event"  # I

    .line 236
    const/4 v0, 0x1

    if-eqz p3, :cond_17

    if-eq p3, v0, :cond_17

    const/4 v1, 0x2

    if-eq p3, v1, :cond_17

    const/4 v1, 0x3

    if-eq p3, v1, :cond_17

    const/4 v0, 0x4

    if-eq p3, v0, :cond_10

    .line 252
    const/4 v0, -0x1

    return v0

    .line 238
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 239
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_17
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 245
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    .line 246
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 247
    return v0
.end method

.method public onWakefulnessChangeStarted(I)V
    .registers 3
    .param p1, "wakefulness"  # I

    .line 257
    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 258
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 259
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 260
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 262
    :cond_b
    return-void
.end method

.method public registerAdaptiveSleepObserver()V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/AttentionDetector$1;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/AttentionDetector$1;-><init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;)V

    .line 161
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 169
    return-void
.end method

.method serviceHasSufficientPermissions()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "attentionPackage":Ljava/lang/String;
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 140
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    .line 144
    const-class v0, Landroid/attention/AttentionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/attention/AttentionManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaxAttentionApiTimeoutMillis:J

    .line 151
    :try_start_37
    new-instance v0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$1;)V

    .line 152
    .local v0, "observer":Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "AttentionDetector"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_46} :catch_47

    .line 155
    .end local v0  # "observer":Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
    goto :goto_48

    .line 153
    :catch_47
    move-exception v0

    .line 156
    :goto_48
    return-void
.end method

.method updateEnabledFromSettings(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adaptive_sleep"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v1, v2

    :cond_10
    iput-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    .line 137
    return-void
.end method

.method public updateUserActivity(J)J
    .registers 14
    .param p1, "nextScreenDimming"  # J

    .line 173
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 174
    return-wide p1

    .line 176
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    if-nez v0, :cond_c

    .line 177
    return-wide p1

    .line 180
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v0

    if-nez v0, :cond_13

    .line 181
    return-wide p1

    .line 184
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->serviceHasSufficientPermissions()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 185
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "adaptive_sleep"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    return-wide p1

    .line 189
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 190
    .local v2, "now":J
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getAttentionTimeout()J

    move-result-wide v4

    sub-long v4, p1, v4

    .line 191
    .local v4, "whenToCheck":J
    iget-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    iget-wide v8, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    add-long/2addr v6, v8

    .line 192
    .local v6, "whenToStopExtending":J
    cmp-long v0, v2, v4

    if-gez v0, :cond_36

    .line 196
    return-wide v4

    .line 197
    :cond_36
    cmp-long v0, v6, v4

    if-gez v0, :cond_3b

    .line 202
    return-wide p1

    .line 203
    :cond_3b
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 207
    return-wide v4

    .line 214
    :cond_44
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    iget v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 216
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    .line 217
    new-instance v0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget v8, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-direct {v0, p0, v8}, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;-><init>(Lcom/android/server/power/AttentionDetector;I)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking user attention, ID: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "AttentionDetector"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getAttentionTimeout()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v0, v8, v9, v10}, Landroid/attention/AttentionManagerInternal;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v0

    .line 220
    .local v0, "sent":Z
    if-nez v0, :cond_85

    .line 221
    iget-object v8, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    :cond_85
    return-wide v4
.end method
