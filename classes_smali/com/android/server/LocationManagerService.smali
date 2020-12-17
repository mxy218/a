.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$Identity;,
        Lcom/android/server/LocationManagerService$LocDataCollection;,
        Lcom/android/server/LocationManagerService$NetworkStateReceiver;,
        Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;,
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

.field private static final AUTO_MODE:Ljava/lang/String; = "auto"

.field private static final BAIDU_MODE:Ljava/lang/String; = "baidu"

.field private static final CAMPED_NETWORK_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.CAMPED_NETWORK_STATE_CHANGED"

.field public static final CHINESE_LOCATION_PACKAGENAME:Ljava/lang/String; = "com.meizu.location"

.field public static final D:Z = true

.field private static final DEBUG:Z = true

.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_LAST_LOCATION_MAX_AGE_MS:J = 0x124f80L

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final GEOCODER_LOCATION_SERVICE_ACTION:Ljava/lang/String;

.field private static final GOOGLE_LOCATION_PACKAGENAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final GOOGLE_MODE:Ljava/lang/String; = "google"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MULTI_SIM_DEV_NUM_PATTERN:Ljava/util/regex/Pattern;

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final PROPERTY_CAMPED_KEY:Ljava/lang/String; = "gsm.camped.operator.number"

.field private static final PROPERTY_OPERATOR_NUMBER_KEY:Ljava/lang/String; = "gsm.operator.numeric"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

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

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

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

.field private mLocDataCollection:Lcom/android/server/LocationManagerService$LocDataCollection;

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private final mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mModeObserver:Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRemovedByPowerSave:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 200
    invoke-static {}, Lcom/android/server/location/GeocoderProxy;->getServiceAction()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerService;->GEOCODER_LOCATION_SERVICE_ACTION:Ljava/lang/String;

    .line 224
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 338
    const-string v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerService;->MULTI_SIM_DEV_NUM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 356
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 268
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 282
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 284
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 287
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 290
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 296
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 307
    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerSaveWhiteList:Ljava/util/List;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocDataCollection:Lcom/android/server/LocationManagerService$LocDataCollection;

    .line 357
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 358
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 359
    new-instance v0, Lcom/android/server/LocationUsageLogger;

    invoke-direct {v0}, Lcom/android/server/LocationUsageLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    .line 363
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 365
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$bojY6dMaI07zh6_sF7ERxgmk6U0;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 368
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$pUnNobtfzLC9eAlVqCMKySwbo3U;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 376
    invoke-static {p0}, Lcom/android/server/lm/LmsInjector;->initialize(Lcom/android/server/LocationManagerService;)V

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # I

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onScreenStateChangedLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onAppOpChangedLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # I

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Lcom/android/server/LocationManagerService$LocationProvider;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Z

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Landroid/location/Location;
    .param p2, "x2"  # Lcom/android/server/LocationManagerService$LocationProvider;

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/LocationManagerService;II)I
    .registers 4
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # I

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Lcom/android/server/LocationManagerService$Receiver;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$4400(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 178
    invoke-static {p0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationUsageLogger;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocDataCollection;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocDataCollection:Lcom/android/server/LocationManagerService$LocDataCollection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleIntervalChangedLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;

    .line 178
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/LocationManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->onPackageDisappearedLocked(Ljava/lang/String;)V

    return-void
.end method

.method private addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z
    .registers 27
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "listenerName"  # Ljava/lang/String;
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

    .line 3181
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p4, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p5, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    .local p6, "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    invoke-direct {v1, v11}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_af

    if-nez v12, :cond_13

    move-object/from16 v3, p1

    goto/16 :goto_b1

    .line 3185
    :cond_13
    new-instance v0, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3186
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-direct {v0, v3, v4, v11}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    move-object v13, v0

    .line 3187
    .local v13, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    new-instance v0, Lcom/android/server/LocationManagerService$LinkedListener;

    const/4 v10, 0x0

    move-object v5, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object v8, v13

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    move-object v14, v0

    .line 3189
    .local v14, "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 3190
    .local v15, "binder":Landroid/os/IBinder;
    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3191
    :try_start_37
    invoke-direct {v1, v15, v14}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 3192
    monitor-exit v10

    return v2

    .line 3195
    :cond_3f
    move-object/from16 v9, p5

    invoke-virtual {v9, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_a6

    move-wide/from16 v16, v2

    .line 3198
    .local v16, "identity":J
    :try_start_4a
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v12, v0, :cond_56

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v12, v0, :cond_53

    goto :goto_56

    :cond_53
    move-object/from16 v19, v10

    goto :goto_76

    .line 3200
    :cond_56
    :goto_56
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v3, 0x0

    .line 3202
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v12, v0, :cond_60

    .line 3203
    const/4 v0, 0x2

    move v4, v0

    goto :goto_62

    .line 3204
    :cond_60
    const/4 v0, 0x3

    move v4, v0

    :goto_62
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3210
    invoke-virtual {v5, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_9d

    .line 3200
    move-object/from16 v5, p2

    move-object v9, v0

    move-object/from16 v19, v10

    move/from16 v10, v18

    :try_start_73
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 3212
    :goto_76
    invoke-direct {v1, v13}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3214
    invoke-virtual {v0, v11}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 3213
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_99

    if-eqz v0, :cond_89

    goto :goto_8c

    :cond_89
    move-object/from16 v3, p1

    goto :goto_91

    .line 3215
    :cond_8c
    :goto_8c
    move-object/from16 v3, p1

    :try_start_8e
    invoke-virtual {v12, v3, v13}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_97

    .line 3217
    :goto_91
    const/4 v0, 0x1

    .line 3219
    :try_start_92
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    .line 3217
    return v0

    .line 3219
    :catchall_97
    move-exception v0

    goto :goto_a2

    :catchall_99
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_a2

    :catchall_9d
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    :goto_a2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v13  # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v14  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v15  # "binder":Landroid/os/IBinder;
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "listener":Landroid/os/IInterface;, "TTListener;"
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "listenerName":Ljava/lang/String;
    .end local p4  # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .end local p5  # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    .end local p6  # "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    throw v0

    .line 3221
    .end local v16  # "identity":J
    .restart local v13  # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .restart local v14  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .restart local v15  # "binder":Landroid/os/IBinder;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "listener":Landroid/os/IInterface;, "TTListener;"
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "listenerName":Ljava/lang/String;
    .restart local p4  # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .restart local p5  # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    .restart local p6  # "binderDeathCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TTListener;>;"
    :catchall_a6
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    :goto_ab
    monitor-exit v19
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_ad

    throw v0

    :catchall_ad
    move-exception v0

    goto :goto_ab

    .line 3181
    .end local v13  # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v14  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v15  # "binder":Landroid/os/IBinder;
    :cond_af
    move-object/from16 v3, p1

    .line 3182
    :goto_b1
    return v2
.end method

.method private addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 4
    .param p1, "provider"  # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1992
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

    .line 1994
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    .line 1997
    invoke-virtual {p1, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1998
    return-void
.end method

.method private applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 24
    .param p1, "provider"  # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2293
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    .line 2294
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    move-object v4, v0

    .line 2295
    .local v4, "worksource":Landroid/os/WorkSource;
    new-instance v0, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    move-object v5, v0

    .line 2299
    .local v5, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    if-eqz v3, :cond_1d8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d8

    .line 2302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2304
    .local v6, "identity":J
    :try_start_31
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2305
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "location_background_throttle_interval_ms"

    const-wide/32 v9, 0x1b7740

    .line 2304
    invoke-static {v0, v8, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_1d2

    .line 2309
    .local v8, "backgroundThrottleInterval":J
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2310
    nop

    .line 2312
    iget v0, v1, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v10, 0x3

    const/4 v12, 0x1

    if-ne v0, v10, :cond_4d

    move v0, v12

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 2314
    .local v0, "isForegroundOnlyMode":Z
    :goto_4e
    iget v10, v1, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v13, 0x4

    if-ne v10, v13, :cond_5d

    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 2317
    invoke-virtual {v10}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v10

    if-nez v10, :cond_5d

    move v10, v12

    goto :goto_5e

    :cond_5d
    const/4 v10, 0x0

    .line 2319
    .local v10, "shouldThrottleRequests":Z
    :goto_5e
    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 2320
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_64
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_141

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2321
    .local v14, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    nop

    .line 2322
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2321
    invoke-direct {v1, v15}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v15

    if-nez v15, :cond_84

    .line 2323
    goto :goto_64

    .line 2325
    :cond_84
    nop

    .line 2326
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mPid:I

    .line 2327
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v11, v11, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2328
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v12, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2329
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v18

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v18}, Lcom/android/server/LocationManagerService$Receiver;->access$4100(Lcom/android/server/LocationManagerService$Receiver;)I

    move-result v13

    .line 2325
    invoke-direct {v1, v15, v11, v12, v13}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_b1

    .line 2330
    move-object/from16 v13, v19

    const/4 v12, 0x1

    goto :goto_64

    .line 2332
    :cond_b1
    if-nez v10, :cond_be

    if-eqz v0, :cond_bc

    .line 2333
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v11

    if-nez v11, :cond_bc

    goto :goto_be

    :cond_bc
    const/4 v11, 0x0

    goto :goto_bf

    :cond_be
    :goto_be
    const/4 v11, 0x1

    .line 2334
    .local v11, "isBatterySaverDisablingLocation":Z
    :goto_bf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v12

    if-eqz v12, :cond_c7

    if-eqz v11, :cond_d3

    .line 2335
    :cond_c7
    invoke-direct {v1, v14}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v12

    if-eqz v12, :cond_133

    .line 2336
    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    .line 2337
    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 2343
    :cond_d3
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v12

    .line 2344
    .local v12, "locationRequest":Landroid/location/LocationRequest;
    move v13, v10

    move v15, v11

    .end local v10  # "shouldThrottleRequests":Z
    .end local v11  # "isBatterySaverDisablingLocation":Z
    .local v13, "shouldThrottleRequests":Z
    .local v15, "isBatterySaverDisablingLocation":Z
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    .line 2348
    .local v10, "interval":J
    move/from16 v18, v0

    .end local v0  # "isForegroundOnlyMode":Z
    .local v18, "isForegroundOnlyMode":Z
    iget-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-nez v0, :cond_10a

    .line 2349
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 2348
    invoke-direct {v1, v0}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 2350
    invoke-static {v14}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 2351
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2353
    :cond_f9
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v20

    cmp-long v0, v10, v20

    if-eqz v0, :cond_10a

    .line 2354
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, v12}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v12, v0

    .line 2355
    invoke-virtual {v12, v10, v11}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2359
    :cond_10a
    iput-object v12, v14, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2360
    iget-object v0, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2361
    invoke-virtual {v12}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_11b

    .line 2362
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    goto :goto_11c

    .line 2361
    :cond_11b
    const/4 v0, 0x0

    .line 2364
    :goto_11c
    iget-wide v0, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_128

    .line 2365
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 2366
    iput-wide v10, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto :goto_129

    .line 2364
    :cond_128
    const/4 v0, 0x1

    .line 2368
    .end local v10  # "interval":J
    .end local v12  # "locationRequest":Landroid/location/LocationRequest;
    .end local v14  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15  # "isBatterySaverDisablingLocation":Z
    :goto_129
    move-object/from16 v1, p0

    move v12, v0

    move v10, v13

    move/from16 v0, v18

    move-object/from16 v13, v19

    goto/16 :goto_64

    .line 2335
    .end local v13  # "shouldThrottleRequests":Z
    .end local v18  # "isForegroundOnlyMode":Z
    .restart local v0  # "isForegroundOnlyMode":Z
    .local v10, "shouldThrottleRequests":Z
    .restart local v11  # "isBatterySaverDisablingLocation":Z
    .restart local v14  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_133
    move/from16 v18, v0

    move v13, v10

    move v15, v11

    const/4 v0, 0x1

    .end local v0  # "isForegroundOnlyMode":Z
    .end local v10  # "shouldThrottleRequests":Z
    .end local v11  # "isBatterySaverDisablingLocation":Z
    .restart local v13  # "shouldThrottleRequests":Z
    .restart local v15  # "isBatterySaverDisablingLocation":Z
    .restart local v18  # "isForegroundOnlyMode":Z
    move-object/from16 v1, p0

    move v12, v0

    move/from16 v0, v18

    move-object/from16 v13, v19

    goto/16 :goto_64

    .line 2370
    .end local v13  # "shouldThrottleRequests":Z
    .end local v14  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v15  # "isBatterySaverDisablingLocation":Z
    .end local v18  # "isForegroundOnlyMode":Z
    .restart local v0  # "isForegroundOnlyMode":Z
    .restart local v10  # "shouldThrottleRequests":Z
    :cond_141
    move/from16 v18, v0

    move v13, v10

    .end local v0  # "isForegroundOnlyMode":Z
    .end local v10  # "shouldThrottleRequests":Z
    .restart local v13  # "shouldThrottleRequests":Z
    .restart local v18  # "isForegroundOnlyMode":Z
    iget-boolean v0, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_1cf

    .line 2376
    iget-wide v0, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v10, 0x3e8

    add-long/2addr v0, v10

    const-wide/16 v10, 0x3

    mul-long/2addr v0, v10

    const-wide/16 v10, 0x2

    div-long/2addr v0, v10

    .line 2377
    .local v0, "thresholdInterval":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_157
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ca

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2378
    .local v11, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    nop

    .line 2379
    invoke-static {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v12, v12, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 2378
    move-object/from16 v14, p0

    invoke-direct {v14, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v12

    if-eqz v12, :cond_1c5

    .line 2380
    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2384
    .restart local v12  # "locationRequest":Landroid/location/LocationRequest;
    iget-object v15, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_183

    .line 2385
    goto :goto_157

    .line 2388
    :cond_183
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v15

    cmp-long v15, v15, v0

    if-gtz v15, :cond_1c2

    .line 2389
    invoke-static {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v15, :cond_1ab

    .line 2390
    invoke-static {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {v15}, Lcom/android/server/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v15

    if-eqz v15, :cond_1ab

    .line 2391
    invoke-static {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v15}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    move-wide/from16 v16, v0

    goto :goto_1c7

    .line 2395
    :cond_1ab
    nop

    .line 2396
    invoke-static {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v15, v15, Lcom/android/server/location/CallerIdentity;->mUid:I

    .line 2397
    move-wide/from16 v16, v0

    .end local v0  # "thresholdInterval":J
    .local v16, "thresholdInterval":J
    invoke-static {v11}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2395
    invoke-virtual {v4, v15, v0}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    goto :goto_1c7

    .line 2388
    .end local v16  # "thresholdInterval":J
    .restart local v0  # "thresholdInterval":J
    :cond_1c2
    move-wide/from16 v16, v0

    .end local v0  # "thresholdInterval":J
    .restart local v16  # "thresholdInterval":J
    goto :goto_1c7

    .line 2378
    .end local v12  # "locationRequest":Landroid/location/LocationRequest;
    .end local v16  # "thresholdInterval":J
    .restart local v0  # "thresholdInterval":J
    :cond_1c5
    move-wide/from16 v16, v0

    .line 2401
    .end local v0  # "thresholdInterval":J
    .end local v11  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v16  # "thresholdInterval":J
    :goto_1c7
    move-wide/from16 v0, v16

    goto :goto_157

    .line 2377
    .end local v16  # "thresholdInterval":J
    .restart local v0  # "thresholdInterval":J
    :cond_1ca
    move-object/from16 v14, p0

    move-wide/from16 v16, v0

    .end local v0  # "thresholdInterval":J
    .restart local v16  # "thresholdInterval":J
    goto :goto_1d9

    .line 2370
    .end local v16  # "thresholdInterval":J
    :cond_1cf
    move-object/from16 v14, p0

    goto :goto_1d9

    .line 2309
    .end local v8  # "backgroundThrottleInterval":J
    .end local v13  # "shouldThrottleRequests":Z
    .end local v18  # "isForegroundOnlyMode":Z
    :catchall_1d2
    move-exception v0

    move-object v14, v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2299
    .end local v6  # "identity":J
    :cond_1d8
    move-object v14, v1

    .line 2405
    :goto_1d9
    invoke-virtual {v2, v5, v4}, Lcom/android/server/LocationManagerService$LocationProvider;->setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2406
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2285
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v0

    .line 2286
    .local v0, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v0, :cond_9

    .line 2287
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 2289
    :cond_9
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .registers 5
    .param p1, "opPackageName"  # Ljava/lang/String;

    .line 3764
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private checkCaller(I)Z
    .registers 7
    .param p1, "pid"  # I

    .line 4169
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 4170
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 4171
    .local v0, "caller":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    if-nez v0, :cond_26

    .line 4172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can NOT find caller, pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4173
    return v1

    .line 4176
    :cond_26
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 4177
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4178
    .local v3, "callers":[Ljava/lang/String;
    aget-object v0, v3, v1

    .line 4180
    .end local v3  # "callers":[Ljava/lang/String;
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPowerSaveWhiteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private checkLocationAccess(IILjava/lang/String;I)Z
    .registers 8
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"  # I

    .line 2142
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 2143
    .local v0, "op":I
    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 2144
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 2145
    return v1

    .line 2149
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2652
    const-string/jumbo v0, "invalid package name: "

    if-eqz p1, :cond_59

    .line 2656
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->checkCaller(I)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 2658
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2659
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2660
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_41

    .line 2663
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    .line 2664
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    return-void

    .line 2663
    .end local v5  # "pkg":Ljava/lang/String;
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 2666
    :cond_2c
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2661
    :cond_41
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2653
    .end local v1  # "uid":I
    .end local v2  # "packages":[Ljava/lang/String;
    :cond_59
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .registers 4
    .param p1, "allowedResolutionLevel"  # I

    .line 2047
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 2050
    return-void

    .line 2048
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V
    .registers 7
    .param p1, "allowedResolutionLevel"  # I
    .param p2, "providerName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2085
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v0

    .line 2086
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_5e

    .line 2087
    const/4 v1, 0x1

    const-string v2, "\""

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    .line 2095
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" location provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2089
    :cond_2a
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" location provider requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2092
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" location provider requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2099
    :cond_5e
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;
    .registers 9
    .param p1, "request"  # Landroid/location/LocationRequest;
    .param p2, "resolutionLevel"  # I
    .param p3, "callerHasLocationHardwarePermission"  # Z

    .line 2622
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 2623
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    if-nez p3, :cond_b

    .line 2625
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    .line 2627
    :cond_b
    const/4 v1, 0x2

    if-ge p2, v1, :cond_40

    .line 2628
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_21

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1b

    goto :goto_27

    .line 2633
    :cond_1b
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_27

    .line 2630
    :cond_21
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 2631
    nop

    .line 2637
    :goto_27
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_35

    .line 2638
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2640
    :cond_35
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_40

    .line 2641
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2645
    :cond_40
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_53

    .line 2646
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2648
    :cond_53
    return-object v0
.end method

.method private dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
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

    .line 4034
    .local p2, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 4035
    .local v1, "listener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    iget-object v2, v1, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 4036
    .local v2, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/location/CallerIdentity;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4036
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    .end local v1  # "listener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    .end local v2  # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    goto :goto_8

    .line 4040
    :cond_4b
    return-void
.end method

.method private ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V
    .registers 14
    .param p1, "pkgs"  # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 820
    const-string v0, "LocationManagerService"

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 821
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, "systemPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 824
    .local v3, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v7, 0x80

    invoke-virtual {v1, v4, v7, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 827
    .local v4, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 828
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 834
    .local v8, "packageName":Ljava/lang/String;
    const/16 v9, 0x40

    :try_start_39
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 835
    .local v9, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v10, v3}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_62

    .line 836
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " resolves service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", but has wrong signature, ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_61} :catch_f3

    .line 838
    goto :goto_27

    .line 843
    .end local v9  # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_62
    nop

    .line 846
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v9, :cond_7e

    .line 847
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found fused provider without metadata: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    goto :goto_27

    .line 851
    :cond_7e
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v10, -0x1

    const-string/jumbo v11, "serviceVersion"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 853
    .local v9, "version":I
    if-nez v9, :cond_dd

    .line 857
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_ac

    .line 858
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not in /system: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    goto/16 :goto_27

    .line 864
    :cond_ac
    invoke-virtual {v1, v2, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_c8

    .line 867
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not signed the same as system: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    goto/16 :goto_27

    .line 874
    :cond_c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found fallback provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void

    .line 877
    :cond_dd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fallback candidate not version 0: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    .end local v7  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8  # "packageName":Ljava/lang/String;
    .end local v9  # "version":I
    goto/16 :goto_27

    .line 840
    .restart local v7  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8  # "packageName":Ljava/lang/String;
    :catch_f3
    move-exception v9

    .line 841
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "missing package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    goto/16 :goto_27

    .line 881
    .end local v7  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8  # "packageName":Ljava/lang/String;
    .end local v9  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static foregroundAsString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "foreground"  # Z

    .line 758
    if-eqz p0, :cond_5

    const-string v0, "foreground"

    goto :goto_7

    :cond_5
    const-string v0, "background"

    :goto_7
    return-object v0
.end method

.method private getAllowedResolutionLevel(II)I
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 2031
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    .line 2033
    const/4 v0, 0x2

    return v0

    .line 2034
    :cond_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_18

    .line 2036
    const/4 v0, 0x1

    return v0

    .line 2038
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private getCallerAllowedResolutionLevel()I
    .registers 3

    .line 2043
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getCallerAllowedResolutionLevel(II)I
    .registers 4
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 4072
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getCallerAllowedResolutionLevel(IILjava/lang/String;)I
    .registers 5
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "pkg"  # Ljava/lang/String;

    .line 4084
    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lmeizu/security/FlymePermissionManager;->askOpsOperation(ILjava/lang/String;I)V

    .line 4086
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getCallerAllowedResolutionLevel(Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 4078
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lmeizu/security/FlymePermissionManager;->askOpsOperation(ILjava/lang/String;I)V

    .line 4080
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    return v0
.end method

.method private getDefaultNetworkLocationProvider()Ljava/lang/String;
    .registers 2

    .line 4420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getDefaultNetworkLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNetworkLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "mcc"  # Ljava/lang/String;

    .line 4426
    const-string v0, "LocationManagerService"

    const-string v1, "com.meizu.location"

    if-eqz p1, :cond_35

    const-string v2, "460"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_35

    .line 4438
    :cond_f
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4439
    move-object v1, v3

    goto :goto_20

    :cond_1f
    nop

    .line 4442
    .local v1, "nlp":Ljava/lang/String;
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultNetworkLocationProvider().isProductInternational() = trueNetworkLocationProvider is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    return-object v1

    .line 4429
    .end local v1  # "nlp":Ljava/lang/String;
    :cond_35
    :goto_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultNetworkLocationProvider(). mcc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NetworkLocationProvider is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    return-object v1
.end method

.method public static final getGeoServiceAction()Ljava/lang/String;
    .registers 1

    .line 4569
    sget-object v0, Lcom/android/server/LocationManagerService;->GEOCODER_LOCATION_SERVICE_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;
    .registers 5
    .param p1, "providerName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2010
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

    .line 2011
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2012
    return-object v1

    .line 2014
    .end local v1  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1d
    goto :goto_6

    .line 2016
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I
    .registers 8
    .param p1, "provider"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2054
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

    .line 2057
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

    .line 2061
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

    .line 2062
    .local v3, "lp":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 2063
    goto :goto_2c

    .line 2066
    :cond_43
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v4

    .line 2067
    .local v4, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v4, :cond_57

    .line 2068
    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v5, :cond_4e

    .line 2070
    return v1

    .line 2071
    :cond_4e
    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v5, :cond_56

    iget-boolean v5, v4, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v5, :cond_57

    .line 2073
    :cond_56
    return v2

    .line 2076
    .end local v3  # "lp":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4  # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_57
    goto :goto_2c

    .line 2079
    :cond_58
    return v1

    .line 2059
    :cond_59
    :goto_59
    return v2

    .line 2056
    :cond_5a
    :goto_5a
    return v1
.end method

.method public static final getNetworkServiceAction()Ljava/lang/String;
    .registers 1

    .line 4565
    const-string v0, "com.android.location.service.v3.NetworkLocationProvider"

    return-object v0
.end method

.method private getPackageNameByPid(I)Ljava/lang/String;
    .registers 7
    .param p1, "pid"  # I

    .line 4185
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4186
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 4187
    .local v1, "runningApps":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4189
    .local v2, "appsIterator":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 4190
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4191
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v3, :cond_12

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_12

    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v4

    .line 4193
    .end local v3  # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_27
    const/4 v3, 0x0

    return-object v3
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 21
    .param p1, "intent"  # Landroid/app/PendingIntent;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "workSource"  # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2603
    move-object v10, p0

    move-object v11, p1

    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    .line 2604
    .local v12, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v12, :cond_27

    .line 2605
    new-instance v13, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    move-object v12, v13

    .line 2607
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    :cond_27
    return-object v12
.end method

.method private getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 21
    .param p1, "listener"  # Landroid/location/ILocationListener;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "workSource"  # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2586
    move-object v10, p0

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2587
    .local v11, "binder":Landroid/os/IBinder;
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/LocationManagerService$Receiver;

    .line 2588
    .local v12, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v12, :cond_3a

    .line 2589
    new-instance v13, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;ZLcom/android/server/LocationManagerService$1;)V

    move-object v12, v13

    .line 2591
    invoke-virtual {v12}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 2593
    const/4 v0, 0x0

    return-object v0

    .line 2595
    :cond_35
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2597
    :cond_3a
    return-object v12
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .registers 3
    .param p1, "resolutionLevel"  # I

    .line 2020
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    .line 2026
    const/4 v0, 0x0

    return-object v0

    .line 2022
    :cond_8
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 2024
    :cond_b
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 33
    .param p1, "location"  # Landroid/location/Location;
    .param p2, "provider"  # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3536
    return-void

    .line 3538
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isComplete()Z

    move-result v3

    const-string v4, "LocationManagerService"

    if-nez v3, :cond_2c

    .line 3539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping incomplete location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    return-void

    .line 3545
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3546
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isPassiveLocked()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 3547
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 3551
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "incoming location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3553
    .local v5, "now":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 3554
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 3558
    :cond_63
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 3559
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    .line 3558
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    .line 3560
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v3, :cond_86

    .line 3561
    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v3, v7

    .line 3563
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 3564
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3567
    :cond_86
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    .line 3568
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 3569
    .local v7, "timeDiffNanos":J
    const-wide v9, 0x8bb2c97000L

    cmp-long v9, v7, v9

    if-lez v9, :cond_9b

    .line 3570
    invoke-virtual {v3, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3575
    :cond_9b
    nop

    .line 3576
    const-string/jumbo v9, "noGPSLocation"

    invoke-virtual {v3, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 3579
    .local v9, "noGPSLocation":Landroid/location/Location;
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 3580
    .local v10, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v10, :cond_2f5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_c1

    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_2fd

    .line 3583
    :cond_c1
    const/4 v11, 0x0

    .line 3584
    .local v11, "coarseLocation":Landroid/location/Location;
    if-eqz v9, :cond_ca

    .line 3585
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v12, v9}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v11

    .line 3588
    :cond_ca
    const/4 v12, 0x0

    .line 3589
    .local v12, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v13, 0x0

    .line 3592
    .local v13, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2bc

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3593
    .local v15, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    .line 3594
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v17, 0x0

    .line 3596
    .local v17, "receiverDead":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v18

    if-nez v18, :cond_f8

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v18

    if-nez v18, :cond_f8

    .line 3597
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_1e2

    .line 3600
    :cond_f8
    move-object/from16 v18, v3

    .end local v3  # "lastLocationCoarseInterval":Landroid/location/Location;
    .local v18, "lastLocationCoarseInterval":Landroid/location/Location;
    iget-object v3, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3601
    .local v3, "receiverUserId":I
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v19

    if-nez v19, :cond_14a

    move-wide/from16 v19, v7

    .end local v7  # "timeDiffNanos":J
    .local v19, "timeDiffNanos":J
    iget-object v7, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v7, v7, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3602
    invoke-virtual {v0, v7}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14c

    .line 3604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for background user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (current user: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_1e2

    .line 3601
    .end local v19  # "timeDiffNanos":J
    .restart local v7  # "timeDiffNanos":J
    :cond_14a
    move-wide/from16 v19, v7

    .line 3611
    .end local v7  # "timeDiffNanos":J
    .restart local v19  # "timeDiffNanos":J
    :cond_14c
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_177

    .line 3613
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for blacklisted app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_1e2

    .line 3620
    :cond_177
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->access$4100(Lcom/android/server/LocationManagerService$Receiver;)I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_180

    .line 3621
    move-object v7, v11

    .local v7, "notifyLocation":Landroid/location/Location;
    goto :goto_182

    .line 3623
    .end local v7  # "notifyLocation":Landroid/location/Location;
    :cond_180
    move-object/from16 v7, p1

    .line 3625
    .restart local v7  # "notifyLocation":Landroid/location/Location;
    :goto_182
    if-eqz v7, :cond_213

    .line 3626
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5300(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/Location;

    move-result-object v8

    .line 3627
    .local v8, "lastLoc":Landroid/location/Location;
    if-eqz v8, :cond_199

    .line 3628
    invoke-static {v7, v8, v15, v5, v6}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v22

    if-eqz v22, :cond_191

    goto :goto_199

    :cond_191
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto/16 :goto_219

    .line 3629
    :cond_199
    :goto_199
    if-nez v8, :cond_1a7

    .line 3630
    move/from16 v22, v3

    .end local v3  # "receiverUserId":I
    .local v22, "receiverUserId":I
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v7}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v8, v3

    .line 3631
    invoke-static {v15, v8}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5302(Lcom/android/server/LocationManagerService$UpdateRecord;Landroid/location/Location;)Landroid/location/Location;

    goto :goto_1ac

    .line 3633
    .end local v22  # "receiverUserId":I
    .restart local v3  # "receiverUserId":I
    :cond_1a7
    move/from16 v22, v3

    .end local v3  # "receiverUserId":I
    .restart local v22  # "receiverUserId":I
    invoke-virtual {v8, v7}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3638
    :goto_1ac
    iget-object v3, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v3, v3, Lcom/android/server/location/CallerIdentity;->mPid:I

    move-object/from16 v23, v8

    .end local v8  # "lastLoc":Landroid/location/Location;
    .local v23, "lastLoc":Landroid/location/Location;
    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v8, v8, Lcom/android/server/location/CallerIdentity;->mUid:I

    move-object/from16 v24, v9

    .end local v9  # "noGPSLocation":Landroid/location/Location;
    .local v24, "noGPSLocation":Landroid/location/Location;
    iget-object v9, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v9, v9, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3642
    move-object/from16 v25, v10

    .end local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v25, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->access$4100(Lcom/android/server/LocationManagerService$Receiver;)I

    move-result v10

    .line 3638
    invoke-direct {v0, v3, v8, v9, v10}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1ee

    .line 3644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping loc update for no op app: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v8, v8, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    nop

    .line 3592
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v15  # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v17  # "receiverDead":Z
    .end local v18  # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v19  # "timeDiffNanos":J
    .end local v22  # "receiverUserId":I
    .end local v23  # "lastLoc":Landroid/location/Location;
    .end local v24  # "noGPSLocation":Landroid/location/Location;
    .end local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    .local v7, "timeDiffNanos":J
    .restart local v9  # "noGPSLocation":Landroid/location/Location;
    .restart local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_1e2
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    .end local v3  # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v7  # "timeDiffNanos":J
    .end local v9  # "noGPSLocation":Landroid/location/Location;
    .end local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18  # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v19  # "timeDiffNanos":J
    .restart local v24  # "noGPSLocation":Landroid/location/Location;
    .restart local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    goto/16 :goto_d0

    .line 3649
    .restart local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .local v7, "notifyLocation":Landroid/location/Location;
    .restart local v15  # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v17  # "receiverDead":Z
    .restart local v22  # "receiverUserId":I
    .restart local v23  # "lastLoc":Landroid/location/Location;
    :cond_1ee
    invoke-virtual {v1, v7}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v3

    if-nez v3, :cond_20b

    .line 3650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException calling onLocationChanged on "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3652
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 3654
    :cond_20b
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    goto :goto_219

    .line 3625
    .end local v22  # "receiverUserId":I
    .end local v23  # "lastLoc":Landroid/location/Location;
    .end local v24  # "noGPSLocation":Landroid/location/Location;
    .end local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "receiverUserId":I
    .restart local v9  # "noGPSLocation":Landroid/location/Location;
    .restart local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_213
    move/from16 v22, v3

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .line 3660
    .end local v3  # "receiverUserId":I
    .end local v9  # "noGPSLocation":Landroid/location/Location;
    .end local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v22  # "receiverUserId":I
    .restart local v24  # "noGPSLocation":Landroid/location/Location;
    .restart local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_219
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "location_disable_status_callbacks"

    const/4 v9, 0x1

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27a

    .line 3662
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusUpdateTimeLocked()J

    move-result-wide v8

    .line 3663
    .local v8, "newStatusUpdateTime":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3664
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getStatusLocked(Landroid/os/Bundle;)I

    move-result v10

    .line 3666
    .local v10, "status":I
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5400(Lcom/android/server/LocationManagerService$UpdateRecord;)J

    move-result-wide v26

    .line 3667
    .local v26, "prevStatusUpdateTime":J
    cmp-long v16, v8, v26

    if-lez v16, :cond_275

    const-wide/16 v28, 0x0

    cmp-long v16, v26, v28

    if-nez v16, :cond_24a

    move-object/from16 v16, v7

    const/4 v7, 0x2

    .end local v7  # "notifyLocation":Landroid/location/Location;
    .local v16, "notifyLocation":Landroid/location/Location;
    if-eq v10, v7, :cond_27c

    goto :goto_24c

    .end local v16  # "notifyLocation":Landroid/location/Location;
    .restart local v7  # "notifyLocation":Landroid/location/Location;
    :cond_24a
    move-object/from16 v16, v7

    .line 3670
    .end local v7  # "notifyLocation":Landroid/location/Location;
    .restart local v16  # "notifyLocation":Landroid/location/Location;
    :goto_24c
    invoke-static {v15, v8, v9}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5402(Lcom/android/server/LocationManagerService$UpdateRecord;J)J

    .line 3671
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v10, v3}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_272

    .line 3672
    const/16 v17, 0x1

    .line 3673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3  # "extras":Landroid/os/Bundle;
    .local v21, "extras":Landroid/os/Bundle;
    const-string v3, "RemoteException calling onStatusChanged on "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27c

    .line 3671
    .end local v21  # "extras":Landroid/os/Bundle;
    .restart local v3  # "extras":Landroid/os/Bundle;
    :cond_272
    move-object/from16 v21, v3

    .end local v3  # "extras":Landroid/os/Bundle;
    .restart local v21  # "extras":Landroid/os/Bundle;
    goto :goto_27c

    .line 3667
    .end local v16  # "notifyLocation":Landroid/location/Location;
    .end local v21  # "extras":Landroid/os/Bundle;
    .restart local v3  # "extras":Landroid/os/Bundle;
    .restart local v7  # "notifyLocation":Landroid/location/Location;
    :cond_275
    move-object/from16 v21, v3

    move-object/from16 v16, v7

    .end local v3  # "extras":Landroid/os/Bundle;
    .end local v7  # "notifyLocation":Landroid/location/Location;
    .restart local v16  # "notifyLocation":Landroid/location/Location;
    .restart local v21  # "extras":Landroid/os/Bundle;
    goto :goto_27c

    .line 3660
    .end local v8  # "newStatusUpdateTime":J
    .end local v10  # "status":I
    .end local v16  # "notifyLocation":Landroid/location/Location;
    .end local v21  # "extras":Landroid/os/Bundle;
    .end local v26  # "prevStatusUpdateTime":J
    .restart local v7  # "notifyLocation":Landroid/location/Location;
    :cond_27a
    move-object/from16 v16, v7

    .line 3679
    .end local v7  # "notifyLocation":Landroid/location/Location;
    .restart local v16  # "notifyLocation":Landroid/location/Location;
    :cond_27c
    :goto_27c
    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v3

    if-lez v3, :cond_292

    invoke-static {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-gez v3, :cond_29d

    .line 3680
    :cond_292
    if-nez v13, :cond_29a

    .line 3681
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 3683
    :cond_29a
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    :cond_29d
    if-eqz v17, :cond_2b0

    .line 3687
    if-nez v12, :cond_2a7

    .line 3688
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 3690
    :cond_2a7
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b0

    .line 3691
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3694
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v15  # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v16  # "notifyLocation":Landroid/location/Location;
    .end local v17  # "receiverDead":Z
    .end local v22  # "receiverUserId":I
    :cond_2b0
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_d0

    .line 3697
    .end local v18  # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v19  # "timeDiffNanos":J
    .end local v24  # "noGPSLocation":Landroid/location/Location;
    .end local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    .local v7, "timeDiffNanos":J
    .restart local v9  # "noGPSLocation":Landroid/location/Location;
    .local v10, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2bc
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v3  # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v7  # "timeDiffNanos":J
    .end local v9  # "noGPSLocation":Landroid/location/Location;
    .end local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18  # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v19  # "timeDiffNanos":J
    .restart local v24  # "noGPSLocation":Landroid/location/Location;
    .restart local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v12, :cond_2da

    .line 3698
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2ca
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2da

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3699
    .local v3, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 3700
    .end local v3  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_2ca

    .line 3702
    :cond_2da
    if-eqz v13, :cond_2f4

    .line 3703
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3704
    .local v3, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 3705
    .end local v3  # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_2e0

    .line 3706
    :cond_2f1
    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3708
    :cond_2f4
    return-void

    .line 3580
    .end local v11  # "coarseLocation":Landroid/location/Location;
    .end local v12  # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v13  # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v18  # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v19  # "timeDiffNanos":J
    .end local v24  # "noGPSLocation":Landroid/location/Location;
    .end local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v3, "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v7  # "timeDiffNanos":J
    .restart local v9  # "noGPSLocation":Landroid/location/Location;
    .restart local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2f5
    move-object/from16 v18, v3

    move-wide/from16 v19, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    .end local v3  # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v7  # "timeDiffNanos":J
    .end local v9  # "noGPSLocation":Landroid/location/Location;
    .end local v10  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18  # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v19  # "timeDiffNanos":J
    .restart local v24  # "noGPSLocation":Landroid/location/Location;
    .restart local v25  # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_2fd
    return-void
.end method

.method private hasGnssPermissions(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1863
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1866
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel(Ljava/lang/String;)I

    move-result v1

    .line 1868
    .local v1, "allowedResolutionLevel":I
    const-string v2, "gps"

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 1872
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1873
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1874
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_26

    .line 1876
    .local v4, "identity":J
    :try_start_18
    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v6
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    .line 1878
    :try_start_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 1876
    return v6

    .line 1878
    :catchall_21
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    throw v6

    .line 1880
    .end local v1  # "allowedResolutionLevel":I
    .end local v2  # "pid":I
    .end local v3  # "uid":I
    .end local v4  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v1
.end method

.method private initSettingProvider()V
    .registers 11

    .line 4373
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4374
    .local v0, "networkStateFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4376
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4377
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/LocationManagerService$NetworkStateReceiver;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/server/LocationManagerService$NetworkStateReceiver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4380
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_provider_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4382
    .local v1, "network_provider_packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "choose_network_provider_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4384
    .local v3, "network_provider_mode":Ljava/lang/String;
    const-string v5, "LocationManagerService"

    if-nez v3, :cond_5d

    .line 4385
    const-string v6, "auto"

    .line 4387
    .local v6, "default_network_provider_mode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "load the default mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4390
    move-object v3, v6

    .line 4393
    .end local v6  # "default_network_provider_mode":Ljava/lang/String;
    :cond_5d
    const/4 v4, 0x0

    .line 4394
    .local v4, "default_network_provider":Ljava/lang/String;
    const-string v6, "baidu"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 4397
    const-string/jumbo v6, "load baidu network provider"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    const-string v4, "com.meizu.location"

    goto :goto_73

    .line 4401
    :cond_6f
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getDefaultNetworkLocationProvider()Ljava/lang/String;

    move-result-object v4

    .line 4404
    :goto_73
    if-eqz v4, :cond_95

    .line 4406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load the default network provider name="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.location.service.v3.NetworkLocationProvider"

    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4413
    :cond_95
    new-instance v2, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v7, v5}, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mModeObserver:Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;

    .line 4414
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mModeObserver:Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->observer()V

    .line 4415
    return-void
.end method

.method private initializeLocked()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 389
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 390
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 391
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 392
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 394
    new-instance v0, Lcom/android/server/location/LocationFudger;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 395
    new-instance v0, Lcom/android/server/location/LocationBlacklist;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 396
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 397
    new-instance v0, Lcom/android/server/location/GeofenceManager;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 400
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeProvidersLocked()V

    .line 403
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$2PZQdsle7L3JDh5TZyL5YAyDqTk;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$tHPgS5c0niUhGntiX8gOnWrZpg8;-><init>(Lcom/android/server/LocationManagerService;)V

    const/16 v4, 0x7d

    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 440
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 441
    const-string/jumbo v1, "location_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$2;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 440
    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 451
    new-instance v0, Lcom/android/server/LocationManagerService$LocDataCollection;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocDataCollection;-><init>(Lcom/android/server/LocationManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocDataCollection:Lcom/android/server/LocationManagerService$LocDataCollection;

    .line 454
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$3;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 454
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 467
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    const-string/jumbo v1, "location_background_throttle_interval_ms"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$4;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 467
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 478
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 479
    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$5;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 478
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    const-string/jumbo v1, "location_ignore_settings_package_whitelist"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Lcom/android/server/LocationManagerService$6;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 490
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 502
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 503
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 504
    .local v0, "localPowerManager":Landroid/os/PowerManagerInternal;
    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 515
    new-instance v1, Lcom/android/server/LocationManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;)V

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 522
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/LocationManagerService$7;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 524
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 525
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/LocationManagerService$8;

    invoke-direct {v4, p0}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 559
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 560
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->onUserChangedLocked(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onBackgroundThrottleWhitelistChangedLocked()V

    .line 564
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onIgnoreSettingsWhitelistChangedLocked()V

    .line 565
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getLocationPowerSaveMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 568
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 569
    .local v2, "powerSave":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 571
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/LocationManagerService$9;

    invoke-direct {v4, p0}, Lcom/android/server/LocationManagerService$9;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 589
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPowerSaveWhiteList:Ljava/util/List;

    const-string v4, "com.meizu.battery"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPowerSaveWhiteList:Ljava/util/List;

    const-string v4, "com.meizu.pps"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPowerSaveWhiteList:Ljava/util/List;

    const-string v4, "android"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPowerSaveWhiteList:Ljava/util/List;

    const-string/jumbo v4, "system"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method private initializeProvidersLocked()V
    .registers 33
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 892
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/LocationManagerService$LocationProvider;

    const/4 v2, 0x0

    const-string/jumbo v3, "passive"

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 893
    .local v1, "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 894
    new-instance v3, Lcom/android/server/location/PassiveProvider;

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 895
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 897
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7f

    .line 899
    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v5, "gps"

    invoke-direct {v3, v0, v5, v4, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    .line 900
    .local v3, "gnssProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 903
    new-instance v5, Lcom/android/server/location/GnssLocationProvider;

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 905
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V

    .line 906
    .local v5, "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    invoke-virtual {v3, v5}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 908
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    .line 909
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 910
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    .line 911
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    .line 912
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 913
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 914
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 915
    nop

    .line 916
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    .line 917
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 918
    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 932
    .end local v3  # "gnssProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v5  # "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    :cond_7f
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 933
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x1070043

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, "pkgs":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "certificates for location providers pulled from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 936
    const-string v8, "LocationManagerService"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->initSettingProvider()V

    .line 942
    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked([Ljava/lang/String;)V

    .line 945
    new-instance v7, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string/jumbo v9, "network"

    invoke-direct {v7, v0, v9, v4, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    .line 946
    .local v7, "networkProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x1110074

    const v14, 0x1040190

    const v15, 0x1070043

    const-string v12, "com.android.location.service.v3.NetworkLocationProvider"

    move-object v11, v7

    invoke-static/range {v10 .. v15}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v9

    .line 953
    .local v9, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v9, :cond_d4

    .line 954
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-direct {v0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 956
    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_da

    .line 958
    :cond_d4
    const-string/jumbo v10, "no network location provider found"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :goto_da
    new-instance v10, Lcom/android/server/LocationManagerService$LocationProvider;

    const-string v11, "fused"

    invoke-direct {v10, v0, v11, v2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 963
    .local v10, "fusedProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v15, 0x111006c

    const v16, 0x1040176

    const v17, 0x1070043

    const-string v14, "com.android.location.service.FusedLocationProvider"

    move-object v13, v10

    invoke-static/range {v12 .. v17}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v11

    .line 970
    .local v11, "fusedProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v11, :cond_101

    .line 971
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-direct {v0, v10}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 973
    invoke-virtual {v10, v11}, Lcom/android/server/LocationManagerService$LocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_10e

    .line 975
    :cond_101
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Location service needs a fused location provider"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "no fused location provider found"

    invoke-static {v8, v13, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 980
    :goto_10e
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x111006d

    const v14, 0x1040177

    invoke-static {v12, v13, v14, v5}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;III)Lcom/android/server/location/GeocoderProxy;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 984
    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v5, :cond_126

    .line 985
    const-string/jumbo v5, "no geocoder provider found"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_126
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v13, 0x111006e

    const v14, 0x1040178

    const v15, 0x1070043

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    const/16 v17, 0x0

    move-object/from16 v16, v5

    invoke-static/range {v12 .. v17}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v5

    .line 995
    .local v5, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v5, :cond_142

    .line 996
    const-string v12, "Unable to bind FLP Geofence proxy."

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_142
    const v12, 0x1040148

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    .line 1001
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v12, :cond_179

    .line 1002
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".nlp:ready"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    .line 1003
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".nlp:screen"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    .line 1007
    :cond_179
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v12

    .line 1008
    .local v12, "activityRecognitionHardwareIsSupported":Z
    const/4 v13, 0x0

    .line 1009
    .local v13, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    if-eqz v12, :cond_189

    .line 1010
    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v13

    move-object/from16 v19, v13

    goto :goto_190

    .line 1012
    :cond_189
    const-string v14, "Hardware Activity-Recognition not supported."

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v13

    .line 1014
    .end local v13  # "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    .local v19, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    :goto_190
    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v16, 0x1110066

    const v17, 0x1040136

    const v18, 0x1070043

    move v14, v12

    move-object/from16 v15, v19

    invoke-static/range {v13 .. v18}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v13

    .line 1021
    .local v13, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v13, :cond_1a9

    .line 1022
    const-string v14, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_1a9
    const v8, 0x1070065

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1027
    .local v8, "testProviderStrings":[Ljava/lang/String;
    array-length v14, v8

    const/4 v2, 0x0

    :goto_1b2
    if-ge v2, v14, :cond_239

    aget-object v4, v8, v2

    .line 1028
    .local v4, "testProviderString":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1029
    .local v15, "fragments":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v20, v15, v18

    move-object/from16 v21, v1

    .end local v1  # "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .local v21, "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "name":Ljava/lang/String;
    new-instance v20, Lcom/android/internal/location/ProviderProperties;

    const/16 v17, 0x1

    aget-object v22, v15, v17

    .line 1031
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    const/16 v22, 0x2

    aget-object v22, v15, v22

    .line 1032
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    const/16 v22, 0x3

    aget-object v22, v15, v22

    .line 1033
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    const/16 v22, 0x4

    aget-object v22, v15, v22

    .line 1034
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    const/16 v22, 0x5

    aget-object v22, v15, v22

    .line 1035
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v22, 0x6

    aget-object v22, v15, v22

    .line 1036
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    const/16 v22, 0x7

    aget-object v22, v15, v22

    .line 1037
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v29

    const/16 v22, 0x8

    aget-object v22, v15, v22

    .line 1038
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v22, 0x9

    aget-object v22, v15, v22

    .line 1039
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v22, v20

    invoke-direct/range {v22 .. v31}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1040
    .local v22, "properties":Lcom/android/internal/location/ProviderProperties;
    move-object/from16 v20, v3

    .end local v3  # "resources":Landroid/content/res/Resources;
    .local v20, "resources":Landroid/content/res/Resources;
    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    move-object/from16 v23, v4

    const/4 v4, 0x0

    .end local v4  # "testProviderString":Ljava/lang/String;
    .local v23, "testProviderString":Ljava/lang/String;
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 1041
    .local v3, "testProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1042
    new-instance v4, Lcom/android/server/location/MockProvider;

    move-object/from16 v24, v1

    .end local v1  # "name":Ljava/lang/String;
    .local v24, "name":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    .end local v22  # "properties":Lcom/android/internal/location/ProviderProperties;
    .local v0, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v4, v1, v3, v0}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 1027
    .end local v0  # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v3  # "testProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v15  # "fragments":[Ljava/lang/String;
    .end local v23  # "testProviderString":Ljava/lang/String;
    .end local v24  # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v17

    move-object/from16 v3, v20

    move-object/from16 v1, v21

    goto/16 :goto_1b2

    .line 1044
    .end local v20  # "resources":Landroid/content/res/Resources;
    .end local v21  # "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .local v1, "passiveProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .local v3, "resources":Landroid/content/res/Resources;
    :cond_239
    return-void
.end method

.method private isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method private static isImportanceForeground(I)Z
    .registers 2
    .param p0, "importance"  # I

    .line 762
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isLocationEnabled()Z
    .registers 2

    .line 3447
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method private isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .registers 4
    .param p1, "record"  # Lcom/android/server/LocationManagerService$UpdateRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2455
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2456
    const/4 v0, 0x0

    return v0

    .line 2459
    :cond_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 2460
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v1, v1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 2459
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2461
    const/4 v0, 0x1

    return v0

    .line 2464
    :cond_1e
    invoke-static {p1}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z
    .registers 5
    .param p1, "callerIdentity"  # Lcom/android/server/location/CallerIdentity;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2441
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->mUid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_8

    .line 2442
    return v1

    .line 2445
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2446
    return v1

    .line 2449
    :cond_13
    iget-object v0, p1, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .registers 5
    .param p0, "workSource"  # Landroid/os/WorkSource;

    .line 2412
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_11

    .line 2415
    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 2419
    :cond_11
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    .line 2420
    .local v0, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2421
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 2420
    :goto_2b
    return v1
.end method

.method private linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .registers 7
    .param p1, "binder"  # Landroid/os/IBinder;
    .param p2, "linkedListener"  # Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 3265
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_6

    .line 3266
    const/4 v0, 0x1

    return v0

    .line 3267
    :catch_6
    move-exception v1

    .line 3270
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not link "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " death callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3271
    return v0
.end method

.method private mayChangeSettingProvider(Ljava/lang/String;)V
    .registers 16
    .param p1, "mcc"  # Ljava/lang/String;

    .line 4263
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getDefaultNetworkLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4264
    .local v0, "providerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_provider_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4266
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 4267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change the network provider pkgname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4273
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v2, :cond_4b

    .line 4274
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v3, 0x111006d

    const v5, 0x1040177

    const v6, 0x1070043

    invoke-static {v2, v3, v5, v6}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;III)Lcom/android/server/location/GeocoderProxy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 4280
    :cond_4b
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v2, :cond_55

    .line 4281
    const-string/jumbo v2, "no geocoder provider found"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    :cond_55
    const/4 v2, 0x0

    .line 4286
    .local v2, "networkProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string/jumbo v6, "network"

    if-eqz v5, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 4287
    .local v5, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v5}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 4288
    move-object v2, v5

    .line 4289
    goto :goto_78

    .line 4291
    .end local v5  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_77
    goto :goto_5c

    .line 4292
    :cond_78
    :goto_78
    if-nez v2, :cond_ab

    .line 4293
    const-string/jumbo v3, "no network location provider added before"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    new-instance v3, Lcom/android/server/LocationManagerService$LocationProvider;

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, p0, v6, v5, v7}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V

    move-object v2, v3

    .line 4295
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1110074

    const v12, 0x1040190

    const v13, 0x1070043

    const-string v10, "com.android.location.service.v3.NetworkLocationProvider"

    move-object v9, v2

    invoke-static/range {v8 .. v13}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v3

    .line 4303
    .local v3, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v3, :cond_a5

    .line 4304
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4305
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_ab

    .line 4307
    :cond_a5
    const-string/jumbo v5, "no network location provider found"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    .end local v2  # "networkProviderManager":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v3  # "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    :cond_ab
    :goto_ab
    return-void
.end method

.method private onAppOpChangedLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 599
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

    .line 600
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 601
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_a

    .line 602
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

    .line 603
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 604
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_21

    .line 605
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

    .line 767
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

    .line 768
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 769
    .end local v1  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_6

    .line 770
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

    .line 774
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 775
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 776
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v1

    .line 775
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 779
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 778
    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 782
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 785
    :cond_34
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 786
    .local v2, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 787
    .end local v2  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_3a

    .line 788
    :cond_4a
    return-void
.end method

.method private onBatterySaverModeChangedLocked(I)V
    .registers 4
    .param p1, "newLocationMode"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Saver location mode changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 619
    invoke-static {v1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {p1}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    if-ne v0, p1, :cond_2d

    .line 624
    return-void

    .line 627
    :cond_2d
    iput p1, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 628
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 629
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 630
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_35

    .line 631
    :cond_45
    return-void
.end method

.method private onIgnoreSettingsWhitelistChangedLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 793
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    .line 794
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArraySet;

    move-result-object v1

    .line 793
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 796
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 797
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 796
    const-string/jumbo v1, "location_ignore_settings_package_whitelist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 800
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 803
    :cond_34
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 804
    .local v2, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 805
    .end local v2  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_3a

    .line 806
    :cond_4a
    return-void
.end method

.method private onLocationModeChangedLocked(Z)V
    .registers 5
    .param p1, "broadcast"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "location enabled is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->isLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
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

    .line 649
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onLocationModeChangedLocked()V

    .line 650
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_21

    .line 652
    :cond_31
    if-eqz p1, :cond_41

    .line 655
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 659
    :cond_41
    return-void
.end method

.method private onPackageDisappearedLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 673
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v3, v3, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 674
    if-nez v0, :cond_29

    .line 675
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 677
    :cond_29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .end local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_35
    goto :goto_b

    .line 687
    :cond_36
    if-eqz v0, :cond_4c

    .line 688
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 689
    .restart local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 690
    .end local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_3c

    .line 692
    :cond_4c
    return-void
.end method

.method private onPermissionsChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 609
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

    .line 610
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 611
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_6

    .line 612
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

    .line 663
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

    .line 664
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onAllowedChangedLocked()V

    .line 665
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_6

    .line 666
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

    .line 635
    iget v0, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 636
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

    .line 637
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 638
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_b

    .line 640
    :cond_1b
    return-void
.end method

.method private onUidImportanceChangedLocked(II)V
    .registers 12
    .param p1, "uid"  # I
    .param p2, "importance"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 696
    invoke-static {p2}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v6

    .line 697
    .local v6, "foreground":Z
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    move-object v7, v0

    .line 698
    .local v7, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 699
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 700
    .local v2, "provider":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 701
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-ne v5, p1, :cond_87

    .line 702
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eq v5, v6, :cond_87

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "request from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is now "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 704
    const-string v8, "LocationManagerService"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {v4, v6}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1600(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 709
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 710
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v4  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_87
    goto :goto_36

    .line 714
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v2  # "provider":Ljava/lang/String;
    :cond_88
    goto :goto_1a

    .line 715
    :cond_89
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 716
    .local v1, "provider":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 717
    .end local v1  # "provider":Ljava/lang/String;
    goto :goto_8d

    .line 719
    :cond_9d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;->INSTANCE:Lcom/android/server/-$$Lambda$qoNbXUvSu3yuTPVXPUfZW_HDrTQ;

    move-object v0, p0

    move v4, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 723
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    sget-object v3, Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;->INSTANCE:Lcom/android/server/-$$Lambda$HALkbmbB2IPr_wdFkPjiIWCzJsY;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 727
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    sget-object v3, Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;->INSTANCE:Lcom/android/server/-$$Lambda$hu439-4T6QBT8QyZnspMtXqICWs;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V

    .line 729
    return-void
.end method

.method private onUserChangedLocked(I)V
    .registers 5
    .param p1, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1048
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    .line 1049
    return-void

    .line 1053
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground user is changing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
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

    .line 1058
    .local v1, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUserChangingLocked()V

    .line 1059
    .end local v1  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_21

    .line 1061
    :cond_31
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 1062
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onUserProfilesChangedLocked()V

    .line 1064
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 1067
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->onLocationModeChangedLocked(Z)V

    .line 1068
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onProviderAllowedChangedLocked()V

    .line 1071
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 1072
    .local v2, "p":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1073
    .end local v2  # "p":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_48

    .line 1074
    :cond_58
    return-void
.end method

.method private onUserProfilesChangedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 811
    return-void
.end method

.method private removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V
    .registers 22
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

    .line 3227
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p3, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    if-nez v2, :cond_7

    .line 3228
    return-void

    .line 3231
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3232
    .local v3, "binder":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3233
    move-object/from16 v5, p3

    :try_start_10
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$LinkedListener;

    move-object v6, v0

    .line 3234
    .local v6, "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    if-nez v6, :cond_1b

    .line 3235
    monitor-exit v4

    return-void

    .line 3237
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_60

    .line 3239
    .local v7, "identity":J
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eq v2, v0, :cond_27

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    if-ne v2, v0, :cond_4b

    .line 3241
    :cond_27
    iget-object v9, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v10, 0x1

    .line 3243
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-ne v2, v0, :cond_31

    .line 3244
    const/4 v0, 0x2

    move v11, v0

    goto :goto_33

    .line 3245
    :cond_31
    const/4 v0, 0x3

    move v11, v0

    :goto_33
    iget-object v0, v6, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v12, v0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v15, v6, Lcom/android/server/LocationManagerService$LinkedListener;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget-object v15, v15, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 3251
    invoke-virtual {v0, v15}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    .line 3241
    const/4 v15, 0x0

    move/from16 v17, v0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_59

    .line 3255
    :cond_4b
    :try_start_4b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3256
    nop

    .line 3257
    invoke-direct {v1, v3, v6}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_60

    .line 3258
    move-object/from16 v9, p1

    :try_start_54
    invoke-virtual {v2, v9}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    .line 3259
    .end local v6  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v7  # "identity":J
    monitor-exit v4

    .line 3260
    return-void

    .line 3255
    .restart local v6  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .restart local v7  # "identity":J
    :catchall_59
    move-exception v0

    move-object/from16 v9, p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3  # "binder":Landroid/os/IBinder;
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "listener":Landroid/os/IInterface;, "TTListener;"
    .end local p2  # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .end local p3  # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    throw v0

    .line 3259
    .end local v6  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListener;, "Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;"
    .end local v7  # "identity":J
    .restart local v3  # "binder":Landroid/os/IBinder;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "listener":Landroid/os/IInterface;, "TTListener;"
    .restart local p2  # "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .restart local p3  # "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListener<TTListener;>;>;"
    :catchall_60
    move-exception v0

    move-object/from16 v9, p1

    :goto_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_65

    throw v0

    :catchall_65
    move-exception v0

    goto :goto_63
.end method

.method private removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 3
    .param p1, "provider"  # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2003
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 2005
    :cond_c
    return-void
.end method

.method private removeUpdatesForPowerSave(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .registers 16
    .param p1, "listener"  # Landroid/location/ILocationListener;
    .param p2, "intent"  # Landroid/app/PendingIntent;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "pid"  # I
    .param p5, "uid"  # I

    .line 4048
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 4049
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4050
    const/4 v8, 0x0

    .line 4051
    .local v8, "workSource":Landroid/os/WorkSource;
    const/4 v9, 0x0

    .line 4053
    .local v9, "hideFromAppOps":Z
    if-eqz p2, :cond_16

    .line 4054
    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    move-object v6, v8

    move v7, v9

    :try_start_11
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_21

    .line 4057
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_16
    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-object v5, p3

    move-object v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    .line 4061
    .restart local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_33

    .line 4063
    .local v2, "identity":J
    :try_start_25
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2e

    .line 4065
    :try_start_28
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4066
    nop

    .line 4067
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v2  # "identity":J
    .end local v8  # "workSource":Landroid/os/WorkSource;
    .end local v9  # "hideFromAppOps":Z
    monitor-exit v0

    .line 4068
    return-void

    .line 4065
    .restart local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v2  # "identity":J
    .restart local v8  # "workSource":Landroid/os/WorkSource;
    .restart local v9  # "hideFromAppOps":Z
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "listener":Landroid/location/ILocationListener;
    .end local p2  # "intent":Landroid/app/PendingIntent;
    .end local p3  # "packageName":Ljava/lang/String;
    .end local p4  # "pid":I
    .end local p5  # "uid":I
    throw v4

    .line 4067
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v2  # "identity":J
    .end local v8  # "workSource":Landroid/os/WorkSource;
    .end local v9  # "hideFromAppOps":Z
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "listener":Landroid/location/ILocationListener;
    .restart local p2  # "intent":Landroid/app/PendingIntent;
    .restart local p3  # "packageName":Ljava/lang/String;
    .restart local p4  # "pid":I
    .restart local p5  # "uid":I
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v1
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 7
    .param p1, "receiver"  # Lcom/android/server/LocationManagerService$Receiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2851
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

    .line 2853
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocDataCollection:Lcom/android/server/LocationManagerService$LocDataCollection;

    if-eqz v0, :cond_26

    .line 2854
    invoke-virtual {v0, p1}, Lcom/android/server/LocationManagerService$LocDataCollection;->eventRemove(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2857
    :cond_26
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/LocationManagerService$Receiver;->access$5200(Lcom/android/server/LocationManagerService$Receiver;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2858
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 2860
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2863
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v1, v1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    :cond_4f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2871
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2872
    .local v1, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2873
    .local v2, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_7b

    .line 2875
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2877
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-static {v4, v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 2878
    .end local v4  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_64

    .line 2880
    :cond_74
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2884
    :cond_7b
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2885
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2886
    .end local v3  # "provider":Ljava/lang/String;
    goto :goto_7f

    .line 2887
    :cond_8f
    return-void
.end method

.method private reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .registers 8
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"  # I

    .line 2130
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 2131
    .local v0, "op":I
    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 2132
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 2133
    return v1

    .line 2137
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;II)V
    .registers 32
    .param p1, "request"  # Landroid/location/LocationRequest;
    .param p2, "listener"  # Landroid/location/ILocationListener;
    .param p3, "intent"  # Landroid/app/PendingIntent;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "pid"  # I
    .param p6, "uid"  # I

    .line 2680
    move-object/from16 v8, p0

    move-object/from16 v7, p4

    move/from16 v6, p5

    move/from16 v5, p6

    .line 2682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2680
    const/16 v1, 0x1a

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 2684
    iget-object v4, v8, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2685
    if-nez p1, :cond_22

    :try_start_16
    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1a

    move-object v3, v0

    .end local p1  # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    goto :goto_24

    .line 2756
    .end local v0  # "request":Landroid/location/LocationRequest;
    .restart local p1  # "request":Landroid/location/LocationRequest;
    :catchall_1a
    move-exception v0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    goto/16 :goto_13e

    .line 2685
    :cond_22
    move-object/from16 v3, p1

    .line 2686
    .end local p1  # "request":Landroid/location/LocationRequest;
    .local v3, "request":Landroid/location/LocationRequest;
    :goto_24
    :try_start_24
    invoke-direct {v8, v7}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2689
    invoke-direct {v8, v6, v5, v7}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel(IILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 2692
    .local v2, "allowedResolutionLevel":I
    nop

    .line 2693
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2692
    invoke-direct {v8, v2, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2694
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_139

    move-object/from16 v18, v0

    .line 2695
    .local v18, "workSource":Landroid/os/WorkSource;
    const/4 v0, 0x0

    if-eqz v18, :cond_52

    :try_start_3d
    invoke-virtual/range {v18 .. v18}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    .line 2696
    iget-object v1, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_4b

    goto :goto_52

    .line 2756
    .end local v2  # "allowedResolutionLevel":I
    .end local v18  # "workSource":Landroid/os/WorkSource;
    :catchall_4b
    move-exception v0

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    goto/16 :goto_13e

    .line 2699
    .restart local v2  # "allowedResolutionLevel":I
    .restart local v18  # "workSource":Landroid/os/WorkSource;
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_139

    move/from16 v19, v1

    .line 2700
    .local v19, "hideFromAppOps":Z
    if-eqz v19, :cond_61

    .line 2701
    :try_start_5a
    iget-object v1, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_4b

    .line 2704
    :cond_61
    :try_start_61
    invoke-virtual {v3}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v1
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_139

    if-eqz v1, :cond_6e

    .line 2705
    :try_start_67
    iget-object v1, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_4b

    .line 2708
    :cond_6e
    :try_start_6e
    iget-object v0, v8, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 2709
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_7c

    move v0, v1

    goto :goto_7d

    :cond_7c
    move v0, v9

    :goto_7d
    move v15, v0

    .line 2711
    .local v15, "callerHasLocationHardwarePermission":Z
    invoke-direct {v8, v3, v2, v15}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v0

    move-object v14, v0

    .line 2720
    .local v14, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_139

    move-wide/from16 v20, v10

    .line 2725
    .local v20, "identity":J
    :try_start_89
    invoke-direct {v8, v6, v5, v7, v2}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_12c

    .line 2727
    if-nez p3, :cond_a5

    if-eqz p2, :cond_91

    goto :goto_a5

    .line 2728
    :cond_91
    :try_start_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "allowedResolutionLevel":I
    .end local v3  # "request":Landroid/location/LocationRequest;
    .end local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v15  # "callerHasLocationHardwarePermission":Z
    .end local v18  # "workSource":Landroid/os/WorkSource;
    .end local v19  # "hideFromAppOps":Z
    .end local v20  # "identity":J
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p2  # "listener":Landroid/location/ILocationListener;
    .end local p3  # "intent":Landroid/app/PendingIntent;
    .end local p4  # "packageName":Ljava/lang/String;
    .end local p5  # "pid":I
    .end local p6  # "uid":I
    throw v0

    .line 2754
    .restart local v2  # "allowedResolutionLevel":I
    .restart local v3  # "request":Landroid/location/LocationRequest;
    .restart local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v15  # "callerHasLocationHardwarePermission":Z
    .restart local v18  # "workSource":Landroid/os/WorkSource;
    .restart local v19  # "hideFromAppOps":Z
    .restart local v20  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p2  # "listener":Landroid/location/ILocationListener;
    .restart local p3  # "intent":Landroid/app/PendingIntent;
    .restart local p4  # "packageName":Ljava/lang/String;
    .restart local p5  # "pid":I
    .restart local p6  # "uid":I
    :catchall_9a
    move-exception v0

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    move-object v1, v14

    move/from16 v24, v15

    goto/16 :goto_135

    .line 2729
    :cond_a5
    :goto_a5
    if-eqz p3, :cond_b2

    if-nez p2, :cond_aa

    goto :goto_b2

    .line 2730
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "allowedResolutionLevel":I
    .end local v3  # "request":Landroid/location/LocationRequest;
    .end local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v15  # "callerHasLocationHardwarePermission":Z
    .end local v18  # "workSource":Landroid/os/WorkSource;
    .end local v19  # "hideFromAppOps":Z
    .end local v20  # "identity":J
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p2  # "listener":Landroid/location/ILocationListener;
    .end local p3  # "intent":Landroid/app/PendingIntent;
    .end local p4  # "packageName":Ljava/lang/String;
    .end local p5  # "pid":I
    .end local p6  # "uid":I
    throw v0
    :try_end_b2
    .catchall {:try_start_91 .. :try_end_b2} :catchall_9a

    .line 2734
    .restart local v2  # "allowedResolutionLevel":I
    .restart local v3  # "request":Landroid/location/LocationRequest;
    .restart local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v15  # "callerHasLocationHardwarePermission":Z
    .restart local v18  # "workSource":Landroid/os/WorkSource;
    .restart local v19  # "hideFromAppOps":Z
    .restart local v20  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p2  # "listener":Landroid/location/ILocationListener;
    .restart local p3  # "intent":Landroid/app/PendingIntent;
    .restart local p4  # "packageName":Ljava/lang/String;
    .restart local p5  # "pid":I
    .restart local p6  # "uid":I
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v0, v8, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz p2, :cond_bb

    move/from16 v16, v1

    goto :goto_bd

    :cond_bb
    move/from16 v16, v9

    :goto_bd
    if-eqz p3, :cond_c0

    goto :goto_c1

    :cond_c0
    move v1, v9

    :goto_c1
    const/16 v17, 0x0

    iget-object v9, v8, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2739
    invoke-virtual {v9, v7}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v22
    :try_end_c9
    .catchall {:try_start_b2 .. :try_end_c9} :catchall_12c

    .line 2734
    move-object v9, v0

    move-object/from16 v12, p4

    move-object v13, v3

    move-object/from16 v23, v14

    .end local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v23, "sanitizedRequest":Landroid/location/LocationRequest;
    move/from16 v14, v16

    move/from16 v24, v15

    .end local v15  # "callerHasLocationHardwarePermission":Z
    .local v24, "callerHasLocationHardwarePermission":Z
    move v15, v1

    move-object/from16 v16, v17

    move/from16 v17, v22

    :try_start_d8
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_123

    .line 2742
    if-eqz p3, :cond_f9

    .line 2743
    move-object/from16 v1, p0

    move v9, v2

    .end local v2  # "allowedResolutionLevel":I
    .local v9, "allowedResolutionLevel":I
    move-object/from16 v2, p3

    move-object v10, v3

    .end local v3  # "request":Landroid/location/LocationRequest;
    .local v10, "request":Landroid/location/LocationRequest;
    move/from16 v3, p5

    move-object v11, v4

    move/from16 v4, p6

    move v12, v5

    move-object/from16 v5, p4

    move-object/from16 v6, v18

    move-object v13, v7

    move/from16 v7, v19

    :try_start_f0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0
    :try_end_f4
    .catchall {:try_start_f0 .. :try_end_f4} :catchall_f5

    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_110

    .line 2754
    .end local v0  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_f5
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_135

    .line 2746
    .end local v9  # "allowedResolutionLevel":I
    .end local v10  # "request":Landroid/location/LocationRequest;
    .restart local v2  # "allowedResolutionLevel":I
    .restart local v3  # "request":Landroid/location/LocationRequest;
    :cond_f9
    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    .end local v2  # "allowedResolutionLevel":I
    .end local v3  # "request":Landroid/location/LocationRequest;
    .restart local v9  # "allowedResolutionLevel":I
    .restart local v10  # "request":Landroid/location/LocationRequest;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, v18

    move/from16 v7, v19

    :try_start_10c
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    .line 2750
    .restart local v0  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :goto_110
    iput-object v10, v0, Lcom/android/server/LocationManagerService$Receiver;->mLocationRequest:Landroid/location/LocationRequest;
    :try_end_112
    .catchall {:try_start_10c .. :try_end_112} :catchall_11f

    .line 2752
    move-object/from16 v1, v23

    .end local v23  # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v1, "sanitizedRequest":Landroid/location/LocationRequest;
    :try_start_114
    invoke-direct {v8, v1, v0, v12, v13}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_11d

    .line 2754
    .end local v0  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_117
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2755
    nop

    .line 2756
    .end local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v9  # "allowedResolutionLevel":I
    .end local v18  # "workSource":Landroid/os/WorkSource;
    .end local v19  # "hideFromAppOps":Z
    .end local v20  # "identity":J
    .end local v24  # "callerHasLocationHardwarePermission":Z
    monitor-exit v11

    .line 2757
    return-void

    .line 2754
    .restart local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9  # "allowedResolutionLevel":I
    .restart local v18  # "workSource":Landroid/os/WorkSource;
    .restart local v19  # "hideFromAppOps":Z
    .restart local v20  # "identity":J
    .restart local v24  # "callerHasLocationHardwarePermission":Z
    :catchall_11d
    move-exception v0

    goto :goto_135

    .end local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v23  # "sanitizedRequest":Landroid/location/LocationRequest;
    :catchall_11f
    move-exception v0

    move-object/from16 v1, v23

    .end local v23  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    goto :goto_135

    .end local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v9  # "allowedResolutionLevel":I
    .end local v10  # "request":Landroid/location/LocationRequest;
    .restart local v2  # "allowedResolutionLevel":I
    .restart local v3  # "request":Landroid/location/LocationRequest;
    .restart local v23  # "sanitizedRequest":Landroid/location/LocationRequest;
    :catchall_123
    move-exception v0

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    move-object/from16 v1, v23

    .end local v2  # "allowedResolutionLevel":I
    .end local v3  # "request":Landroid/location/LocationRequest;
    .end local v23  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9  # "allowedResolutionLevel":I
    .restart local v10  # "request":Landroid/location/LocationRequest;
    goto :goto_135

    .end local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v9  # "allowedResolutionLevel":I
    .end local v10  # "request":Landroid/location/LocationRequest;
    .end local v24  # "callerHasLocationHardwarePermission":Z
    .restart local v2  # "allowedResolutionLevel":I
    .restart local v3  # "request":Landroid/location/LocationRequest;
    .restart local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v15  # "callerHasLocationHardwarePermission":Z
    :catchall_12c
    move-exception v0

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    move-object v1, v14

    move/from16 v24, v15

    .end local v2  # "allowedResolutionLevel":I
    .end local v3  # "request":Landroid/location/LocationRequest;
    .end local v14  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v15  # "callerHasLocationHardwarePermission":Z
    .restart local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v9  # "allowedResolutionLevel":I
    .restart local v10  # "request":Landroid/location/LocationRequest;
    .restart local v24  # "callerHasLocationHardwarePermission":Z
    :goto_135
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v10  # "request":Landroid/location/LocationRequest;
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p2  # "listener":Landroid/location/ILocationListener;
    .end local p3  # "intent":Landroid/app/PendingIntent;
    .end local p4  # "packageName":Ljava/lang/String;
    .end local p5  # "pid":I
    .end local p6  # "uid":I
    throw v0

    .line 2756
    .end local v1  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v9  # "allowedResolutionLevel":I
    .end local v18  # "workSource":Landroid/os/WorkSource;
    .end local v19  # "hideFromAppOps":Z
    .end local v20  # "identity":J
    .end local v24  # "callerHasLocationHardwarePermission":Z
    .restart local v3  # "request":Landroid/location/LocationRequest;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p2  # "listener":Landroid/location/ILocationListener;
    .restart local p3  # "intent":Landroid/app/PendingIntent;
    .restart local p4  # "packageName":Ljava/lang/String;
    .restart local p5  # "pid":I
    .restart local p6  # "uid":I
    :catchall_139
    move-exception v0

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move-object v13, v7

    .end local v3  # "request":Landroid/location/LocationRequest;
    .restart local v10  # "request":Landroid/location/LocationRequest;
    :goto_13e
    monitor-exit v11
    :try_end_13f
    .catchall {:try_start_117 .. :try_end_13f} :catchall_140

    throw v0

    :catchall_140
    move-exception v0

    goto :goto_13e
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;ILjava/lang/String;)V
    .registers 14
    .param p1, "request"  # Landroid/location/LocationRequest;
    .param p2, "receiver"  # Lcom/android/server/LocationManagerService$Receiver;
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2765
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2766
    :cond_4
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 2767
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_c2

    .line 2771
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocDataCollection:Lcom/android/server/LocationManagerService$LocDataCollection;

    if-eqz v0, :cond_11

    .line 2772
    invoke-virtual {v0, p2, p1}, Lcom/android/server/LocationManagerService$LocDataCollection;->eventRequest(Lcom/android/server/LocationManagerService$Receiver;Landroid/location/LocationRequest;)V

    .line 2775
    :cond_11
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v7

    .line 2776
    .local v7, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v7, :cond_aa

    .line 2780
    new-instance v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;Lcom/android/server/LocationManagerService$1;)V

    .line 2782
    .local v0, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    invoke-static {v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1500(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "foreground"

    goto :goto_64

    :cond_62
    const-string v2, "background"

    :goto_64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    iget-object v2, p2, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2786
    const-string v2, " [whitelisted]"

    goto :goto_74

    :cond_72
    const-string v2, ""

    :goto_74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2782
    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget-object v1, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2790
    .local v1, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/4 v2, 0x0

    if-eqz v1, :cond_93

    .line 2791
    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$5100(Lcom/android/server/LocationManagerService$UpdateRecord;Z)V

    .line 2794
    :cond_93
    invoke-virtual {v7}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-nez v3, :cond_a2

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 2797
    invoke-static {p2, v6, v2}, Lcom/android/server/LocationManagerService$Receiver;->access$4000(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    .line 2800
    :cond_a2
    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2804
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2805
    return-void

    .line 2777
    .end local v0  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v1  # "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider doesn\'t exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2768
    .end local v7  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_c2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "provider name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolutionLevelToOp(I)I
    .registers 2
    .param p0, "allowedResolutionLevel"  # I

    .line 2102
    if-eqz p0, :cond_8

    .line 2103
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 2104
    const/4 v0, 0x0

    return v0

    .line 2106
    :cond_7
    return v0

    .line 2109
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method private static resolutionLevelToOpStr(I)Ljava/lang/String;
    .registers 3
    .param p0, "allowedResolutionLevel"  # I

    .line 2113
    const-string v0, "android:fine_location"

    if-eqz p0, :cond_f

    const/4 v1, 0x1

    if-eq p0, v1, :cond_c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    .line 2124
    return-object v0

    .line 2117
    :cond_b
    return-object v0

    .line 2115
    :cond_c
    const-string v0, "android:coarse_location"

    return-object v0

    .line 2121
    :cond_f
    return-object v0
.end method

.method private static shouldBroadcastSafeLocked(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .registers 16
    .param p0, "loc"  # Landroid/location/Location;
    .param p1, "lastLoc"  # Landroid/location/Location;
    .param p2, "record"  # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p3, "now"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3504
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 3505
    return v0

    .line 3509
    :cond_4
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    .line 3510
    .local v1, "minTime":J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 3512
    .local v3, "delta":J
    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_23

    .line 3513
    return v6

    .line 3517
    :cond_23
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    float-to-double v7, v5

    .line 3518
    .local v7, "minDistance":D
    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_3c

    .line 3519
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v9, v5

    cmpg-double v5, v9, v7

    if-gtz v5, :cond_3c

    .line 3520
    return v6

    .line 3525
    :cond_3c
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-gtz v5, :cond_47

    .line 3526
    return v6

    .line 3530
    :cond_47
    invoke-static {p2}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$4200(Lcom/android/server/LocationManagerService$UpdateRecord;)Landroid/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v9

    cmp-long v5, v9, p3

    if-ltz v5, :cond_54

    goto :goto_55

    :cond_54
    move v0, v6

    :goto_55
    return v0
.end method

.method private unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z
    .registers 7
    .param p1, "binder"  # Landroid/os/IBinder;
    .param p2, "linkedListener"  # Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 3278
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_6

    .line 3279
    const/4 v0, 0x1

    return v0

    .line 3280
    :catch_6
    move-exception v1

    .line 3283
    .local v1, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not unlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " death callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3284
    return v0
.end method

.method private updateGnssDataProviderOnUidImportanceChangedLocked(Landroid/util/ArrayMap;Lcom/android/server/location/RemoteListenerHelper;Ljava/util/function/Function;IZ)V
    .registers 12
    .param p4, "uid"  # I
    .param p5, "foreground"  # Z
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

    .line 736
    .local p1, "gnssDataListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    .local p2, "gnssDataProvider":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p3, "mapBinderToListener":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TTListener;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 737
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;

    .line 738
    .local v2, "linkedListener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    iget-object v3, v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    .line 739
    .local v3, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    iget v4, v3, Lcom/android/server/location/CallerIdentity;->mUid:I

    if-eq v4, p4, :cond_21

    .line 740
    goto :goto_8

    .line 744
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/LocationManagerService$LinkedListenerBase;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-static {p5}, Lcom/android/server/LocationManagerService;->foregroundAsString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 744
    const-string v5, "LocationManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {p3, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    .line 749
    .local v4, "listener":Landroid/os/IInterface;, "TTListener;"
    if-nez p5, :cond_61

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/location/CallerIdentity;)Z

    move-result v5

    if-eqz v5, :cond_5d

    goto :goto_61

    .line 752
    :cond_5d
    invoke-virtual {p2, v4}, Lcom/android/server/location/RemoteListenerHelper;->removeListener(Landroid/os/IInterface;)V

    goto :goto_64

    .line 750
    :cond_61
    :goto_61
    invoke-virtual {p2, v4, v3}, Lcom/android/server/location/RemoteListenerHelper;->addListener(Landroid/os/IInterface;Lcom/android/server/location/CallerIdentity;)V

    .line 754
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;+Lcom/android/server/LocationManagerService$LinkedListenerBase;>;"
    .end local v2  # "linkedListener":Lcom/android/server/LocationManagerService$LinkedListenerBase;
    .end local v3  # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    .end local v4  # "listener":Landroid/os/IInterface;, "TTListener;"
    :goto_64
    goto :goto_8

    .line 755
    :cond_65
    return-void
.end method

.method private updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V
    .registers 7
    .param p1, "location"  # Landroid/location/Location;
    .param p2, "provider"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3712
    const-string/jumbo v0, "noGPSLocation"

    invoke-virtual {p1, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 3714
    .local v1, "noGPSLocation":Landroid/location/Location;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 3715
    .local v2, "lastLocation":Landroid/location/Location;
    if-nez v2, :cond_1d

    .line 3716
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 3717
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 3719
    :cond_1d
    invoke-virtual {v2, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 3720
    .local v3, "lastNoGPSLocation":Landroid/location/Location;
    if-nez v1, :cond_28

    if-eqz v3, :cond_28

    .line 3723
    invoke-virtual {p1, v0, v3}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 3726
    .end local v3  # "lastNoGPSLocation":Landroid/location/Location;
    :cond_28
    :goto_28
    invoke-virtual {v2, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3727
    return-void
.end method

.method private updateProviderUseableLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .registers 9
    .param p1, "provider"  # Lcom/android/server/LocationManagerService$LocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2244
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v0

    .line 2246
    .local v0, "useable":Z
    const/4 v1, 0x0

    .line 2248
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2249
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_5c

    .line 2250
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2251
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    nop

    .line 2252
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2251
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v5

    if-nez v5, :cond_37

    .line 2253
    goto :goto_17

    .line 2257
    :cond_37
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->isSettingsExemptLocked(Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2258
    goto :goto_17

    .line 2262
    :cond_3e
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/server/LocationManagerService$Receiver;->access$4000(Lcom/android/server/LocationManagerService$Receiver;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 2263
    if-nez v1, :cond_54

    .line 2264
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 2266
    :cond_54
    invoke-static {v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->access$1400(Lcom/android/server/LocationManagerService$UpdateRecord;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2268
    .end local v4  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5b
    goto :goto_17

    .line 2271
    :cond_5c
    if-eqz v1, :cond_81

    .line 2272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_64
    if-ltz v3, :cond_81

    .line 2273
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2275
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    add-int/lit8 v3, v3, -0x1

    goto :goto_64

    .line 2280
    .end local v3  # "i":I
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 2281
    return-void
.end method


# virtual methods
.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z
    .registers 12
    .param p1, "callback"  # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 1897
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_15

    goto :goto_4c

    .line 1904
    :cond_15
    new-instance v5, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1905
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v5, v0, v2, p2}, Lcom/android/server/location/CallerIdentity;-><init>(IILjava/lang/String;)V

    .line 1906
    .local v5, "callerIdentity":Lcom/android/server/location/CallerIdentity;
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1907
    :try_start_25
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1908
    new-instance v8, Lcom/android/server/LocationManagerService$LinkedListener;

    const-string v4, "BatchedLocationCallback"

    new-instance v6, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$ma_5PjwiFAbM39eIaW8jFG89f1w;-><init>(Lcom/android/server/LocationManagerService;)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/LocationManagerService$LinkedListener;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/server/location/CallerIdentity;Ljava/util/function/Consumer;Lcom/android/server/LocationManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    .line 1914
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v2, v3}, Lcom/android/server/LocationManagerService;->linkToListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 1916
    monitor-exit v0

    return v1

    .line 1918
    :cond_46
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1919
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_49

    throw v1

    .line 1901
    .end local v5  # "callerIdentity":Lcom/android/server/location/CallerIdentity;
    :cond_4c
    :goto_4c
    return v1
.end method

.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .registers 10
    .param p1, "listener"  # Landroid/location/IGnssMeasurementsListener;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3136
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$XnEj1qgrS2tLlw6uNlntfcuKl88;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssMeasurementsListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .registers 10
    .param p1, "listener"  # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3321
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;

    invoke-direct {v6, p0}, Lcom/android/server/-$$Lambda$wg7j1ZorSDGIu2L17I_NmjcwgzQ;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v3, "GnssNavigationMessageListener"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .registers 11
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "properties"  # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"  # Ljava/lang/String;

    .line 3770
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3771
    return-void

    .line 3774
    :cond_7
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 3778
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3779
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_61

    .line 3781
    .local v1, "identity":J
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v3

    .line 3782
    .local v3, "oldProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v3, :cond_43

    .line 3783
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v4

    if-nez v4, :cond_27

    .line 3788
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    goto :goto_43

    .line 3784
    :cond_27
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local p3  # "opPackageName":Ljava/lang/String;
    throw v4

    .line 3791
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "properties":Lcom/android/internal/location/ProviderProperties;
    .restart local p3  # "opPackageName":Ljava/lang/String;
    :cond_43
    :goto_43
    new-instance v4, Lcom/android/server/LocationManagerService$MockLocationProvider;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/server/LocationManagerService$MockLocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V

    .line 3792
    .local v4, "mockProviderManager":Lcom/android/server/LocationManagerService$MockLocationProvider;
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3793
    new-instance v5, Lcom/android/server/location/MockProvider;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, p2}, Lcom/android/server/location/MockProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V

    invoke-virtual {v4, v5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_5c

    .line 3796
    .end local v3  # "oldProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4  # "mockProviderManager":Lcom/android/server/LocationManagerService$MockLocationProvider;
    :try_start_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3797
    nop

    .line 3798
    .end local v1  # "identity":J
    monitor-exit v0

    .line 3799
    return-void

    .line 3796
    .restart local v1  # "identity":J
    :catchall_5c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local p3  # "opPackageName":Ljava/lang/String;
    throw v3

    .line 3798
    .end local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "properties":Lcom/android/internal/location/ProviderProperties;
    .restart local p3  # "opPackageName":Ljava/lang/String;
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_56 .. :try_end_63} :catchall_61

    throw v1

    .line 3775
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doTelephonyServiceStateChanged(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"  # Landroid/content/Intent;

    .line 4315
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4316
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 4317
    .local v1, "operatornumber":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1b

    .line 4318
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4321
    :cond_1b
    const/4 v2, 0x0

    .line 4322
    .local v2, "mcc":Ljava/lang/String;
    if-eqz v1, :cond_46

    .line 4325
    :try_start_1e
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4326
    .local v3, "splitStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_26
    array-length v6, v3

    if-ge v5, v6, :cond_43

    .line 4327
    sget-object v6, Lcom/android/server/LocationManagerService;->MULTI_SIM_DEV_NUM_PATTERN:Ljava/util/regex/Pattern;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 4328
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 4329
    aget-object v7, v3, v5

    const/4 v8, 0x3

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_3e} :catch_44

    move-object v2, v4

    .line 4330
    goto :goto_43

    .line 4326
    .end local v6  # "matcher":Ljava/util/regex/Matcher;
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 4336
    .end local v3  # "splitStrings":[Ljava/lang/String;
    .end local v5  # "i":I
    :cond_43
    :goto_43
    goto :goto_46

    .line 4334
    :catch_44
    move-exception v3

    .line 4335
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    .line 4339
    .end local v3  # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_46
    :goto_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTelephonyServiceStateChanged intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " operatornumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mcc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->mayChangeSettingProvider(Ljava/lang/String;)V

    .line 4342
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3921
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3923
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3924
    :try_start_e
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_2b

    aget-object v1, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3925
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_29

    .line 3926
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-interface {v1}, Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3928
    :cond_29
    monitor-exit v0

    return-void

    .line 3930
    :cond_2b
    const-string v1, "Current Location Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Current System Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3931
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", Current Elapsed Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3933
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3935
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

    .line 3937
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

    .line 3938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Battery Saver Location Mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/LocationManagerService;->mBatterySaverMode:I

    .line 3939
    invoke-static {v3}, Landroid/os/PowerManager;->locationPowerSaveModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3938
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    const-string v1, "  Location Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3941
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

    .line 3942
    .local v3, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3943
    .end local v3  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_cd

    .line 3944
    :cond_ee
    const-string v1, "  Active Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3945
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

    .line 3946
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
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

    .line 3947
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_132
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_153

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3948
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3949
    .end local v5  # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_132

    .line 3950
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    :cond_153
    goto :goto_fd

    .line 3952
    :cond_154
    const-string v1, "  Active GnssMeasurement Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3953
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 3954
    const-string v1, "  Active GnssNavigationMessage Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3955
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 3956
    const-string v1, "  Active GnssStatus Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3957
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, v1}, Lcom/android/server/LocationManagerService;->dumpGnssDataListenersLocked(Ljava/io/PrintWriter;Landroid/util/ArrayMap;)V

    .line 3959
    const-string v1, "  Historical Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
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

    .line 3962
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 3963
    .local v4, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 3964
    .local v5, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3965
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    .end local v4  # "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    .end local v5  # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    goto :goto_183

    .line 3966
    :cond_1c4
    const-string v1, "  Last Known Locations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3967
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

    .line 3968
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3969
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 3970
    .local v5, "location":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4  # "provider":Ljava/lang/String;
    .end local v5  # "location":Landroid/location/Location;
    goto :goto_1d3

    .line 3973
    :cond_208
    const-string v1, "  Last Known Locations Coarse Intervals:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
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

    .line 3975
    .restart local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3976
    .restart local v4  # "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 3977
    .restart local v5  # "location":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4  # "provider":Ljava/lang/String;
    .end local v5  # "location":Landroid/location/Location;
    goto :goto_217

    .line 3980
    :cond_24c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    if-eqz v1, :cond_256

    .line 3981
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_25b

    .line 3983
    :cond_256
    const-string v1, "  Geofences: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3986
    :goto_25b
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    if-eqz v1, :cond_26a

    .line 3987
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3988
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    goto :goto_26f

    .line 3990
    :cond_26a
    const-string v1, "  mBlacklist=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3993
    :goto_26f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v1, :cond_293

    .line 3994
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

    .line 3998
    :cond_293
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c7

    .line 3999
    const-string v1, "  Throttling Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4000
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

    .line 4001
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    .end local v3  # "packageName":Ljava/lang/String;
    goto :goto_2a6

    .line 4005
    :cond_2c7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2fb

    .line 4006
    const-string v1, "  Bypass Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4007
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

    .line 4008
    .restart local v3  # "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4009
    .end local v3  # "packageName":Ljava/lang/String;
    goto :goto_2da

    .line 4012
    :cond_2fb
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    if-eqz v1, :cond_30a

    .line 4013
    const-string v1, "  fudger: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 4014
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_30f

    .line 4016
    :cond_30a
    const-string v1, "  fudger: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4019
    :goto_30f
    array-length v1, p3

    if-lez v1, :cond_31f

    const-string/jumbo v1, "short"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31f

    .line 4020
    monitor-exit v0

    return-void

    .line 4022
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

    .line 4023
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4024
    .end local v2  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    goto :goto_325

    .line 4025
    :cond_335
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_33e

    .line 4026
    const-string v1, "  GNSS batching in progress"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4028
    :cond_33e
    monitor-exit v0

    .line 4029
    return-void

    .line 4028
    :catchall_340
    move-exception v1

    monitor-exit v0
    :try_end_342
    .catchall {:try_start_e .. :try_end_342} :catchall_340

    throw v1
.end method

.method public findNetworkProviderWhenAutoMode()V
    .registers 8

    .line 4234
    const-string v0, "gsm.camped.operator.number"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4236
    .local v0, "campedMcc":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 4237
    :cond_e
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4240
    :cond_14
    const/4 v1, 0x0

    .line 4242
    .local v1, "mcc":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "LocationManagerService"

    const/4 v4, 0x3

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_40

    .line 4244
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNetworkProviderWhenAutoMode camped mcc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 4249
    :cond_40
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 4251
    .local v5, "imsi":Ljava/lang/String;
    if-eqz v5, :cond_5c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_5c

    .line 4253
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4256
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNetworkProviderWhenAutoMode sim mcc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    .end local v5  # "imsi":Ljava/lang/String;
    :goto_70
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->mayChangeSettingProvider(Ljava/lang/String;)V

    .line 4260
    return-void
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1956
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1960
    const-string v0, "LocationManagerService"

    const-string v1, "flushGnssBatch called without GNSS permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    return-void

    .line 1964
    :cond_17
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1965
    :try_start_1a
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-nez v1, :cond_25

    .line 1966
    const-string v1, "LocationManagerService"

    const-string v2, "flushGnssBatch called with no batch in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_25
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v1, :cond_2e

    .line 1970
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->flush()V

    .line 1972
    :cond_2e
    monitor-exit v0

    .line 1973
    return-void

    .line 1972
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw v1
.end method

.method public geocoderIsPresent()Z
    .registers 2

    .line 3733
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2159
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2160
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2161
    .local v3, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2162
    .local v4, "name":Ljava/lang/String;
    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2163
    goto :goto_14

    .line 2165
    :cond_2d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    nop

    .end local v3  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4  # "name":Ljava/lang/String;
    goto :goto_14

    .line 2167
    :cond_32
    monitor-exit v0

    return-object v1

    .line 2168
    .end local v1  # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 4

    .line 2427
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2428
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2429
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 6
    .param p1, "criteria"  # Landroid/location/Criteria;
    .param p2, "enabledOnly"  # Z

    .line 2219
    nop

    .line 2221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2219
    const/16 v1, 0x19

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 2224
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 2225
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 2226
    invoke-virtual {p0, v2, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 2229
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2230
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2231
    return-object v1

    .line 2232
    :cond_28
    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2233
    return-object v1

    .line 2235
    :cond_32
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2239
    :cond_3a
    return-object v2
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .registers 3

    .line 3424
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3425
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3426
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 16
    .param p1, "latitude"  # D
    .param p3, "longitude"  # D
    .param p5, "maxResults"  # I
    .param p6, "params"  # Landroid/location/GeocoderParams;
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

    .line 3739
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_e

    .line 3740
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3743
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 27
    .param p1, "locationName"  # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"  # D
    .param p4, "lowerLeftLongitude"  # D
    .param p6, "upperRightLatitude"  # D
    .param p8, "upperRightLongitude"  # D
    .param p10, "maxResults"  # I
    .param p11, "params"  # Landroid/location/GeocoderParams;
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

    .line 3753
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_19

    .line 3754
    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3758
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1885
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v0, :cond_18

    .line 1889
    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->getBatchSize()I

    move-result v0

    return v0

    .line 1891
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getGnssCapabilities(Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3309
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to obtain GNSS chipset capabilities."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    if-nez v0, :cond_14

    goto :goto_19

    .line 3315
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/location/GnssCapabilitiesProvider;->getGnssCapabilities()J

    move-result-wide v0

    return-wide v0

    .line 3313
    :cond_19
    :goto_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 1855
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_9

    .line 1856
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1858
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .registers 10

    .line 2986
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2987
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 2988
    .local v1, "location":Landroid/location/Location;
    if-nez v1, :cond_12

    .line 2989
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2991
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 2992
    .local v2, "currentNanos":J
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 2993
    .local v4, "deltaMs":J
    new-instance v6, Landroid/location/LocationTime;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/location/LocationTime;-><init>(JJ)V

    monitor-exit v0

    return-object v6

    .line 2994
    .end local v1  # "location":Landroid/location/Location;
    .end local v2  # "currentNanos":J
    .end local v4  # "deltaMs":J
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .line 1845
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_9

    .line 1846
    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0

    .line 1848
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .registers 4

    .line 2434
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2435
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mIgnoreSettingsPackageWhitelist:Landroid/util/ArraySet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2436
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .registers 24
    .param p1, "r"  # Landroid/location/LocationRequest;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2891
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2892
    if-eqz p1, :cond_c

    move-object/from16 v0, p1

    goto :goto_e

    :cond_c
    :try_start_c
    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    :goto_e
    move-object v4, v0

    .line 2895
    .local v4, "request":Landroid/location/LocationRequest;
    invoke-direct {v1, v2}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    .line 2897
    .local v5, "allowedResolutionLevel":I
    invoke-direct {v1, v2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2898
    nop

    .line 2899
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2898
    invoke-direct {v1, v5, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 2902
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v6, v0

    .line 2903
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v7, v0

    .line 2904
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_145

    .line 2906
    .local v8, "identity":J
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, v2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_13e

    const/4 v10, 0x0

    if-eqz v0, :cond_58

    .line 2908
    :try_start_36
    const-string v0, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not returning last loc for blacklisted app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_53

    .line 2911
    nop

    .line 2979
    :try_start_4e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_145

    .line 2911
    return-object v10

    .line 2979
    :catchall_53
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_141

    .line 2917
    :cond_58
    :try_start_58
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_13e

    .line 2918
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_61

    :try_start_5e
    const-string v11, "fused"
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_53

    move-object v0, v11

    .line 2919
    :cond_61
    :try_start_61
    invoke-direct {v1, v0}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v11
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_13e

    .line 2920
    .local v11, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-nez v11, :cond_6c

    .line 2979
    :try_start_67
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_145

    .line 2920
    return-object v10

    .line 2923
    :cond_6c
    :try_start_6c
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v1, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfileLocked(I)Z

    move-result v12
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_13e

    if-nez v12, :cond_82

    :try_start_76
    invoke-virtual {v1, v2}, Lcom/android/server/LocationManagerService;->isProviderPackage(Ljava/lang/String;)Z

    move-result v12
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_53

    if-nez v12, :cond_82

    .line 2925
    nop

    .line 2979
    :try_start_7d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_145

    .line 2925
    return-object v10

    .line 2928
    :cond_82
    :try_start_82
    invoke-virtual {v11}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v12
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_13e

    if-nez v12, :cond_8e

    .line 2929
    nop

    .line 2979
    :try_start_89
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_145

    .line 2929
    return-object v10

    .line 2933
    :cond_8e
    const/4 v12, 0x2

    if-ge v5, v12, :cond_9a

    .line 2936
    :try_start_91
    iget-object v13, v1, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_53

    .local v13, "location":Landroid/location/Location;
    goto :goto_a2

    .line 2938
    .end local v13  # "location":Landroid/location/Location;
    :cond_9a
    :try_start_9a
    iget-object v13, v1, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_13e

    .line 2940
    .restart local v13  # "location":Landroid/location/Location;
    :goto_a2
    if-nez v13, :cond_aa

    .line 2941
    nop

    .line 2979
    :try_start_a5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_145

    .line 2941
    return-object v10

    .line 2945
    :cond_aa
    :try_start_aa
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->resolutionLevelToOpStr(I)Ljava/lang/String;

    move-result-object v14

    .line 2946
    .local v14, "op":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 2947
    invoke-virtual {v13}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    div-long v17, v17, v19

    sub-long v15, v15, v17

    .line 2948
    .local v15, "locationAgeMs":J
    iget-object v12, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2949
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v10, "location_last_location_max_age_millis"
    :try_end_c6
    .catchall {:try_start_aa .. :try_end_c6} :catchall_13e

    move-object/from16 v19, v4

    move/from16 v20, v5

    .end local v4  # "request":Landroid/location/LocationRequest;
    .end local v5  # "allowedResolutionLevel":I
    .local v19, "request":Landroid/location/LocationRequest;
    .local v20, "allowedResolutionLevel":I
    const-wide/32 v4, 0x124f80

    .line 2948
    :try_start_cd
    invoke-static {v12, v10, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_13a

    cmp-long v4, v15, v4

    if-lez v4, :cond_e9

    :try_start_d5
    iget-object v4, v1, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2952
    invoke-virtual {v4, v14, v7, v2}, Landroid/app/AppOpsManager;->unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_e5

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e9

    .line 2954
    nop

    .line 2979
    :try_start_df
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_145

    .line 2954
    const/4 v3, 0x0

    return-object v3

    .line 2979
    .end local v0  # "name":Ljava/lang/String;
    .end local v11  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v13  # "location":Landroid/location/Location;
    .end local v14  # "op":Ljava/lang/String;
    .end local v15  # "locationAgeMs":J
    :catchall_e5
    move-exception v0

    move/from16 v5, v20

    goto :goto_141

    .line 2957
    .restart local v0  # "name":Ljava/lang/String;
    .restart local v11  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local v13  # "location":Landroid/location/Location;
    .restart local v14  # "op":Ljava/lang/String;
    .restart local v15  # "locationAgeMs":J
    :cond_e9
    const/4 v4, 0x0

    .line 2958
    .local v4, "lastLocation":Landroid/location/Location;
    move/from16 v5, v20

    const/4 v10, 0x2

    .end local v20  # "allowedResolutionLevel":I
    .restart local v5  # "allowedResolutionLevel":I
    if-ge v5, v10, :cond_10a

    .line 2959
    :try_start_ef
    const-string/jumbo v10, "noGPSLocation"

    invoke-virtual {v13, v10}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v10

    .line 2961
    .local v10, "noGPSLocation":Landroid/location/Location;
    if-eqz v10, :cond_107

    .line 2962
    new-instance v12, Landroid/location/Location;

    move-object/from16 v17, v0

    .end local v0  # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v0, v10}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v4, v12

    goto :goto_109

    .line 2961
    .end local v17  # "name":Ljava/lang/String;
    .restart local v0  # "name":Ljava/lang/String;
    :cond_107
    move-object/from16 v17, v0

    .line 2964
    .end local v0  # "name":Ljava/lang/String;
    .end local v10  # "noGPSLocation":Landroid/location/Location;
    .restart local v17  # "name":Ljava/lang/String;
    :goto_109
    goto :goto_112

    .line 2965
    .end local v17  # "name":Ljava/lang/String;
    .restart local v0  # "name":Ljava/lang/String;
    :cond_10a
    move-object/from16 v17, v0

    .end local v0  # "name":Ljava/lang/String;
    .restart local v17  # "name":Ljava/lang/String;
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v13}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v4, v0

    .line 2968
    :goto_112
    if-eqz v4, :cond_132

    .line 2969
    invoke-direct {v1, v6, v7, v2, v5}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_132

    .line 2972
    const-string v0, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not returning last loc for no op app: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_ef .. :try_end_131} :catchall_138

    .line 2974
    const/4 v4, 0x0

    .line 2977
    :cond_132
    nop

    .line 2979
    :try_start_133
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    .line 2977
    return-object v4

    .line 2979
    .end local v4  # "lastLocation":Landroid/location/Location;
    .end local v11  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v13  # "location":Landroid/location/Location;
    .end local v14  # "op":Ljava/lang/String;
    .end local v15  # "locationAgeMs":J
    .end local v17  # "name":Ljava/lang/String;
    :catchall_138
    move-exception v0

    goto :goto_141

    .end local v5  # "allowedResolutionLevel":I
    .restart local v20  # "allowedResolutionLevel":I
    :catchall_13a
    move-exception v0

    move/from16 v5, v20

    .end local v20  # "allowedResolutionLevel":I
    .restart local v5  # "allowedResolutionLevel":I
    goto :goto_141

    .end local v19  # "request":Landroid/location/LocationRequest;
    .local v4, "request":Landroid/location/LocationRequest;
    :catchall_13e
    move-exception v0

    move-object/from16 v19, v4

    .end local v4  # "request":Landroid/location/LocationRequest;
    .restart local v19  # "request":Landroid/location/LocationRequest;
    :goto_141
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "r":Landroid/location/LocationRequest;
    .end local p2  # "packageName":Ljava/lang/String;
    throw v0

    .line 2981
    .end local v5  # "allowedResolutionLevel":I
    .end local v6  # "pid":I
    .end local v7  # "uid":I
    .end local v8  # "identity":J
    .end local v19  # "request":Landroid/location/LocationRequest;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "r":Landroid/location/LocationRequest;
    .restart local p2  # "packageName":Ljava/lang/String;
    :catchall_145
    move-exception v0

    monitor-exit v3
    :try_end_147
    .catchall {:try_start_133 .. :try_end_147} :catchall_145

    throw v0
.end method

.method public getPowerSavedPackagesList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4158
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4159
    :try_start_8
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 4160
    .local v2, "pckNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4161
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4162
    nop

    .end local v4  # "packageName":Ljava/lang/String;
    goto :goto_12

    .line 4163
    .end local v2  # "pckNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_23
    monitor-exit v1

    .line 4164
    return-object v0

    .line 4163
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .registers 5
    .param p1, "providerName"  # Ljava/lang/String;

    .line 3388
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3389
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3392
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3393
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-nez v1, :cond_13

    .line 3394
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 3396
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3397
    .end local v1  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 10
    .param p1, "criteria"  # Landroid/location/Criteria;
    .param p2, "enabledOnly"  # Z
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

    .line 2179
    nop

    .line 2181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2179
    const/16 v1, 0x18

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 2183
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2184
    .local v0, "allowedResolutionLevel":I
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2185
    :try_start_11
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2186
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 2187
    .local v4, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2188
    .local v5, "name":Ljava/lang/String;
    const-string v6, "fused"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 2189
    goto :goto_22

    .line 2191
    :cond_3b
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUseLocked(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_42

    .line 2192
    goto :goto_22

    .line 2194
    :cond_42
    if-eqz p2, :cond_4b

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v6

    if-nez v6, :cond_4b

    .line 2195
    goto :goto_22

    .line 2197
    :cond_4b
    if-eqz p1, :cond_58

    .line 2199
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationProvider;->getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;

    move-result-object v6

    .line 2198
    invoke-static {v5, v6, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v6

    if-nez v6, :cond_58

    .line 2200
    goto :goto_22

    .line 2202
    :cond_58
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2203
    nop

    .end local v4  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v5  # "name":Ljava/lang/String;
    goto :goto_22

    .line 2205
    :cond_5d
    monitor-exit v1

    return-object v2

    .line 2206
    .end local v2  # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_5f
    move-exception v2

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_11 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method public getTestProviderCurrentRequests(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "providerName"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;
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

    .line 3897
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3898
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3901
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3902
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3903
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 3907
    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    .line 3908
    .local v2, "provider":Lcom/android/server/LocationManagerService$MockLocationProvider;
    invoke-static {v2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5600(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    if-nez v3, :cond_29

    .line 3909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 3911
    :cond_29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3912
    .local v3, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/location/LocationRequest;>;"
    invoke-static {v2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->access$5600(Lcom/android/server/LocationManagerService$MockLocationProvider;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationRequest;

    .line 3913
    .local v5, "request":Landroid/location/LocationRequest;
    new-instance v6, Landroid/location/LocationRequest;

    invoke-direct {v6, v5}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3914
    nop

    .end local v5  # "request":Landroid/location/LocationRequest;
    goto :goto_38

    .line 3915
    :cond_4e
    monitor-exit v0

    return-object v3

    .line 3904
    .end local v2  # "provider":Lcom/android/server/LocationManagerService$MockLocationProvider;
    .end local v3  # "requests":Ljava/util/List;, "Ljava/util/List<Landroid/location/LocationRequest;>;"
    :cond_50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "providerName":Ljava/lang/String;
    .end local p2  # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3916
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "providerName":Ljava/lang/String;
    .restart local p2  # "opPackageName":Ljava/lang/String;
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_e .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;Ljava/lang/String;)V
    .registers 6
    .param p1, "measurementCorrections"  # Landroid/location/GnssMeasurementCorrections;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3291
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject GNSS measurement corrections."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LocationManagerService"

    if-nez v0, :cond_17

    .line 3295
    const-string v0, "Can not inject GNSS corrections due to no permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    return-void

    .line 3298
    :cond_17
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    if-nez v0, :cond_21

    .line 3299
    const-string v0, "Can not inject GNSS corrections. GNSS measurement corrections provider not available."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    return-void

    .line 3303
    :cond_21
    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 3305
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .registers 7
    .param p1, "location"  # Landroid/location/Location;

    .line 2999
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Access Fine Location permission not granted to inject Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    const/4 v0, 0x0

    if-nez p1, :cond_1e

    .line 3006
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "injectLocation(): called with null location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    return v0

    .line 3011
    :cond_1e
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3012
    :try_start_21
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 3013
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_4a

    .line 3020
    :cond_32
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 3021
    monitor-exit v1

    return v0

    .line 3024
    :cond_40
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 3025
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 3014
    :cond_4a
    :goto_4a
    monitor-exit v1

    return v0

    .line 3026
    .end local v2  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_21 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .registers 3

    .line 3440
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3441
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

    .line 3443
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isLocationEnabledForUser(I)Z
    .registers 7
    .param p1, "userId"  # I

    .line 3453
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 3454
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3461
    .local v0, "identity":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3462
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    .line 3461
    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_28

    if-eqz v2, :cond_24

    const/4 v4, 0x1

    .line 3467
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3461
    return v4

    .line 3467
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "providerName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3475
    nop

    .line 3477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3475
    const/16 v1, 0x4a

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 3479
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_19

    .line 3480
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    :cond_19
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    return v1

    .line 3489
    :cond_23
    invoke-static {p2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3490
    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "isProviderEnabledForUser:  changed to default user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    const/4 p2, 0x0

    .line 3494
    :cond_32
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3495
    :try_start_35
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v2

    .line 3496
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v2, :cond_42

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v1, 0x1

    :cond_42
    monitor-exit v0

    return v1

    .line 3497
    .end local v2  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public isProviderPackage(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3402
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3403
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

    .line 3404
    .local v2, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationProvider;->getPackagesLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3405
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 3407
    .end local v2  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_22
    goto :goto_9

    .line 3409
    :cond_23
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3410
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public synthetic lambda$addGnssBatchingCallback$8$LocationManagerService(Landroid/location/IBatchedLocationCallback;)V
    .registers 2
    .param p1, "listener"  # Landroid/location/IBatchedLocationCallback;

    .line 1911
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1912
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->removeGnssBatchingCallback()V

    .line 1913
    return-void
.end method

.method public synthetic lambda$initializeLocked$2$LocationManagerService()V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->onPermissionsChangedLocked()V

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$initializeLocked$3$LocationManagerService(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 422
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$LocationManagerService$G-JjItJofmJkJhbftqezuIe8Sio;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public synthetic lambda$initializeLocked$4$LocationManagerService(II)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "importance"  # I

    .line 434
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->onUidImportanceChangedLocked(II)V

    .line 436
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$initializeLocked$5$LocationManagerService(II)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "importance"  # I

    .line 433
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$LocationManagerService$GVLGDgL1Vk3AKo-zMjRmo3-OLpQ;-><init>(Lcom/android/server/LocationManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public synthetic lambda$initializeLocked$6$LocationManagerService(Landroid/os/PowerSaveState;)V
    .registers 4
    .param p1, "state"  # Landroid/os/PowerSaveState;

    .line 509
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_3
    iget v1, p1, Landroid/os/PowerSaveState;->locationMode:I

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->onBatterySaverModeChangedLocked(I)V

    .line 511
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public synthetic lambda$initializeLocked$7$LocationManagerService(Landroid/os/PowerSaveState;)V
    .registers 4
    .param p1, "state"  # Landroid/os/PowerSaveState;

    .line 508
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$wT7D5HWSJcE1hXhYNGDPH6IVDx0;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/PowerSaveState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method public synthetic lambda$new$0$LocationManagerService(I)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"  # I

    .line 366
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$1$LocationManagerService(I)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"  # I

    .line 369
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 5
    .param p1, "listener"  # Landroid/location/ILocationListener;

    .line 1835
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1836
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    .line 1837
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v1, :cond_14

    .line 1838
    invoke-static {v1}, Lcom/android/server/LocationManagerService$Receiver;->access$3800(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1840
    .end local v1  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_14
    monitor-exit v0

    .line 1841
    return-void

    .line 1840
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .registers 12
    .param p1, "listener"  # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3119
    nop

    .line 3121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3119
    const/16 v1, 0x17

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 3123
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;

    invoke-direct {v8, p0}, Lcom/android/server/-$$Lambda$1kw1pGRY14l4iRI8vioJeswbbZ0;-><init>(Lcom/android/server/LocationManagerService;)V

    const-string v5, "GnssStatusListener"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->addGnssDataListener(Landroid/os/IInterface;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 16
    .param p1, "geofence"  # Landroid/location/Geofence;
    .param p2, "intent"  # Landroid/app/PendingIntent;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3089
    if-eqz p2, :cond_50

    .line 3092
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 3094
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

    .line 3097
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3099
    .local v0, "identity":J
    :try_start_28
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4b

    .line 3100
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3108
    invoke-virtual {v6, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v11

    .line 3100
    move-object v6, p3

    move-object v10, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 3109
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_48

    .line 3110
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_4b

    .line 3112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3113
    nop

    .line 3114
    return-void

    .line 3109
    :catchall_48
    move-exception v3

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "geofence":Landroid/location/Geofence;
    .end local p2  # "intent":Landroid/app/PendingIntent;
    .end local p3  # "packageName":Ljava/lang/String;
    :try_start_4a
    throw v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 3112
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "geofence":Landroid/location/Geofence;
    .restart local p2  # "intent":Landroid/app/PendingIntent;
    .restart local p3  # "packageName":Ljava/lang/String;
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3090
    .end local v0  # "identity":J
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGnssBatchingCallback()V
    .registers 4

    .line 1924
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1925
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    invoke-direct {p0, v1, v2}, Lcom/android/server/LocationManagerService;->unlinkFromListenerDeathNotificationLocked(Landroid/os/IBinder;Lcom/android/server/LocationManagerService$LinkedListenerBase;)Z

    .line 1927
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1928
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedListener;

    .line 1929
    monitor-exit v0

    .line 1930
    return-void

    .line 1929
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/location/IGnssMeasurementsListener;

    .line 3143
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3144
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/location/IGnssNavigationMessageListener;

    .line 3328
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3330
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;

    .line 3803
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3804
    return-void

    .line 3807
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3808
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_69

    .line 3810
    .local v1, "identity":J
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v3

    .line 3811
    .local v3, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3815
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 3818
    const/4 v4, 0x0

    .line 3819
    .local v4, "realProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$LocationProvider;

    .line 3820
    .local v6, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    invoke-virtual {v6}, Lcom/android/server/LocationManagerService$LocationProvider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 3821
    move-object v4, v6

    .line 3822
    goto :goto_3d

    .line 3824
    .end local v6  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_3c
    goto :goto_24

    .line 3826
    :cond_3d
    :goto_3d
    if-eqz v4, :cond_42

    .line 3827
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_64

    .line 3830
    .end local v3  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v4  # "realProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_42
    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3831
    nop

    .line 3832
    .end local v1  # "identity":J
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_69

    .line 3833
    return-void

    .line 3812
    .restart local v1  # "identity":J
    .restart local v3  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_48
    :try_start_48
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "opPackageName":Ljava/lang/String;
    throw v4
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_64

    .line 3830
    .end local v3  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "opPackageName":Ljava/lang/String;
    :catchall_64
    move-exception v3

    :try_start_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "opPackageName":Ljava/lang/String;
    throw v3

    .line 3832
    .end local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "opPackageName":Ljava/lang/String;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 14
    .param p1, "listener"  # Landroid/location/ILocationListener;
    .param p2, "intent"  # Landroid/app/PendingIntent;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2811
    nop

    .line 2813
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2811
    const/16 v1, 0x1b

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 2815
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2818
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2820
    .local v1, "uid":I
    if-nez p2, :cond_23

    if-eqz p1, :cond_1a

    goto :goto_23

    .line 2821
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "need either listener or intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2822
    :cond_23
    :goto_23
    if-eqz p2, :cond_30

    if-nez p1, :cond_28

    goto :goto_30

    .line 2823
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot register both listener and intent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2826
    :cond_30
    :goto_30
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2828
    if-eqz p2, :cond_41

    .line 2829
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, v0

    move v5, v1

    move-object v6, p3

    :try_start_3c
    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v2

    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_4c

    .line 2831
    .end local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_41
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, v1

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v2

    .line 2834
    .restart local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :goto_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_6a

    .line 2838
    .local v3, "identity":J
    if-eqz v2, :cond_64

    .line 2839
    :try_start_52
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2840
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5f

    goto :goto_64

    .line 2844
    :catchall_5f
    move-exception v5

    :try_start_60
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "listener":Landroid/location/ILocationListener;
    .end local p2  # "intent":Landroid/app/PendingIntent;
    .end local p3  # "packageName":Ljava/lang/String;
    throw v5

    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "listener":Landroid/location/ILocationListener;
    .restart local p2  # "intent":Landroid/app/PendingIntent;
    .restart local p3  # "packageName":Ljava/lang/String;
    :cond_64
    :goto_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2845
    nop

    .line 2846
    .end local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v3  # "identity":J
    monitor-exit v9

    .line 2847
    return-void

    .line 2846
    :catchall_6a
    move-exception v2

    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method public removeUpdatesForPowerSave(Ljava/lang/String;I)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 4092
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkCaller(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4093
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUpdatesForPowerSave "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4095
    .local v0, "receiverSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4096
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 4097
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_117

    .line 4098
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_43

    .line 4099
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "removeUpdatesForPowerSave, empty record"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    return-void

    .line 4102
    :cond_43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 4104
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v3, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v3, p2, :cond_114

    .line 4105
    invoke-static {v2}, Lcom/android/server/LocationManagerService$Receiver;->access$5700(Lcom/android/server/LocationManagerService$Receiver;)Landroid/location/ILocationListener;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v3, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/LocationManagerService;->removeUpdatesForPowerSave(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 4109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/LocationManagerService$Receiver;->access$5700(Lcom/android/server/LocationManagerService$Receiver;)Landroid/location/ILocationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pckName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4116
    :try_start_c5
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4117
    .local v4, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    if-nez v4, :cond_f5

    .line 4118
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUpdatesForPowerSave first: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 4120
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4121
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    .line 4123
    :cond_f5
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUpdatesForPowerSave "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4126
    .end local v4  # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :goto_10f
    monitor-exit v3

    goto :goto_114

    :catchall_111
    move-exception v1

    monitor-exit v3
    :try_end_113
    .catchall {:try_start_c5 .. :try_end_113} :catchall_111

    throw v1

    .line 4128
    .end local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_114
    :goto_114
    goto/16 :goto_47

    .line 4129
    :cond_116
    return-void

    .line 4097
    :catchall_117
    move-exception v2

    :try_start_118
    monitor-exit v1
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw v2
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 27
    .param p1, "request"  # Landroid/location/LocationRequest;
    .param p2, "geofence"  # Landroid/location/Geofence;
    .param p3, "intent"  # Landroid/app/PendingIntent;
    .param p4, "packageName"  # Ljava/lang/String;

    .line 3032
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    if-nez p1, :cond_c

    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    move-object v7, v0

    .end local p1  # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    goto :goto_e

    .end local v0  # "request":Landroid/location/LocationRequest;
    .restart local p1  # "request":Landroid/location/LocationRequest;
    :cond_c
    move-object/from16 v7, p1

    .line 3035
    .end local p1  # "request":Landroid/location/LocationRequest;
    .local v7, "request":Landroid/location/LocationRequest;
    :goto_e
    invoke-direct {v1, v8}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel(Ljava/lang/String;)I

    move-result v6

    .line 3037
    .local v6, "allowedResolutionLevel":I
    invoke-direct {v1, v6}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 3038
    if-eqz v9, :cond_c3

    .line 3041
    invoke-direct {v1, v8}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 3042
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3043
    nop

    .line 3044
    :try_start_1e
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 3043
    invoke-direct {v1, v6, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3045
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_bc

    .line 3047
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 3048
    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    move v5, v0

    .line 3050
    .local v5, "callerHasLocationHardwarePermission":Z
    invoke-direct {v1, v7, v6, v5}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v4

    .line 3055
    .local v4, "sanitizedRequest":Landroid/location/LocationRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestGeofence: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 3060
    .local v19, "uid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_74

    .line 3062
    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-void

    .line 3065
    :cond_74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3067
    .local v20, "identity":J
    :try_start_78
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_b3

    .line 3068
    :try_start_7b
    iget-object v10, v1, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x1

    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 3076
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v18

    .line 3068
    move-object/from16 v13, p4

    move-object v14, v7

    move-object/from16 v17, p2

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;I)V

    .line 3077
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_7b .. :try_end_91} :catchall_a8

    .line 3079
    :try_start_91
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_b3

    move-object v3, v4

    move-object v10, v4

    .end local v4  # "sanitizedRequest":Landroid/location/LocationRequest;
    .local v10, "sanitizedRequest":Landroid/location/LocationRequest;
    move-object/from16 v4, p2

    move v11, v5

    .end local v5  # "callerHasLocationHardwarePermission":Z
    .local v11, "callerHasLocationHardwarePermission":Z
    move-object/from16 v5, p3

    move v12, v6

    .end local v6  # "allowedResolutionLevel":I
    .local v12, "allowedResolutionLevel":I
    move-object v13, v7

    .end local v7  # "request":Landroid/location/LocationRequest;
    .local v13, "request":Landroid/location/LocationRequest;
    move/from16 v7, v19

    move-object/from16 v8, p4

    :try_start_a0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_af

    .line 3083
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3084
    nop

    .line 3085
    return-void

    .line 3077
    .end local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11  # "callerHasLocationHardwarePermission":Z
    .end local v12  # "allowedResolutionLevel":I
    .end local v13  # "request":Landroid/location/LocationRequest;
    .restart local v4  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v5  # "callerHasLocationHardwarePermission":Z
    .restart local v6  # "allowedResolutionLevel":I
    .restart local v7  # "request":Landroid/location/LocationRequest;
    :catchall_a8
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    .end local v4  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v5  # "callerHasLocationHardwarePermission":Z
    .end local v6  # "allowedResolutionLevel":I
    .end local v7  # "request":Landroid/location/LocationRequest;
    .restart local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v11  # "callerHasLocationHardwarePermission":Z
    .restart local v12  # "allowedResolutionLevel":I
    .restart local v13  # "request":Landroid/location/LocationRequest;
    :goto_ad
    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_b1

    .end local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11  # "callerHasLocationHardwarePermission":Z
    .end local v12  # "allowedResolutionLevel":I
    .end local v13  # "request":Landroid/location/LocationRequest;
    .end local v19  # "uid":I
    .end local v20  # "identity":J
    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p2  # "geofence":Landroid/location/Geofence;
    .end local p3  # "intent":Landroid/app/PendingIntent;
    .end local p4  # "packageName":Ljava/lang/String;
    :try_start_ae
    throw v0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    .line 3083
    .restart local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v11  # "callerHasLocationHardwarePermission":Z
    .restart local v12  # "allowedResolutionLevel":I
    .restart local v13  # "request":Landroid/location/LocationRequest;
    .restart local v19  # "uid":I
    .restart local v20  # "identity":J
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p2  # "geofence":Landroid/location/Geofence;
    .restart local p3  # "intent":Landroid/app/PendingIntent;
    .restart local p4  # "packageName":Ljava/lang/String;
    :catchall_af
    move-exception v0

    goto :goto_b8

    .line 3077
    :catchall_b1
    move-exception v0

    goto :goto_ad

    .line 3083
    .end local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11  # "callerHasLocationHardwarePermission":Z
    .end local v12  # "allowedResolutionLevel":I
    .end local v13  # "request":Landroid/location/LocationRequest;
    .restart local v4  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v5  # "callerHasLocationHardwarePermission":Z
    .restart local v6  # "allowedResolutionLevel":I
    .restart local v7  # "request":Landroid/location/LocationRequest;
    :catchall_b3
    move-exception v0

    move-object v10, v4

    move v11, v5

    move v12, v6

    move-object v13, v7

    .end local v4  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v5  # "callerHasLocationHardwarePermission":Z
    .end local v6  # "allowedResolutionLevel":I
    .end local v7  # "request":Landroid/location/LocationRequest;
    .restart local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .restart local v11  # "callerHasLocationHardwarePermission":Z
    .restart local v12  # "allowedResolutionLevel":I
    .restart local v13  # "request":Landroid/location/LocationRequest;
    :goto_b8
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3045
    .end local v10  # "sanitizedRequest":Landroid/location/LocationRequest;
    .end local v11  # "callerHasLocationHardwarePermission":Z
    .end local v12  # "allowedResolutionLevel":I
    .end local v13  # "request":Landroid/location/LocationRequest;
    .end local v19  # "uid":I
    .end local v20  # "identity":J
    .restart local v6  # "allowedResolutionLevel":I
    .restart local v7  # "request":Landroid/location/LocationRequest;
    :catchall_bc
    move-exception v0

    move v12, v6

    move-object v13, v7

    .end local v6  # "allowedResolutionLevel":I
    .end local v7  # "request":Landroid/location/LocationRequest;
    .restart local v12  # "allowedResolutionLevel":I
    .restart local v13  # "request":Landroid/location/LocationRequest;
    :goto_bf
    :try_start_bf
    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c1

    throw v0

    :catchall_c1
    move-exception v0

    goto :goto_bf

    .line 3039
    .end local v12  # "allowedResolutionLevel":I
    .end local v13  # "request":Landroid/location/LocationRequest;
    .restart local v6  # "allowedResolutionLevel":I
    .restart local v7  # "request":Landroid/location/LocationRequest;
    :cond_c3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 12
    .param p1, "request"  # Landroid/location/LocationRequest;
    .param p2, "listener"  # Landroid/location/ILocationListener;
    .param p3, "intent"  # Landroid/app/PendingIntent;
    .param p4, "packageName"  # Ljava/lang/String;

    .line 2673
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2673
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 2675
    return-void
.end method

.method public restoreUpdatesForPowerSave(Ljava/lang/String;I)V
    .registers 14
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 4132
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->checkCaller(I)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4134
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4135
    .local v0, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4136
    :try_start_13
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4137
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRemovedByPowerSave:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4138
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_c4

    .line 4139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ad

    .line 4140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 4141
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/LocationManagerService$Receiver;->access$5700(Lcom/android/server/LocationManagerService$Receiver;)Landroid/location/ILocationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pckName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v3, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v3, p2, :cond_ab

    .line 4147
    iget-object v5, v2, Lcom/android/server/LocationManagerService$Receiver;->mLocationRequest:Landroid/location/LocationRequest;

    invoke-static {v2}, Lcom/android/server/LocationManagerService$Receiver;->access$5700(Lcom/android/server/LocationManagerService$Receiver;)Landroid/location/ILocationListener;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v8, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v3, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v10, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/LocationManagerService;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;II)V

    .line 4151
    .end local v2  # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_ab
    goto :goto_2e

    :cond_ac
    goto :goto_c3

    .line 4153
    :cond_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no disconnected updates to connect for package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4155
    :goto_c3
    return-void

    .line 4138
    :catchall_c4
    move-exception v2

    :try_start_c5
    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v2
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "providerName"  # Ljava/lang/String;
    .param p2, "command"  # Ljava/lang/String;
    .param p3, "extras"  # Landroid/os/Bundle;

    .line 3335
    nop

    .line 3337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3335
    const/16 v1, 0x1c

    invoke-static {v1, v0}, Lmeizu/security/TRPEngManager;->setAction(II)V

    .line 3339
    if-eqz p1, :cond_43

    .line 3343
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3344
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUseLocked(ILjava/lang/String;)V

    .line 3347
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 3353
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_38

    .line 3358
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3359
    .local v1, "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_30

    .line 3360
    invoke-virtual {v1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;->sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3363
    :cond_30
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationUsageLogger:Lcom/android/server/LocationUsageLogger;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, p1}, Lcom/android/server/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 3368
    monitor-exit v0

    return v4

    .line 3355
    .end local v1  # "provider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_38
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "providerName":Ljava/lang/String;
    .end local p2  # "command":Ljava/lang/String;
    .end local p3  # "extras":Landroid/os/Bundle;
    throw v1

    .line 3369
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "providerName":Ljava/lang/String;
    .restart local p2  # "command":Ljava/lang/String;
    .restart local p3  # "extras":Landroid/os/Bundle;
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_40

    throw v1

    .line 3341
    :cond_43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public sendNiResponse(II)Z
    .registers 6
    .param p1, "notifId"  # I
    .param p2, "userResponse"  # I

    .line 3374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 3379
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 3380
    :catch_11
    move-exception v0

    .line 3381
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    const/4 v1, 0x0

    return v1

    .line 3375
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3415
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3418
    :try_start_c
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 3419
    monitor-exit v0

    .line 3420
    return-void

    .line 3419
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .registers 5
    .param p1, "enabled"  # Z

    .line 3431
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "android.permission.LOCATION_HARDWARE permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3434
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 3435
    monitor-exit v0

    .line 3436
    return-void

    .line 3435
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1, "providerName"  # Ljava/lang/String;
    .param p2, "enabled"  # Z
    .param p3, "opPackageName"  # Ljava/lang/String;

    .line 3862
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3863
    return-void

    .line 3866
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3867
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3868
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3872
    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setEnabledLocked(Z)V

    .line 3873
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    monitor-exit v0

    .line 3874
    return-void

    .line 3869
    .restart local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "providerName":Ljava/lang/String;
    .end local p2  # "enabled":Z
    .end local p3  # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3873
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "providerName":Ljava/lang/String;
    .restart local p2  # "enabled":Z
    .restart local p3  # "opPackageName":Ljava/lang/String;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .registers 12
    .param p1, "providerName"  # Ljava/lang/String;
    .param p2, "location"  # Landroid/location/Location;
    .param p3, "opPackageName"  # Ljava/lang/String;

    .line 3838
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3839
    return-void

    .line 3842
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3843
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3844
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 3848
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 3849
    .local v2, "locationProvider":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 3852
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "33091107"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 3852
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3856
    :cond_5a
    move-object v3, v1

    check-cast v3, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v3, p2}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setLocationLocked(Landroid/location/Location;)V

    .line 3857
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v2  # "locationProvider":Ljava/lang/String;
    monitor-exit v0

    .line 3858
    return-void

    .line 3845
    .restart local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_62
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "providerName":Ljava/lang/String;
    .end local p2  # "location":Landroid/location/Location;
    .end local p3  # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3857
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "providerName":Ljava/lang/String;
    .restart local p2  # "location":Landroid/location/Location;
    .restart local p3  # "opPackageName":Ljava/lang/String;
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_a .. :try_end_80} :catchall_7e

    throw v1
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .registers 12
    .param p1, "providerName"  # Ljava/lang/String;
    .param p2, "status"  # I
    .param p3, "extras"  # Landroid/os/Bundle;
    .param p4, "updateTime"  # J
    .param p6, "opPackageName"  # Ljava/lang/String;

    .line 3879
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3880
    return-void

    .line 3883
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3884
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getLocationProviderLocked(Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 3885
    .local v1, "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3889
    move-object v2, v1

    check-cast v2, Lcom/android/server/LocationManagerService$MockLocationProvider;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/server/LocationManagerService$MockLocationProvider;->setStatusLocked(ILandroid/os/Bundle;J)V

    .line 3890
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    monitor-exit v0

    .line 3891
    return-void

    .line 3886
    .restart local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/LocationManagerService;
    .end local p1  # "providerName":Ljava/lang/String;
    .end local p2  # "status":I
    .end local p3  # "extras":Landroid/os/Bundle;
    .end local p4  # "updateTime":J
    .end local p6  # "opPackageName":Ljava/lang/String;
    throw v2

    .line 3890
    .end local v1  # "testProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .restart local p0  # "this":Lcom/android/server/LocationManagerService;
    .restart local p1  # "providerName":Ljava/lang/String;
    .restart local p2  # "status":I
    .restart local p3  # "extras":Landroid/os/Bundle;
    .restart local p4  # "updateTime":J
    .restart local p6  # "opPackageName":Ljava/lang/String;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public startGnssBatch(JZLjava/lang/String;)Z
    .registers 8
    .param p1, "periodNanos"  # J
    .param p3, "wakeOnFifoFull"  # Z
    .param p4, "packageName"  # Ljava/lang/String;

    .line 1934
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_14

    goto :goto_34

    .line 1941
    :cond_14
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_26

    .line 1944
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1949
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1950
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider;->start(JZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1951
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_31

    throw v1

    .line 1938
    :cond_34
    :goto_34
    const/4 v0, 0x0

    return v0
.end method

.method public stopGnssBatch()Z
    .registers 4

    .line 1977
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1981
    :try_start_c
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 1982
    iput-boolean v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1983
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1985
    :cond_1b
    monitor-exit v0

    return v2

    .line 1987
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public systemRunning()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initializeLocked()V

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/location/IGnssStatusListener;

    .line 3130
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusListeners:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LocationManagerService;->removeGnssDataListener(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper;Landroid/util/ArrayMap;)V

    .line 3131
    return-void
.end method
