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

.field private static final DEBUG:Z = true

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

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

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

.field private mFixRequestTimeFlyme:J

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

.field private mRealSatelliteFound:Z

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

    .line 122
    new-instance v10, Lcom/android/internal/location/ProviderProperties;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v10, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2285
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "locationProviderManager"  # Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;
    .param p3, "looper"  # Landroid/os/Looper;

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 320
    new-instance v1, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 342
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 345
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 364
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 366
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 377
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 379
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 381
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mRealSatelliteFound:Z

    .line 382
    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTimeFlyme:J

    .line 392
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 395
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 398
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-direct {v2}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    .line 403
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 404
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 440
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 445
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 453
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 477
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1842
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$8;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2282
    const/16 v2, 0x78

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 596
    iput-object p3, p0, Lcom/android/server/location/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    .line 599
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 600
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "GnssLocationProvider"

    invoke-virtual {v2, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 601
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 604
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v3, "GnssLocationProviderPsdsDownload"

    invoke-virtual {v2, v0, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 606
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 608
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 609
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 610
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 614
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 617
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 621
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v2, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 628
    new-instance v2, Lcom/android/server/location/GnssConfiguration;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    .line 629
    new-instance v2, Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-direct {v2}, Lcom/android/server/location/GnssCapabilitiesProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    .line 631
    new-instance v2, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v2, p1, v3, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 634
    new-instance v2, Lcom/android/server/location/GnssNetworkConnectivityHandler;

    new-instance v3, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Q6M8z_ZBiD7BNs3kvNmVrqoHSng;

    invoke-direct {v3, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$Q6M8z_ZBiD7BNs3kvNmVrqoHSng;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v2, p1, v3, p3, v5}, Lcom/android/server/location/GnssNetworkConnectivityHandler;-><init>(Landroid/content/Context;Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 637
    const/16 v2, 0xd

    invoke-direct {p0, v2, v1, v4}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 639
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$2;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 651
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$3;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 658
    new-instance v1, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    .line 660
    new-instance v1, Lcom/android/server/location/GnssLocationProvider$4;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 667
    new-instance v1, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 668
    new-instance v1, Lcom/android/server/location/NtpTimeHelper;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    .line 669
    new-instance v1, Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    .line 672
    .local v1, "gnssSatelliteBlacklistHelper":Lcom/android/server/location/GnssSatelliteBlacklistHelper;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;

    invoke-direct {v3, v1}, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    new-instance v2, Lcom/android/server/location/GnssBatchingProvider;

    invoke-direct {v2}, Lcom/android/server/location/GnssBatchingProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 674
    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider;

    invoke-direct {v2}, Lcom/android/server/location/GnssGeofenceProvider;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    .line 676
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v4, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v6, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 686
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 687
    const-string/jumbo v3, "location_mode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/GnssLocationProvider$6;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    .line 686
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 696
    sget-object v2, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setEnabled(Z)V

    .line 698
    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"  # Landroid/os/WorkSource;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GnssLocationProvider;ZZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Z

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadPsdsData()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # I

    .line 104
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Landroid/location/Location;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Landroid/location/Location;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # I

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Z

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->setupNativeGnssService(Z)V

    return-void
.end method

.method static synthetic access$3200()Z
    .registers 1

    .line 104
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssVisibilityControl;)Lcom/android/server/location/GnssVisibilityControl;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Lcom/android/server/location/GnssVisibilityControl;

    .line 104
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNetworkConnectivityHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Landroid/location/Location;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Landroid/content/Context;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrCarrierConfigChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/location/GnssLocationProvider;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"  # Z

    .line 104
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mShutdown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 104
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"  # Landroid/os/Bundle;

    .line 1205
    if-nez p1, :cond_7

    .line 1206
    const v0, 0xffff

    .local v0, "flags":I
    goto/16 :goto_96

    .line 1208
    .end local v0  # "flags":I
    :cond_7
    const/4 v0, 0x0

    .line 1209
    .restart local v0  # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x1

    .line 1210
    :cond_12
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    or-int/lit8 v0, v0, 0x2

    .line 1211
    :cond_1c
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    or-int/lit8 v0, v0, 0x4

    .line 1212
    :cond_27
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x8

    .line 1213
    :cond_32
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    or-int/lit8 v0, v0, 0x10

    .line 1214
    :cond_3d
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    or-int/lit8 v0, v0, 0x20

    .line 1215
    :cond_48
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    or-int/lit8 v0, v0, 0x40

    .line 1216
    :cond_52
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    or-int/lit16 v0, v0, 0x80

    .line 1217
    :cond_5d
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    or-int/lit16 v0, v0, 0x100

    .line 1218
    :cond_68
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    or-int/lit16 v0, v0, 0x200

    .line 1219
    :cond_73
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    or-int/lit16 v0, v0, 0x400

    .line 1220
    :cond_7e
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1221
    :cond_8a
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1224
    :cond_96
    :goto_96
    if-eqz v0, :cond_9b

    .line 1225
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1227
    :cond_9b
    return-void
.end method

.method private static getGeofenceStatus(I)I
    .registers 2
    .param p0, "status"  # I

    .line 1745
    const/16 v0, -0x95

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_17

    const/16 v0, 0x64

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_1c

    .line 1759
    const/4 v0, -0x1

    return v0

    .line 1751
    :pswitch_f  #0xffffff9b
    const/4 v0, 0x2

    return v0

    .line 1757
    :pswitch_11  #0xffffff9a
    const/4 v0, 0x3

    return v0

    .line 1753
    :pswitch_13  #0xffffff99
    const/4 v0, 0x4

    return v0

    .line 1755
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 1747
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 1749
    :cond_19
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_1c
    .packed-switch -0x67
        :pswitch_13  #ffffff99
        :pswitch_11  #ffffff9a
        :pswitch_f  #ffffff9b
    .end packed-switch
.end method

.method private getSuplMode(Z)I
    .registers 5
    .param p1, "agpsEnabled"  # Z

    .line 922
    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 923
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplMode(I)I

    move-result v1

    .line 924
    .local v1, "suplMode":I
    if-nez v1, :cond_c

    .line 925
    return v0

    .line 930
    :cond_c
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_19

    .line 931
    const/4 v0, 0x1

    return v0

    .line 934
    .end local v1  # "suplMode":I
    :cond_19
    return v0
.end method

.method private handleDisable()V
    .registers 4

    .line 975
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 978
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 979
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 980
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 981
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 983
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v1, :cond_2b

    .line 984
    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    .line 986
    :cond_2b
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->disable()V

    .line 988
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 990
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 991
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 992
    return-void
.end method

.method private handleDownloadPsdsData()V
    .registers 5

    .line 832
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-nez v0, :cond_c

    .line 834
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleDownloadPsdsData() called when PSDS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    return-void

    .line 837
    :cond_c
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 839
    return-void

    .line 841
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 843
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 844
    return-void

    .line 846
    :cond_1e
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    .line 848
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_23
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 851
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_3e

    .line 852
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadPsdsData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$psQkGhDUF5E1xdXdW4u299tSPsA;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$psQkGhDUF5E1xdXdW4u299tSPsA;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 891
    return-void

    .line 851
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private handleEnable()V
    .registers 6

    .line 944
    const-string v0, "GnssLocationProvider"

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v1

    .line 948
    .local v1, "inited":Z
    if-eqz v1, :cond_41

    .line 949
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 950
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_psds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    .line 953
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 954
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 957
    :cond_20
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 958
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v3, v2, v4}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 962
    :cond_2a
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 963
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 964
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GnssBatchingProvider;->enable()V

    .line 965
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v2, :cond_4a

    .line 966
    invoke-virtual {v2, v0}, Lcom/android/server/location/GnssVisibilityControl;->onGpsEnabledChanged(Z)V

    goto :goto_4a

    .line 969
    :cond_41
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 970
    const-string v2, "Failed to enable location provider"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_4a
    :goto_4a
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .registers 10
    .param p1, "hasLatLong"  # Z
    .param p2, "location"  # Landroid/location/Location;

    .line 1362
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1363
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

    .line 1366
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssLocationProvider"

    if-eqz v0, :cond_2c

    .line 1367
    const-string v0, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2b

    .line 1370
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1372
    :cond_2b
    return-void

    .line 1375
    :cond_2c
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

    .line 1377
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1379
    invoke-virtual {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 1381
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_7f

    .line 1382
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1383
    if-eqz p1, :cond_b3

    .line 1384
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1385
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1387
    :cond_6b
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_b3

    .line 1388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 1389
    .local v0, "timeBetweenFixes":I
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v4, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1390
    .end local v0  # "timeBetweenFixes":I
    goto :goto_b3

    .line 1396
    :cond_7f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v0, v4

    .line 1397
    .local v0, "locationAfterStartedFalseMillis":J
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-lez v4, :cond_b3

    .line 1398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected GNSS Location report "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after location turned off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1401
    .local v4, "logMessage":Ljava/lang/String;
    const-wide/16 v5, 0x3a98

    cmp-long v5, v0, v5

    if-lez v5, :cond_b0

    .line 1402
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 1404
    :cond_b0
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    .end local v0  # "locationAfterStartedFalseMillis":J
    .end local v4  # "logMessage":Ljava/lang/String;
    :cond_b3
    :goto_b3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1411
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v0, :cond_ef

    if-eqz p1, :cond_ef

    .line 1412
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTFF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_e8

    .line 1415
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1419
    :cond_e8
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1422
    :cond_ef
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_10f

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10f

    .line 1427
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_10c

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v4, 0xea60

    if-ge v0, v4, :cond_10c

    .line 1428
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1431
    :cond_10c
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1434
    :cond_10f
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_127

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_127

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_127

    .line 1436
    const-string v0, "got fix, hibernating"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1439
    :cond_127
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 12
    .param p1, "info"  # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 1490
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 1491
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1100(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    .line 1492
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v2

    .line 1493
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v3

    .line 1494
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v4

    .line 1495
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v5

    .line 1496
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    .line 1490
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 1499
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1100(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI)V

    .line 1502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1100(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_43

    .line 1503
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v1

    aget v1, v1, v0

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_40

    .line 1504
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mRealSatelliteFound:Z

    .line 1505
    goto :goto_43

    .line 1502
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1511
    .end local v0  # "i":I
    :cond_43
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1100(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v0, 0x0

    .line 1515
    .local v0, "usedInFixCount":I
    const/4 v3, 0x0

    .line 1516
    .local v3, "maxCn0":I
    const/4 v4, 0x0

    .line 1517
    .local v4, "meanCn0":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_61
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1100(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I

    move-result v6

    const/4 v7, 0x2

    if-ge v5, v6, :cond_147

    .line 1518
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v5

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_8f

    .line 1519
    add-int/lit8 v0, v0, 0x1

    .line 1520
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    aget v6, v6, v5

    int-to-float v8, v3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_86

    .line 1521
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v6

    aget v6, v6, v5

    float-to-int v3, v6

    .line 1523
    :cond_86
    int-to-float v6, v4

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v5

    add-float/2addr v6, v8

    float-to-int v4, v6

    .line 1526
    :cond_8f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "svid: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v5

    shr-int/lit8 v8, v8, 0x8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cn0: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " elev: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " azimuth: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " carrier frequency: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1531
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v5

    and-int/2addr v8, v2

    const-string v9, "  "

    if-nez v8, :cond_ea

    .line 1532
    move-object v8, v9

    goto :goto_ec

    :cond_ea
    const-string v8, " E"

    :goto_ec
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v8

    aget v8, v8, v5

    and-int/2addr v7, v8

    if-nez v7, :cond_f9

    .line 1534
    goto :goto_fb

    :cond_f9
    const-string v9, " A"

    :goto_fb
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v7

    aget v7, v7, v5

    and-int/lit8 v7, v7, 0x4

    const-string v8, ""

    if-nez v7, :cond_10c

    .line 1536
    move-object v7, v8

    goto :goto_10e

    :cond_10c
    const-string v7, "U"

    :goto_10e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    nop

    .line 1537
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v7

    aget v7, v7, v5

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_11d

    .line 1539
    goto :goto_11f

    :cond_11d
    const-string v8, "F"

    :goto_11f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1526
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v5

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_143

    .line 1543
    nop

    .line 1544
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I

    move-result-object v6

    aget v6, v6, v5

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 1546
    .local v6, "constellationType":I
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logConstellationType(I)V

    .line 1517
    .end local v6  # "constellationType":I
    :cond_143
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_61

    .line 1549
    .end local v5  # "i":I
    :cond_147
    if-lez v0, :cond_14a

    .line 1550
    div-int/2addr v4, v0

    .line 1553
    :cond_14a
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1555
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_16f

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne v1, v7, :cond_16f

    iget-wide v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_16f

    .line 1556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v1, v5, v7

    if-lez v1, :cond_16f

    .line 1557
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1559
    :cond_16f
    return-void
.end method

.method private handleRequestLocation(ZZ)V
    .registers 14
    .param p1, "independentFromGnss"  # Z
    .param p2, "isUserEmergency"  # Z

    .line 722
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_e

    .line 724
    const-string v0, "RequestLocation is denied due to too frequent requests."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void

    .line 728
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 729
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-wide/16 v2, 0x2710

    const-string v4, "gnss_hal_location_request_duration_millis"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 733
    .local v2, "durationMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_28

    .line 734
    const-string v4, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    .line 738
    :cond_28
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 742
    .local v4, "locationManager":Landroid/location/LocationManager;
    new-instance v5, Landroid/location/LocationRequest;

    invoke-direct {v5}, Landroid/location/LocationRequest;-><init>()V

    .line 743
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    .line 744
    invoke-virtual {v5, v6, v7}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v5

    .line 746
    .local v5, "locationRequest":Landroid/location/LocationRequest;
    if-eqz p1, :cond_4f

    .line 748
    const-string/jumbo v6, "network"

    .line 749
    .local v6, "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 750
    .local v7, "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    const/16 v8, 0xc9

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_58

    .line 753
    .end local v6  # "provider":Ljava/lang/String;
    .end local v7  # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :cond_4f
    const-string v6, "fused"

    .line 754
    .restart local v6  # "provider":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 755
    .restart local v7  # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 758
    :goto_58
    invoke-virtual {v5, v6}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 761
    const/4 v8, 0x1

    if-eqz p2, :cond_6c

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v9}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 762
    invoke-virtual {v5, v8}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 763
    const-wide/16 v9, 0x3

    mul-long/2addr v2, v9

    .line 766
    :cond_6c
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    .line 769
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    .line 767
    const-string v8, "GNSS HAL Requesting location updates from %s provider for %d millis."

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 766
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :try_start_81
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 773
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 772
    invoke-virtual {v4, v5, v7, v8}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 774
    invoke-static {v7}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->access$908(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I

    .line 775
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;

    invoke-direct {v9, v7, v6, v4}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;-><init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_97} :catch_98

    .line 784
    goto :goto_9e

    .line 782
    :catch_98
    move-exception v8

    .line 783
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "Unable to request location."

    invoke-static {v1, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    .end local v8  # "e":Ljava/lang/IllegalArgumentException;
    :goto_9e
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"  # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"  # Landroid/os/WorkSource;

    .line 1050
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1051
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1052
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    .line 1053
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1054
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 10
    .param p1, "location"  # Landroid/location/Location;

    .line 894
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "injectLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 899
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 898
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 901
    :cond_2d
    return-void
.end method

.method private hasCapability(I)Z
    .registers 3
    .param p1, "capability"  # I

    .line 1353
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private hibernate()V
    .registers 8

    .line 1345
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1346
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1347
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1349
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1350
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .registers 45
    .param p1, "location"  # Landroid/location/Location;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "injectBestLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    nop

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    or-int/lit8 v0, v0, 0x1

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x4

    goto :goto_30

    :cond_2f
    move v4, v3

    :goto_30
    or-int/2addr v0, v4

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_3a

    const/16 v4, 0x8

    goto :goto_3b

    :cond_3a
    move v4, v3

    :goto_3b
    or-int/2addr v0, v4

    .line 795
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_45

    const/16 v4, 0x10

    goto :goto_46

    :cond_45
    move v4, v3

    :goto_46
    or-int/2addr v0, v4

    .line 796
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_50

    const/16 v4, 0x20

    goto :goto_51

    :cond_50
    move v4, v3

    :goto_51
    or-int/2addr v0, v4

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5b

    const/16 v4, 0x40

    goto :goto_5c

    :cond_5b
    move v4, v3

    :goto_5c
    or-int/2addr v0, v4

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_66

    const/16 v4, 0x80

    goto :goto_67

    :cond_66
    move v4, v3

    :goto_67
    or-int/2addr v0, v4

    .line 800
    .local v0, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    .line 801
    .local v26, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    .line 802
    .local v28, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v30

    .line 803
    .local v30, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 804
    .local v4, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v32

    .line 805
    .local v32, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v33

    .line 806
    .local v33, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v34

    .line 807
    .local v34, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v35

    .line 808
    .local v35, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v36

    .line 809
    .local v36, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v37

    .line 811
    .local v37, "timestamp":J
    nop

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 813
    goto :goto_99

    :cond_98
    move v2, v3

    :goto_99
    or-int/lit8 v2, v2, 0x1

    .local v2, "elapsedRealtimeFlags":I
    move/from16 v21, v2

    .line 814
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v39

    .local v39, "elapsedRealtimeNanos":J
    move-wide/from16 v22, v39

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v41

    .local v41, "elapsedRealtimeUncertaintyNanos":D
    move-wide/from16 v24, v41

    .line 817
    move-object/from16 v5, p0

    move v6, v0

    move-wide/from16 v7, v26

    move-wide/from16 v9, v28

    move-wide/from16 v11, v30

    move v13, v4

    move/from16 v14, v32

    move/from16 v15, v33

    move/from16 v16, v34

    move/from16 v17, v35

    move/from16 v18, v36

    move-wide/from16 v19, v37

    invoke-direct/range {v5 .. v25}, Lcom/android/server/location/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJIJD)V

    .line 823
    return-void
.end method

.method private isGpsEnabled()Z
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsEnabled:Z

    monitor-exit v0

    return v1

    .line 1023
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private isRequestLocationRateLimited()Z
    .registers 2

    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 575
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$Q6M8z_ZBiD7BNs3kvNmVrqoHSng(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->onNetworkAvailable()V

    return-void
.end method

.method static synthetic lambda$handleRequestLocation$1(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .registers 5
    .param p0, "locationListener"  # Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    .param p1, "provider"  # Ljava/lang/String;
    .param p2, "locationManager"  # Landroid/location/LocationManager;

    .line 776
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->access$906(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 777
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 778
    const-string v1, "Removing location updates from %s provider."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 777
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 781
    :cond_1a
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "message"  # I

    .line 2199
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

    .line 2219
    const-string v0, "<Unknown>"

    return-object v0

    .line 2217
    :pswitch_1a  #0x12
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    .line 2215
    :pswitch_1d  #0x11
    const-string v0, "REPORT_LOCATION"

    return-object v0

    .line 2205
    :pswitch_20  #0x10
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    .line 2211
    :cond_23
    const-string v0, "UPDATE_LOCATION"

    return-object v0

    .line 2207
    :cond_26
    const-string v0, "DOWNLOAD_PSDS_DATA"

    return-object v0

    .line 2203
    :cond_29
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    .line 2213
    :cond_2c
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    .line 2209
    :cond_2f
    const-string v0, "DOWNLOAD_PSDS_DATA_FINISHED"

    return-object v0

    .line 2201
    :cond_32
    const-string v0, "SET_REQUEST"

    return-object v0

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

    .line 712
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->onNetworkAvailable()V

    .line 713
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsDataPending:I

    if-nez v0, :cond_10

    .line 714
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v0, :cond_10

    .line 716
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->psdsDownloadRequest()V

    .line 719
    :cond_10
    return-void
.end method

.method private psdsDownloadRequest()V
    .registers 4

    .line 1737
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "psdsDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1739
    return-void
.end method

.method private reloadGpsProperties()V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->reloadGpsProperties()V

    .line 580
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort()V

    .line 582
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getC2KPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    .line 584
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v2}, Lcom/android/server/location/GnssConfiguration;->getEsExtensionSec()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V

    .line 585
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getSuplEs(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 586
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-eqz v0, :cond_40

    .line 588
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssVisibilityControl;->onConfigurationUpdated(Lcom/android/server/location/GnssConfiguration;)V

    .line 590
    :cond_40
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .registers 5
    .param p1, "agpsType"  # I
    .param p2, "agpsStatus"  # I
    .param p3, "suplIpAddr"  # [B

    .line 1563
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityHandler:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->onReportAGpsStatus(II[B)V

    .line 1564
    return-void
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1801
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$UbVMf2XkqNujf6ZZYbD3ITfhy98;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$UbVMf2XkqNujf6ZZYbD3ITfhy98;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1807
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1821
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$YioQmt5_4rwC3kkzEgeymB15HhA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$YioQmt5_4rwC3kkzEgeymB15HhA;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1827
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1811
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$AqYK7fn42KqHmtzfEEHCId_ucqc;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$AqYK7fn42KqHmtzfEEHCId_ucqc;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1817
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1831
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WHLwhMXdOptyG8XPk2vIU0pgmL8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WHLwhMXdOptyG8XPk2vIU0pgmL8;-><init>(Lcom/android/server/location/GnssLocationProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1837
    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 5
    .param p1, "status"  # I
    .param p2, "location"  # Landroid/location/Location;

    .line 1783
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ii5CD-UWWm-fq57JzZZBF3Nxnic;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$ii5CD-UWWm-fq57JzZZBF3Nxnic;-><init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1797
    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"  # I
    .param p2, "location"  # Landroid/location/Location;
    .param p3, "transition"  # I
    .param p4, "transitionTimestamp"  # J

    .line 1766
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$OlaPfB60MVaXRIn-eVwZiybyWF4;-><init>(Lcom/android/server/location/GnssLocationProvider;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1779
    return-void
.end method

.method private reportGnssServiceDied()V
    .registers 3

    .line 1655
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportGnssServiceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$_u_h1wukFYajzrvRlCDdiTE0DwU;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$_u_h1wukFYajzrvRlCDdiTE0DwU;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1667
    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "hasLatLong"  # Z
    .param p2, "location"  # Landroid/location/Location;

    .line 1358
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1359
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .registers 5
    .param p1, "locationArray"  # [Landroid/location/Location;

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1730
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location batch of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->reportLocation(Ljava/util/List;)V

    .line 1733
    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/location/GnssMeasurementsEvent;

    .line 1577
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1579
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7an4_QLRsGpd_GYEEX9o8MWsh5g;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1581
    :cond_e
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 4
    .param p1, "event"  # Landroid/location/GnssNavigationMessage;

    .line 1585
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1587
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$xOqKbJvk-F9q308HLNoriIqVzOc;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1589
    :cond_e
    return-void
.end method

.method private reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .registers 19
    .param p1, "proxyAppPackageName"  # Ljava/lang/String;
    .param p2, "protocolStack"  # B
    .param p3, "otherProtocolStackName"  # Ljava/lang/String;
    .param p4, "requestor"  # B
    .param p5, "requestorId"  # Ljava/lang/String;
    .param p6, "responseType"  # B
    .param p7, "inEmergencyMode"  # Z
    .param p8, "isCachedLocation"  # Z

    .line 2030
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/location/GnssLocationProvider;->mGnssVisibilityControl:Lcom/android/server/location/GnssVisibilityControl;

    if-nez v1, :cond_e

    .line 2031
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "reportNfwNotification: mGnssVisibilityControl is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    return-void

    .line 2035
    :cond_e
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/location/GnssVisibilityControl;->reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 2038
    return-void
.end method

.method private reportNmea(J)V
    .registers 7
    .param p1, "timestamp"  # J

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_18

    .line 1569
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1570
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1571
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1573
    .end local v0  # "length":I
    .end local v1  # "nmea":Ljava/lang/String;
    :cond_18
    return-void
.end method

.method private reportStatus(I)V
    .registers 5
    .param p1, "status"  # I

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportStatus status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1446
    .local v0, "wasNavigating":Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_27

    goto :goto_31

    .line 1456
    :cond_27
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_31

    .line 1454
    :cond_2a
    goto :goto_31

    .line 1451
    :cond_2b
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1452
    goto :goto_31

    .line 1448
    :cond_2e
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1449
    nop

    .line 1460
    :goto_31
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v0, v1, :cond_3a

    .line 1461
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1463
    :cond_3a
    return-void
.end method

.method private reportSvStatus(I[I[F[F[F[F)V
    .registers 10
    .param p1, "svCount"  # I
    .param p2, "svidWithFlags"  # [I
    .param p3, "cn0s"  # [F
    .param p4, "svElevations"  # [F
    .param p5, "svAzimuths"  # [F
    .param p6, "svCarrierFreqs"  # [F

    .line 1478
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 1479
    .local v0, "svStatusInfo":Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
    invoke-static {v0, p1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1102(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;I)I

    .line 1480
    invoke-static {v0, p2}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1202(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[I)[I

    .line 1481
    invoke-static {v0, p3}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1302(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1482
    invoke-static {v0, p4}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1402(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1483
    invoke-static {v0, p5}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1502(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1484
    invoke-static {v0, p6}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->access$1602(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F

    .line 1486
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1487
    return-void
.end method

.method private requestLocation(ZZ)V
    .registers 5
    .param p1, "independentFromGnss"  # Z
    .param p2, "isUserEmergency"  # Z

    .line 1980
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

    .line 1984
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1985
    return-void
.end method

.method private requestRefLocation()V
    .registers 14

    .line 1995
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1996
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1997
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 1998
    .local v1, "phoneType":I
    const-string v2, "GnssLocationProvider"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_77

    .line 1999
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 2000
    .local v3, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_71

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 2001
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_71

    .line 2003
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2004
    .local v2, "mcc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2005
    .local v4, "mnc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v12

    .line 2006
    .local v12, "networkType":I
    if-eq v12, v5, :cond_5f

    const/16 v5, 0x8

    if-eq v12, v5, :cond_5f

    const/16 v5, 0x9

    if-eq v12, v5, :cond_5f

    const/16 v5, 0xa

    if-eq v12, v5, :cond_5f

    const/16 v5, 0xf

    if-ne v12, v5, :cond_5d

    goto :goto_5f

    .line 2013
    :cond_5d
    const/4 v5, 0x1

    .local v5, "type":I
    goto :goto_60

    .line 2011
    .end local v5  # "type":I
    :cond_5f
    :goto_5f
    const/4 v5, 0x2

    .line 2015
    .restart local v5  # "type":I
    :goto_60
    nop

    .line 2016
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    .line 2015
    move-object v6, p0

    move v7, v5

    move v8, v2

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2017
    .end local v2  # "mcc":I
    .end local v4  # "mnc":I
    .end local v5  # "type":I
    .end local v12  # "networkType":I
    goto :goto_80

    .line 2018
    :cond_71
    const-string v4, "Error getting cell location info."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 2020
    .end local v3  # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_77
    const/4 v3, 0x2

    if-ne v1, v3, :cond_80

    .line 2021
    const-string v3, "CDMA not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 2020
    :cond_80
    :goto_80
    nop

    .line 2023
    :goto_81
    return-void
.end method

.method private requestSetID(I)V
    .registers 8
    .param p1, "flags"  # I

    .line 1944
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1945
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1946
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 1947
    .local v1, "type":I
    const/4 v2, 0x0

    .line 1949
    .local v2, "setId":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 1950
    .local v3, "ddSubId":I
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 1951
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1952
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 1954
    :cond_20
    if-nez v2, :cond_26

    .line 1955
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1957
    :cond_26
    if-eqz v2, :cond_42

    .line 1959
    const/4 v1, 0x1

    goto :goto_42

    .line 1961
    :cond_2a
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_42

    .line 1962
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1963
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v2

    .line 1965
    :cond_39
    if-nez v2, :cond_3f

    .line 1966
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 1968
    :cond_3f
    if-eqz v2, :cond_42

    .line 1970
    const/4 v1, 0x2

    .line 1974
    :cond_42
    :goto_42
    if-nez v2, :cond_47

    const-string v4, ""

    goto :goto_48

    :cond_47
    move-object v4, v2

    :goto_48
    invoke-direct {p0, v1, v4}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 1975
    return-void
.end method

.method private requestUtcTime()V
    .registers 4

    .line 1989
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1991
    return-void
.end method

.method private restartLocationRequest()V
    .registers 3

    .line 1634
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1636
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1637
    return-void
.end method

.method private restartRequests()V
    .registers 3

    .line 1624
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartLocationRequest()V

    .line 1627
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 1628
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 1629
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->resumeIfStarted()V

    .line 1630
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider;->resumeIfStarted()V

    .line 1631
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 6
    .param p1, "message"  # I
    .param p2, "arg"  # I
    .param p3, "obj"  # Ljava/lang/Object;

    .line 2050
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2052
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

    .line 2055
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2056
    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 4
    .param p1, "modelName"  # Ljava/lang/String;

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGnssModelName called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 1651
    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .registers 4
    .param p1, "yearOfHardware"  # I

    .line 1642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setGnssYearOfHardware called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 1644
    return-void
.end method

.method private setGpsEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 938
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mGpsEnabled:Z

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setPositionMode(IIIIIZ)Z
    .registers 15
    .param p1, "mode"  # I
    .param p2, "recurrence"  # I
    .param p3, "minInterval"  # I
    .param p4, "preferredAccuracy"  # I
    .param p5, "preferredTime"  # I
    .param p6, "lowPowerMode"  # Z

    .line 1106
    new-instance v7, Lcom/android/server/location/GnssPositionMode;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssPositionMode;-><init>(IIIIIZ)V

    .line 1108
    .local v0, "positionMode":Lcom/android/server/location/GnssPositionMode;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Lcom/android/server/location/GnssPositionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1109
    const/4 v1, 0x1

    return v1

    .line 1112
    :cond_18
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    .line 1114
    .local v1, "result":Z
    if-eqz v1, :cond_21

    .line 1115
    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    goto :goto_24

    .line 1117
    :cond_21
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    .line 1119
    :goto_24
    return v1
.end method

.method private setStarted(Z)V
    .registers 4
    .param p1, "started"  # Z

    .line 1337
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eq v0, p1, :cond_c

    .line 1338
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    .line 1341
    :cond_c
    return-void
.end method

.method private setSubHalMeasurementCorrectionsCapabilities(I)V
    .registers 4
    .param p1, "subHalCapabilities"  # I

    .line 1613
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$9jdOLj83ArhY9j3s3_Ubo4wma44;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1621
    return-void
.end method

.method private setSuplHostPort()V
    .registers 4

    .line 904
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0}, Lcom/android/server/location/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssConfiguration;->getSuplPort(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 906
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_22

    const v2, 0xffff

    if-gt v1, v2, :cond_22

    .line 909
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 912
    :cond_22
    return-void
.end method

.method private setTopHalCapabilities(I)V
    .registers 4
    .param p1, "topHalCapabilities"  # I

    .line 1593
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$FgVpMm9HUsK34prF193as-eSjf8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$FgVpMm9HUsK34prF193as-eSjf8;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1609
    return-void
.end method

.method private setupNativeGnssService(Z)V
    .registers 5
    .param p1, "reinitializeGnssServiceHandle"  # Z

    .line 2265
    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->native_init_once(Z)V

    .line 2273
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 2274
    .local v0, "isInitialized":Z
    if-nez v0, :cond_11

    .line 2275
    const-string v1, "GnssLocationProvider"

    const-string v2, "Native initialization failed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2277
    :cond_11
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 2279
    :goto_14
    return-void
.end method

.method private startNavigating()V
    .registers 14

    .line 1230
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_d2

    .line 1231
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "startNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1233
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1234
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1235
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1238
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v3, :cond_23

    .line 1239
    const-string/jumbo v3, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_23
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1244
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_gps_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_33

    move v3, v2

    goto :goto_34

    :cond_33
    move v3, v1

    .line 1246
    .local v3, "agpsEnabled":Z
    :goto_34
    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Z)I

    move-result v4

    iput v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1249
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mRealSatelliteFound:Z

    .line 1255
    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v5, 0x2

    if-eqz v4, :cond_4f

    if-eq v4, v2, :cond_4c

    if-eq v4, v5, :cond_49

    .line 1266
    const-string/jumbo v4, "unknown"

    .local v4, "mode":Ljava/lang/String;
    goto :goto_53

    .line 1260
    .end local v4  # "mode":Ljava/lang/String;
    :cond_49
    const-string v4, "MS_ASSISTED"

    .line 1261
    .restart local v4  # "mode":Ljava/lang/String;
    goto :goto_53

    .line 1263
    .end local v4  # "mode":Ljava/lang/String;
    :cond_4c
    const-string v4, "MS_BASED"

    .line 1264
    .restart local v4  # "mode":Ljava/lang/String;
    goto :goto_53

    .line 1257
    .end local v4  # "mode":Ljava/lang/String;
    :cond_4f
    const-string/jumbo v4, "standalone"

    .line 1258
    .restart local v4  # "mode":Ljava/lang/String;
    nop

    .line 1269
    :goto_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setting position_mode to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    .end local v4  # "mode":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_71

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    goto :goto_73

    :cond_71
    const/16 v4, 0x3e8

    :goto_73
    move v9, v4

    .line 1273
    .local v9, "interval":I
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v4, v4, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1274
    iget v7, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v12, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v4

    if-nez v4, :cond_92

    .line 1276
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1277
    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void

    .line 1280
    :cond_92
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v4

    if-nez v4, :cond_a2

    .line 1281
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1282
    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void

    .line 1287
    :cond_a2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTimeFlyme:J

    .line 1291
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1292
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1294
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 1297
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_d2

    .line 1298
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1299
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v6, 0xea60

    add-long/2addr v1, v6

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1298
    invoke-virtual {v0, v5, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1303
    .end local v3  # "agpsEnabled":Z
    .end local v9  # "interval":I
    :cond_d2
    return-void
.end method

.method private stopNavigating()V
    .registers 11

    .line 1306
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_56

    .line 1310
    const-wide/32 v0, 0x2bf20

    .line 1312
    .local v0, "noFixMinDuration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTimeFlyme:J

    sub-long/2addr v2, v4

    .line 1313
    .local v2, "duration":J
    iget-wide v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-nez v4, :cond_40

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mRealSatelliteFound:Z

    if-nez v4, :cond_40

    cmp-long v4, v2, v0

    if-lez v4, :cond_40

    .line 1316
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .local v4, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "duration"

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v8

    const-string v9, "event_no_satellites"

    invoke-virtual {v8, v9, v5, v4}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1322
    .end local v4  # "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_40
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mRealSatelliteFound:Z

    .line 1324
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->setStarted(Z)V

    .line 1325
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1326
    iput-wide v6, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1328
    iput-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLastPositionMode:Lcom/android/server/location/GnssPositionMode;

    .line 1331
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1332
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1334
    .end local v0  # "noFixMinDuration":J
    .end local v2  # "duration":J
    :cond_56
    return-void
.end method

.method private subscriptionOrCarrierConfigChanged(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;

    .line 517
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "received SIM related action: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 519
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 520
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 521
    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 522
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 523
    .local v3, "ddSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 524
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    :cond_2c
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "mccMnc":Ljava/lang/String;
    :goto_30
    const/4 v5, 0x0

    .line 526
    .local v5, "isKeepLppProfile":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_81

    .line 527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM MCC/MNC is available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-eqz v2, :cond_62

    .line 529
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 530
    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 531
    .local v0, "b":Landroid/os/PersistableBundle;
    :goto_59
    if-eqz v0, :cond_62

    .line 532
    nop

    .line 533
    const-string v6, "gps.persist_lpp_mode_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 536
    .end local v0  # "b":Landroid/os/PersistableBundle;
    :cond_62
    const-string/jumbo v0, "persist.sys.gps.lpp"

    if-eqz v5, :cond_78

    .line 538
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 539
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v6}, Lcom/android/server/location/GnssConfiguration;->getLppProfile()Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, "lpp_profile":Ljava/lang/String;
    if-eqz v6, :cond_77

    .line 542
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v6  # "lpp_profile":Ljava/lang/String;
    :cond_77
    goto :goto_7d

    .line 546
    :cond_78
    const-string v6, ""

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_7d
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    goto :goto_86

    .line 550
    :cond_81
    const-string v6, "SIM MCC/MNC is still not available"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_86
    return-void
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"  # Landroid/os/WorkSource;

    .line 1123
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1124
    return-void

    .line 1129
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1132
    goto :goto_19

    .line 1130
    :catch_11
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1137
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6d

    .line 1138
    aget-object v4, v0, v1

    .line 1139
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v3

    .line 1141
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_48

    .line 1142
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1143
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1144
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1143
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1145
    .end local v7  # "newChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_2e

    .line 1148
    :cond_48
    if-eqz v5, :cond_68

    .line 1149
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1150
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1151
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1150
    invoke-virtual {v8, v2, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1152
    .end local v7  # "goneChain":Landroid/os/WorkSource$WorkChain;
    goto :goto_4e

    .line 1155
    :cond_68
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1159
    .end local v4  # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5  # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_6d
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1160
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_ab

    .line 1161
    aget-object v1, v4, v1

    .line 1162
    .local v1, "newWork":Landroid/os/WorkSource;
    aget-object v3, v4, v3

    .line 1165
    .local v3, "goneWork":Landroid/os/WorkSource;
    if-eqz v1, :cond_92

    .line 1166
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7c
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_92

    .line 1167
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1168
    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    .line 1167
    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1166
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1173
    .end local v5  # "i":I
    :cond_92
    if-eqz v3, :cond_ab

    .line 1174
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_95
    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v5, v6, :cond_ab

    .line 1175
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1174
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 1179
    .end local v1  # "newWork":Landroid/os/WorkSource;
    .end local v3  # "goneWork":Landroid/os/WorkSource;
    .end local v5  # "i":I
    :cond_ab
    return-void
.end method

.method private updateEnabled()V
    .registers 4

    .line 996
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 997
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 1000
    .local v0, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1003
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

    .line 1007
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mShutdown:Z

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    .line 1009
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_32

    .line 1010
    return-void

    .line 1013
    :cond_32
    if-eqz v0, :cond_38

    .line 1014
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    goto :goto_3b

    .line 1016
    :cond_38
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    .line 1018
    :goto_3b
    return-void
.end method

.method private updateLowPowerMode()V
    .registers 6

    .line 556
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    .line 557
    .local v0, "disableGpsForPowerManager":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 558
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    .line 559
    .local v1, "result":Landroid/os/PowerSaveState;
    iget v3, v1, Landroid/os/PowerSaveState;->locationMode:I

    if-eq v3, v2, :cond_15

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    goto :goto_24

    .line 563
    :cond_15
    iget-boolean v3, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 564
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v0, v2

    .line 567
    :goto_24
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    if-eq v0, v2, :cond_30

    .line 568
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    .line 569
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    .line 570
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 572
    :cond_30
    return-void
.end method

.method private updateRequirements()V
    .registers 10

    .line 1058
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_a

    goto/16 :goto_cd

    .line 1062
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_b3

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 1065
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1067
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v2, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v2

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1068
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1070
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v2, v0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6a

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interval overflow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v2, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1076
    :cond_6a
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_8c

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1078
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider;->setPositionMode(IIIIIZ)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 1080
    const-string/jumbo v0, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 1082
    :cond_8c
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v0, :cond_94

    .line 1084
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating()V

    goto :goto_cc

    .line 1087
    :cond_94
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1088
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_cc

    .line 1091
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1092
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1091
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_cc

    .line 1096
    :cond_b3
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1098
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1099
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1102
    :cond_cc
    :goto_cc
    return-void

    .line 1059
    :cond_cd
    :goto_cd
    return-void
.end method

.method private updateStatus(I)V
    .registers 4
    .param p1, "status"  # I

    .line 1033
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_c

    .line 1034
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1037
    :cond_c
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   (changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mStartedChangedElapsedRealtime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2229
    const-string v1, " ago)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2230
    const-string v2, "  mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2231
    const-string v2, "  mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2232
    const-string v2, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 2233
    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2234
    const-string v2, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 2235
    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2236
    const-string v2, "  mDisableGpsForPowerManager="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGpsForPowerManager:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2237
    const-string v1, "  mTopHalCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_90

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    :cond_90
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2241
    :cond_9c
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_a8

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    :cond_a8
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    :cond_b5
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c2

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    :cond_c2
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    :cond_cf
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    :cond_dc
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_e9

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    :cond_e9
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_f6

    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    :cond_f6
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_103

    const-string v1, "SATELLITE_BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2249
    :cond_103
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 2250
    const-string v2, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    :cond_110
    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 2254
    const-string v1, "  SubHal=MEASUREMENT_CORRECTIONS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->toStringCapabilities()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2256
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    :cond_12e
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2259
    const-string v1, "  native internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2260
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2261
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2262
    return-void
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;
    .registers 2

    .line 1702
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssCapabilitiesProvider()Lcom/android/server/location/GnssCapabilitiesProvider;
    .registers 2

    .line 1723
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    return-object v0
.end method

.method public getGnssMeasurementCorrectionsProvider()Lcom/android/server/location/GnssMeasurementCorrectionsProvider;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2

    .line 467
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
    .registers 2

    .line 1716
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$rE3aXybVXWDfHPxCjEXzxG9bPmo;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Lcom/android/server/location/GnssStatusListenerHelper;
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .line 1685
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 463
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .line 1876
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"  # Landroid/os/Bundle;

    .line 1028
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 1029
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .line 1041
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public injectTime(JJI)V
    .registers 6
    .param p1, "time"  # J
    .param p3, "timeReference"  # J
    .param p5, "uncertainty"  # I

    .line 705
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    .line 706
    return-void
.end method

.method isInEmergencySession()Z
    .registers 2

    .line 2043
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getGnssMetricsProvider$8$GnssLocationProvider()Ljava/lang/String;
    .registers 2

    .line 1716
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$handleDownloadPsdsData$2$GnssLocationProvider()V
    .registers 7

    .line 854
    new-instance v0, Lcom/android/server/location/GpsPsdsDownloader;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    .line 855
    invoke-virtual {v1}, Lcom/android/server/location/GnssConfiguration;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/location/GpsPsdsDownloader;-><init>(Ljava/util/Properties;)V

    .line 856
    .local v0, "psdsDownloader":Lcom/android/server/location/GpsPsdsDownloader;
    invoke-virtual {v0}, Lcom/android/server/location/GpsPsdsDownloader;->downloadPsdsData()[B

    move-result-object v1

    .line 857
    .local v1, "data":[B
    if-eqz v1, :cond_21

    .line 858
    const-string v2, "GnssLocationProvider"

    const-string v3, "calling native_inject_psds_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_psds_data([BI)V

    .line 860
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    invoke-virtual {v2}, Lcom/android/server/location/ExponentialBackOff;->reset()V

    .line 863
    :cond_21
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 865
    if-nez v1, :cond_36

    .line 868
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 869
    invoke-virtual {v4}, Lcom/android/server/location/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v4

    .line 868
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 874
    :cond_36
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 875
    :try_start_39
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_61

    if-eqz v3, :cond_58

    .line 879
    :try_start_41
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadPsdsWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 880
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock released by handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_4e
    .catchall {:try_start_41 .. :try_end_4d} :catchall_61

    .line 884
    goto :goto_5f

    .line 881
    :catch_4e
    move-exception v3

    .line 882
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v4, "GnssLocationProvider"

    const-string v5, "Wakelock timeout & release race exception in handleDownloadPsdsData()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    goto :goto_5f

    .line 886
    :cond_58
    const-string v3, "GnssLocationProvider"

    const-string v4, "WakeLock expired before release in handleDownloadPsdsData()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :goto_5f
    monitor-exit v2

    .line 890
    return-void

    .line 889
    :catchall_61
    move-exception v3

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_61

    throw v3
.end method

.method public synthetic lambda$onUpdateSatelliteBlacklist$0$GnssLocationProvider([I[I)V
    .registers 4
    .param p1, "constellations"  # [I
    .param p2, "svids"  # [I

    .line 512
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/GnssConfiguration;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GnssConfiguration;->setSatelliteBlacklist([I[I)V

    return-void
.end method

.method public synthetic lambda$reportGeofenceAddStatus$11$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1802
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1803
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1805
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1806
    return-void
.end method

.method public synthetic lambda$reportGeofencePauseStatus$13$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1822
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1823
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1825
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1826
    return-void
.end method

.method public synthetic lambda$reportGeofenceRemoveStatus$12$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1812
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1813
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1815
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1816
    return-void
.end method

.method public synthetic lambda$reportGeofenceResumeStatus$14$GnssLocationProvider(II)V
    .registers 5
    .param p1, "geofenceId"  # I
    .param p2, "status"  # I

    .line 1832
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1833
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1835
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 1836
    return-void
.end method

.method public synthetic lambda$reportGeofenceStatus$10$GnssLocationProvider(ILandroid/location/Location;)V
    .registers 7
    .param p1, "status"  # I
    .param p2, "location"  # Landroid/location/Location;

    .line 1784
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1785
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1787
    :cond_c
    const/4 v0, 0x1

    .line 1788
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    .line 1789
    const/4 v0, 0x0

    .line 1791
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1796
    return-void
.end method

.method public synthetic lambda$reportGeofenceTransition$9$GnssLocationProvider(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"  # I
    .param p2, "location"  # Landroid/location/Location;
    .param p3, "transition"  # I
    .param p4, "transitionTimestamp"  # J

    .line 1767
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1768
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1771
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1778
    return-void
.end method

.method public synthetic lambda$reportGnssServiceDied$7$GnssLocationProvider()V
    .registers 2

    .line 1657
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setupNativeGnssService(Z)V

    .line 1658
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1659
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->setGpsEnabled(Z)V

    .line 1661
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateEnabled()V

    .line 1664
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties()V

    .line 1666
    :cond_14
    return-void
.end method

.method public synthetic lambda$reportMeasurementData$3$GnssLocationProvider(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"  # Landroid/location/GnssMeasurementsEvent;

    .line 1579
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public synthetic lambda$reportNavigationMessage$4$GnssLocationProvider(Landroid/location/GnssNavigationMessage;)V
    .registers 3
    .param p1, "event"  # Landroid/location/GnssNavigationMessage;

    .line 1587
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public synthetic lambda$setSubHalMeasurementCorrectionsCapabilities$6$GnssLocationProvider(I)V
    .registers 3
    .param p1, "subHalCapabilities"  # I

    .line 1614
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementCorrectionsProvider:Lcom/android/server/location/GnssMeasurementCorrectionsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->onCapabilitiesUpdated(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1615
    return-void

    .line 1618
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssCapabilitiesProvider;->setSubHalMeasurementCorrectionsCapabilities(I)V

    .line 1620
    return-void
.end method

.method public synthetic lambda$setTopHalCapabilities$5$GnssLocationProvider(I)V
    .registers 4
    .param p1, "topHalCapabilities"  # I

    .line 1594
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    .line 1596
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1597
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->enablePeriodicTimeInjection()V

    .line 1598
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1601
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    const/16 v1, 0x40

    .line 1602
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1601
    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1603
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    const/16 v1, 0x80

    .line 1604
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    .line 1603
    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1605
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartRequests()V

    .line 1607
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssCapabilitiesProvider:Lcom/android/server/location/GnssCapabilitiesProvider;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTopHalCapabilities:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssCapabilitiesProvider;->setTopHalCapabilities(I)V

    .line 1608
    return-void
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .registers 5
    .param p1, "constellations"  # [I
    .param p2, "svids"  # [I

    .line 512
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$WbIUWqWbiKrZx6NHwSpsFU1pHKI;-><init>(Lcom/android/server/location/GnssLocationProvider;[I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->resetConstellationTypes()V

    .line 514
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 38
    .param p1, "notificationId"  # I
    .param p2, "niType"  # I
    .param p3, "notifyFlags"  # I
    .param p4, "timeout"  # I
    .param p5, "defaultResponse"  # I
    .param p6, "requestorId"  # Ljava/lang/String;
    .param p7, "text"  # Ljava/lang/String;
    .param p8, "requestorIdEncoding"  # I
    .param p9, "textEncoding"  # I

    .line 1892
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

    .line 1893
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

    .line 1899
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

    .line 1904
    new-instance v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v10}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 1906
    .local v10, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput v1, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 1907
    iput v2, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 1908
    and-int/lit8 v11, v3, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_8f

    move v11, v13

    goto :goto_90

    :cond_8f
    move v11, v12

    :goto_90
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 1909
    and-int/lit8 v11, v3, 0x2

    if-eqz v11, :cond_98

    move v11, v13

    goto :goto_99

    :cond_98
    move v11, v12

    :goto_99
    iput-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 1910
    and-int/lit8 v11, v3, 0x4

    if-eqz v11, :cond_a0

    move v12, v13

    :cond_a0
    iput-boolean v12, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 1912
    iput v4, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 1913
    iput v5, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 1914
    iput-object v6, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 1915
    iput-object v7, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 1916
    iput v8, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 1917
    iput v9, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 1919
    iget-object v11, v0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v11, v10}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 1920
    const/16 v12, 0x7c

    iget v14, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v15, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    iget-boolean v11, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    move/from16 v17, v13

    iget-boolean v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    move/from16 v18, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    move/from16 v19, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    move/from16 v20, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    move-object/from16 v21, v13

    iget-object v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    move-object/from16 v22, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    move/from16 v23, v13

    iget v13, v10, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    move/from16 v24, v13

    iget-boolean v13, v0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 1934
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->isGpsEnabled()Z

    move-result v26

    const/16 v27, 0x0

    .line 1920
    move/from16 v25, v13

    const/4 v13, 0x1

    move/from16 v16, v11

    invoke-static/range {v12 .. v27}, Landroid/util/StatsLog;->write(IIIIZZZIILjava/lang/String;Ljava/lang/String;IIZZI)I

    .line 1936
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "command"  # Ljava/lang/String;
    .param p2, "extras"  # Landroid/os/Bundle;

    .line 1184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1186
    .local v0, "identity":J
    :try_start_4
    const-string v2, "delete_aiding_data"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1187
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)V

    goto :goto_43

    .line 1188
    :cond_10
    const-string v2, "force_time_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1189
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    goto :goto_43

    .line 1190
    :cond_1c
    const-string v2, "force_psds_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1191
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsPsds:Z

    if-eqz v2, :cond_43

    .line 1192
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->psdsDownloadRequest()V

    goto :goto_43

    .line 1195
    :cond_2c
    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendExtraCommand: unknown command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_48

    .line 1198
    :cond_43
    :goto_43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1199
    nop

    .line 1200
    return-void

    .line 1198
    :catchall_48
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"  # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"  # Landroid/os/WorkSource;

    .line 1046
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1047
    return-void
.end method
