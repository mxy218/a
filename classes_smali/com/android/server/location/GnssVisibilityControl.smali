.class Lcom/android/server/location/GnssVisibilityControl;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssVisibilityControl$NfwNotification;,
        Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;
    }
.end annotation


# static fields
.field private static final ARRAY_MAP_INITIAL_CAPACITY_PROXY_APPS_STATE:I = 0x5

.field private static final DEBUG:Z

.field private static final LOCATION_ICON_DISPLAY_DURATION_MILLIS:J = 0x1388L

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

.field private static final ON_GPS_ENABLED_CHANGED_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "GnssVisibilityControl"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssVisibilityControl"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGpsEnabled:Z

.field private final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mProxyAppsState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    const-string v0, "GnssVisibilityControl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/location/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .registers 6

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$cq648s0kLZajRjefd-RR_iUZoiQ;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$cq648s0kLZajRjefd-RR_iUZoiQ;-><init>(Lcom/android/server/location/GnssVisibilityControl;)V

    iput-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 101
    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 102
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 103
    const/4 v0, 0x1

    const-string v1, "GnssVisibilityControl"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p3, p0, Lcom/android/server/location/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 106
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 107
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 111
    new-instance p1, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$FLGfeDaxF8J3CE9m-TcOXh5j6ow;

    invoke-direct {p1, p0}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$FLGfeDaxF8J3CE9m-TcOXh5j6ow;-><init>(Lcom/android/server/location/GnssVisibilityControl;)V

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssVisibilityControl;->handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V
    .registers 5

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/location/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    .line 560
    if-eqz p1, :cond_9

    invoke-static {p1, v0}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$302(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    .line 561
    :cond_9
    sget-boolean p1, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz p1, :cond_2b

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Location icon off. Uid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", proxyAppPkgName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GnssVisibilityControl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_2b
    return-void
.end method

.method private static createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 7

    .line 633
    const v0, 0x10402cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    const v1, 0x10402bb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 637
    const v4, 0x108080b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 638
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 639
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 640
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 641
    const v5, 0x106001c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 643
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 644
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 645
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 646
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 647
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 636
    return-object p0
.end method

.method private disableNfwLocationAccess()V
    .registers 2

    .line 280
    sget-object v0, Lcom/android/server/location/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private getLocationPermissionEnabledProxyApps()[Ljava/lang/String;
    .registers 6

    .line 421
    nop

    .line 422
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 423
    invoke-static {v3}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 426
    :cond_21
    goto :goto_d

    .line 428
    :cond_22
    nop

    .line 429
    new-array v0, v2, [Ljava/lang/String;

    .line 431
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 432
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 433
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    invoke-static {v3}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 434
    add-int/lit8 v3, v1, 0x1

    aput-object v4, v0, v1

    move v1, v3

    .line 436
    :cond_52
    goto :goto_2f

    .line 437
    :cond_53
    return-object v0
.end method

.method private getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 380
    :catch_8
    move-exception v0

    .line 381
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssVisibilityControl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleEmergencyNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V
    .registers 6

    .line 596
    nop

    .line 597
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GnssVisibilityControl"

    if-nez v0, :cond_20

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency non-framework location request incorrectly rejected. Notification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move v0, v1

    goto :goto_21

    .line 597
    :cond_20
    const/4 v0, 0x0

    .line 603
    :goto_21
    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v3}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency state mismatch. Device currently not in user initiated emergency session. Notification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move v0, v1

    .line 609
    :cond_3e
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssVisibilityControl;->logEvent(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;Z)V

    .line 611
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$800(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 612
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->postEmergencyLocationUserNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V

    .line 614
    :cond_4a
    return-void
.end method

.method private handleGpsEnabledChanged(Z)V
    .registers 4

    .line 263
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleGpsEnabledChanged, mIsGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGpsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssVisibilityControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_24
    iput-boolean p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 271
    iget-boolean p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez p1, :cond_2e

    .line 272
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->disableNfwLocationAccess()V

    .line 273
    return-void

    .line 276
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private handleInitialize()V
    .registers 1

    .line 153
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->listenForProxyAppsPackageUpdates()V

    .line 154
    return-void
.end method

.method private handleLocationIconTimeout(Ljava/lang/String;)V
    .registers 4

    .line 550
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_13

    .line 552
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/location/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 555
    :cond_13
    return-void
.end method

.method private handleNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V
    .registers 9

    .line 441
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    const-string v1, "GnssVisibilityControl"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-framework location access notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1a
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 444
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleEmergencyNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V

    .line 445
    return-void

    .line 448
    :cond_24
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 450
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v3

    .line 451
    invoke-direct {p0, v2, p1}, Lcom/android/server/location/GnssVisibilityControl;->isPermissionMismatched(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v4

    .line 453
    invoke-direct {p0, p1, v4}, Lcom/android/server/location/GnssVisibilityControl;->logEvent(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;Z)V

    .line 455
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$700(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 463
    if-nez v3, :cond_6a

    .line 464
    sget-boolean v0, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v0, :cond_69

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-framework location request rejected. ProxyAppPackageName field is not set in the notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Number of configured proxy apps: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 467
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_69
    return-void

    .line 472
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyAppPackageName field is not set. AppOps service not notified for notification: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 477
    :cond_7f
    if-nez v2, :cond_a8

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find proxy app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in the value specified for config parameter: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NFW_PROXY_APPS"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". AppOps service not notified for notification: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 485
    :cond_a8
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 486
    if-nez v3, :cond_cb

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not found. AppOps service not notified for notification: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return-void

    .line 492
    :cond_cb
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$800(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 493
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v2, p1, v5, v0}, Lcom/android/server/location/GnssVisibilityControl;->showLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V

    .line 494
    iget-object v5, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x1

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6, v3, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 499
    :cond_de
    if-eqz v4, :cond_11e

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission mismatch. Proxy app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " location permission is set to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-static {v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " and GNSS HAL enabled is set to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " but GNSS non-framework location access response type is "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$900(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for notification: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_11e
    return-void
.end method

.method private handlePermissionsChanged(I)V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 354
    return-void

    .line 357
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 359
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 360
    if-eqz v3, :cond_13

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, p1, :cond_30

    .line 361
    goto :goto_13

    .line 364
    :cond_30
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result p1

    .line 366
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 367
    invoke-static {v0}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq p1, v1, :cond_64

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {v0, p1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$102(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    .line 371
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 373
    :cond_64
    return-void

    .line 375
    :cond_65
    return-void
.end method

.method private handleProxyAppPackageUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 186
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 187
    if-nez v0, :cond_b

    .line 188
    return-void

    .line 191
    :cond_b
    sget-boolean v1, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    const-string v2, "Proxy app "

    const-string v3, "GnssVisibilityControl"

    if-eqz v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " package changed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result p2

    .line 193
    invoke-static {v0}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v1

    if-eq v1, p2, :cond_57

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " location permission changed. IsLocationPermissionEnabled: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v0, p2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$102(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    .line 198
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 200
    :cond_57
    return-void
.end method

.method private handleUpdateProxyApps(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->isProxyAppListUpdated(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 204
    return-void

    .line 207
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 209
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 210
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->resetProxyAppsState()V

    .line 212
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 214
    :cond_22
    return-void

    .line 217
    :cond_23
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 218
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mOnPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    goto :goto_36

    .line 220
    :cond_33
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->resetProxyAppsState()V

    .line 223
    :goto_36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    new-instance v1, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;-><init>(ZLcom/android/server/location/GnssVisibilityControl$1;)V

    .line 226
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    goto :goto_3a

    .line 229
    :cond_56
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 230
    return-void
.end method

.method private hasLocationPermission(Ljava/lang/String;)Z
    .registers 4

    .line 396
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isPermissionMismatched(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z
    .registers 4

    .line 513
    invoke-static {p2}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result p2

    .line 514
    if-eqz p1, :cond_14

    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v0, :cond_b

    goto :goto_14

    .line 515
    :cond_b
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$100(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result p1

    if-eq p1, p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 514
    :cond_14
    :goto_14
    return p2
.end method

.method private isProxyAppInstalled(Ljava/lang/String;)Z
    .registers 2

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 392
    if-eqz p1, :cond_c

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isProxyAppListUpdated(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_e

    .line 251
    return v2

    .line 254
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 256
    return v2

    .line 258
    :cond_27
    goto :goto_12

    .line 259
    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$FLGfeDaxF8J3CE9m-TcOXh5j6ow(Lcom/android/server/location/GnssVisibilityControl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->handleInitialize()V

    return-void
.end method

.method private listenForProxyAppsPackageUpdates()V
    .registers 7

    .line 158
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/GnssVisibilityControl$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssVisibilityControl$1;-><init>(Lcom/android/server/location/GnssVisibilityControl;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    return-void
.end method

.method private logEvent(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;Z)V
    .registers 13

    .line 651
    nop

    .line 652
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1000(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B

    move-result v2

    .line 654
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1100(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1200(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B

    move-result v4

    .line 656
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1300(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;

    move-result-object v5

    .line 657
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1400(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)B

    move-result v6

    .line 658
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1500(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v7

    .line 659
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;->access$1600(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)Z

    move-result v8

    .line 651
    const/16 v0, 0x83

    move v9, p2

    invoke-static/range {v0 .. v9}, Landroid/util/StatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)I

    .line 661
    return-void
.end method

.method private native native_enable_nfw_location_access([Ljava/lang/String;)Z
.end method

.method private postEmergencyLocationUserNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V
    .registers 6

    .line 618
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 619
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 620
    if-nez v0, :cond_24

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not notify user of emergency location request. Notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssVisibilityControl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 626
    :cond_24
    const/4 p1, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 627
    invoke-static {v2}, Lcom/android/server/location/GnssVisibilityControl;->createEmergencyLocationUserNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 626
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 628
    return-void
.end method

.method private resetProxyAppsState()V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;

    .line 236
    invoke-static {v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$300(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 237
    goto :goto_a

    .line 240
    :cond_23
    iget-object v3, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 242
    if-eqz v3, :cond_3f

    .line 243
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/location/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 245
    :cond_3f
    goto :goto_a

    .line 246
    :cond_40
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 247
    return-void
.end method

.method private runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    .line 674
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$ezKd0QctWKgyrEvPFQUXWNBxlNg;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$ezKd0QctWKgyrEvPFQUXWNBxlNg;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .registers 5

    .line 667
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 668
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->runEventAndReleaseWakeLock(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 669
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 671
    :cond_19
    return-void
.end method

.method private sendHighPowerMonitoringBroadcast()V
    .registers 4

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/server/location/GnssVisibilityControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 593
    return-void
.end method

.method private setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V
    .registers 5

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssVisibilityControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->native_enable_nfw_location_access([Ljava/lang/String;)Z

    move-result p1

    .line 413
    if-nez p1, :cond_34

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update non-framework location access proxy apps in the GNSS HAL to: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_34
    return-void
.end method

.method private shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z
    .registers 3

    .line 387
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->isProxyAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->hasLocationPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private showLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Lcom/android/server/location/GnssVisibilityControl$NfwNotification;ILjava/lang/String;)V
    .registers 10

    .line 522
    invoke-static {p1}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$300(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;)Z

    move-result v0

    .line 523
    const-string v1, "GnssVisibilityControl"

    if-nez v0, :cond_28

    .line 524
    const/4 v2, 0x1

    invoke-direct {p0, v2, p3, p4}, Lcom/android/server/location/GnssVisibilityControl;->updateLocationIcon(ZILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 525
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to show Location icon for notification: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void

    .line 528
    :cond_24
    invoke-static {p1, v2}, Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;->access$302(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;Z)Z

    goto :goto_2d

    .line 531
    :cond_28
    iget-object v2, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 535
    :goto_2d
    sget-boolean v2, Lcom/android/server/location/GnssVisibilityControl;->DEBUG:Z

    if-eqz v2, :cond_5c

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location icon on. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_40

    const-string v0, "Extending"

    goto :goto_42

    :cond_40
    const-string v0, "Setting"

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " icon display timer. Uid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", proxyAppPkgName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_5c
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;

    invoke-direct {v2, p0, p4}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$3hQO4NR8YgRdTo_ZUTbEKP4-TIU;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    if-nez v0, :cond_82

    .line 541
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/location/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to show location icon for the full duration for notification: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_82
    return-void
.end method

.method private updateLocationIcon(ZILjava/lang/String;)Z
    .registers 7

    .line 568
    const/16 v0, 0x2a

    const/16 v1, 0x29

    if-eqz p1, :cond_1e

    .line 571
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    .line 573
    return v2

    .line 575
    :cond_10
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_28

    .line 577
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 578
    return v2

    .line 581
    :cond_1e
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 584
    :cond_28
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->sendHighPowerMonitoringBroadcast()V

    .line 585
    const/4 p1, 0x1

    return p1
.end method

.method private updateNfwLocationAccessProxyAppsInGnssHal()V
    .registers 2

    .line 401
    iget-boolean v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mIsGpsEnabled:Z

    if-nez v0, :cond_5

    .line 402
    return-void

    .line 404
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$GnssVisibilityControl(I)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handlePermissionsChanged(I)V

    return-void
.end method

.method public synthetic lambda$new$1$GnssVisibilityControl(I)V
    .registers 3

    .line 98
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$nmfWkQtbYmj8KoGmFncGZnuzWS0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$nmfWkQtbYmj8KoGmFncGZnuzWS0;-><init>(Lcom/android/server/location/GnssVisibilityControl;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$onConfigurationUpdated$4$GnssVisibilityControl(Ljava/util/List;)V
    .registers 2

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleUpdateProxyApps(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$onGpsEnabledChanged$2$GnssVisibilityControl(Z)V
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleGpsEnabledChanged(Z)V

    return-void
.end method

.method public synthetic lambda$reportNfwNotification$3$GnssVisibilityControl(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 20

    .line 141
    new-instance v10, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/GnssVisibilityControl$1;)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/location/GnssVisibilityControl;->handleNfwNotification(Lcom/android/server/location/GnssVisibilityControl$NfwNotification;)V

    return-void
.end method

.method public synthetic lambda$runEventAndReleaseWakeLock$6$GnssVisibilityControl(Ljava/lang/Runnable;)V
    .registers 3

    .line 676
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 678
    iget-object p1, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 679
    nop

    .line 680
    return-void

    .line 678
    :catchall_a
    move-exception p1

    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1
.end method

.method public synthetic lambda$showLocationIcon$5$GnssVisibilityControl(Ljava/lang/String;)V
    .registers 2

    .line 539
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssVisibilityControl;->handleLocationIconTimeout(Ljava/lang/String;)V

    return-void
.end method

.method onConfigurationUpdated(Lcom/android/server/location/GnssConfiguration;)V
    .registers 3

    .line 148
    invoke-virtual {p1}, Lcom/android/server/location/GnssConfiguration;->getProxyApps()Ljava/util/List;

    move-result-object p1

    .line 149
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$YLPk0FuuEUrv7lfRNYvhNb6uKic;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$YLPk0FuuEUrv7lfRNYvhNb6uKic;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method onGpsEnabledChanged(Z)V
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/android/server/location/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$WNe_V-oiVnZtOTinPJBWWgUSctQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$WNe_V-oiVnZtOTinPJBWWgUSctQ;-><init>(Lcom/android/server/location/GnssVisibilityControl;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 125
    return-void

    .line 132
    :cond_10
    if-nez p1, :cond_19

    .line 133
    const-string p1, "GnssVisibilityControl"

    const-string v0, "Native call to disable non-framework location access in GNSS HAL may get executed after native_cleanup()."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_19
    return-void
.end method

.method reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 20

    .line 141
    new-instance v10, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;-><init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/android/server/location/GnssVisibilityControl;->runOnHandler(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
