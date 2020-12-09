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

.field protected mWindowManager:Lcom/android/server/wm/WindowManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 128
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    .line 129
    iput-object p2, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    .line 130
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    iput p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 134
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/power/AttentionDetector;)I
    .registers 1

    .line 56
    iget p0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/power/AttentionDetector;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelCurrentRequestIfAny()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    :cond_15
    return-void
.end method

.method private resetConsecutiveExtensionCount()V
    .registers 6

    .line 268
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 269
    cmp-long v0, v3, v1

    if-lez v0, :cond_11

    .line 270
    const/16 v0, 0xa8

    invoke-static {v0, v3, v4}, Landroid/util/StatsLog;->write(IJ)I

    .line 272
    :cond_11
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 300
    const-string v0, "AttentionDetector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxAttentionApiTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaxAttentionApiTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastUserActivityTime(excludingAttention)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
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

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method getAttentionTimeout()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 276
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaxAttentionApiTimeoutMillis:J

    return-wide v0
.end method

.method isAttentionServiceSupported()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 284
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

    .line 232
    const/4 v0, 0x1

    if-eqz p3, :cond_17

    if-eq p3, v0, :cond_17

    const/4 v1, 0x2

    if-eq p3, v1, :cond_17

    const/4 v1, 0x3

    if-eq p3, v1, :cond_17

    const/4 p1, 0x4

    if-eq p3, p1, :cond_10

    .line 248
    const/4 p1, -0x1

    return p1

    .line 234
    :cond_10
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 235
    const/4 p1, 0x0

    return p1

    .line 240
    :cond_17
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 241
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    .line 242
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 243
    return v0
.end method

.method public onWakefulnessChangeStarted(I)V
    .registers 3

    .line 253
    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 254
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    .line 255
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 256
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 258
    :cond_b
    return-void
.end method

.method serviceHasSufficientPermissions()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 8

    .line 144
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    .line 148
    const-class v0, Landroid/attention/AttentionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/attention/AttentionManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 149
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaxAttentionApiTimeoutMillis:J

    .line 156
    :try_start_41
    new-instance v0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$1;)V

    .line 157
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "AttentionDetector"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_51

    .line 160
    goto :goto_52

    .line 158
    :catch_51
    move-exception v0

    .line 162
    :goto_52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/AttentionDetector$1;

    new-instance v4, Landroid/os/Handler;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/power/AttentionDetector$1;-><init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 162
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 170
    return-void
.end method

.method updateEnabledFromSettings(Landroid/content/Context;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "adaptive_sleep"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_10

    move v0, v1

    :cond_10
    iput-boolean v0, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    .line 141
    return-void
.end method

.method public updateUserActivity(J)J
    .registers 13

    .line 173
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    if-eqz v0, :cond_8c

    .line 175
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 176
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_8c

    .line 180
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->serviceHasSufficientPermissions()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 181
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "adaptive_sleep"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    return-wide p1

    .line 185
    :cond_28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getAttentionTimeout()J

    move-result-wide v4

    sub-long v4, p1, v4

    .line 187
    iget-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    iget-wide v8, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    add-long/2addr v6, v8

    .line 188
    cmp-long v0, v2, v4

    if-gez v0, :cond_3c

    .line 192
    return-wide v4

    .line 193
    :cond_3c
    cmp-long v0, v6, v4

    if-gez v0, :cond_41

    .line 198
    return-wide p1

    .line 199
    :cond_41
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 203
    return-wide v4

    .line 210
    :cond_4a
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 212
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    .line 213
    new-instance p1, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;-><init>(Lcom/android/server/power/AttentionDetector;I)V

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Checking user attention, ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AttentionDetector"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getAttentionTimeout()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {p1, v2, v3, p2}, Landroid/attention/AttentionManagerInternal;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result p1

    .line 216
    if-nez p1, :cond_8b

    .line 217
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    :cond_8b
    return-wide v4

    .line 177
    :cond_8c
    :goto_8c
    return-wide p1
.end method
