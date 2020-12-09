.class public Lcom/android/server/connectivity/tethering/EntitlementManager;
.super Ljava/lang/Object;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;,
        Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;,
        Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVISIONING_ALARM:Ljava/lang/String; = "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

.field private static final DBG:Z = false

.field protected static final DISABLE_PROVISIONING_SYSPROP_KEY:Ljava/lang/String; = "net.tethering.noprovisioning"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EVENT_GET_ENTITLEMENT_VALUE:I = 0x4

.field private static final EVENT_MAYBE_RUN_PROVISIONING:I = 0x3

.field private static final EVENT_START_PROVISIONING:I = 0x0

.field private static final EVENT_STOP_PROVISIONING:I = 0x1

.field private static final EVENT_UPSTREAM_CHANGED:I = 0x2

.field private static final EXTRA_SUBID:Ljava/lang/String; = "subId"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final TAG:Ljava/lang/String;

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;


# instance fields
.field private final mCellularPermitted:Landroid/util/SparseIntArray;

.field private mCellularUpstreamPermitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentTethers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntitlementCacheValue:Landroid/util/SparseIntArray;

.field private mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

.field private final mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

.field private mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNeedReRunProvisioningUi:Z

.field private final mPermissionChangeMessageCode:I

.field private mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mUsingCellularAsUpstream:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 71
    const-class v0, Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TAG:Ljava/lang/String;

    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)V
    .registers 7

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    .line 492
    new-instance v0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/EntitlementManager$1;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    .line 117
    sget-object p1, Lcom/android/server/connectivity/tethering/EntitlementManager;->TAG:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    .line 118
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    .line 119
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    .line 120
    iput-object p5, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 121
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    .line 122
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 123
    iput p4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mPermissionChangeMessageCode:I

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 127
    new-instance p2, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 128
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    return-object p0
.end method

.method static synthetic access$200(I)Z
    .registers 1

    .line 70
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->toBool(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/EntitlementManager;IZ)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleStartProvisioningIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/EntitlementManager;I)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleStopProvisioningIfNeeded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/EntitlementManager;Z)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleNotifyUpstream(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/EntitlementManager;Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/EntitlementManager;ILandroid/os/ResultReceiver;Z)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleGetLatestTetheringEntitlementValue(ILandroid/os/ResultReceiver;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/EntitlementManager;II)I
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->updateEntitlementCacheValue(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    return-object p0
.end method

.method private buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 11

    .line 596
    new-instance v6, Lcom/android/server/connectivity/tethering/EntitlementManager$2;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/EntitlementManager$2;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Handler;IZLandroid/os/ResultReceiver;)V

    .line 608
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/tethering/EntitlementManager;->writeToParcel(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    return-object p1
.end method

.method private cancelTetherProvisioningRechecks()V
    .registers 3

    .line 433
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    if-eqz v0, :cond_16

    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 436
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    .line 439
    :cond_16
    return-void
.end method

.method private carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z
    .registers 3

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 354
    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_8
    const-string/jumbo v0, "require_entitlement_checks_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 359
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static encodeBool(Z)I
    .registers 1

    .line 540
    return p0
.end method

.method private static errorString(I)Ljava/lang/String;
    .registers 3

    .line 585
    if-eqz p0, :cond_21

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1b

    .line 590
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "UNKNOWN ERROR (%d)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 586
    :cond_1b
    const-string p0, "TETHER_ERROR_ENTITLEMENT_UNKONWN"

    return-object p0

    .line 588
    :cond_1e
    const-string p0, "TETHER_ERROR_PROVISION_FAILED"

    return-object p0

    .line 587
    :cond_21
    const-string p0, "TETHER_ERROR_NO_ERROR"

    return-object p0
.end method

.method private evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .registers 6

    .line 442
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    .line 444
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_13

    :cond_12
    const/4 v2, 0x1

    :cond_13
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 451
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    if-eq v1, v0, :cond_38

    .line 452
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cellular permission change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mPermissionChangeMessageCode:I

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 457
    :cond_38
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->scheduleProvisioningRechecks(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_4b

    .line 460
    :cond_48
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->cancelTetherProvisioningRechecks()V

    .line 462
    :goto_4b
    return-void
.end method

.method private handleGetLatestTetheringEntitlementValue(ILandroid/os/ResultReceiver;Z)V
    .registers 9

    .line 660
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_12

    .line 662
    invoke-virtual {p2, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 663
    return-void

    .line 666
    :cond_12
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 668
    if-eqz v1, :cond_29

    if-nez p3, :cond_1f

    goto :goto_29

    .line 671
    :cond_1f
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p2

    .line 672
    iget p3, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V

    goto :goto_2c

    .line 669
    :cond_29
    :goto_29
    invoke-virtual {p2, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 674
    :goto_2c
    return-void
.end method

.method private handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_49

    .line 266
    :cond_f
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 267
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_47

    .line 268
    iget-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    if-eqz v2, :cond_3e

    .line 269
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    .line 270
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(II)V

    goto :goto_47

    .line 272
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runSilentTetherProvisioning(II)V

    .line 275
    :cond_47
    :goto_47
    goto :goto_15

    .line 276
    :cond_48
    return-void

    .line 259
    :cond_49
    :goto_49
    return-void
.end method

.method private handleNotifyUpstream(Z)V
    .registers 2

    .line 244
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    .line 246
    iget-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz p1, :cond_f

    .line 247
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object p1

    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 250
    :cond_f
    return-void
.end method

.method private handleStartProvisioningIfNeeded(IZ)V
    .registers 6

    .line 181
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isValidDownstreamType(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1c
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 189
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    .line 190
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 194
    :cond_33
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v1, :cond_47

    .line 195
    if-eqz p2, :cond_3f

    .line 196
    iget p2, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(II)V

    goto :goto_44

    .line 198
    :cond_3f
    iget p2, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runSilentTetherProvisioning(II)V

    .line 200
    :goto_44
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    goto :goto_50

    .line 202
    :cond_47
    iget-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    goto :goto_50

    .line 205
    :cond_4d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    .line 207
    :goto_50
    return-void
.end method

.method private handleStopProvisioningIfNeeded(I)V
    .registers 4

    .line 219
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isValidDownstreamType(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->removeDownstreamMapping(I)V

    .line 226
    return-void
.end method

.method private static isValidDownstreamType(I)Z
    .registers 3

    .line 544
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a

    .line 550
    const/4 p0, 0x0

    return p0

    .line 548
    :cond_a
    return v0
.end method

.method private runUiTetherProvisioning(II)V
    .registers 5

    .line 388
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 389
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V

    .line 390
    return-void
.end method

.method private scheduleProvisioningRechecks(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .registers 10

    .line 417
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    if-nez v0, :cond_35

    .line 418
    iget p1, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningCheckPeriod:I

    .line 419
    if-gtz p1, :cond_9

    return-void

    .line 421
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    .line 423
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 425
    const v0, 0x36ee80

    mul-int/2addr p1, v0

    int-to-long v5, p1

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v3, v2, v5

    .line 427
    const/4 v2, 0x3

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 430
    :cond_35
    return-void
.end method

.method private static toBool(I)Z
    .registers 1

    .line 536
    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static typeString(I)Ljava/lang/String;
    .registers 3

    .line 574
    const/4 v0, -0x1

    if-eq p0, v0, :cond_24

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1b

    .line 580
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "TETHERING UNKNOWN TYPE (%d)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 575
    :cond_1b
    const-string p0, "TETHERING_BLUETOOTH"

    return-object p0

    .line 577
    :cond_1e
    const-string p0, "TETHERING_USB"

    return-object p0

    .line 578
    :cond_21
    const-string p0, "TETHERING_WIFI"

    return-object p0

    .line 576
    :cond_24
    const-string p0, "TETHERING_INVALID"

    return-object p0
.end method

.method private updateEntitlementCacheValue(II)I
    .registers 4

    .line 640
    if-nez p2, :cond_8

    .line 641
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    return p2

    .line 644
    :cond_8
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    const/16 v0, 0xb

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    return v0
.end method

.method private writeToParcel(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 4

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 623
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 624
    sget-object p1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 626
    return-object p1
.end method


# virtual methods
.method protected addDownstreamMapping(II)V
    .registers 7

    .line 472
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDownstreamMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,TetherTypeRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    return-void

    .line 476
    :cond_3d
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object p1

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 479
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 559
    const-string v0, "mCellularUpstreamPermitted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 562
    const-string v2, "Type: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->typeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_50

    .line 565
    const-string v2, ", Value: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->errorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55

    .line 568
    :cond_50
    const-string v1, ", Value: empty"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    :goto_55
    goto :goto_10

    .line 571
    :cond_56
    return-void
.end method

.method public getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    .line 333
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 334
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    .line 336
    :cond_e
    iget p1, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    .line 338
    invoke-static {p1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 339
    return-object p1

    .line 342
    :cond_1b
    return-object v1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .registers 6

    .line 652
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 653
    invoke-static {p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result p3

    .line 652
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 655
    return-void
.end method

.method public isCellularUpstreamPermitted()Z
    .registers 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    return v0
.end method

.method protected isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const/4 v1, 0x0

    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_12

    goto :goto_21

    .line 290
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 291
    return v1

    .line 293
    :cond_19
    iget-object p1, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length p1, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    .line 288
    :cond_21
    :goto_21
    return v1
.end method

.method public maybeRunProvisioning()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method public notifyUpstream(Z)V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 235
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result p1

    .line 234
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method public reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .registers 4

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_14

    .line 310
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "reevaluateSimCardProvisioning() don\'t run in TetherMaster thread"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 312
    :cond_14
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 313
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 316
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->hasMobileHotspotProvisionApp()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_33

    .line 322
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v0, :cond_32

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 325
    :cond_32
    return-void

    .line 318
    :cond_33
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 319
    return-void
.end method

.method protected removeDownstreamMapping(I)V
    .registers 5

    .line 486
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDownstreamMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 488
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object p1

    .line 489
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 490
    return-void
.end method

.method protected runSilentTetherProvisioning(II)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 371
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 374
    const-string v2, "extraAddTetherType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string p1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    const-string p1, "extraProvisionCallback"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    const-string/jumbo p1, "subId"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    sget-object p1, Lcom/android/server/connectivity/tethering/EntitlementManager;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 381
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_36

    .line 383
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_36
    move-exception v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    const-string p1, "extraProvisionCallback"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 405
    const-string/jumbo p1, "subId"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 409
    :try_start_20
    iget-object p3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2c

    .line 411
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_2c
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3
.end method

.method public setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    .line 134
    return-void
.end method

.method public setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    .line 148
    return-void
.end method

.method public startProvisioningIfNeeded(IZ)V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    .line 177
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result p2

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public stopProvisioningIfNeeded(I)V
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method
