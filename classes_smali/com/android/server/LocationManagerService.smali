.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LinkedListener;,
        Lcom/android/server/LocationManagerService$LinkedListenerBase;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$MockLocationProvider;,
        Lcom/android/server/LocationManagerService$LocationProvider;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field public static final D:Z

.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_LAST_LOCATION_MAX_AGE_MS:J = 0x124f80L

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatterySaverMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private mExtraLocationControllerPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mExtraLocationControllerPackageEnabled:Z

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IBatchedLocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssBatchingInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

.field private mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private final mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 146
    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    .line 186
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 277
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 227
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 239
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 241
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 243
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 246
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 249
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    .line 254
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 255
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 266
    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 278
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 280
    new-instance p1, Lcom/android/server/LocationUsageLogger;

    invoke-direct {p1}, Lcom/android/server/LocationUsageLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    .line 284
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 286
    new-instance v0, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 289
    new-instance v0, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onScreenStateChangedLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;)I
    .registers 1

    .line 144
    iget p0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onAppOpChangedLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;I)Z
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;)Z
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;Z)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/LocationManagerService;II)I
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static synthetic access$4200(I)Z
    .registers 1

    .line 144
    invoke-static {p0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleIntervalChangedLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService;)V
    .registers 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onPackageDisappearedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;I)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    return-void
.end method

.method private addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "TT",
            "Listener;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "TT",
            "Listener;",
            ">;)Z"
        }
    .end annotation

    .line 2948
    move-object/from16 v0, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8a

    if-nez v11, :cond_11

    goto/16 :goto_8a

    .line 2952
    :cond_11
    new-instance v12, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2953
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v12, v1, v3, v10}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    .line 2954
    new-instance v1, Lcom/android/server/LocationManagerService$LinkedListener;

    const/4 v8, 0x0

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    .line 2956
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2957
    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2958
    :try_start_33
    invoke-direct {v0, v3, v1}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 2959
    monitor-exit v13

    return v2

    .line 2962
    :cond_3b
    move-object/from16 v2, p5

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_87

    .line 2965
    :try_start_44
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v11, v1, :cond_4c

    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v11, v1, :cond_65

    .line 2967
    :cond_4c
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v2, 0x0

    .line 2969
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v11, v3, :cond_55

    .line 2970
    const/4 v3, 0x2

    goto :goto_56

    .line 2971
    :cond_55
    const/4 v3, 0x3

    :goto_56
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2977
    invoke-virtual {v4, v10}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v9

    .line 2967
    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2979
    :cond_65
    invoke-direct {v0, v12}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_77

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2981
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 2980
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2982
    :cond_77
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    :try_end_7c
    .catchall {:try_start_44 .. :try_end_7c} :catchall_82

    .line 2984
    :cond_7c
    const/4 v0, 0x1

    .line 2986
    :try_start_7d
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    .line 2984
    return v0

    .line 2986
    :catchall_82
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2988
    :catchall_87
    move-exception v0

    monitor-exit v13
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_87

    throw v0

    .line 2949
    :cond_8a
    :goto_8a
    return v2
.end method

.method private addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1840
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1842
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    .line 1845
    invoke-virtual {p1, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1846
    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2126
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2127
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    .line 2128
    new-instance v4, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v4}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 2132
    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19e

    if-eqz v2, :cond_19e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_19e

    .line 2135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2137
    :try_start_2e
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2138
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "location_background_throttle_interval_ms"

    const-wide/32 v9, 0x1b7740

    .line 2137
    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_199

    .line 2142
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2143
    nop

    .line 2145
    iget v5, v0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v6, 0x3

    const/4 v10, 0x1

    if-ne v5, v6, :cond_49

    move v5, v10

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    .line 2147
    :goto_4a
    iget v6, v0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v11, 0x4

    if-ne v6, v11, :cond_59

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2150
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_59

    move v6, v10

    goto :goto_5a

    :cond_59
    const/4 v6, 0x0

    .line 2152
    :goto_5a
    iput-boolean v10, v4, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 2153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_121

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2154
    nop

    .line 2155
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v13, v13, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 2154
    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v13

    if-nez v13, :cond_80

    .line 2156
    goto :goto_60

    .line 2158
    :cond_80
    nop

    .line 2159
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v13, v13, Lcom/android/server/location/CallerIdentity;->mPid:I

    .line 2160
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v14, v14, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2161
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2162
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;)I

    move-result v9

    .line 2158
    invoke-direct {v0, v13, v14, v15, v9}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_a8

    .line 2163
    goto :goto_60

    .line 2165
    :cond_a8
    if-nez v6, :cond_b5

    if-eqz v5, :cond_b3

    .line 2166
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1300(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v9

    if-nez v9, :cond_b3

    goto :goto_b5

    :cond_b3
    const/4 v9, 0x0

    goto :goto_b6

    :cond_b5
    :goto_b5
    move v9, v10

    .line 2167
    :goto_b6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v13

    if-eqz v13, :cond_be

    if-eqz v9, :cond_c9

    .line 2168
    :cond_be
    invoke-direct {v0, v12}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v9

    if-eqz v9, :cond_11e

    .line 2169
    iput-boolean v10, v4, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    .line 2170
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 2176
    :cond_c9
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v9

    .line 2177
    invoke-virtual {v9}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v13

    .line 2181
    iget-boolean v15, v4, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-nez v15, :cond_fc

    .line 2182
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 2181
    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v15

    if-nez v15, :cond_fc

    .line 2183
    invoke-static {v12}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1300(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v15

    if-nez v15, :cond_eb

    .line 2184
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2186
    :cond_eb
    invoke-virtual {v9}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v15

    cmp-long v15, v13, v15

    if-eqz v15, :cond_fc

    .line 2187
    new-instance v15, Landroid/location/LocationRequest;

    invoke-direct {v15, v9}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 2188
    invoke-virtual {v15, v13, v14}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-object v9, v15

    .line 2192
    :cond_fc
    iput-object v9, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2193
    iget-object v12, v4, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2194
    invoke-virtual {v9}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v9

    if-nez v9, :cond_10d

    .line 2195
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    goto :goto_10e

    .line 2194
    :cond_10d
    const/4 v9, 0x0

    .line 2197
    :goto_10e
    iget-wide v9, v4, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v9, v13, v9

    if-gez v9, :cond_11a

    .line 2198
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 2199
    iput-wide v13, v4, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_11b

    .line 2197
    :cond_11a
    const/4 v9, 0x1

    .line 2201
    :goto_11b
    move v10, v9

    goto/16 :goto_60

    .line 2168
    :cond_11e
    move v9, v10

    goto/16 :goto_60

    .line 2203
    :cond_121
    iget-boolean v5, v4, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v5, :cond_19e

    .line 2209
    iget-wide v5, v4, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    .line 2210
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_134
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2211
    nop

    .line 2212
    invoke-static {v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 2211
    invoke-direct {v0, v8}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v8

    if-eqz v8, :cond_198

    .line 2213
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2217
    iget-object v9, v4, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15e

    .line 2218
    goto :goto_134

    .line 2221
    :cond_15e
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-gtz v8, :cond_198

    .line 2222
    invoke-static {v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v8, :cond_184

    .line 2223
    invoke-static {v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v8

    if-eqz v8, :cond_184

    .line 2224
    invoke-static {v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v7}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_198

    .line 2228
    :cond_184
    nop

    .line 2229
    invoke-static {v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2230
    invoke-static {v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2228
    invoke-virtual {v3, v8, v7}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 2234
    :cond_198
    :goto_198
    goto :goto_134

    .line 2142
    :catchall_199
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2238
    :cond_19e
    invoke-virtual {v1, v4, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2239
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2118
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object p1

    .line 2119
    if-eqz p1, :cond_9

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 2122
    :cond_9
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .registers 5

    .line 3516
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private checkLocationAccess(IILjava/lang/String;I)Z
    .registers 8

    .line 1990
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1991
    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 1992
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_10

    .line 1993
    return v1

    .line 1997
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result p1

    if-lt p1, p4, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .registers 7

    .line 2479
    const-string v0, "invalid package name: "

    if-eqz p1, :cond_4c

    .line 2482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2483
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2484
    if-eqz v2, :cond_35

    .line 2487
    array-length v1, v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_20

    aget-object v4, v2, v3

    .line 2488
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return-void

    .line 2487
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2490
    :cond_20
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2485
    :cond_35
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2480
    :cond_4c
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .registers 3

    .line 1895
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 1898
    return-void

    .line 1896
    :cond_4
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1933
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v0

    .line 1934
    if-ge p1, v0, :cond_5e

    .line 1935
    const/4 p1, 0x1

    const-string v1, "\""

    if-eq v0, p1, :cond_44

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2a

    .line 1943
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient permission for \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" location provider."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1937
    :cond_2a
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" location provider requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1940
    :cond_44
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" location provider requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1947
    :cond_5e
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;
    .registers 7

    .line 2449
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 2450
    if-nez p3, :cond_b

    .line 2452
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    .line 2454
    :cond_b
    const/4 p3, 0x2

    if-ge p2, p3, :cond_40

    .line 2455
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result p2

    const/16 p3, 0x64

    if-eq p2, p3, :cond_21

    const/16 p3, 0xcb

    if-eq p2, p3, :cond_1b

    goto :goto_27

    .line 2460
    :cond_1b
    const/16 p2, 0xc9

    invoke-virtual {v0, p2}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_27

    .line 2457
    :cond_21
    const/16 p2, 0x66

    invoke-virtual {v0, p2}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 2458
    nop

    .line 2464
    :goto_27
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide p2

    const-wide/32 v1, 0x927c0

    cmp-long p2, p2, v1

    if-gez p2, :cond_35

    .line 2465
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2467
    :cond_35
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide p2

    cmp-long p2, p2, v1

    if-gez p2, :cond_40

    .line 2468
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2472
    :cond_40
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide p2

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    cmp-long p2, p2, v1

    if-lez p2, :cond_53

    .line 2473
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2475
    :cond_53
    return-object v0
.end method

.method private dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/LocationManagerService$LinkedListenerBase;",
            ">;)V"
        }
    .end annotation

    .line 3786
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 3787
    iget-object v0, v0, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 3788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3790
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3788
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3791
    goto :goto_8

    .line 3792
    :cond_4b
    return-void
.end method

.method private ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 695
    const-string v0, "LocationManagerService"

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 696
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 697
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 699
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v6, 0x80

    invoke-virtual {v1, v3, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 702
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 703
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 709
    const/16 v7, 0x40

    :try_start_39
    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 710
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7, p1}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " resolves service "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", but has wrong signature, ignoring"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_61} :catch_103

    .line 713
    goto :goto_27

    .line 718
    :cond_62
    nop

    .line 721
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_7e

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found fused provider without metadata: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    goto :goto_27

    .line 726
    :cond_7e
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v8, -0x1

    const-string/jumbo v9, "serviceVersion"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 728
    if-nez v7, :cond_e9

    .line 732
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_b0

    .line 733
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fallback candidate not in /system: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 739
    :cond_b0
    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_d0

    .line 741
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_27

    .line 742
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fallback candidate not signed the same as system: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 749
    :cond_d0
    sget-boolean p1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz p1, :cond_e8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found fallback provider: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_e8
    return-void

    .line 752
    :cond_e9
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_101

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fallback candidate not version 0: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_101
    goto/16 :goto_27

    .line 715
    :catch_103
    move-exception v5

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    goto/16 :goto_27

    .line 756
    :cond_11a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static foregroundAsString(Z)Ljava/lang/String;
    .registers 1

    .line 633
    if-eqz p0, :cond_5

    const-string p0, "foreground"

    goto :goto_7

    :cond_5
    const-string p0, "background"

    :goto_7
    return-object p0
.end method

.method private getAllowedResolutionLevel(II)I
    .registers 5

    .line 1879
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    .line 1881
    const/4 p1, 0x2

    return p1

    .line 1882
    :cond_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_18

    .line 1884
    const/4 p1, 0x1

    return p1

    .line 1886
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private getCallerAllowedResolutionLevel()I
    .registers 3

    .line 1891
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1858
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 1859
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1860
    return-object v1

    .line 1862
    :cond_1d
    goto :goto_6

    .line 1864
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1902
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_5a

    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5a

    .line 1905
    :cond_13
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_59

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_59

    .line 1909
    :cond_26
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 1910
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 1911
    goto :goto_2c

    .line 1914
    :cond_43
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .line 1915
    if-eqz v3, :cond_57

    .line 1916
    iget-boolean v4, v3, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v4, :cond_4e

    .line 1918
    return v1

    .line 1919
    :cond_4e
    iget-boolean v4, v3, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v4, :cond_56

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v3, :cond_57

    .line 1921
    :cond_56
    return v2

    .line 1924
    :cond_57
    goto :goto_2c

    .line 1927
    :cond_58
    return v1

    .line 1907
    :cond_59
    :goto_59
    return v2

    .line 1904
    :cond_5a
    :goto_5a
    return v1
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2430
    move-object v10, p0

    move-object v11, p1

    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2431
    if-nez v0, :cond_25

    .line 2432
    new-instance v12, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    .line 2434
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 2431
    :cond_25
    move-object v12, v0

    .line 2436
    :goto_26
    return-object v12
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2413
    move-object v10, p0

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2414
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2415
    if-nez v0, :cond_38

    .line 2416
    new-instance v12, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    .line 2418
    invoke-virtual {v12}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2420
    const/4 v0, 0x0

    return-object v0

    .line 2422
    :cond_32
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 2415
    :cond_38
    move-object v12, v0

    .line 2424
    :goto_39
    return-object v12
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .registers 3

    .line 1868
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    .line 1874
    const/4 p1, 0x0

    return-object p1

    .line 1870
    :cond_8
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    return-object p1

    .line 1872
    :cond_b
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    return-object p1
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3288
    return-void

    .line 3290
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isComplete()Z

    move-result v3

    const-string v4, "LocationManagerService"

    if-nez v3, :cond_2c

    .line 3291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping incomplete location: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    return-void

    .line 3297
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3298
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isPassiveLocked()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 3299
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 3303
    :cond_3d
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "incoming location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    :cond_55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3305
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 3306
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 3310
    :cond_66
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 3311
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3310
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 3312
    if-nez v3, :cond_88

    .line 3313
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3315
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 3316
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    :cond_88
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 3320
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 3321
    const-wide v9, 0x8bb2c97000L

    cmp-long v7, v7, v9

    if-lez v7, :cond_9d

    .line 3322
    invoke-virtual {v3, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3327
    :cond_9d
    nop

    .line 3328
    const-string/jumbo v7, "noGPSLocation"

    invoke-virtual {v3, v7}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 3331
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3332
    if-eqz v7, :cond_2b3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_bb

    goto/16 :goto_2b3

    .line 3335
    :cond_bb
    nop

    .line 3336
    const/4 v8, 0x0

    if-eqz v3, :cond_c6

    .line 3337
    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v9, v3}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v3

    goto :goto_c7

    .line 3336
    :cond_c6
    move-object v3, v8

    .line 3340
    :goto_c7
    nop

    .line 3341
    nop

    .line 3344
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v8

    :goto_ce
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_282

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3345
    invoke-static {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v12

    .line 3346
    nop

    .line 3348
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v14

    if-nez v14, :cond_ed

    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v14

    if-nez v14, :cond_ed

    .line 3349
    goto/16 :goto_1be

    .line 3352
    :cond_ed
    iget-object v14, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v14, v14, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 3353
    invoke-direct {v0, v14}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v15

    if-nez v15, :cond_13b

    iget-object v15, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3354
    invoke-virtual {v0, v15}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13b

    .line 3355
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_1be

    .line 3356
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping loc update for background user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (current user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v11, v11, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1be

    .line 3363
    :cond_13b
    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v15, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_165

    .line 3364
    sget-boolean v10, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v10, :cond_1be

    .line 3365
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping loc update for blacklisted app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v11, v11, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1be

    .line 3372
    :cond_165
    invoke-static {v12}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;)I

    move-result v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_16e

    .line 3373
    move-object v14, v3

    goto :goto_16f

    .line 3375
    :cond_16e
    move-object v14, v1

    .line 3377
    :goto_16f
    if-eqz v14, :cond_1eb

    .line 3378
    invoke-static {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v13

    .line 3379
    if-eqz v13, :cond_17d

    .line 3380
    invoke-static {v14, v13, v10, v5, v6}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v17

    if-eqz v17, :cond_1eb

    .line 3381
    :cond_17d
    if-nez v13, :cond_188

    .line 3382
    new-instance v13, Landroid/location/Location;

    invoke-direct {v13, v14}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3383
    invoke-static {v10, v13}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5002(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_18b

    .line 3385
    :cond_188
    invoke-virtual {v13, v14}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3390
    :goto_18b
    iget-object v13, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v13, v13, Lcom/android/server/location/CallerIdentity;->mPid:I

    iget-object v15, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    iget-object v11, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v11, v11, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3394
    invoke-static {v12}, Lcom/android/server/LocationManagerService$Receiver;->access$3900(Lcom/android/server/LocationManagerService$Receiver;)I

    move-result v1

    .line 3390
    invoke-direct {v0, v13, v15, v11, v1}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1c2

    .line 3395
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_1be

    .line 3396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "skipping loc update for no op app: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v10, v10, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    :cond_1be
    :goto_1be
    move-object/from16 v1, p1

    goto/16 :goto_ce

    .line 3401
    :cond_1c2
    invoke-virtual {v12, v14}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_1df

    .line 3402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException calling onLocationChanged on "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    const/16 v16, 0x1

    goto :goto_1e1

    .line 3401
    :cond_1df
    const/16 v16, 0x0

    .line 3406
    :goto_1e1
    invoke-static {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    move/from16 v11, v16

    goto :goto_1ec

    .line 3412
    :cond_1eb
    const/4 v11, 0x0

    :goto_1ec
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v13, "location_disable_status_callbacks"

    const/4 v14, 0x1

    invoke-static {v1, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_246

    .line 3414
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusUpdateTimeLocked()J

    move-result-wide v13

    .line 3415
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3416
    invoke-virtual {v2, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusLocked(Landroid/os/Bundle;)I

    move-result v15

    .line 3418
    invoke-static {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;)J

    move-result-wide v19

    .line 3419
    cmp-long v16, v13, v19

    if-lez v16, :cond_243

    const-wide/16 v21, 0x0

    cmp-long v16, v19, v21

    if-nez v16, :cond_21c

    move-object/from16 v16, v3

    const/4 v3, 0x2

    if-eq v15, v3, :cond_248

    goto :goto_21e

    :cond_21c
    move-object/from16 v16, v3

    .line 3422
    :goto_21e
    invoke-static {v10, v13, v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5102(Lcom/android/server/LocationManagerService$UpdateRecord;J)J

    .line 3423
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v15, v1}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_248

    .line 3424
    nop

    .line 3425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling onStatusChanged on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    goto :goto_24a

    .line 3419
    :cond_243
    move-object/from16 v16, v3

    goto :goto_248

    .line 3412
    :cond_246
    move-object/from16 v16, v3

    .line 3431
    :cond_248
    :goto_248
    move/from16 v18, v11

    :goto_24a
    invoke-static {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v1

    if-lez v1, :cond_260

    invoke-static {v10}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v13

    cmp-long v1, v13, v5

    if-gez v1, :cond_26a

    .line 3432
    :cond_260
    if-nez v9, :cond_267

    .line 3433
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3435
    :cond_267
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3438
    :cond_26a
    if-eqz v18, :cond_27c

    .line 3439
    if-nez v8, :cond_273

    .line 3440
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3442
    :cond_273
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27c

    .line 3443
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3446
    :cond_27c
    move-object/from16 v1, p1

    move-object/from16 v3, v16

    goto/16 :goto_ce

    .line 3449
    :cond_282
    if-eqz v8, :cond_298

    .line 3450
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_288
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_298

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3451
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 3452
    goto :goto_288

    .line 3454
    :cond_298
    if-eqz v9, :cond_2b2

    .line 3455
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3456
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 3457
    goto :goto_29e

    .line 3458
    :cond_2af
    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3460
    :cond_2b2
    return-void

    .line 3332
    :cond_2b3
    :goto_2b3
    return-void
.end method

.method private hasGnssPermissions(Ljava/lang/String;)Z
    .registers 8

    .line 1714
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1715
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    .line 1716
    const-string v2, "gps"

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 1720
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_26

    .line 1724
    :try_start_18
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    .line 1726
    :try_start_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1724
    return p1

    .line 1726
    :catchall_21
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1728
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw p1
.end method

.method private initializeLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 305
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 306
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 307
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 308
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 310
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 311
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 312
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 313
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 316
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeProvidersLocked()V

    .line 319
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;-><init>(Lcom/android/server/LocationManagerService;)V

    const/16 v3, 0x7d

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    const-string v1, "location_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/LocationManagerService$2;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 356
    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/LocationManagerService$3;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 366
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 377
    const-string v1, "location_background_throttle_interval_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/LocationManagerService$4;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 376
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 387
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    const-string v1, "location_background_throttle_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/LocationManagerService$5;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 387
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 399
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    const-string v1, "location_ignore_settings_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/server/LocationManagerService$6;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 399
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 411
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 412
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 413
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 424
    new-instance v0, Lcom/android/server/LocationManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;)V

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 431
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/LocationManagerService$7;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 433
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 434
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/LocationManagerService$8;

    invoke-direct {v5, p0}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 468
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 469
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    .line 472
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    .line 473
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    .line 474
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 475
    return-void
.end method

.method private initializeProvidersLocked()V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 767
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/LocationManagerService$LocationProvider;

    const/4 v2, 0x0

    const-string/jumbo v3, "passive"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 768
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 769
    new-instance v3, Lcom/android/server/location/PassiveProvider;

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 770
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 772
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7f

    .line 774
    new-instance v1, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v4, "gps"

    invoke-direct {v1, v0, v4, v3, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    .line 775
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 778
    new-instance v4, Lcom/android/server/location/GnssLocationProvider;

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 780
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V

    .line 781
    invoke-virtual {v1, v4}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 783
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    .line 784
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 785
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    .line 786
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    .line 787
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 788
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 789
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 790
    nop

    .line 791
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    .line 792
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 793
    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 807
    :cond_7f
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 808
    const v4, 0x107004e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 810
    sget-boolean v6, Lcom/android/server/LocationManagerService;->D:Z

    const-string v7, "LocationManagerService"

    if-eqz v6, :cond_aa

    .line 811
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "certificates for location providers pulled from: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 811
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_aa
    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V

    .line 818
    new-instance v5, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string/jumbo v6, "network"

    invoke-direct {v5, v0, v6, v3, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    .line 819
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1110079

    const v12, 0x1040196

    const v13, 0x107004e

    const-string v10, "com.android.location.service.v3.NetworkLocationProvider"

    move-object v9, v5

    invoke-static/range {v8 .. v13}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v6

    .line 826
    if-eqz v6, :cond_d5

    .line 827
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 829
    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_db

    .line 831
    :cond_d5
    const-string/jumbo v5, "no network location provider found"

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :goto_db
    new-instance v5, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v6, "fused"

    invoke-direct {v5, v0, v6, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 836
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1110071

    const v12, 0x104017c

    const v13, 0x107004e

    const-string v10, "com.android.location.service.FusedLocationProvider"

    move-object v9, v5

    invoke-static/range {v8 .. v13}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v6

    .line 843
    if-eqz v6, :cond_102

    .line 844
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 846
    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_10f

    .line 848
    :cond_102
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Location service needs a fused location provider"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "no fused location provider found"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    :goto_10f
    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1110072

    const v8, 0x104017d

    invoke-static {v5, v6, v8, v4}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;III)Lcom/android/server/location/GeocoderProxy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 857
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v4, :cond_127

    .line 858
    const-string/jumbo v4, "no geocoder provider found"

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_127
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1110073

    const v10, 0x104017e

    const v11, 0x107004e

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v4

    .line 868
    if-nez v4, :cond_140

    .line 869
    const-string v4, "Unable to bind FLP Geofence proxy."

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_140
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v9

    .line 874
    nop

    .line 875
    if-eqz v9, :cond_14f

    .line 876
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v4

    move-object v10, v4

    goto :goto_155

    .line 878
    :cond_14f
    const-string v4, "Hardware Activity-Recognition not supported."

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v2

    .line 880
    :goto_155
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v11, 0x111006a

    const v12, 0x104013a

    const v13, 0x107004e

    invoke-static/range {v8 .. v13}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v4

    .line 887
    if-nez v4, :cond_16b

    .line 888
    const-string v4, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_16b
    const v4, 0x1070070

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 893
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_175
    if-ge v6, v4, :cond_1e7

    aget-object v7, v1, v6

    .line 894
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 895
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 896
    new-instance v15, Lcom/android/internal/location/ProviderProperties;

    aget-object v9, v7, v3

    .line 897
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    const/4 v9, 0x2

    aget-object v9, v7, v9

    .line 898
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v9, 0x3

    aget-object v9, v7, v9

    .line 899
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    const/4 v9, 0x4

    aget-object v9, v7, v9

    .line 900
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    const/4 v9, 0x5

    aget-object v9, v7, v9

    .line 901
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const/4 v9, 0x6

    aget-object v9, v7, v9

    .line 902
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    const/4 v9, 0x7

    aget-object v9, v7, v9

    .line 903
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    const/16 v9, 0x8

    aget-object v9, v7, v9

    .line 904
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v9, 0x9

    aget-object v7, v7, v9

    .line 905
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 906
    new-instance v7, Lcom/android/server/LocationManagerService$LocationProvider;

    invoke-direct {v7, v0, v8, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 907
    invoke-direct {v0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 908
    new-instance v8, Lcom/android/server/location/MockProvider;

    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v3}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 893
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x1

    goto :goto_175

    .line 910
    :cond_1e7
    return-void
.end method

.method private isCurrentProfileLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    return p1
.end method

.method private static isImportanceForeground(I)Z
    .registers 2

    .line 637
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private isLocationEnabled()Z
    .registers 2

    .line 3209
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method private isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2288
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2289
    const/4 p1, 0x0

    return p1

    .line 2292
    :cond_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 2293
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2292
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2294
    const/4 p1, 0x1

    return p1

    .line 2297
    :cond_1e
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object p1, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2274
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_8

    .line 2275
    return v1

    .line 2278
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2279
    return v1

    .line 2282
    :cond_13
    iget-object p1, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .registers 4

    .line 2245
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_11

    .line 2248
    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 2252
    :cond_11
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object p0

    .line 2253
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2254
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p0}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 2253
    :goto_2b
    return v1
.end method

.method private linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .registers 6

    .line 3032
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6

    .line 3033
    const/4 p1, 0x1

    return p1

    .line 3034
    :catch_6
    move-exception p1

    .line 3037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " death callback."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "LocationManagerService"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3038
    return v0
.end method

.method private onAppOpChangedLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 480
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 481
    goto :goto_a

    .line 482
    :cond_1b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 483
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 484
    goto :goto_21

    .line 485
    :cond_31
    return-void
.end method

.method private onBackgroundThrottleIntervalChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 643
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 644
    goto :goto_6

    .line 645
    :cond_16
    return-void
.end method

.method private onBackgroundThrottleWhitelistChangedLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 650
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 651
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v1

    .line 650
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 653
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 654
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 653
    const-string v1, "location_background_throttle_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 657
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 660
    :cond_33
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 661
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 662
    goto :goto_39

    .line 663
    :cond_49
    return-void
.end method

.method private onBatterySaverModeChangedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 496
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_2c

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 499
    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2c
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_31

    .line 504
    return-void

    .line 507
    :cond_31
    iput p1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 508
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 509
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 510
    goto :goto_39

    .line 511
    :cond_49
    return-void
.end method

.method private onIgnoreSettingsWhitelistChangedLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 668
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 669
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v1

    .line 668
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 672
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 671
    const-string v1, "location_ignore_settings_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 675
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 678
    :cond_33
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 679
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 680
    goto :goto_39

    .line 681
    :cond_49
    return-void
.end method

.method private onLocationModeChangedLocked(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 524
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1e

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location enabled is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1e
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 529
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onLocationModeChangedLocked()V

    .line 530
    goto :goto_24

    .line 532
    :cond_34
    if-eqz p1, :cond_44

    .line 535
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 539
    :cond_44
    return-void
.end method

.method private onPackageDisappearedLocked(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 550
    nop

    .line 552
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 553
    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 554
    if-nez v1, :cond_29

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    :cond_29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_2c
    goto :goto_c

    .line 562
    :cond_2d
    if-eqz v1, :cond_43

    .line 563
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 564
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 565
    goto :goto_33

    .line 567
    :cond_43
    return-void
.end method

.method private onPermissionsChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 490
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 491
    goto :goto_6

    .line 492
    :cond_16
    return-void
.end method

.method private onProviderAllowedChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 544
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    .line 545
    goto :goto_6

    .line 546
    :cond_16
    return-void
.end method

.method private onScreenStateChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 515
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 516
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 517
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 518
    goto :goto_b

    .line 520
    :cond_1b
    return-void
.end method

.method private onUidImportanceChangedLocked(II)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 571
    invoke-static {p2}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result p2

    .line 572
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 573
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 574
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 575
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 576
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-ne v5, p1, :cond_8a

    .line 577
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1300(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eq v5, p2, :cond_8a

    .line 578
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_78

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-static {p2}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 579
    const-string v6, "LocationManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_78
    invoke-static {v4, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 584
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 585
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_8a
    goto :goto_35

    .line 589
    :cond_8b
    goto :goto_19

    .line 590
    :cond_8c
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 591
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 592
    goto :goto_90

    .line 594
    :cond_a0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 598
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 602
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    sget-object v3, Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 604
    return-void
.end method

.method private onUserChangedLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 914
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    .line 915
    return-void

    .line 918
    :cond_5
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1f

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground user is changing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1f
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 924
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUserChangingLocked()V

    .line 925
    goto :goto_25

    .line 927
    :cond_35
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 928
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    .line 930
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 933
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    .line 934
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    .line 937
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 938
    invoke-virtual {v1, p1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 939
    goto :goto_4c

    .line 940
    :cond_5c
    return-void
.end method

.method private onUserProfilesChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 686
    return-void
.end method

.method private removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$LinkedListener<",
            "TT",
            "Listener;",
            ">;>;)V"
        }
    .end annotation

    .line 2994
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_7

    .line 2995
    return-void

    .line 2998
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2999
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3000
    move-object/from16 v4, p3

    :try_start_10
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$LinkedListener;

    .line 3001
    if-nez v4, :cond_1a

    .line 3002
    monitor-exit v3

    return-void

    .line 3004
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_5b

    .line 3006
    :try_start_1e
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v1, v7, :cond_26

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v1, v7, :cond_48

    .line 3008
    :cond_26
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v9, 0x1

    .line 3010
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v1, v7, :cond_30

    .line 3011
    const/4 v7, 0x2

    move v10, v7

    goto :goto_32

    .line 3012
    :cond_30
    const/4 v7, 0x3

    move v10, v7

    :goto_32
    iget-object v7, v4, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v11, v7, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v15, v4, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3018
    invoke-virtual {v7, v15}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v16

    .line 3008
    const/4 v7, 0x0

    move-object v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_56

    .line 3022
    :cond_48
    :try_start_48
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    nop

    .line 3024
    invoke-direct {v0, v2, v4}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 3025
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 3026
    monitor-exit v3

    .line 3027
    return-void

    .line 3022
    :catchall_56
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3026
    :catchall_5b
    move-exception v0

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method private removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1850
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1851
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1853
    :cond_c
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2638
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_23
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/LocationManagerService$Receiver;->access$4900(Lcom/android/server/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2641
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 2643
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2646
    :cond_43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2649
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2650
    iget-object p1, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2651
    if-eqz p1, :cond_6f

    .line 2653
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2655
    invoke-static {v3, v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 2656
    goto :goto_58

    .line 2658
    :cond_68
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2662
    :cond_6f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2663
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2664
    goto :goto_73

    .line 2665
    :cond_83
    return-void
.end method

.method private reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .registers 8

    .line 1978
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1979
    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 1980
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_10

    .line 1981
    return v1

    .line 1985
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result p1

    if-lt p1, p4, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2567
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2568
    :cond_4
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 2569
    if-eqz v6, :cond_bf

    .line 2573
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v7

    .line 2574
    if-eqz v7, :cond_a7

    .line 2578
    new-instance v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V

    .line 2579
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_82

    .line 2580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2582
    invoke-static {v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1300(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result p1

    if-eqz p1, :cond_5f

    const-string p1, "foreground"

    goto :goto_61

    :cond_5f
    const-string p1, "background"

    :goto_61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    iget-object p1, p2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 2584
    const-string p1, " [whitelisted]"

    goto :goto_71

    :cond_6f
    const-string p1, ""

    :goto_71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2580
    const-string p3, "LocationManagerService"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    :cond_82
    iget-object p1, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {p1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2588
    const/4 p3, 0x0

    if-eqz p1, :cond_90

    .line 2589
    invoke-static {p1, p3}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4800(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 2592
    :cond_90
    invoke-virtual {v7}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result p1

    if-nez p1, :cond_9f

    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result p1

    if-nez p1, :cond_9f

    .line 2595
    invoke-static {p2, v6, p3}, Lcom/android/server/LocationManagerService$Receiver;->access$3800(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    .line 2598
    :cond_9f
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2602
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2603
    return-void

    .line 2575
    :cond_a7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "provider doesn\'t exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2570
    :cond_bf
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "provider name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static resolutionLevelToOp(I)I
    .registers 2

    .line 1950
    if-eqz p0, :cond_8

    .line 1951
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 1952
    const/4 p0, 0x0

    return p0

    .line 1954
    :cond_7
    return v0

    .line 1957
    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method private static resolutionLevelToOpStr(I)Ljava/lang/String;
    .registers 3

    .line 1961
    const-string v0, "android:fine_location"

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    if-eq p0, v1, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    .line 1972
    return-object v0

    .line 1965
    :cond_b
    return-object v0

    .line 1963
    :cond_c
    const-string p0, "android:coarse_location"

    return-object p0

    .line 1969
    :cond_f
    return-object v0
.end method

.method private static shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3256
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 3257
    return v0

    .line 3261
    :cond_4
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    .line 3262
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 3264
    const-wide/16 v5, 0x64

    sub-long/2addr v1, v5

    cmp-long v1, v3, v1

    const/4 v2, 0x0

    if-gez v1, :cond_22

    .line 3265
    return v2

    .line 3269
    :cond_22
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v1

    float-to-double v3, v1

    .line 3270
    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3b

    .line 3271
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    float-to-double p0, p0

    cmpg-double p0, p0, v3

    if-gtz p0, :cond_3b

    .line 3272
    return v2

    .line 3277
    :cond_3b
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result p0

    if-gtz p0, :cond_46

    .line 3278
    return v2

    .line 3282
    :cond_46
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4000(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide p0

    cmp-long p0, p0, p3

    if-ltz p0, :cond_53

    goto :goto_54

    :cond_53
    move v0, v2

    :goto_54
    return v0
.end method

.method private unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .registers 6

    .line 3045
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_6

    .line 3046
    const/4 p1, 0x1

    return p1

    .line 3047
    :catch_6
    move-exception p1

    .line 3050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unlink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " death callback."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "LocationManagerService"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3051
    return v0
.end method

.method private updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener::Landroid/os/IInterface;",
            ">(",
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "+",
            "Lcom/android/server/LocationManagerService$LinkedListenerBase;",
            ">;",
            "Lcom/android/server/location/RemoteListenerHelper<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT",
            "Listener;",
            ">;IZ)V"
        }
    .end annotation

    .line 611
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 613
    iget-object v2, v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 614
    iget v3, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-eq v3, p4, :cond_21

    .line 615
    goto :goto_8

    .line 618
    :cond_21
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_4c

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from uid "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is now "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {p5}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    const-string v3, "LocationManagerService"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_4c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 624
    if-nez p5, :cond_65

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_65

    .line 627
    :cond_61
    invoke-virtual {p2, v0}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_68

    .line 625
    :cond_65
    :goto_65
    invoke-virtual {p2, v0, v2}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 629
    :goto_68
    goto :goto_8

    .line 630
    :cond_69
    return-void
.end method

.method private updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3464
    const-string/jumbo v0, "noGPSLocation"

    invoke-virtual {p1, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 3466
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 3467
    if-nez v2, :cond_1c

    .line 3468
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 3469
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 3471
    :cond_1c
    invoke-virtual {v2, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p2

    .line 3472
    if-nez v1, :cond_27

    if-eqz p2, :cond_27

    .line 3475
    invoke-virtual {p1, v0, p2}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 3478
    :cond_27
    :goto_27
    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3479
    return-void
.end method

.method private updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2080
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v0

    .line 2082
    nop

    .line 2084
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2085
    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 2086
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2087
    nop

    .line 2088
    invoke-static {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v4, v4, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2087
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2089
    goto :goto_18

    .line 2093
    :cond_38
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2094
    goto :goto_18

    .line 2098
    :cond_3f
    invoke-static {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/server/LocationManagerService$Receiver;->access$3800(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 2099
    if-nez v2, :cond_54

    .line 2100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2102
    :cond_54
    invoke-static {v3}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1200(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    :cond_5b
    goto :goto_18

    .line 2107
    :cond_5c
    if-eqz v2, :cond_72

    .line 2108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_64
    if-ltz v0, :cond_72

    .line 2109
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2108
    add-int/lit8 v0, v0, -0x1

    goto :goto_64

    .line 2113
    :cond_72
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 2114
    return-void
.end method


# virtual methods
.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z
    .registers 11

    .line 1745
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_15

    goto :goto_4c

    .line 1752
    :cond_15
    new-instance v5, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v5, v0, v2, p2}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    .line 1754
    iget-object p2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1755
    :try_start_25
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1756
    new-instance v0, Lcom/android/server/LocationManagerService$LinkedListener;

    const-string v4, "BatchedLocationCallback"

    new-instance v6, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    .line 1762
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 1764
    monitor-exit p2

    return v1

    .line 1766
    :cond_46
    const/4 p1, 0x1

    monitor-exit p2

    return p1

    .line 1767
    :catchall_49
    move-exception p1

    monitor-exit p2
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_49

    throw p1

    .line 1749
    :cond_4c
    :goto_4c
    return v1
.end method

.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .registers 10

    .line 2903
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssMeasurementsListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .registers 10

    .line 3088
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssNavigationMessageListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .registers 8

    .line 3522
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 3523
    return-void

    .line 3526
    :cond_7
    const-string/jumbo p3, "passive"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_64

    .line 3530
    iget-object p3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3531
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_61

    .line 3533
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 3534
    if-eqz v2, :cond_43

    .line 3535
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v3

    if-nez v3, :cond_27

    .line 3540
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_43

    .line 3536
    :cond_27
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" already exists"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3543
    :cond_43
    :goto_43
    new-instance v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 3544
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3545
    new-instance p1, Lcom/android/server/location/MockProvider;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3, v2, p2}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v2, p1}, Lcom/android/server/LocationManagerService$MockLocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_5c

    .line 3548
    :try_start_56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3549
    nop

    .line 3550
    monitor-exit p3

    .line 3551
    return-void

    .line 3548
    :catchall_5c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3550
    :catchall_61
    move-exception p1

    monitor-exit p3
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw p1

    .line 3527
    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot mock the passive location provider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 3673
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3675
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3676
    :try_start_e
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_2b

    aget-object v1, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3677
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    if-eqz p1, :cond_29

    .line 3678
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-interface {p1}, Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3680
    :cond_29
    monitor-exit v0

    return-void

    .line 3682
    :cond_2b
    const-string v1, "Current Location Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current System Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3683
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3685
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Location mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Battery Saver Location Mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 3691
    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3690
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    const-string v1, "  Location Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    goto :goto_cd

    .line 3696
    :cond_ee
    const-string v1, "  Active Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_154

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3699
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_132
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_153

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3700
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    goto :goto_132

    .line 3702
    :cond_153
    goto :goto_fd

    .line 3704
    :cond_154
    const-string v1, "  Active GnssMeasurement Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 3706
    const-string v1, "  Active GnssNavigationMessage Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 3708
    const-string v1, "  Active GnssStatus Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 3711
    const-string v1, "  Historical Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v1, v1, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_183
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3714
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 3715
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 3716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    goto :goto_183

    .line 3718
    :cond_1c4
    const-string v1, "  Last Known Locations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_208

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3720
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3721
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 3722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3723
    goto :goto_1d3

    .line 3725
    :cond_208
    const-string v1, "  Last Known Locations Coarse Intervals:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_217
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3727
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3728
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 3729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    goto :goto_217

    .line 3732
    :cond_24c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v1, :cond_256

    .line 3733
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_25b

    .line 3735
    :cond_256
    const-string v1, "  Geofences: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3738
    :goto_25b
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    if-eqz v1, :cond_26a

    .line 3739
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3740
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    goto :goto_26f

    .line 3742
    :cond_26a
    const-string v1, "  mBlacklist=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3745
    :goto_26f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_293

    .line 3746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Location controller extra package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    :cond_293
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c7

    .line 3751
    const-string v1, "  Throttling Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    goto :goto_2a6

    .line 3757
    :cond_2c7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2fb

    .line 3758
    const-string v1, "  Bypass Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    goto :goto_2da

    .line 3764
    :cond_2fb
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    if-eqz v1, :cond_30a

    .line 3765
    const-string v1, "  fudger: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3766
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_30f

    .line 3768
    :cond_30a
    const-string v1, "  fudger: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    :goto_30f
    array-length v1, p3

    if-lez v1, :cond_31f

    const-string/jumbo v1, "short"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31f

    .line 3772
    monitor-exit v0

    return-void

    .line 3774
    :cond_31f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_325
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_335

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 3775
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3776
    goto :goto_325

    .line 3777
    :cond_335
    iget-boolean p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz p1, :cond_33e

    .line 3778
    const-string p1, "  GNSS batching in progress"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3780
    :cond_33e
    monitor-exit v0

    .line 3781
    return-void

    .line 3780
    :catchall_340
    move-exception p1

    monitor-exit v0
    :try_end_342
    .catchall {:try_start_e .. :try_end_342} :catchall_340

    throw p1
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .registers 5

    .line 1804
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1808
    const-string p1, "LocationManagerService"

    const-string v0, "flushGnssBatch called without GNSS permissions"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    return-void

    .line 1812
    :cond_17
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1813
    :try_start_1a
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-nez v0, :cond_25

    .line 1814
    const-string v0, "LocationManagerService"

    const-string v1, "flushGnssBatch called with no batch in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_25
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v0, :cond_2e

    .line 1818
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->flush()V

    .line 1820
    :cond_2e
    monitor-exit p1

    .line 1821
    return-void

    .line 1820
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw v0
.end method

.method public geocoderIsPresent()Z
    .registers 2

    .line 3485
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2008
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2009
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2010
    const-string v4, "fused"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2011
    goto :goto_14

    .line 2013
    :cond_2d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2014
    goto :goto_14

    .line 2015
    :cond_31
    monitor-exit v0

    return-object v1

    .line 2016
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 4

    .line 2260
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2262
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 5

    .line 2060
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object p1

    .line 2061
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2062
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object p1

    .line 2065
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_30

    .line 2066
    const-string p2, "gps"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2067
    return-object p2

    .line 2068
    :cond_1e
    const-string/jumbo p2, "network"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2069
    return-object p2

    .line 2071
    :cond_28
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2075
    :cond_30
    return-object v1
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .registers 3

    .line 3186
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3187
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3188
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3491
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_e

    .line 3492
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3495
    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3505
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_18

    .line 3506
    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3510
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .registers 5

    .line 1733
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz p1, :cond_18

    .line 1737
    invoke-virtual {p1}, Lcom/android/server/location/GnssBatchingProvider;->getBatchSize()I

    move-result p1

    return p1

    .line 1739
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public getGnssCapabilities(Ljava/lang/String;)J
    .registers 5

    .line 3076
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to obtain GNSS chipset capabilities."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    if-nez p1, :cond_14

    goto :goto_19

    .line 3082
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/location/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0

    .line 3080
    :cond_19
    :goto_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 1706
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_9

    .line 1707
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1709
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .registers 10

    .line 2761
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2762
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 2763
    if-nez v1, :cond_12

    .line 2764
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2766
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 2767
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 2768
    new-instance v6, Landroid/location/LocationTime;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v6

    .line 2769
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .line 1696
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_9

    .line 1697
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0

    .line 1699
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .registers 4

    .line 2267
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2268
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2269
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .registers 21

    .line 2669
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2670
    if-eqz p1, :cond_c

    move-object/from16 v3, p1

    goto :goto_e

    :cond_c
    :try_start_c
    sget-object v3, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2671
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v4

    .line 2672
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2673
    nop

    .line 2674
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 2673
    invoke-direct {v0, v4, v5}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2677
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_12c

    .line 2681
    :try_start_29
    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v9, v1}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_53

    .line 2682
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_4d

    .line 2683
    const-string v0, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not returning last loc for blacklisted app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_127

    .line 2686
    :cond_4d
    nop

    .line 2754
    :try_start_4e
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_12c

    .line 2686
    return-object v10

    .line 2692
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    .line 2693
    if-nez v3, :cond_5b

    const-string v3, "fused"

    .line 2694
    :cond_5b
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v9
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_127

    .line 2695
    if-nez v9, :cond_66

    .line 2754
    :try_start_61
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_12c

    .line 2695
    return-object v10

    .line 2698
    :cond_66
    :try_start_66
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v0, v11}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v11

    if-nez v11, :cond_7c

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v11
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_127

    if-nez v11, :cond_7c

    .line 2700
    nop

    .line 2754
    :try_start_77
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_12c

    .line 2700
    return-object v10

    .line 2703
    :cond_7c
    :try_start_7c
    invoke-virtual {v9}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v9
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_127

    if-nez v9, :cond_88

    .line 2704
    nop

    .line 2754
    :try_start_83
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_12c

    .line 2704
    return-object v10

    .line 2708
    :cond_88
    const/4 v9, 0x2

    if-ge v4, v9, :cond_94

    .line 2711
    :try_start_8b
    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    goto :goto_9c

    .line 2713
    :cond_94
    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;
    :try_end_9c
    .catchall {:try_start_8b .. :try_end_9c} :catchall_127

    .line 2715
    :goto_9c
    if-nez v3, :cond_a4

    .line 2716
    nop

    .line 2754
    :try_start_9f
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_12c

    .line 2716
    return-object v10

    .line 2720
    :cond_a4
    :try_start_a4
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOpStr(I)Ljava/lang/String;

    move-result-object v11

    .line 2721
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2722
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    sub-long/2addr v12, v14

    .line 2723
    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2724
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "location_last_location_max_age_millis"

    const-wide/32 v9, 0x124f80

    .line 2723
    invoke-static {v14, v15, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v9, v12, v9

    if-lez v9, :cond_db

    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2727
    invoke-virtual {v9, v11, v6, v1}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9
    :try_end_cf
    .catchall {:try_start_a4 .. :try_end_cf} :catchall_127

    const/4 v10, 0x4

    if-ne v9, v10, :cond_d9

    .line 2729
    nop

    .line 2754
    :try_start_d3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_d3 .. :try_end_d7} :catchall_12c

    .line 2729
    const/4 v9, 0x0

    return-object v9

    .line 2727
    :cond_d9
    const/4 v9, 0x0

    goto :goto_dc

    .line 2723
    :cond_db
    const/4 v9, 0x0

    .line 2732
    :goto_dc
    nop

    .line 2733
    const/4 v10, 0x2

    if-ge v4, v10, :cond_f7

    .line 2734
    :try_start_e0
    const-string/jumbo v10, "noGPSLocation"

    invoke-virtual {v3, v10}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 2736
    if-eqz v3, :cond_f5

    .line 2737
    new-instance v10, Landroid/location/Location;

    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v11, v3}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v3

    invoke-direct {v10, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_f6

    .line 2736
    :cond_f5
    move-object v10, v9

    .line 2739
    :goto_f6
    goto :goto_fc

    .line 2740
    :cond_f7
    new-instance v10, Landroid/location/Location;

    invoke-direct {v10, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2743
    :goto_fc
    if-eqz v10, :cond_120

    .line 2744
    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_120

    .line 2746
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_11f

    .line 2747
    const-string v0, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not returning last loc for no op app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_e0 .. :try_end_11f} :catchall_127

    .line 2749
    :cond_11f
    goto :goto_121

    .line 2752
    :cond_120
    move-object v9, v10

    :goto_121
    nop

    .line 2754
    :try_start_122
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    .line 2752
    return-object v9

    .line 2754
    :catchall_127
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2756
    :catchall_12c
    move-exception v0

    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_122 .. :try_end_12e} :catchall_12c

    throw v0
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .registers 4

    .line 3150
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3151
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3154
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object p1

    .line 3155
    if-nez p1, :cond_13

    .line 3156
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 3158
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3159
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2026
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2027
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2028
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2029
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2030
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2031
    const-string v6, "fused"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2032
    goto :goto_18

    .line 2034
    :cond_31
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_38

    .line 2035
    goto :goto_18

    .line 2037
    :cond_38
    if-eqz p2, :cond_41

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v6

    if-nez v6, :cond_41

    .line 2038
    goto :goto_18

    .line 2040
    :cond_41
    if-eqz p1, :cond_4e

    .line 2042
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v4

    .line 2041
    invoke-static {v5, v4, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 2043
    goto :goto_18

    .line 2045
    :cond_4e
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2046
    goto :goto_18

    .line 2047
    :cond_52
    monitor-exit v1

    return-object v2

    .line 2048
    :catchall_54
    move-exception p1

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation

    .line 3649
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 3650
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3653
    :cond_b
    iget-object p2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3654
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    .line 3655
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3659
    check-cast v0, Lcom/android/server/LocationManagerService$MockLocationProvider;

    .line 3660
    invoke-static {v0}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object p1

    if-nez p1, :cond_28

    .line 3661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit p2

    return-object p1

    .line 3663
    :cond_28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3664
    invoke-static {v0}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5300(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    .line 3665
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2, v1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3666
    goto :goto_37

    .line 3667
    :cond_4c
    monitor-exit p2

    return-object p1

    .line 3656
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" unknown"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3668
    :catchall_6a
    move-exception p1

    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_e .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .registers 6

    .line 3058
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject GNSS measurement corrections."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "LocationManagerService"

    if-nez p2, :cond_17

    .line 3062
    const-string p1, "Can not inject GNSS corrections due to no permission."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-void

    .line 3065
    :cond_17
    iget-object p2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    if-nez p2, :cond_21

    .line 3066
    const-string p1, "Can not inject GNSS corrections. GNSS measurement corrections provider not available."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    return-void

    .line 3070
    :cond_21
    invoke-virtual {p2, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 3072
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .registers 7

    .line 2774
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Access Fine Location permission not granted to inject Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 2780
    sget-boolean p1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz p1, :cond_20

    .line 2781
    const-string p1, "LocationManagerService"

    const-string v1, "injectLocation(): called with null location"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :cond_20
    return v0

    .line 2786
    :cond_21
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2787
    :try_start_24
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 2788
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_4d

    .line 2795
    :cond_35
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 2796
    monitor-exit v1

    return v0

    .line 2799
    :cond_43
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 2800
    const/4 p1, 0x1

    monitor-exit v1

    return p1

    .line 2789
    :cond_4d
    :goto_4d
    monitor-exit v1

    return v0

    .line 2801
    :catchall_4f
    move-exception p1

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_24 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .registers 3

    .line 3202
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3203
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 3205
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isLocationEnabledForUser(I)Z
    .registers 7

    .line 3215
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 3216
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3223
    :try_start_13
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3224
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    .line 3223
    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_27

    if-eqz p1, :cond_23

    const/4 v4, 0x1

    .line 3229
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3223
    return v4

    .line 3229
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 6

    .line 3236
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_f

    .line 3237
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    :cond_f
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    return v1

    .line 3246
    :cond_19
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3247
    :try_start_1c
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object p1

    .line 3248
    if-eqz p1, :cond_29

    invoke-virtual {p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 v1, 0x1

    :cond_29
    monitor-exit v0

    return v1

    .line 3249
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .registers 5

    .line 3164
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 3166
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getPackagesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 3167
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 3169
    :cond_22
    goto :goto_9

    .line 3171
    :cond_23
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 3172
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public synthetic lambda$addGnssBatchingCallback$8$LocationManagerService(Landroid/location/IBatchedLocationCallback;)V
    .registers 2

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->removeGnssBatchingCallback()V

    .line 1761
    return-void
.end method

.method public synthetic lambda$initializeLocked$2$LocationManagerService()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onPermissionsChangedLocked()V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$initializeLocked$3$LocationManagerService(I)V
    .registers 3

    .line 338
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;

    invoke-direct {v0, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method public synthetic lambda$initializeLocked$4$LocationManagerService(II)V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->onUidImportanceChangedLocked(II)V

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public synthetic lambda$initializeLocked$5$LocationManagerService(II)V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;-><init>(Lcom/android/server/LocationManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public synthetic lambda$initializeLocked$6$LocationManagerService(Landroid/os/PowerSaveState;)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget p1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 420
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public synthetic lambda$initializeLocked$7$LocationManagerService(Landroid/os/PowerSaveState;)V
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(I)[Ljava/lang/String;
    .registers 3

    .line 287
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107004e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .registers 3

    .line 290
    iget-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 4

    .line 1686
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    .line 1688
    if-eqz p1, :cond_14

    .line 1689
    invoke-static {p1}, Lcom/android/server/LocationManagerService$Receiver;->access$3600(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1691
    :cond_14
    monitor-exit v0

    .line 1692
    return-void

    .line 1691
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .registers 10

    .line 2890
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssStatusListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 16

    .line 2861
    if-eqz p2, :cond_54

    .line 2864
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2866
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeGeofence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2871
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4f

    .line 2872
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2880
    invoke-virtual {v6, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v11

    .line 2872
    move-object v6, p3

    move-object v10, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2881
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_4c

    .line 2882
    :try_start_42
    iget-object p3, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4f

    .line 2884
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2881
    :catchall_4c
    move-exception p1

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw p1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 2884
    :catchall_4f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2862
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid pending intent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeGnssBatchingCallback()V
    .registers 4

    .line 1772
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 1775
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1776
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    .line 1777
    monitor-exit v0

    .line 1778
    return-void

    .line 1777
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 4

    .line 2910
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 2911
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 4

    .line 3095
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3097
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 3555
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 3556
    return-void

    .line 3559
    :cond_7
    iget-object p2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3560
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_6a

    .line 3562
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 3563
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 3567
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3570
    const/4 v2, 0x0

    .line 3571
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 3572
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 3573
    nop

    .line 3574
    move-object v2, v4

    goto :goto_3e

    .line 3576
    :cond_3d
    goto :goto_24

    .line 3578
    :cond_3e
    :goto_3e
    if-eqz v2, :cond_43

    .line 3579
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_65

    .line 3582
    :cond_43
    :try_start_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3583
    nop

    .line 3584
    monitor-exit p2
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_6a

    .line 3585
    return-void

    .line 3564
    :cond_49
    :try_start_49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" unknown"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_65

    .line 3582
    :catchall_65
    move-exception p1

    :try_start_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3584
    :catchall_6a
    move-exception p1

    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 12

    .line 2608
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2610
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2613
    if-nez p2, :cond_19

    if-eqz p1, :cond_10

    goto :goto_19

    .line 2614
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "need either listener or intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2615
    :cond_19
    :goto_19
    if-eqz p2, :cond_26

    if-nez p1, :cond_1e

    goto :goto_26

    .line 2616
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot register both listener and intent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2619
    :cond_26
    :goto_26
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2621
    if-eqz p2, :cond_35

    .line 2622
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    :try_start_30
    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object p1

    goto :goto_3e

    .line 2624
    :cond_35
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object p1

    .line 2627
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_50

    .line 2629
    :try_start_42
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4b

    .line 2631
    :try_start_45
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2632
    nop

    .line 2633
    monitor-exit v7

    .line 2634
    return-void

    .line 2631
    :catchall_4b
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2633
    :catchall_50
    move-exception p1

    monitor-exit v7
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 24

    .line 2807
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v13, p4

    if-nez p1, :cond_c

    sget-object v1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v8, v1

    goto :goto_e

    :cond_c
    move-object/from16 v8, p1

    .line 2808
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v14

    .line 2809
    invoke-direct {v0, v14}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 2810
    if-eqz v3, :cond_b3

    .line 2813
    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2814
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2815
    nop

    .line 2816
    :try_start_1e
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 2815
    invoke-direct {v0, v14, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2817
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_b0

    .line 2819
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2820
    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 2822
    :goto_33
    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2826
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_65

    .line 2827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestGeofence: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LocationManagerService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 2826
    :cond_65
    move-object/from16 v15, p2

    .line 2831
    :goto_67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 2832
    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz v2, :cond_7a

    .line 2834
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    return-void

    .line 2837
    :cond_7a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2839
    :try_start_7e
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_ab

    .line 2840
    :try_start_81
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2848
    invoke-virtual {v7, v13}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v12

    .line 2840
    move-object/from16 v7, p4

    move-object/from16 v11, p2

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2849
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_a8

    .line 2851
    :try_start_95
    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v14

    move/from16 v5, v16

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_95 .. :try_end_a3} :catchall_ab

    .line 2855
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2856
    nop

    .line 2857
    return-void

    .line 2849
    :catchall_a8
    move-exception v0

    :try_start_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    :try_start_aa
    throw v0
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 2855
    :catchall_ab
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2817
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0

    .line 2811
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 25

    .line 2496
    move-object/from16 v0, p0

    move-object/from16 v10, p4

    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2497
    if-nez p1, :cond_d

    :try_start_9
    sget-object v1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v5, v1

    goto :goto_f

    :cond_d
    move-object/from16 v5, p1

    .line 2498
    :goto_f
    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    .line 2500
    nop

    .line 2501
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 2500
    invoke-direct {v0, v1, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2502
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v12

    .line 2503
    const/4 v2, 0x0

    if-eqz v12, :cond_32

    invoke-virtual {v12}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2504
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    :cond_32
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v13

    .line 2508
    if-eqz v13, :cond_3f

    .line 2509
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    :cond_3f
    invoke-virtual {v5}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2513
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    :cond_4c
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.LOCATION_HARDWARE"

    .line 2517
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5a

    move v2, v3

    goto :goto_5b

    :cond_5a
    move v2, v4

    .line 2519
    :goto_5b
    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v14

    .line 2523
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 2524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2526
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_6b
    .catchall {:try_start_9 .. :try_end_6b} :catchall_de

    .line 2531
    :try_start_6b
    invoke-direct {v0, v15, v9, v10, v1}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    .line 2533
    if-nez p3, :cond_7c

    if-eqz p2, :cond_73

    goto :goto_7c

    .line 2534
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2535
    :cond_7c
    :goto_7c
    if-eqz p3, :cond_89

    if-nez p2, :cond_81

    goto :goto_89

    .line 2536
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2540
    :cond_89
    :goto_89
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_91

    move v7, v3

    goto :goto_92

    :cond_91
    move v7, v4

    :goto_92
    if-eqz p3, :cond_96

    move v8, v3

    goto :goto_97

    :cond_96
    move v8, v4

    :goto_97
    const/16 v18, 0x0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2545
    invoke-virtual {v3, v10}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v19

    .line 2540
    move v3, v6

    move-object/from16 v4, p4

    move v6, v7

    move v7, v8

    move-object/from16 v8, v18

    move/from16 p1, v9

    move/from16 v9, v19

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 2548
    if-eqz p3, :cond_bf

    .line 2549
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v15

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v6, v12

    move v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    goto :goto_ce

    .line 2552
    :cond_bf
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p1

    move-object/from16 v5, p4

    move-object v6, v12

    move v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    .line 2555
    :goto_ce
    move/from16 v2, p1

    invoke-direct {v0, v14, v1, v2, v10}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_6b .. :try_end_d3} :catchall_d9

    .line 2557
    :try_start_d3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2558
    nop

    .line 2559
    monitor-exit v11

    .line 2560
    return-void

    .line 2557
    :catchall_d9
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2559
    :catchall_de
    move-exception v0

    monitor-exit v11
    :try_end_e0
    .catchall {:try_start_d3 .. :try_end_e0} :catchall_de

    throw v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8

    .line 3101
    if-eqz p1, :cond_39

    .line 3105
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3106
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3109
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 3115
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2e

    .line 3120
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3121
    if-eqz v1, :cond_26

    .line 3122
    invoke-virtual {v1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3125
    :cond_26
    iget-object p2, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 3130
    monitor-exit v0

    return p3

    .line 3117
    :cond_2e
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3131
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw p1

    .line 3103
    :cond_39
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public sendNiResponse(II)Z
    .registers 5

    .line 3136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 3141
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return p1

    .line 3142
    :catch_11
    move-exception p1

    .line 3143
    const-string p1, "LocationManagerService"

    const-string p2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    const/4 p1, 0x0

    return p1

    .line 3137
    :cond_1b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .registers 5

    .line 3177
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3180
    :try_start_c
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 3181
    monitor-exit v0

    .line 3182
    return-void

    .line 3181
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .registers 5

    .line 3193
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3196
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 3197
    monitor-exit v0

    .line 3198
    return-void

    .line 3197
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .line 3614
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 3615
    return-void

    .line 3618
    :cond_7
    iget-object p3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3619
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    .line 3620
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3624
    check-cast v0, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setEnabledLocked(Z)V

    .line 3625
    monitor-exit p3

    .line 3626
    return-void

    .line 3621
    :cond_1d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" unknown"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3625
    :catchall_39
    move-exception p1

    monitor-exit p3
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .registers 9

    .line 3590
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 3591
    return-void

    .line 3594
    :cond_7
    iget-object p3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 3595
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    .line 3596
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 3600
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 3601
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 3604
    const v1, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "33091107"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3605
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 3604
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3608
    :cond_5a
    check-cast v0, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setLocationLocked(Landroid/location/Location;)V

    .line 3609
    monitor-exit p3

    .line 3610
    return-void

    .line 3597
    :cond_61
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" unknown"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3609
    :catchall_7d
    move-exception p1

    monitor-exit p3
    :try_end_7f
    .catchall {:try_start_a .. :try_end_7f} :catchall_7d

    throw p1
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .registers 9

    .line 3631
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_7

    .line 3632
    return-void

    .line 3635
    :cond_7
    iget-object p6, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p6

    .line 3636
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    .line 3637
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3641
    check-cast v0, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setStatusLocked(ILandroid/os/Bundle;J)V

    .line 3642
    monitor-exit p6

    .line 3643
    return-void

    .line 3638
    :cond_1d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Provider \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" unknown"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3642
    :catchall_39
    move-exception p1

    monitor-exit p6
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public startGnssBatch(JZLjava/lang/String;)Z
    .registers 8

    .line 1782
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_34

    iget-object p4, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez p4, :cond_14

    goto :goto_34

    .line 1789
    :cond_14
    iget-object p4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1790
    :try_start_17
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v0, :cond_26

    .line 1792
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1797
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1798
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider;->start(JZ)Z

    move-result p1

    monitor-exit p4

    return p1

    .line 1799
    :catchall_31
    move-exception p1

    monitor-exit p4
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_31

    throw p1

    .line 1786
    :cond_34
    :goto_34
    const/4 p1, 0x0

    return p1
.end method

.method public stopGnssBatch()Z
    .registers 4

    .line 1825
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1829
    :try_start_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 1830
    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1831
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1833
    :cond_1b
    monitor-exit v0

    return v2

    .line 1835
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public systemRunning()V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeLocked()V

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 4

    .line 2897
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 2898
    return-void
.end method
