.class public Lcom/android/server/display/BrightnessTracker;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessTracker$Injector;,
        Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;,
        Lcom/android/server/display/BrightnessTracker$TrackerHandler;,
        Lcom/android/server/display/BrightnessTracker$Receiver;,
        Lcom/android/server/display/BrightnessTracker$SettingsObserver;,
        Lcom/android/server/display/BrightnessTracker$DisplayListener;,
        Lcom/android/server/display/BrightnessTracker$SensorListener;,
        Lcom/android/server/display/BrightnessTracker$LightData;
    }
.end annotation


# static fields
.field private static final AMBIENT_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "ambient_brightness_stats.xml"

.field private static final ATTR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final ATTR_COLOR_SAMPLE_DURATION:Ljava/lang/String; = "colorSampleDuration"

.field private static final ATTR_COLOR_TEMPERATURE:Ljava/lang/String; = "colorTemperature"

.field private static final ATTR_COLOR_VALUE_BUCKETS:Ljava/lang/String; = "colorValueBuckets"

.field private static final ATTR_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field private static final ATTR_LAST_NITS:Ljava/lang/String; = "lastNits"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_LUX_TIMESTAMPS:Ljava/lang/String; = "luxTimestamps"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "nightMode"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_POWER_SAVE:Ljava/lang/String; = "powerSaveFactor"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_POINT:Ljava/lang/String; = "userPoint"

.field private static final COLOR_SAMPLE_COMPONENT_MASK:I = 0x4

.field private static final COLOR_SAMPLE_DURATION:J

.field static final DEBUG:Z = false

.field static final ENABLE_COLOR_SAMPLING:Z = false
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EVENTS_FILE:Ljava/lang/String; = "brightness_events.xml"

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LUX_EVENT_HORIZON:J

.field private static final MAX_EVENTS:I = 0x64

.field private static final MAX_EVENT_AGE:J

.field private static final MSG_BACKGROUND_START:I = 0x0

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final MSG_START_SENSOR_LISTENER:I = 0x3

.field private static final MSG_STOP_SENSOR_LISTENER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BrightnessTracker"

.field private static final TAG_EVENT:Ljava/lang/String; = "event"

.field private static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field private mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

.field private final mBgHandler:Landroid/os/Handler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorSamplingEnabled:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDataCollectionLock:Ljava/lang/Object;

.field private mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

.field private mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDirty:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation
.end field

.field private final mEventsLock:Ljava/lang/Object;

.field private mFrameRate:F

.field private final mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

.field private mLastBatteryLevel:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field private mLastBrightness:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field private mLastSensorReadings:Ljava/util/Deque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/android/server/display/BrightnessTracker$LightData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoFramesToSample:I

.field private mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

.field private mSensorRegistered:Z

.field private mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

.field private mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataCollectionLock"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private volatile mWriteBrightnessTrackerStateScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 133
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/BrightnessTracker;->COLOR_SAMPLE_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V
    .registers 6

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 165
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    .line 169
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 171
    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 173
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 183
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 185
    if-eqz p2, :cond_3c

    .line 186
    iput-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    goto :goto_43

    .line 188
    :cond_3c
    new-instance p1, Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/display/BrightnessTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 190
    :goto_43
    new-instance p1, Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    iget-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {p2}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/BrightnessTracker$TrackerHandler;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 191
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    .line 192
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/BrightnessTracker;II)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->batteryLevelChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/BrightnessTracker;F)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->backgroundStart(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/BrightnessTracker;FZFZZJ)V
    .registers 8

    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/BrightnessTracker;->handleBrightnessChanged(FZFZZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/SensorEvent;)V
    .registers 2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/BrightnessTracker;)V
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->updateColorSampling()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private backgroundStart(F)V
    .registers 6

    .line 208
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readEvents()V

    .line 209
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->readAmbientBrightnessStats()V

    .line 211
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessTracker$SensorListener;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 213
    new-instance v0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    .line 214
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 215
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->startSensorListener()V

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    new-instance v2, Lcom/android/server/display/BrightnessTracker$Receiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V

    iput-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_56
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 228
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 229
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_60

    .line 230
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 231
    return-void

    .line 229
    :catchall_60
    move-exception p1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method private batteryLevelChanged(II)V
    .registers 4

    .line 879
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    :try_start_6
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    .line 881
    monitor-exit v0

    .line 882
    return-void

    .line 881
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private disableColorSampling()V
    .registers 4

    .line 801
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    .line 802
    return-void

    .line 804
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->enableColorSampling(ZI)Z

    .line 805
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    .line 806
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    if-eqz v0, :cond_1b

    .line 807
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/BrightnessTracker$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDisplayListener:Lcom/android/server/display/BrightnessTracker$DisplayListener;

    .line 813
    :cond_1b
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSensorRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private enableColorSampling()V
    .registers 1

    .line 766
    return-void
.end method

.method private handleBrightnessChanged(FZFZZJ)V
    .registers 16

    .line 320
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    if-nez v1, :cond_9

    .line 323
    monitor-exit v0

    return-void

    .line 326
    :cond_9
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 327
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    .line 329
    if-nez p2, :cond_11

    .line 333
    monitor-exit v0

    return-void

    .line 336
    :cond_11
    new-instance p2, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {p2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 337
    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 338
    invoke-virtual {p2, p6, p7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 339
    invoke-virtual {p2, p3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 340
    invoke-virtual {p2, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 341
    invoke-virtual {p2, p5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 343
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    .line 344
    if-nez p1, :cond_2f

    .line 346
    monitor-exit v0

    return-void

    .line 349
    :cond_2f
    new-array p3, p1, [F

    .line 350
    new-array p1, p1, [J

    .line 352
    const/4 p4, 0x0

    .line 355
    iget-object p5, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {p5}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide p5

    .line 356
    iget-object p7, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {p7}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 357
    iget-object p7, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {p7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :goto_46
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    .line 358
    iget v5, v4, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    aput v5, p3, p4

    .line 359
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v4, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    sub-long v6, v2, v6

    .line 360
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long v4, p5, v4

    aput-wide v4, p1, p4

    .line 361
    add-int/lit8 p4, p4, 0x1

    .line 362
    goto :goto_46

    .line 363
    :cond_67
    invoke-virtual {p2, p3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 364
    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 366
    iget p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 367
    invoke-virtual {p2, v1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 368
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_ed

    .line 371
    :try_start_76
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFocusedStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    .line 372
    if-eqz p1, :cond_ea

    iget-object p3, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p3, :cond_ea

    .line 373
    iget p3, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {p2, p3}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 374
    iget-object p1, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_90} :catch_eb

    .line 385
    nop

    .line 387
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object p3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/android/server/display/BrightnessTracker$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 388
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object p3, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3}, Lcom/android/server/display/BrightnessTracker$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 390
    iget-boolean p1, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-eqz p1, :cond_d6

    .line 391
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget p3, p0, Lcom/android/server/display/BrightnessTracker;->mNoFramesToSample:I

    invoke-virtual {p1, p3}, Lcom/android/server/display/BrightnessTracker$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p1

    .line 392
    if-eqz p1, :cond_d6

    sget-object p3, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {p1, p3}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object p3

    if-eqz p3, :cond_d6

    .line 394
    invoke-virtual {p1}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide p3

    long-to-float p3, p3

    iget p4, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    div-float/2addr p3, p4

    const/high16 p4, 0x447a0000  # 1000.0f

    mul-float/2addr p3, p4

    .line 395
    sget-object p4, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 396
    invoke-virtual {p1, p4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object p1

    .line 397
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-long p3, p3

    .line 395
    invoke-virtual {p2, p1, p3, p4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 401
    :cond_d6
    invoke-virtual {p2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object p1

    .line 405
    iget-object p2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 406
    const/4 p3, 0x1

    :try_start_de
    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 407
    iget-object p3, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p3, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 408
    monitor-exit p2

    .line 409
    return-void

    .line 408
    :catchall_e7
    move-exception p1

    monitor-exit p2
    :try_end_e9
    .catchall {:try_start_de .. :try_end_e9} :catchall_e7

    throw p1

    .line 380
    :cond_ea
    return-void

    .line 382
    :catch_eb
    move-exception p1

    .line 384
    return-void

    .line 368
    :catchall_ed
    move-exception p1

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw p1
.end method

.method private readAmbientBrightnessStats()V
    .registers 5

    .line 510
    new-instance v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;-><init>(Landroid/os/UserManager;Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 511
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 513
    nop

    .line 515
    :try_start_1b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 516
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_2a
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 521
    :goto_24
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 522
    goto :goto_3a

    .line 521
    :catchall_28
    move-exception v0

    goto :goto_36

    .line 517
    :catch_2a
    move-exception v1

    .line 518
    :try_start_2b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 519
    const-string v0, "BrightnessTracker"

    const-string v3, "Failed to read ambient brightness stats."

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_28

    goto :goto_24

    .line 521
    :goto_36
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 524
    :cond_3a
    :goto_3a
    return-void
.end method

.method private readEvents()V
    .registers 6

    .line 489
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    .line 492
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 493
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 494
    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3b

    if-eqz v2, :cond_39

    .line 495
    const/4 v2, 0x0

    .line 497
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 498
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_29
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    .line 503
    :goto_23
    :try_start_23
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3b

    .line 504
    goto :goto_39

    .line 503
    :catchall_27
    move-exception v1

    goto :goto_35

    .line 499
    :catch_29
    move-exception v3

    .line 500
    :try_start_2a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 501
    const-string v1, "BrightnessTracker"

    const-string v4, "Failed to read change mEvents."

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    goto :goto_23

    .line 503
    :goto_35
    :try_start_35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 506
    :cond_39
    :goto_39
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private recordAmbientBrightnessStats(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 875
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->add(IF)V

    .line 876
    return-void
.end method

.method private recordSensorEvent(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 845
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/display/BrightnessTracker;->LUX_EVENT_HORIZON:J

    sub-long/2addr v0, v2

    .line 846
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 850
    :try_start_c
    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 851
    invoke-interface {v5}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_26

    .line 853
    monitor-exit v2

    return-void

    .line 855
    :cond_26
    const/4 v3, 0x0

    move-object v4, v3

    .line 856
    :goto_28
    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_47

    iget-object v5, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 857
    invoke-interface {v5}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v5, v5, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_47

    .line 859
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessTracker$LightData;

    goto :goto_28

    .line 863
    :cond_47
    if-eqz v4, :cond_4e

    .line 864
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v0, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 867
    :cond_4e
    new-instance v0, Lcom/android/server/display/BrightnessTracker$LightData;

    invoke-direct {v0, v3}, Lcom/android/server/display/BrightnessTracker$LightData;-><init>(Lcom/android/server/display/BrightnessTracker$1;)V

    .line 868
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, v0, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    .line 869
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    iput p1, v0, Lcom/android/server/display/BrightnessTracker$LightData;->lux:F

    .line 870
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 871
    monitor-exit v2

    .line 872
    return-void

    .line 871
    :catchall_65
    move-exception p1

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_c .. :try_end_67} :catchall_65

    throw p1
.end method

.method private scheduleWriteBrightnessTrackerState()V
    .registers 3

    .line 431
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    if-nez v0, :cond_11

    .line 432
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 439
    :cond_11
    return-void
.end method

.method private startSensorListener()V
    .registers 5

    .line 412
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    .line 413
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 414
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 415
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->start()V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 417
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    .line 418
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    .line 417
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/os/Handler;)V

    .line 420
    :cond_2d
    return-void
.end method

.method private stopSensorListener()V
    .registers 4

    .line 423
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    if-eqz v0, :cond_15

    .line 424
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->stop()V

    .line 425
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mSensorRegistered:Z

    .line 428
    :cond_15
    return-void
.end method

.method private updateColorSampling()V
    .registers 3

    .line 816
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    .line 817
    return-void

    .line 819
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 820
    iget v1, p0, Lcom/android/server/display/BrightnessTracker;->mFrameRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    .line 821
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 822
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->enableColorSampling()V

    .line 824
    :cond_19
    return-void
.end method

.method private writeAmbientBrightnessStats()V
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v1, "ambient_brightness_stats.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 474
    if-nez v0, :cond_b

    .line 475
    return-void

    .line 477
    :cond_b
    const/4 v1, 0x0

    .line 479
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 480
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 481
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_19

    .line 485
    goto :goto_24

    .line 482
    :catch_19
    move-exception v2

    .line 483
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 484
    const-string v0, "BrightnessTracker"

    const-string v1, "Failed to write ambient brightness stats."

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    :goto_24
    return-void
.end method

.method private writeEvents()V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    if-nez v1, :cond_9

    .line 445
    monitor-exit v0

    return-void

    .line 448
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    const-string v2, "brightness_events.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 449
    if-nez v1, :cond_15

    .line 450
    monitor-exit v0

    return-void

    .line 452
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 453
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 454
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 456
    :cond_27
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_45

    goto :goto_43

    .line 458
    :cond_2a
    const/4 v2, 0x0

    .line 460
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 461
    invoke-virtual {p0, v2}, Lcom/android/server/display/BrightnessTracker;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 463
    iput-boolean v3, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_37} :catch_38
    .catchall {:try_start_2b .. :try_end_37} :catchall_45

    .line 467
    goto :goto_43

    .line 464
    :catch_38
    move-exception v3

    .line 465
    :try_start_39
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 466
    const-string v1, "BrightnessTracker"

    const-string v2, "Failed to write change mEvents."

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    :goto_43
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 11

    .line 712
    const-string v0, "BrightnessTracker state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSensorReadings time span "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 720
    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mLastSensorReadings:Ljava/util/Deque;

    .line 721
    invoke-interface {v2}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessTracker$LightData;

    iget-wide v2, v2, Lcom/android/server/display/BrightnessTracker$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    :cond_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_8 .. :try_end_9d} :catchall_205

    .line 724
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/BrightnessTracker;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 728
    const/4 v2, 0x0

    move v3, v2

    :goto_da
    array-length v4, v0

    if-ge v3, v4, :cond_1d2

    .line 729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/display/BrightnessTracker;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    aget-object v7, v0, v3

    iget-wide v7, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isUserSetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", powerBrightnessFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", isDefaultBrightnessConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    iget-boolean v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 735
    const-string v4, " {"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    move v4, v2

    :goto_18a
    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v5, v5

    if-ge v4, v5, :cond_1c8

    .line 737
    if-eqz v4, :cond_198

    .line 738
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    :cond_198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v3

    iget-object v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    add-int/lit8 v4, v4, 0x1

    goto :goto_18a

    .line 742
    :cond_1c8
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_da

    .line 744
    :cond_1d2
    monitor-exit v1
    :try_end_1d3
    .catchall {:try_start_a0 .. :try_end_1d3} :catchall_202

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteBrightnessTrackerStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;-><init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 748
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_201

    .line 749
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 750
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    .line 752
    :cond_201
    return-void

    .line 744
    :catchall_202
    move-exception p1

    :try_start_203
    monitor-exit v1
    :try_end_204
    .catchall {:try_start_203 .. :try_end_204} :catchall_202

    throw p1

    .line 723
    :catchall_205
    move-exception p1

    :try_start_206
    monitor-exit v0
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_205

    throw p1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz v0, :cond_11

    .line 828
    nop

    .line 829
    invoke-virtual {v0, p1}, Lcom/android/server/display/AmbientBrightnessStatsTracker;->getUserStats(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 830
    if-eqz p1, :cond_11

    .line 831
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 834
    :cond_11
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 268
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_70

    .line 269
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/BrightnessTracker$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v0

    .line 270
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 271
    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    array-length v5, v0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_37

    .line 272
    aget v5, v0, v4

    .line 275
    if-eqz p2, :cond_27

    if-eq v5, p1, :cond_26

    goto :goto_27

    :cond_26
    move v6, v3

    .line 276
    :cond_27
    :goto_27
    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 278
    :cond_37
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, v1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    nop

    :goto_3e
    array-length p2, v1

    if-ge v3, p2, :cond_6a

    .line 280
    aget-object p2, v1, v3

    iget p2, p2, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 281
    if-eqz p2, :cond_67

    .line 282
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5d

    .line 283
    aget-object p2, v1, v3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 285
    :cond_5d
    new-instance p2, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object v0, v1, v3

    invoke-direct {p2, v0, v6}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 287
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 291
    :cond_6a
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p2

    .line 268
    :catchall_70
    move-exception p1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p1
.end method

.method public synthetic lambda$dump$1$BrightnessTracker(Ljava/io/PrintWriter;)V
    .registers 2

    .line 747
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$scheduleWriteBrightnessTrackerState$0$BrightnessTracker()V
    .registers 2

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessTracker;->mWriteBrightnessTrackerStateScheduled:Z

    .line 434
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeEvents()V

    .line 435
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->writeAmbientBrightnessStats()V

    .line 436
    return-void
.end method

.method public notifyBrightnessChanged(FZFZZ)V
    .registers 16

    .line 308
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    .line 309
    const/4 v1, 0x0

    new-instance v9, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 311
    invoke-virtual {v2}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v7

    move-object v2, v9

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJ)V

    .line 308
    const/4 p1, 0x1

    invoke-virtual {v0, p1, p2, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 256
    iput p1, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 257
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 1

    .line 295
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->scheduleWriteBrightnessTrackerState()V

    .line 296
    return-void
.end method

.method readEventsLocked(Ljava/io/InputStream;)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    move-object/from16 v1, p0

    const-string v0, ","

    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 601
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 604
    :goto_13
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1e

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1e

    goto :goto_13

    .line 607
    :cond_1e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 608
    const-string v5, "events"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18f

    .line 613
    iget-object v3, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v5, v7

    .line 615
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 616
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 617
    :cond_3a
    :goto_3a
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_18d

    const/4 v8, 0x3

    if-ne v7, v8, :cond_49

    .line 618
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_18d

    .line 619
    :cond_49
    if-eq v7, v8, :cond_3a

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4f

    .line 620
    goto :goto_3a

    .line 622
    :cond_4f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 623
    const-string v8, "event"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 624
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 626
    const-string/jumbo v8, "nits"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 627
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 628
    const-string/jumbo v8, "timestamp"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 629
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 630
    const-string/jumbo v8, "packageName"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 631
    const-string/jumbo v8, "user"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 632
    iget-object v10, v1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v11, v1, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v10, v11, v8}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 633
    const-string v8, "batteryLevel"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 634
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 635
    const-string/jumbo v8, "nightMode"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 636
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 637
    const-string v8, "colorTemperature"

    .line 638
    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 639
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 640
    const-string v8, "lastNits"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 641
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 643
    const-string v8, "lux"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 644
    const-string v10, "luxTimestamps"

    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 646
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 647
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 648
    array-length v11, v8

    array-length v12, v10

    if-eq v11, v12, :cond_ec

    .line 649
    goto/16 :goto_3a

    .line 651
    :cond_ec
    array-length v11, v8

    new-array v11, v11, [F

    .line 652
    array-length v12, v8

    new-array v12, v12, [J

    .line 653
    const/4 v13, 0x0

    move v14, v13

    :goto_f4
    array-length v15, v11

    if-ge v14, v15, :cond_10a

    .line 654
    aget-object v15, v8, v14

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    aput v15, v11, v14

    .line 655
    aget-object v15, v10, v14

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    aput-wide v15, v12, v14

    .line 653
    add-int/lit8 v14, v14, 0x1

    goto :goto_f4

    .line 657
    :cond_10a
    invoke-virtual {v7, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 658
    invoke-virtual {v7, v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 660
    const-string v8, "defaultConfig"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 661
    if-eqz v8, :cond_11f

    .line 662
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 664
    :cond_11f
    const-string/jumbo v8, "powerSaveFactor"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 665
    if-eqz v8, :cond_130

    .line 666
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_135

    .line 668
    :cond_130
    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 670
    :goto_135
    const-string/jumbo v8, "userPoint"

    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 671
    if-eqz v8, :cond_145

    .line 672
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 675
    :cond_145
    const-string v8, "colorSampleDuration"

    .line 676
    invoke-interface {v2, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 677
    const-string v10, "colorValueBuckets"

    .line 678
    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 679
    if-eqz v8, :cond_172

    if-eqz v9, :cond_172

    .line 680
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 681
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 682
    array-length v9, v8

    new-array v9, v9, [J

    .line 683
    nop

    :goto_161
    array-length v12, v9

    if-ge v13, v12, :cond_16f

    .line 684
    aget-object v12, v8, v13

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    aput-wide v14, v9, v13

    .line 683
    add-int/lit8 v13, v13, 0x1

    goto :goto_161

    .line 686
    :cond_16f
    invoke-virtual {v7, v9, v10, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 689
    :cond_172
    invoke-virtual {v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v7

    .line 695
    iget v8, v7, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_18b

    iget-wide v8, v7, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v8, v8, v5

    if-lez v8, :cond_18b

    iget-object v8, v7, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v8, v8

    if-lez v8, :cond_18b

    .line 697
    iget-object v8, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8, v7}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 699
    :cond_18b
    goto/16 :goto_3a

    .line 708
    :cond_18d
    nop

    .line 709
    return-void

    .line 609
    :cond_18f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Events not found in brightness tracker file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_1a6} :catch_1a6
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1a6} :catch_1a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_1a6} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a6} :catch_1a6

    .line 701
    :catch_1a6
    move-exception v0

    .line 704
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    const-class v3, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v2, v1, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 705
    const-string v1, "BrightnessTracker"

    const-string v2, "Failed to parse brightness event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to parse file"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public start(F)V
    .registers 4

    .line 203
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    .line 204
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 205
    return-void
.end method

.method stop()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->stopSensorListener()V

    .line 241
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSensorListener:Lcom/android/server/display/BrightnessTracker$SensorListener;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mSettingsObserver:Lcom/android/server/display/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/BrightnessTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/BrightnessTracker$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessTracker$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_2e
    iput-boolean v1, p0, Lcom/android/server/display/BrightnessTracker;->mStarted:Z

    .line 248
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    .line 249
    invoke-direct {p0}, Lcom/android/server/display/BrightnessTracker;->disableColorSampling()V

    .line 250
    return-void

    .line 248
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v1
.end method

.method writeEventsLocked(Ljava/io/OutputStream;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mEventsLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 530
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 531
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 532
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 534
    const-string v1, "events"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 537
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 541
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessTracker$Injector;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/display/BrightnessTracker;->MAX_EVENT_AGE:J

    sub-long/2addr v4, v6

    .line 542
    const/4 v6, 0x0

    move v7, v6

    :goto_39
    array-length v8, v2

    if-ge v7, v8, :cond_184

    .line 543
    iget-object v8, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object v9, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    aget-object v10, v2, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v8, v9, v10}, Lcom/android/server/display/BrightnessTracker$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v8

    .line 544
    const/4 v9, -0x1

    if-eq v8, v9, :cond_180

    aget-object v9, v2, v7

    iget-wide v9, v9, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v9, v9, v4

    if-lez v9, :cond_180

    .line 545
    iget-object v9, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 546
    const-string v9, "event"

    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    aget-object v10, v2, v7

    iget v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "nits"

    invoke-interface {v0, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 548
    aget-object v10, v2, v7

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "timestamp"

    invoke-interface {v0, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    aget-object v10, v2, v7

    iget-object v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "packageName"

    invoke-interface {v0, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 550
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "user"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    aget-object v8, v2, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    const-string v10, "batteryLevel"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    aget-object v8, v2, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "nightMode"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    aget-object v8, v2, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "colorTemperature"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    aget-object v8, v2, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 556
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    .line 555
    const-string v10, "lastNits"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    aget-object v8, v2, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 558
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 557
    const-string v10, "defaultConfig"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    aget-object v8, v2, v7

    iget v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 560
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    .line 559
    const-string/jumbo v10, "powerSaveFactor"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    aget-object v8, v2, v7

    iget-boolean v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 562
    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 561
    const-string/jumbo v10, "userPoint"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    move v11, v6

    :goto_f8
    aget-object v12, v2, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v12, v12

    const/16 v13, 0x2c

    if-ge v11, v12, :cond_126

    .line 566
    if-lez v11, :cond_109

    .line 567
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    :cond_109
    aget-object v12, v2, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v12, v12, v11

    invoke-static {v12}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    aget-object v12, v2, v7

    iget-object v12, v12, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v12, v12, v11

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    add-int/lit8 v11, v11, 0x1

    goto :goto_f8

    .line 573
    :cond_126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "lux"

    invoke-interface {v0, v3, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "luxTimestamps"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    aget-object v8, v2, v7

    iget-object v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v8, :cond_17d

    aget-object v8, v2, v7

    iget-object v8, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v8, v8

    if-lez v8, :cond_17d

    .line 577
    aget-object v8, v2, v7

    iget-wide v10, v8, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 578
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 577
    const-string v10, "colorSampleDuration"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    move v10, v6

    :goto_158
    aget-object v11, v2, v7

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v11, v11

    if-ge v10, v11, :cond_174

    .line 581
    if-lez v10, :cond_164

    .line 582
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    :cond_164
    aget-object v11, v2, v7

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v11, v11, v10

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    add-int/lit8 v10, v10, 0x1

    goto :goto_158

    .line 586
    :cond_174
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "colorValueBuckets"

    invoke-interface {v0, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    :cond_17d
    invoke-interface {v0, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    :cond_180
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_39

    .line 591
    :cond_184
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 593
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 594
    return-void
.end method
