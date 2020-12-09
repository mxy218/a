.class public Lcom/android/server/location/GnssLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;,
        Lcom/android/server/location/GnssLocationProvider$NativeEntryPoint;
    }
.end annotation


# static fields
.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final DEBUG:Z

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderPsdsDownload"

.field private static final DOWNLOAD_PSDS_DATA:I = 0x6

.field private static final DOWNLOAD_PSDS_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_PSDS_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ELAPSED_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field private static final ELAPSED_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field private static final EMERGENCY_LOCATION_UPDATE_DURATION_MULTIPLIER:I = 0x3

.field public static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field public static final GPS_CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final GPS_CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field public static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final GPS_CAPABILITY_SATELLITE_BLACKLIST:I = 0x200

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_OFF_DELAY_THRESHOLD_ERROR_MILLIS:J = 0x3a98L

.field private static final LOCATION_OFF_DELAY_THRESHOLD_WARN_MILLIS:J = 0x7d0L

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x2710L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_LOW_POWER_MODE:I = 0x1

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleController$StationaryListener;

.field private mDisableGpsForPowerManager:Z

.field private mDownloadPsdsDataPending:I

.field private final mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private final mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

.field private mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

.field private final mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

.field private mGpsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private volatile mIsDeviceStationary:Z

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

.field private final mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mLowPowerMode:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

.field private final mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

.field private mShutdown:Z

.field private mStarted:Z

.field private mStartedChangedElapsedRealtime:J

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsPsds:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private volatile mTopHalCapabilities:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 113
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 114
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    .line 116
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2277
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V
    .registers 10

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 284
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 287
    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 315
    new-instance v0, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 337
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 340
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 359
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 361
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 374
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 380
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mIsDeviceStationary:Z

    .line 389
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 392
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 395
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    .line 400
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 401
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 437
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 442
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 450
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 475
    new-instance v2, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tSQEyDq2VWZVa1jo9aOO8Z8P9R0;

    invoke-direct {v2, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tSQEyDq2VWZVa1jo9aOO8Z8P9R0;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleController$StationaryListener;

    .line 483
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1831
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$8;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2274
    const/16 v2, 0x78

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 612
    iput-object p3, p0, Lcom/android/server/location/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    .line 615
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 616
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "GnssLocationProvider"

    invoke-virtual {v2, p2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 617
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 620
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "GnssLocationProviderPsdsDownload"

    invoke-virtual {v2, p2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 622
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 624
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 625
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 626
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 628
    new-instance v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;

    new-instance v3, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Q6M8z_ZBiD7BNs3kvNmVrqoHSng;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Q6M8z_ZBiD7BNs3kvNmVrqoHSng;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-direct {v2, p1, v3, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 632
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 635
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 639
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v2, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 646
    new-instance v2, Lcom/android/server/location/GnssConfiguration;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    .line 647
    new-instance v2, Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-direct {v2}, Lcom/android/server/location/GnssCapabilitiesProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    .line 649
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v2, p1, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 652
    const/16 p1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 654
    new-instance p1, Lcom/android/server/location/GnssLocationProvider$2;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 666
    new-instance p1, Lcom/android/server/location/GnssLocationProvider$3;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 673
    new-instance p1, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    .line 675
    new-instance p1, Lcom/android/server/location/GnssLocationProvider$4;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 682
    new-instance p1, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p1, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 683
    new-instance p1, Lcom/android/server/location/NtpTimeHelper;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p3, p0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    .line 684
    new-instance p1, Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p3, p0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    .line 687
    iget-object p3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    new-instance p1, Lcom/android/server/location/GnssBatchingProvider;

    invoke-direct {p1}, Lcom/android/server/location/GnssBatchingProvider;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 689
    new-instance p1, Lcom/android/server/location/GnssGeofenceProvider;

    invoke-direct {p1}, Lcom/android/server/location/GnssGeofenceProvider;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    .line 691
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 701
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 702
    const-string p3, "location_mode"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    new-instance v0, Lcom/android/server/location/GnssLocationProvider$6;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    .line 701
    const/4 v1, -0x1

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 711
    sget-object p1, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 712
    invoke-virtual {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->setEnabled(Z)V

    .line 713
    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/location/GnssLocationProvider;Z)Z
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mShutdown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 98
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadPsdsData()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2

    .line 98
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->setupNativeGnssService(Z)V

    return-void
.end method

.method static synthetic access$3600()Z
    .registers 1

    .line 98
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssVisibilityControl;)Lcom/android/server/location/GnssVisibilityControl;
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Looper;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/DeviceIdleController$StationaryListener;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mDeviceIdleStationaryListener:Lcom/android/server/DeviceIdleController$StationaryListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrCarrierConfigChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 1

    .line 98
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result p0

    return p0
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)V
    .registers 5

    .line 1225
    const v0, 0xffff

    if-nez p1, :cond_7

    .line 1226
    goto/16 :goto_93

    .line 1228
    :cond_7
    const/4 v1, 0x0

    .line 1229
    const-string v2, "ephemeris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    .line 1230
    :cond_11
    const-string v2, "almanac"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    or-int/lit8 v1, v1, 0x2

    .line 1231
    :cond_1b
    const-string/jumbo v2, "position"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    or-int/lit8 v1, v1, 0x4

    .line 1232
    :cond_26
    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    or-int/lit8 v1, v1, 0x8

    .line 1233
    :cond_31
    const-string v2, "iono"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    or-int/lit8 v1, v1, 0x10

    .line 1234
    :cond_3b
    const-string/jumbo v2, "utc"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    or-int/lit8 v1, v1, 0x20

    .line 1235
    :cond_46
    const-string v2, "health"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    or-int/lit8 v1, v1, 0x40

    .line 1236
    :cond_50
    const-string/jumbo v2, "svdir"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    or-int/lit16 v1, v1, 0x80

    .line 1237
    :cond_5b
    const-string/jumbo v2, "svsteer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    or-int/lit16 v1, v1, 0x100

    .line 1238
    :cond_66
    const-string/jumbo v2, "sadata"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    or-int/lit16 v1, v1, 0x200

    .line 1239
    :cond_71
    const-string/jumbo v2, "rti"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    or-int/lit16 v1, v1, 0x400

    .line 1240
    :cond_7c
    const-string v2, "celldb-info"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 1241
    :cond_88
    const-string v2, "all"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_92

    or-int/2addr v0, v1

    goto :goto_93

    :cond_92
    move v0, v1

    .line 1244
    :goto_93
    if-eqz v0, :cond_98

    .line 1245
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1247
    :cond_98
    return-void
.end method

.method private static getGeofenceStatus(I)I
    .registers 2

    .line 1734
    const/16 v0, -0x95

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_17

    const/16 v0, 0x64

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_1c

    .line 1748
    const/4 p0, -0x1

    return p0

    .line 1740
    :pswitch_f  #0xffffff9b
    const/4 p0, 0x2

    return p0

    .line 1746
    :pswitch_11  #0xffffff9a
    const/4 p0, 0x3

    return p0

    .line 1742
    :pswitch_13  #0xffffff99
    const/4 p0, 0x4

    return p0

    .line 1744
    :cond_15
    const/4 p0, 0x1

    return p0

    .line 1736
    :cond_17
    const/4 p0, 0x0

    return p0

    .line 1738
    :cond_19
    const/4 p0, 0x5

    return p0

    nop

    :pswitch_data_1c
    .packed-switch -0x67
        :pswitch_13  #ffffff99
        :pswitch_11  #ffffff9a
        :pswitch_f  #ffffff9b
    .end packed-switch
.end method

.method private getSuplMode(Z)I
    .registers 4

    .line 942
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 943
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {p1, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplMode(I)I

    move-result p1

    .line 944
    if-nez p1, :cond_c

    .line 945
    return v0

    .line 950
    :cond_c
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_18

    .line 951
    return v1

    .line 954
    :cond_18
    return v0
.end method

.method private handleDisable()V
    .registers 4

    .line 995
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 998
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 999
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1000
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1001
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1003
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v1, :cond_2f

    .line 1004
    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 1006
    :cond_2f
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->disable()V

    .line 1008
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 1010
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1011
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1012
    return-void
.end method

.method private handleDownloadPsdsData()V
    .registers 5

    .line 852
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_c

    .line 854
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void

    .line 857
    :cond_c
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 859
    return-void

    .line 861
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 863
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 864
    return-void

    .line 866
    :cond_1e
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 868
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_23
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 871
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_3e

    .line 872
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tViaOq3LA5BWjgBCpCz5nJIfQdI;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$tViaOq3LA5BWjgBCpCz5nJIfQdI;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 911
    return-void

    .line 871
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private handleEnable()V
    .registers 5

    .line 964
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_b

    const-string v0, "handleEnable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_b
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 968
    if-eqz v0, :cond_45

    .line 969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 970
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_psds()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    .line 973
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 974
    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 977
    :cond_24
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 978
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 982
    :cond_2e
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 983
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 984
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->enable()V

    .line 985
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v1, :cond_4e

    .line 986
    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_4e

    .line 989
    :cond_45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 990
    const-string v0, "Failed to enable location provider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_4e
    :goto_4e
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .registers 9

    .line 1358
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1359
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000  # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1362
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v0, :cond_2c

    .line 1363
    const-string p1, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_2b

    .line 1366
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p1, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1368
    :cond_2b
    return-void

    .line 1371
    :cond_2c
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportLocation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_49
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1375
    invoke-virtual {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_83

    .line 1378
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1379
    if-eqz p1, :cond_b7

    .line 1380
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1381
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1383
    :cond_6f
    iget p2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez p2, :cond_b7

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v4

    long-to-int p2, v0

    .line 1385
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1386
    goto :goto_b7

    .line 1392
    :cond_83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v4

    .line 1393
    const-wide/16 v4, 0x7d0

    cmp-long p2, v0, v4

    if-lez p2, :cond_b7

    .line 1394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected GNSS Location report "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " after location turned off"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1397
    const-wide/16 v4, 0x3a98

    cmp-long v0, v0, v4

    if-lez v0, :cond_b4

    .line 1398
    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 1400
    :cond_b4
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_b7
    :goto_b7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1407
    iget p2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez p2, :cond_f7

    if-eqz p1, :cond_f7

    .line 1408
    iget-wide p1, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1409
    sget-boolean p1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz p1, :cond_e5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TTFF: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_e5
    iget-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_f0

    .line 1411
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget p2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1415
    :cond_f0
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget p2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {p1, p2}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1418
    :cond_f7
    iget-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_117

    iget p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_117

    .line 1423
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_114

    iget p1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v0, 0xea60

    if-ge p1, v0, :cond_114

    .line 1424
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1427
    :cond_114
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1430
    :cond_117
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_133

    iget-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz p1, :cond_133

    iget p1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 p2, 0x2710

    if-le p1, p2, :cond_133

    .line 1432
    sget-boolean p1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz p1, :cond_130

    const-string p1, "got fix, hibernating"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_130
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1435
    :cond_133
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 11

    .line 1486
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 1487
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    .line 1488
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v2

    .line 1489
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    .line 1490
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    .line 1491
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    .line 1492
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    .line 1486
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI[F)V

    .line 1497
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_4c

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_4c
    nop

    .line 1502
    nop

    .line 1503
    nop

    .line 1504
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_53
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v0, v5, :cond_13e

    .line 1505
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v5

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_82

    .line 1506
    add-int/lit8 v2, v2, 0x1

    .line 1507
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    aget v5, v5, v0

    int-to-float v8, v4

    cmpl-float v5, v5, v8

    if-lez v5, :cond_79

    .line 1508
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    aget v4, v4, v0

    float-to-int v4, v4

    .line 1510
    :cond_79
    int-to-float v3, v3

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    aget v5, v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 1512
    :cond_82
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v5, :cond_120

    .line 1513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "svid: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v0

    shr-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cn0: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " elev: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1700(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " azimuth: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1800(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " carrier frequency: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1518
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v0

    and-int/2addr v7, v8

    const-string v8, "  "

    if-nez v7, :cond_e1

    .line 1519
    move-object v7, v8

    goto :goto_e3

    :cond_e1
    const-string v7, " E"

    :goto_e3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v7

    aget v7, v7, v0

    and-int/2addr v6, v7

    if-nez v6, :cond_f0

    .line 1521
    goto :goto_f2

    :cond_f0
    const-string v8, " A"

    :goto_f2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x4

    const-string v7, ""

    if-nez v6, :cond_103

    .line 1523
    move-object v6, v7

    goto :goto_105

    :cond_103
    const-string v6, "U"

    :goto_105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    nop

    .line 1524
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_114

    .line 1526
    goto :goto_116

    :cond_114
    const-string v7, "F"

    :goto_116
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1513
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_120
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v5

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_13a

    .line 1530
    nop

    .line 1531
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v5

    aget v5, v5, v0

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 1533
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v6, v5}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logConstellationType(I)V

    .line 1504
    :cond_13a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_53

    .line 1536
    :cond_13e
    if-lez v2, :cond_141

    .line 1537
    div-int/2addr v3, v2

    .line 1540
    :cond_141
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1542
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_166

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne v0, v6, :cond_166

    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_166

    .line 1543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_166

    .line 1544
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1547
    :cond_166
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1900(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logSvStatus(I[I[F)V

    .line 1548
    return-void
.end method

.method private handleRequestLocation(ZZ)V
    .registers 13

    .line 737
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_12

    .line 738
    sget-boolean p1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz p1, :cond_11

    .line 739
    const-string p1, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_11
    return-void

    .line 743
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 744
    const-wide/16 v2, 0x2710

    const-string v4, "gnss_hal_location_request_duration_millis"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 748
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2c

    .line 749
    const-string p1, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 753
    :cond_2c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 757
    new-instance v4, Landroid/location/LocationRequest;

    invoke-direct {v4}, Landroid/location/LocationRequest;-><init>()V

    .line 758
    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v4

    .line 759
    invoke-virtual {v4, v5, v6}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v4

    .line 761
    if-eqz p1, :cond_53

    .line 763
    nop

    .line 764
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 765
    const/16 v6, 0xc9

    invoke-virtual {v4, v6}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    const-string/jumbo v6, "network"

    goto :goto_5d

    .line 768
    :cond_53
    nop

    .line 769
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 770
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    const-string v6, "fused"

    .line 773
    :goto_5d
    invoke-virtual {v4, v6}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 777
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eqz v7, :cond_7e

    .line 778
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    .line 779
    invoke-virtual {v7}, Lcom/android/server/location/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    move-result-object v7

    .line 780
    if-nez p2, :cond_78

    iget p2, v7, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    if-ge p2, v9, :cond_7e

    if-nez p1, :cond_7e

    .line 781
    :cond_78
    invoke-virtual {v4, v8}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 782
    const-wide/16 p1, 0x3

    mul-long/2addr v2, p1

    .line 786
    :cond_7e
    new-array p1, v9, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v6, p1, p2

    .line 789
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v8

    .line 787
    const-string p2, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 786
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :try_start_92
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 793
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 792
    invoke-virtual {v0, v4, v5, p1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 794
    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->access$1208(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I

    .line 795
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;

    invoke-direct {p2, v5, v6, v0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$zDU-4stA5kbnbj2CmSK2PauyroM;-><init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_92 .. :try_end_a8} :catch_a9

    .line 804
    goto :goto_af

    .line 802
    :catch_a9
    move-exception p1

    .line 803
    const-string p2, "Unable to request location."

    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    :goto_af
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3

    .line 1070
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1071
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1072
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    .line 1073
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1074
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 10

    .line 914
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 915
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_20
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 919
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 918
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 921
    :cond_30
    return-void
.end method

.method private hasCapability(I)Z
    .registers 3

    .line 1349
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private hibernate()V
    .registers 6

    .line 1341
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1342
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1343
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1345
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1346
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .registers 28

    .line 808
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectBestLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 808
    :cond_1d
    move-object/from16 v1, p1

    .line 811
    :goto_1f
    nop

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v3

    :goto_2b
    or-int/lit8 v0, v0, 0x1

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x4

    goto :goto_36

    :cond_35
    move v4, v3

    :goto_36
    or-int/2addr v0, v4

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_40

    const/16 v4, 0x8

    goto :goto_41

    :cond_40
    move v4, v3

    :goto_41
    or-int/2addr v0, v4

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4b

    const/16 v4, 0x10

    goto :goto_4c

    :cond_4b
    move v4, v3

    :goto_4c
    or-int/2addr v0, v4

    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_56

    const/16 v4, 0x20

    goto :goto_57

    :cond_56
    move v4, v3

    :goto_57
    or-int/2addr v0, v4

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_61

    const/16 v4, 0x40

    goto :goto_62

    :cond_61
    move v4, v3

    :goto_62
    or-int/2addr v0, v4

    .line 818
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6c

    const/16 v4, 0x80

    goto :goto_6d

    :cond_6c
    move v4, v3

    :goto_6d
    or-int v6, v0, v4

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 821
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 823
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v14

    .line 825
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v16

    .line 827
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v17

    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v18

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    .line 831
    nop

    .line 832
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 833
    goto :goto_a0

    :cond_9f
    move v2, v3

    :goto_a0
    or-int/lit8 v21, v2, 0x1

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v22

    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v24

    .line 837
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v25}, Lcom/android/server/location/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJIJD)V

    .line 843
    return-void
.end method

.method private isGpsEnabled()Z
    .registers 3

    .line 1041
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1042
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return v1

    .line 1043
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isRequestLocationRateLimited()Z
    .registers 2

    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 591
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$Q6M8z_ZBiD7BNs3kvNmVrqoHSng(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method static synthetic lambda$handleRequestLocation$2(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .registers 5

    .line 796
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->access$1206(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 797
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 798
    const-string p1, "Removing location updates from %s provider."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 797
    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 801
    :cond_1a
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .registers 3

    .line 2191
    const/4 v0, 0x3

    if-eq p1, v0, :cond_32

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2f

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_29

    const/4 v0, 0x6

    if-eq p1, v0, :cond_26

    const/4 v0, 0x7

    if-eq p1, v0, :cond_23

    packed-switch p1, :pswitch_data_36

    .line 2211
    const-string p1, "<Unknown>"

    return-object p1

    .line 2209
    :pswitch_1a  #0x12
    const-string p1, "REPORT_SV_STATUS"

    return-object p1

    .line 2207
    :pswitch_1d  #0x11
    const-string p1, "REPORT_LOCATION"

    return-object p1

    .line 2197
    :pswitch_20  #0x10
    const-string p1, "REQUEST_LOCATION"

    return-object p1

    .line 2203
    :cond_23
    const-string p1, "UPDATE_LOCATION"

    return-object p1

    .line 2199
    :cond_26
    const-string p1, "DOWNLOAD_PSDS_DATA"

    return-object p1

    .line 2195
    :cond_29
    const-string p1, "INJECT_NTP_TIME"

    return-object p1

    .line 2205
    :cond_2c
    const-string p1, "INITIALIZE_HANDLER"

    return-object p1

    .line 2201
    :cond_2f
    const-string p1, "DOWNLOAD_PSDS_DATA_FINISHED"

    return-object p1

    .line 2193
    :cond_32
    const-string p1, "SET_REQUEST"

    return-object p1

    nop

    :pswitch_data_36
    .packed-switch 0x10
        :pswitch_20  #00000010
        :pswitch_1d  #00000011
        :pswitch_1a  #00000012
    .end packed-switch
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private static native native_init_once(Z)V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_psds_data([BI)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_psds()Z
.end method

.method private onNetworkAvailable()V
    .registers 2

    .line 727
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->onNetworkAvailable()V

    .line 728
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    if-nez v0, :cond_10

    .line 729
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_10

    .line 731
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->psdsDownloadRequest()V

    .line 734
    :cond_10
    return-void
.end method

.method private psdsDownloadRequest()V
    .registers 4

    .line 1726
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "psdsDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_c
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1728
    return-void
.end method

.method private reloadGpsProperties()V
    .registers 4

    .line 595
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->reloadGpsProperties()V

    .line 596
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort()V

    .line 598
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    .line 600
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 601
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 602
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v0, :cond_40

    .line 604
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/GnssConfiguration;)V

    .line 606
    :cond_40
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .registers 5

    .line 1552
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    .line 1553
    return-void
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5

    .line 1790
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rgfO__O6aj3JBohawF88T-AfsaY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rgfO__O6aj3JBohawF88T-AfsaY;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1796
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5

    .line 1810
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Mf3hti2G0vD9ZNlxSGs0q1o7fm4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Mf3hti2G0vD9ZNlxSGs0q1o7fm4;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1816
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5

    .line 1800
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$adAUsgD5mK9uoxw0KEjaMYtp_Ro;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1806
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5

    .line 1820
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$EdWkocFV52YPVPhXR-8dHVOO94k;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1826
    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 5

    .line 1772
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$3-p6UujuU3pwMrR_jYW3uvQiXNM;-><init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15

    .line 1755
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$iKRZ4-bb3otAVYEgv859Z4uWXAo;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$iKRZ4-bb3otAVYEgv859Z4uWXAo;-><init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1768
    return-void
.end method

.method private reportGnssServiceDied()V
    .registers 3

    .line 1644
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportGnssServiceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$yfrbw7SiyKDgHamyMz3bNbh47g8;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$yfrbw7SiyKDgHamyMz3bNbh47g8;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .registers 4

    .line 1354
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1355
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .registers 5

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1718
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->reportLocation(Ljava/util/List;)V

    .line 1722
    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4

    .line 1566
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1568
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$nZP4qF7PEET3HrkcVZAYhG3Bm0c;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$nZP4qF7PEET3HrkcVZAYhG3Bm0c;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1570
    :cond_e
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 4

    .line 1574
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1576
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9MM35t5nvyDpqsn9eNpZKYoZgE4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9MM35t5nvyDpqsn9eNpZKYoZgE4;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1578
    :cond_e
    return-void
.end method

.method private reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 18

    .line 2019
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-nez v0, :cond_e

    .line 2020
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportNfwNotification: mGnssVisibilityControl is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    return-void

    .line 2024
    :cond_e
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 2027
    return-void
.end method

.method private reportNmea(J)V
    .registers 7

    .line 1557
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_18

    .line 1558
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1559
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1560
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1562
    :cond_18
    return-void
.end method

.method private reportStatus(I)V
    .registers 5

    .line 1439
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1442
    const/4 v1, 0x1

    if-eq p1, v1, :cond_32

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2b

    goto :goto_35

    .line 1452
    :cond_2b
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_35

    .line 1450
    :cond_2e
    goto :goto_35

    .line 1447
    :cond_2f
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1448
    goto :goto_35

    .line 1444
    :cond_32
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1445
    nop

    .line 1456
    :goto_35
    iget-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v0, p1, :cond_3e

    .line 1457
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1459
    :cond_3e
    return-void
.end method

.method private reportSvStatus(I[I[F[F[F[F)V
    .registers 9

    .line 1474
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 1475
    invoke-static {v0, p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1402(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;I)I

    .line 1476
    invoke-static {v0, p2}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1502(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[I)[I

    .line 1477
    invoke-static {v0, p3}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1602(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1478
    invoke-static {v0, p4}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1702(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1479
    invoke-static {v0, p5}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1802(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1480
    invoke-static {v0, p6}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1902(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1482
    const/16 p1, 0x12

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1483
    return-void
.end method

.method private requestLocation(ZZ)V
    .registers 5

    .line 1968
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocation. independentFromGnss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_23
    const/16 v0, 0x10

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1974
    return-void
.end method

.method private requestRefLocation()V
    .registers 14

    .line 1984
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1985
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1986
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 1987
    const-string v2, "GnssLocationProvider"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_75

    .line 1988
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 1989
    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6f

    .line 1990
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_6f

    .line 1992
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1993
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1994
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1995
    if-eq v0, v6, :cond_60

    const/16 v2, 0x8

    if-eq v0, v2, :cond_60

    const/16 v2, 0x9

    if-eq v0, v2, :cond_60

    const/16 v2, 0xa

    if-eq v0, v2, :cond_60

    const/16 v2, 0xf

    if-ne v0, v2, :cond_5e

    goto :goto_60

    .line 2002
    :cond_5e
    move v8, v4

    goto :goto_61

    .line 2000
    :cond_60
    :goto_60
    move v8, v3

    .line 2004
    :goto_61
    nop

    .line 2005
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v12

    .line 2004
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2006
    goto :goto_7d

    .line 2007
    :cond_6f
    const-string v0, "Error getting cell location info."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 2009
    :cond_75
    if-ne v1, v3, :cond_7d

    .line 2010
    const-string v0, "CDMA not supported."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 2009
    :cond_7d
    :goto_7d
    nop

    .line 2012
    :goto_7e
    return-void
.end method

.method private requestSetID(I)V
    .registers 9

    .line 1933
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1934
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1935
    nop

    .line 1936
    nop

    .line 1938
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1939
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v4, :cond_2e

    .line 1940
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1941
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1943
    :cond_23
    if-nez v6, :cond_2a

    .line 1944
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 1946
    :cond_2a
    if-eqz v6, :cond_45

    .line 1948
    move v5, v4

    goto :goto_45

    .line 1950
    :cond_2e
    and-int/2addr p1, v3

    if-ne p1, v3, :cond_45

    .line 1951
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1952
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v6

    .line 1954
    :cond_3b
    if-nez v6, :cond_42

    .line 1955
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 1957
    :cond_42
    if-eqz v6, :cond_45

    .line 1959
    move v5, v3

    .line 1963
    :cond_45
    :goto_45
    if-nez v6, :cond_49

    const-string v6, ""

    :cond_49
    invoke-direct {p0, v5, v6}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 1964
    return-void
.end method

.method private requestUtcTime()V
    .registers 4

    .line 1978
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_c
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1980
    return-void
.end method

.method private restartLocationRequest()V
    .registers 3

    .line 1623
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1625
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1626
    return-void
.end method

.method private restartRequests()V
    .registers 3

    .line 1613
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartLocationRequest()V

    .line 1616
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 1617
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 1618
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->resumeIfStarted()V

    .line 1619
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider;->resumeIfStarted()V

    .line 1620
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 6

    .line 2039
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2040
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock acquired by sendMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_36
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2045
    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 4

    .line 1638
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGnssModelName called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_1b
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 1640
    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .registers 4

    .line 1631
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGnssYearOfHardware called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :cond_1b
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 1633
    return-void
.end method

.method private setGpsEnabled(Z)V
    .registers 3

    .line 958
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsEnabled:Z

    .line 960
    monitor-exit v0

    .line 961
    return-void

    .line 960
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method private setPositionMode(IIIIIZ)Z
    .registers 15

    .line 1126
    new-instance v7, Lcom/android/server/location/GnssPositionMode;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v7}, Lcom/android/server/location/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1129
    const/4 p1, 0x1

    return p1

    .line 1132
    :cond_18
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result p1

    .line 1134
    if-eqz p1, :cond_21

    .line 1135
    iput-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    goto :goto_24

    .line 1137
    :cond_21
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    .line 1139
    :goto_24
    return p1
.end method

.method private setStarted(Z)V
    .registers 4

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_c

    .line 1334
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 1337
    :cond_c
    return-void
.end method

.method private setSubHalMeasurementCorrectionsCapabilities(I)V
    .registers 4

    .line 1602
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oOmW6rOO6xCNWQPEjj4mX2PxDsI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oOmW6rOO6xCNWQPEjj4mX2PxDsI;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1610
    return-void
.end method

.method private setSuplHostPort()V
    .registers 4

    .line 924
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 926
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_22

    const v2, 0xffff

    if-gt v1, v2, :cond_22

    .line 929
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 932
    :cond_22
    return-void
.end method

.method private setTopHalCapabilities(I)V
    .registers 4

    .line 1582
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$jmXMIeP-Oz1yyVRIDOicfl2ucfI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$jmXMIeP-Oz1yyVRIDOicfl2ucfI;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1598
    return-void
.end method

.method private setupNativeGnssService(Z)V
    .registers 3

    .line 2257
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->native_init_once(Z)V

    .line 2265
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result p1

    .line 2266
    if-nez p1, :cond_11

    .line 2267
    const-string p1, "GnssLocationProvider"

    const-string v0, "Native initialization failed."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2269
    :cond_11
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 2271
    :goto_14
    return-void
.end method

.method private startNavigating()V
    .registers 13

    .line 1250
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_d4

    .line 1251
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_10

    const-string/jumbo v0, "startNavigating"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1253
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1254
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1255
    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1258
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v3, :cond_27

    .line 1259
    const-string/jumbo v3, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_27
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1264
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v0

    .line 1266
    :goto_38
    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Z)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1268
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_70

    .line 1271
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    if-eqz v3, :cond_57

    if-eq v3, v2, :cond_53

    if-eq v3, v4, :cond_4f

    .line 1282
    const-string/jumbo v3, "unknown"

    goto :goto_5b

    .line 1276
    :cond_4f
    nop

    .line 1277
    const-string v3, "MS_ASSISTED"

    goto :goto_5b

    .line 1279
    :cond_53
    nop

    .line 1280
    const-string v3, "MS_BASED"

    goto :goto_5b

    .line 1273
    :cond_57
    nop

    .line 1274
    const-string/jumbo v3, "standalone"

    .line 1285
    :goto_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting position_mode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_70
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_79

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    goto :goto_7b

    :cond_79
    const/16 v3, 0x3e8

    :goto_7b
    move v8, v3

    .line 1289
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1290
    iget v6, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1292
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1293
    const-string/jumbo v0, "set_position_mode failed in startNavigating()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void

    .line 1296
    :cond_9a
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v3

    if-nez v3, :cond_aa

    .line 1297
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1298
    const-string/jumbo v0, "native_start failed in startNavigating()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void

    .line 1303
    :cond_aa
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1304
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1306
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1309
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_d4

    .line 1310
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0xea60

    add-long/2addr v1, v5

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1310
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1315
    :cond_d4
    return-void
.end method

.method private stopNavigating()V
    .registers 3

    .line 1318
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_27

    .line 1320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1321
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1322
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    .line 1327
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1328
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1330
    :cond_27
    return-void
.end method

.method private subscriptionOrCarrierConfigChanged(Landroid/content/Context;)V
    .registers 8

    .line 534
    sget-boolean p1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string v0, "GnssLocationProvider"

    if-eqz p1, :cond_c

    const-string/jumbo p1, "received SIM related action: "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_c
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 536
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 537
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 538
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 539
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 540
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 541
    invoke-virtual {p1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_30
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    .line 542
    :goto_34
    const/4 v3, 0x0

    .line 543
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 544
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM MCC/MNC is available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_53
    if-eqz v1, :cond_6a

    .line 546
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 547
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    .line 548
    :goto_61
    if-eqz p1, :cond_6a

    .line 549
    nop

    .line 550
    const-string v0, "gps.persist_lpp_mode_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 553
    :cond_6a
    const-string/jumbo p1, "persist.sys.gps.lpp"

    if-eqz v3, :cond_80

    .line 555
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 556
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_7f

    .line 559
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_7f
    goto :goto_85

    .line 563
    :cond_80
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :goto_85
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_92

    .line 567
    :cond_89
    sget-boolean p1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz p1, :cond_92

    const-string p1, "SIM MCC/MNC is still not available"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_92
    :goto_92
    return-void
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 10

    .line 1143
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1144
    return-void

    .line 1149
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1152
    goto :goto_19

    .line 1150
    :catch_11
    move-exception v0

    .line 1151
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1157
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6d

    .line 1158
    aget-object v4, v0, v3

    .line 1159
    aget-object v0, v0, v2

    .line 1161
    if-eqz v4, :cond_48

    .line 1162
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 1163
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v7

    .line 1164
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1163
    invoke-virtual {v6, v1, v7, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1165
    goto :goto_2e

    .line 1168
    :cond_48
    if-eqz v0, :cond_68

    .line 1169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 1170
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v6

    .line 1171
    invoke-virtual {v4}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 1170
    invoke-virtual {v5, v1, v6, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1172
    goto :goto_4e

    .line 1175
    :cond_68
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1179
    :cond_6d
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object p1

    .line 1180
    if-eqz p1, :cond_ab

    .line 1181
    aget-object v0, p1, v3

    .line 1182
    aget-object p1, p1, v2

    .line 1185
    if-eqz v0, :cond_92

    .line 1186
    move v2, v3

    :goto_7c
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-ge v2, v4, :cond_92

    .line 1187
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1188
    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v6

    .line 1187
    invoke-virtual {v4, v1, v5, v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1186
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 1193
    :cond_92
    if-eqz p1, :cond_ab

    .line 1194
    nop

    :goto_95
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-ge v3, v0, :cond_ab

    .line 1195
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1194
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 1199
    :cond_ab
    return-void
.end method

.method private updateEnabled()V
    .registers 4

    .line 1016
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1017
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1020
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1023
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v1, :cond_25

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->locationSettingsIgnored:Z

    if-eqz v1, :cond_25

    move v1, v2

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    or-int/2addr v0, v1

    .line 1027
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1029
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1030
    return-void

    .line 1033
    :cond_32
    if-eqz v0, :cond_38

    .line 1034
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    goto :goto_3b

    .line 1036
    :cond_38
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    .line 1038
    :goto_3b
    return-void
.end method

.method private updateLowPowerMode()V
    .registers 7

    .line 573
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mIsDeviceStationary:Z

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 574
    :goto_11
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    .line 575
    iget v4, v3, Landroid/os/PowerSaveState;->locationMode:I

    if-eq v4, v2, :cond_1f

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1f

    goto :goto_2f

    .line 579
    :cond_1f
    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 580
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_2d

    move v1, v2

    goto :goto_2e

    :cond_2d
    nop

    :goto_2e
    or-int/2addr v0, v1

    .line 583
    :goto_2f
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    if-eq v0, v1, :cond_3b

    .line 584
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 585
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    .line 586
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 588
    :cond_3b
    return-void
.end method

.method private updateRequirements()V
    .registers 10

    .line 1078
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_a

    goto/16 :goto_d0

    .line 1082
    :cond_a
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRequest "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_27
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_b6

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1085
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v2, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1088
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1090
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v2, v0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6d

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval overflow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v2, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1096
    :cond_6d
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_8f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1098
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 1100
    const-string/jumbo v0, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 1102
    :cond_8f
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_97

    .line 1104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating()V

    goto :goto_cf

    .line 1107
    :cond_97
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1108
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_cf

    .line 1111
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1111
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_cf

    .line 1116
    :cond_b6
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1118
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1119
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1120
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1122
    :cond_cf
    :goto_cf
    return-void

    .line 1079
    :cond_d0
    :goto_d0
    return-void
.end method

.method private updateStatus(I)V
    .registers 4

    .line 1053
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_c

    .line 1054
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1057
    :cond_c
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 2217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2218
    const-string p3, "  mStarted="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "   (changed "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2221
    const-string p3, " ago)"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2222
    const-string v0, "  mFixInterval="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2223
    const-string v0, "  mLowPowerMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2224
    const-string v0, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 2225
    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2226
    const-string v0, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 2227
    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2228
    const-string v0, "  mDisableGpsForPowerManager="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2229
    const-string p3, "  mTopHalCapabilities=0x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    const-string p3, " ( "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_90

    const-string p3, "SCHEDULING "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    :cond_90
    const/4 p3, 0x2

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_9c

    const-string p3, "MSB "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    :cond_9c
    const/4 p3, 0x4

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_a8

    const-string p3, "MSA "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    :cond_a8
    const/16 p3, 0x8

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_b5

    const-string p3, "SINGLE_SHOT "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    :cond_b5
    const/16 p3, 0x10

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_c2

    const-string p3, "ON_DEMAND_TIME "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    :cond_c2
    const/16 p3, 0x20

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_cf

    const-string p3, "GEOFENCING "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    :cond_cf
    const/16 p3, 0x40

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_dc

    const-string p3, "MEASUREMENTS "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    :cond_dc
    const/16 p3, 0x80

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_e9

    const-string p3, "NAV_MESSAGES "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :cond_e9
    const/16 p3, 0x100

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_f6

    const-string p3, "LOW_POWER_MODE "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    :cond_f6
    const/16 p3, 0x200

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_103

    const-string p3, "SATELLITE_BLACKLIST "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    :cond_103
    const/16 p3, 0x400

    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 2242
    const-string v0, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    :cond_110
    const-string v0, ")\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-direct {p0, p3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p3

    if-eqz p3, :cond_12e

    .line 2246
    const-string p3, "  SubHal=MEASUREMENT_CORRECTIONS["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    iget-object p3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {p3}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->toStringCapabilities()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    const-string p3, "]\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    :cond_12e
    iget-object p3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2251
    const-string p3, "  native internal state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2254
    return-void
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;
    .registers 2

    .line 1691
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;
    .registers 2

    .line 1712
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    return-object v0
.end method

.method public getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
    .registers 2

    .line 1705
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ecDMZdWsEh2URVlhxaEdh1Ifjc8;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ecDMZdWsEh2URVlhxaEdh1Ifjc8;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .line 1674
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .line 1865
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3

    .line 1048
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 1049
    iget p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return p1
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .line 1061
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public injectTime(JJI)V
    .registers 6

    .line 720
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    .line 721
    return-void
.end method

.method isInEmergencySession()Z
    .registers 2

    .line 2032
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getGnssMetricsProvider$9$GnssLocationProvider()Ljava/lang/String;
    .registers 2

    .line 1705
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$handleDownloadPsdsData$3$GnssLocationProvider()V
    .registers 5

    .line 874
    new-instance v0, Lcom/android/server/location/GpsPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    .line 875
    invoke-virtual {v1}, Lcom/android/server/location/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 876
    invoke-virtual {v0}, Lcom/android/server/location/GpsPsdsDownloader;->downloadPsdsData()[B

    move-result-object v0

    .line 877
    if-eqz v0, :cond_25

    .line 878
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "GnssLocationProvider"

    const-string v2, "calling native_inject_psds_data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_1c
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_inject_psds_data([BI)V

    .line 880
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v1}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    .line 883
    :cond_25
    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 885
    if-nez v0, :cond_3a

    .line 888
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 889
    invoke-virtual {v2}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v2

    .line 888
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 894
    :cond_3a
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_68

    if-eqz v1, :cond_5f

    .line 899
    :try_start_45
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 900
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_55

    const-string v1, "GnssLocationProvider"

    const-string v2, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_55} :catch_56
    .catchall {:try_start_45 .. :try_end_55} :catchall_68

    .line 904
    :cond_55
    :goto_55
    goto :goto_66

    .line 901
    :catch_56
    move-exception v1

    .line 902
    :try_start_57
    const-string v2, "GnssLocationProvider"

    const-string v3, "Wakelock timeout & release race exception in handleDownloadPsdsData()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 906
    :cond_5f
    const-string v1, "GnssLocationProvider"

    const-string v2, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_66
    monitor-exit v0

    .line 910
    return-void

    .line 909
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public synthetic lambda$new$0$GnssLocationProvider(Z)V
    .registers 3

    .line 477
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mIsDeviceStationary:Z

    .line 480
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    return-void
.end method

.method public synthetic lambda$onUpdateSatelliteBlacklist$1$GnssLocationProvider([I[I)V
    .registers 4

    .line 529
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GnssConfiguration;->setSatelliteBlacklist([I[I)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceAddStatus$12$GnssLocationProvider(II)V
    .registers 4

    .line 1791
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1792
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1794
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1795
    return-void
.end method

.method public synthetic lambda$reportGeofencePauseStatus$14$GnssLocationProvider(II)V
    .registers 4

    .line 1811
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1812
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1814
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1815
    return-void
.end method

.method public synthetic lambda$reportGeofenceRemoveStatus$13$GnssLocationProvider(II)V
    .registers 4

    .line 1801
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1802
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1804
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1805
    return-void
.end method

.method public synthetic lambda$reportGeofenceResumeStatus$15$GnssLocationProvider(II)V
    .registers 4

    .line 1821
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1822
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1824
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 1825
    return-void
.end method

.method public synthetic lambda$reportGeofenceStatus$11$GnssLocationProvider(ILandroid/location/Location;)V
    .registers 6

    .line 1773
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1774
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1776
    :cond_c
    const/4 v0, 0x1

    .line 1777
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_12

    .line 1778
    move v0, v2

    .line 1780
    :cond_12
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    sget v1, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {p1, v2, v0, p2, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1785
    return-void
.end method

.method public synthetic lambda$reportGeofenceTransition$10$GnssLocationProvider(ILandroid/location/Location;IJ)V
    .registers 15

    .line 1756
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1757
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1760
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1767
    return-void
.end method

.method public synthetic lambda$reportGnssServiceDied$8$GnssLocationProvider()V
    .registers 2

    .line 1646
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setupNativeGnssService(Z)V

    .line 1647
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1650
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    .line 1653
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    .line 1655
    :cond_14
    return-void
.end method

.method public synthetic lambda$reportMeasurementData$4$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3

    .line 1568
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public synthetic lambda$reportNavigationMessage$5$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V
    .registers 3

    .line 1576
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public synthetic lambda$setSubHalMeasurementCorrectionsCapabilities$7$GnssLocationProvider(I)V
    .registers 3

    .line 1603
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->onCapabilitiesUpdated(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1604
    return-void

    .line 1607
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssCapabilitiesProvider;->setSubHalMeasurementCorrectionsCapabilities(I)V

    .line 1609
    return-void
.end method

.method public synthetic lambda$setTopHalCapabilities$6$GnssLocationProvider(I)V
    .registers 3

    .line 1583
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    .line 1585
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1586
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {p1}, Lcom/android/server/location/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1587
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1590
    :cond_12
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    const/16 v0, 0x40

    .line 1591
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    .line 1590
    invoke-virtual {p1, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1592
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    const/16 v0, 0x80

    .line 1593
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    .line 1592
    invoke-virtual {p1, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1594
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartRequests()V

    .line 1596
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-virtual {p1, v0}, Lcom/android/server/location/GnssCapabilitiesProvider;->setTopHalCapabilities(I)V

    .line 1597
    return-void
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .registers 5

    .line 529
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$_xEBoJSNGaiPvO5kj-sfJB7tZYk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$_xEBoJSNGaiPvO5kj-sfJB7tZYk;-><init>(Lcom/android/server/location/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->resetConstellationTypes()V

    .line 531
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 37

    .line 1881
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v10, "GnssLocationProvider"

    const-string/jumbo v11, "reportNiNotification: entered"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "notificationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", niType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", notifyFlags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", timeout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", defaultResponse: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "requestorId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", text: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", requestorIdEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", textEncoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1895
    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1896
    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1897
    and-int/lit8 v1, v3, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_8f

    move v1, v11

    goto :goto_90

    :cond_8f
    move v1, v2

    :goto_90
    iput-boolean v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1898
    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_98

    move v1, v11

    goto :goto_99

    :cond_98
    move v1, v2

    :goto_99
    iput-boolean v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1899
    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_a0

    goto :goto_a1

    :cond_a0
    move v11, v2

    :goto_a1
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1901
    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1902
    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1903
    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1904
    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1905
    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1906
    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1908
    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1909
    const/16 v11, 0x7c

    const/4 v12, 0x1

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    iget-boolean v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    iget v3, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    iget v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    iget-object v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    iget v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    iget v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    iget-boolean v9, v0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 1923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v25

    const/16 v26, 0x0

    .line 1909
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-static/range {v11 .. v26}, Landroid/util/StatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)I

    .line 1925
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 1204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1206
    :try_start_4
    const-string v2, "delete_aiding_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1207
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    goto :goto_43

    .line 1208
    :cond_10
    const-string p2, "force_time_injection"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1209
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    goto :goto_43

    .line 1210
    :cond_1c
    const-string p2, "force_psds_injection"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 1211
    iget-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz p1, :cond_43

    .line 1212
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->psdsDownloadRequest()V

    goto :goto_43

    .line 1215
    :cond_2c
    const-string p2, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendExtraCommand: unknown command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_48

    .line 1218
    :cond_43
    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1219
    nop

    .line 1220
    return-void

    .line 1218
    :catchall_48
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 4

    .line 1066
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1067
    return-void
.end method
