.class public Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "SecurityControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentVpns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mHasCACerts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVpnUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "SecurityController"

    const/4 v1, 0x3

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    .line 71
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xf

    .line 72
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 73
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xe

    .line 74
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "background_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .registers 11

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    .line 392
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 410
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBgHandler:Landroid/os/Handler;

    const-string v0, "device_policy"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "connectivity"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "user"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 124
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 126
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.security.action.TRUST_STORE_CHANGED"

    .line 127
    invoke-virtual {v4, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 132
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object p2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->REQUEST:Landroid/net/NetworkRequest;

    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 133
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->onUserSwitched(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 66
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->updateState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->refreshCACerts()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/os/Handler;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/util/ArrayMap;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private fireCallbacks()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .line 339
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;->onStateChanged()V

    goto :goto_9

    .line 341
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 5

    .line 321
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_d

    .line 322
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->legacy_vpn_name:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_d
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 327
    :try_start_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 329
    invoke-static {p0, p1}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not present"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecurityController"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getPackageNameForVpnConfig(Lcom/android/internal/net/VpnConfig;)Ljava/lang/String;
    .registers 2

    .line 371
    iget-boolean p0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 374
    :cond_6
    iget-object p0, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    return-object p0
.end method

.method private getWorkProfileUserId(I)I
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 201
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 202
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_1f
    const/16 p0, -0x2710

    return p0
.end method

.method private isVpnPackageBranded(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 380
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 382
    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_1f

    .line 385
    :cond_16
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "com.android.systemui.IS_BRANDED"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_1f

    return p0

    :catch_1f
    :cond_1f
    :goto_1f
    return v0
.end method

.method private refreshCACerts()V
    .registers 6

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_2e

    .line 317
    new-instance v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    new-array p0, v1, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2e
    return-void
.end method

.method private updateState()V
    .registers 7

    .line 346
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 348
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 349
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    if-nez v3, :cond_26

    goto :goto_f

    .line 352
    :cond_26
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v4, :cond_3a

    .line 355
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 356
    iget v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3a

    goto :goto_f

    .line 360
    :cond_3a
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3f} :catch_43

    goto :goto_f

    .line 367
    :cond_40
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    return-void

    :catch_43
    move-exception p0

    const-string v0, "SecurityController"

    const-string v1, "Unable to list active VPNs"

    .line 364
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_2f

    .line 294
    :try_start_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2f

    .line 295
    :cond_e
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_28
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    monitor-exit v0

    return-void

    .line 294
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    .line 297
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "SecurityController state:"

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mCurrentVpns={"

    .line 139
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 140
    :goto_b
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_38

    if-lez p1, :cond_1a

    const-string p3, ", "

    .line 142
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    :cond_1a
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(I)V

    const/16 p3, 0x3d

    .line 145
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(C)V

    .line 146
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/net/VpnConfig;

    iget-object p3, p3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_38
    const-string/jumbo p0, "}"

    .line 148
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryVpnName()Ljava/lang/String;
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    if-eqz v0, :cond_18

    .line 193
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWorkProfileOrganizationName()Ljava/lang/CharSequence;
    .registers 3

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getWorkProfileVpnName()Ljava/lang/String;
    .registers 4

    .line 215
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    return-object v1

    .line 217
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnConfig;

    if-eqz v2, :cond_1f

    .line 219
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v1
.end method

.method public hasCACertInCurrentUser()Z
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_18

    .line 271
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public hasCACertInWorkProfile()Z
    .registers 4

    .line 276
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    return v1

    .line 278
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mHasCACerts:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_21

    .line 279
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method public hasWorkProfile()Z
    .registers 2

    .line 210
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getWorkProfileUserId(I)I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isDeviceManaged()Z
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result p0

    return p0
.end method

.method public isNetworkLoggingEnabled()Z
    .registers 2

    .line 226
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isVpnBranded()Z
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 260
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->getPackageNameForVpnConfig(Lcom/android/internal/net/VpnConfig;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    return v1

    .line 265
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isVpnPackageBranded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVpnEnabled()Z
    .registers 7

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_28

    aget v4, v0, v3

    .line 238
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentVpns:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnConfig;

    iget-boolean v4, v4, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v4, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_28
    return v2
.end method

.method public onUserSwitched(I)V
    .registers 3

    .line 302
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 306
    iget p1, p1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    goto :goto_17

    .line 308
    :cond_13
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCurrentUserId:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mVpnUserId:I

    .line 310
    :goto_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->refreshCACerts()V

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .registers 6

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p1, :cond_7

    .line 285
    :try_start_5
    monitor-exit v0

    return-void

    .line 286
    :cond_7
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "SecurityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_21
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 65
    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    return-void
.end method
