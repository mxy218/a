.class public Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;,
        Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final REASON_ADAPTIVE_DYNAMIC_POWER_SAVINGS_CHANGED:I = 0xb

.field public static final REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_OFF:I = 0xa

.field public static final REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_ON:I = 0x9

.field public static final REASON_INTERACTIVE_CHANGED:I = 0x5

.field public static final REASON_MANUAL_OFF:I = 0x3

.field public static final REASON_MANUAL_ON:I = 0x2

.field public static final REASON_PERCENTAGE_AUTOMATIC_OFF:I = 0x1

.field public static final REASON_PERCENTAGE_AUTOMATIC_ON:I = 0x0

.field public static final REASON_PLUGGED_IN:I = 0x7

.field public static final REASON_POLICY_CHANGED:I = 0x6

.field public static final REASON_SETTING_CHANGED:I = 0x8

.field public static final REASON_STICKY_RESTORE:I = 0x4

.field public static final REASON_TIMEOUT:I = 0xc

.field static final TAG:Ljava/lang/String; = "BatterySaverController"


# instance fields
.field private mAdaptiveEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAdaptivePreviouslyEnabled:Z

.field private final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContext:Landroid/content/Context;

.field private final mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

.field private mFullEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFullPreviouslyEnabled:Z

.field private final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field private mIsInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 9
    .param p1, "lock"  # Ljava/lang/Object;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "policy"  # Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .param p5, "batterySavingStats"  # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 199
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 200
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 201
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 202
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 203
    new-instance v0, Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-direct {v0, p2}, Lcom/android/server/power/batterysaver/FileUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    .line 204
    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/batterysaver/BatterySaverController;
    .param p1, "x1"  # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 59
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    return-object v0
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_16

    .line 239
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 242
    :cond_16
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private isPolicyEnabled()Z
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    if-eqz v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    .line 335
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static reasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"  # I

    .line 122
    packed-switch p0, :pswitch_data_3e

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_15  #0xc
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 146
    :pswitch_19  #0xb
    const-string v0, "Adaptive Power Savings changed"

    return-object v0

    .line 144
    :pswitch_1c  #0xa
    const-string v0, "Dynamic Warning Auto OFF"

    return-object v0

    .line 142
    :pswitch_1f  #0x9
    const-string v0, "Dynamic Warning Auto ON"

    return-object v0

    .line 140
    :pswitch_22  #0x8
    const-string v0, "Setting changed"

    return-object v0

    .line 138
    :pswitch_25  #0x7
    const-string v0, "Plugged in"

    return-object v0

    .line 136
    :pswitch_28  #0x6
    const-string v0, "Policy changed"

    return-object v0

    .line 134
    :pswitch_2b  #0x5
    const-string v0, "Interactivity changed"

    return-object v0

    .line 132
    :pswitch_2e  #0x4
    const-string v0, "Sticky restore"

    return-object v0

    .line 130
    :pswitch_31  #0x3
    const-string v0, "Manual OFF"

    return-object v0

    .line 128
    :pswitch_34  #0x2
    const-string v0, "Manual ON"

    return-object v0

    .line 126
    :pswitch_37  #0x1
    const-string v0, "Percentage Auto OFF"

    return-object v0

    .line 124
    :pswitch_3a  #0x0
    const-string v0, "Percentage Auto ON"

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_3a  #00000000
        :pswitch_37  #00000001
        :pswitch_34  #00000002
        :pswitch_31  #00000003
        :pswitch_2e  #00000004
        :pswitch_2b  #00000005
        :pswitch_28  #00000006
        :pswitch_25  #00000007
        :pswitch_22  #00000008
        :pswitch_1f  #00000009
        :pswitch_1c  #0000000a
        :pswitch_19  #0000000b
        :pswitch_15  #0000000c
    .end packed-switch
.end method

.method private updateBatterySavingStats()V
    .registers 10

    .line 503
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 504
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_e

    .line 505
    const-string v1, "BatterySaverController"

    const-string v2, "PowerManager not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 508
    :cond_e
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 510
    .local v1, "isInteractive":Z
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_26

    .line 511
    :cond_1d
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    goto :goto_26

    .line 512
    :cond_25
    move v2, v5

    :goto_26
    nop

    .line 514
    .local v2, "dozeMode":I
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 515
    :try_start_2a
    iget-boolean v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    if-eqz v7, :cond_35

    .line 516
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startCharging()V

    .line 517
    monitor-exit v6

    return-void

    .line 519
    :cond_35
    iget-object v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 520
    iget-boolean v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    if-eqz v8, :cond_3d

    move v3, v4

    goto :goto_43

    .line 521
    :cond_3d
    iget-boolean v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    if-eqz v8, :cond_42

    goto :goto_43

    :cond_42
    move v3, v5

    .line 522
    :goto_43
    if-eqz v1, :cond_46

    goto :goto_47

    :cond_46
    move v4, v5

    .line 519
    :goto_47
    invoke-virtual {v7, v3, v4, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionState(III)V

    .line 524
    monitor-exit v6

    .line 525
    return-void

    .line 524
    :catchall_4c
    move-exception v3

    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_4c

    throw v3
.end method

.method private updatePolicyLevelLocked()Z
    .registers 3

    .line 308
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    if-eqz v0, :cond_c

    .line 309
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result v0

    return v0

    .line 310
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    if-eqz v0, :cond_18

    .line 311
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result v0

    return v0

    .line 313
    :cond_18
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 216
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public enableBatterySaver(ZI)V
    .registers 6
    .param p1, "enable"  # Z
    .param p2, "reason"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    if-ne v1, p1, :cond_9

    .line 297
    monitor-exit v0

    return-void

    .line 299
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    .line 301
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 302
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 304
    :cond_17
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object v0
.end method

.method handleBatterySaverStateChanged(ZI)V
    .registers 14
    .param p1, "sendBroadcast"  # Z
    .param p2, "reason"  # I

    .line 425
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 428
    .local v0, "isInteractive":Z
    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 429
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    move v1, v9

    goto :goto_19

    :cond_18
    :goto_18
    move v1, v2

    :goto_19
    move v10, v1

    .line 432
    .local v10, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    if-eqz v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v9

    .line 433
    :goto_21
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    if-eqz v3, :cond_27

    move v3, v2

    goto :goto_28

    :cond_27
    move v3, v9

    .line 434
    :goto_28
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    if-eqz v4, :cond_2e

    move v4, v2

    goto :goto_2f

    :cond_2e
    move v4, v9

    .line 435
    :goto_2f
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    .line 436
    nop

    .line 437
    if-eqz v10, :cond_3b

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->toEventLogString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3d

    :cond_3b
    const-string v2, ""

    :goto_3d
    move-object v6, v2

    .line 431
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v0

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/EventLogTags;->writeBatterySaverMode(IIIIILjava/lang/String;I)V

    .line 440
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 441
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 443
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-array v2, v9, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 445
    .local v1, "listeners":[Landroid/os/PowerManagerInternal$LowPowerModeListener;
    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    .line 447
    if-eqz v10, :cond_63

    .line 448
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getFileValues(Z)Landroid/util/ArrayMap;

    move-result-object v2

    .local v2, "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_64

    .line 450
    .end local v2  # "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_63
    const/4 v2, 0x0

    .line 452
    .restart local v2  # "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_64
    monitor-exit v8
    :try_end_65
    .catchall {:try_start_b .. :try_end_65} :catchall_f6

    .line 454
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 455
    .local v3, "pmi":Landroid/os/PowerManagerInternal;
    if-eqz v3, :cond_77

    .line 456
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 459
    :cond_77
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    .line 461
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 462
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-virtual {v4}, Lcom/android/server/power/batterysaver/FileUpdater;->restoreDefault()V

    goto :goto_8b

    .line 464
    :cond_86
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-virtual {v4, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->writeFiles(Landroid/util/ArrayMap;)V

    .line 467
    :goto_8b
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    array-length v5, v4

    move v6, v9

    :goto_8f
    if-ge v6, v5, :cond_99

    aget-object v7, v4, v6

    .line 468
    .local v7, "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    invoke-interface {v7, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onBatterySaverChanged(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 467
    .end local v7  # "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 471
    :cond_99
    if-eqz p1, :cond_f5

    .line 479
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v5

    const-string/jumbo v6, "mode"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 481
    const/high16 v5, 0x40000000  # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 482
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 484
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 485
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 489
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 490
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 494
    array-length v5, v1

    :goto_e1
    if-ge v9, v5, :cond_f5

    aget-object v6, v1, v9

    .line 495
    .local v6, "listener":Landroid/os/PowerManagerInternal$LowPowerModeListener;
    iget-object v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 496
    invoke-interface {v6}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v7

    .line 497
    .local v7, "result":Landroid/os/PowerSaveState;
    invoke-interface {v6, v7}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    .line 494
    .end local v6  # "listener":Landroid/os/PowerManagerInternal$LowPowerModeListener;
    .end local v7  # "result":Landroid/os/PowerSaveState;
    add-int/lit8 v9, v9, 0x1

    goto :goto_e1

    .line 500
    .end local v4  # "intent":Landroid/content/Intent;
    :cond_f5
    return-void

    .line 452
    .end local v1  # "listeners":[Landroid/os/PowerManagerInternal$LowPowerModeListener;
    .end local v2  # "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3  # "pmi":Landroid/os/PowerManagerInternal;
    .end local v10  # "enabled":Z
    :catchall_f6
    move-exception v1

    :try_start_f7
    monitor-exit v8
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v1
.end method

.method isAdaptiveEnabled()Z
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    monitor-exit v0

    return v1

    .line 347
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 324
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v0

    .line 323
    return v1

    .line 325
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method isFullEnabled()Z
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabled:Z

    monitor-exit v0

    return v1

    .line 341
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isInteractive()Z
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    monitor-exit v0

    return v1

    .line 392
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .registers 2

    .line 404
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .registers 5
    .param p1, "policy"  # Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 247
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 248
    return-void

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 251
    return-void
.end method

.method resetAdaptivePolicyLocked(I)Z
    .registers 4
    .param p1, "reason"  # I

    .line 369
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->resetAdaptivePolicyLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 370
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 371
    return v1

    .line 373
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method setAdaptivePolicyEnabledLocked(ZI)Z
    .registers 5
    .param p1, "enabled"  # Z
    .param p2, "reason"  # I

    .line 377
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 378
    return v1

    .line 380
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabled:Z

    .line 381
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 382
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 383
    return v1

    .line 385
    :cond_15
    return v1
.end method

.method setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 4
    .param p1, "config"  # Landroid/os/BatterySaverPolicyConfig;
    .param p2, "reason"  # I

    .line 357
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result v0

    return v0
.end method

.method setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 5
    .param p1, "policy"  # Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .param p2, "reason"  # I

    .line 361
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 362
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 363
    return v1

    .line 365
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method setAdaptivePolicyLocked(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "settings"  # Ljava/lang/String;
    .param p2, "deviceSpecificSettings"  # Ljava/lang/String;
    .param p3, "reason"  # I

    .line 351
    nop

    .line 352
    invoke-static {p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 233
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isRuntimeRestarted()Z

    move-result v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->systemReady(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postSystemReady()V

    .line 235
    return-void
.end method
