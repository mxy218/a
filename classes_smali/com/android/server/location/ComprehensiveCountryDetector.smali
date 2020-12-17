.class public Lcom/android/server/location/ComprehensiveCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "ComprehensiveCountryDetector.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LOCATION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final MAX_LENGTH_DEBUG_LOGS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CountryDetector"

.field private static final mAvailableMcc:[Ljava/lang/String;


# instance fields
.field private mCountServiceStateChanges:I

.field private mCountry:Landroid/location/Country;

.field private mCountryFromLocation:Landroid/location/Country;

.field private final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountryAddedToLogs:Landroid/location/Country;

.field private mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

.field protected mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

.field protected mLocationRefreshTimer:Ljava/util/Timer;

.field private final mObject:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStartTime:J

.field private mStopTime:J

.field private mStopped:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalCountServiceStateChanges:I

.field private mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 227
    const-string v0, "460"

    const-string v1, "454"

    const-string v2, "455"

    const-string v3, "466"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/ComprehensiveCountryDetector;->mAvailableMcc:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    .line 145
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 146
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/ComprehensiveCountryDetector;
    .param p1, "x1"  # Landroid/location/Country;

    .line 58
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/location/ComprehensiveCountryDetector;
    .param p1, "x1"  # Z
    .param p2, "x2"  # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    return-void
.end method

.method static synthetic access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    iget v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/ComprehensiveCountryDetector;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 58
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v0

    return v0
.end method

.method private addToLogs(Landroid/location/Country;)V
    .registers 4
    .param p1, "country"  # Landroid/location/Country;

    .line 188
    if-nez p1, :cond_3

    .line 189
    return-void

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_6
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    invoke-virtual {v1, p1}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_14
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    .line 199
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2c

    .line 201
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_26

    .line 202
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 207
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 208
    return-void

    .line 199
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private declared-synchronized cancelLocationRefresh()V
    .registers 2

    monitor-enter p0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    if-eqz v0, :cond_d

    .line 463
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 466
    .end local p0  # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    :cond_d
    monitor-exit p0

    return-void

    .line 461
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detectCountry(ZZ)Landroid/location/Country;
    .registers 6
    .param p1, "notifyChange"  # Z
    .param p2, "startLocationBasedDetection"  # Z

    .line 304
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getCountry()Landroid/location/Country;

    move-result-object v0

    .line 305
    .local v0, "country":Landroid/location/Country;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_e

    new-instance v2, Landroid/location/Country;

    invoke-direct {v2, v1}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    move-object v1, v2

    :cond_e
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V

    .line 307
    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    .line 308
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v1
.end method

.method private getCountry()Landroid/location/Country;
    .registers 2

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "result":Landroid/location/Country;
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getNetworkBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 171
    if-nez v0, :cond_b

    .line 172
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLastKnownLocationBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 174
    :cond_b
    if-nez v0, :cond_11

    .line 175
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getSimBasedCountry()Landroid/location/Country;

    move-result-object v0

    .line 177
    :cond_11
    if-nez v0, :cond_17

    .line 178
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v0

    .line 180
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addToLogs(Landroid/location/Country;)V

    .line 181
    return-object v0
.end method

.method private isMccAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "mcc"  # Ljava/lang/String;

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 238
    return v1

    .line 241
    :cond_8
    sget-object v0, Lcom/android/server/location/ComprehensiveCountryDetector;->mAvailableMcc:[Ljava/lang/String;

    array-length v0, v0

    .line 242
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_1d

    .line 243
    sget-object v3, Lcom/android/server/location/ComprehensiveCountryDetector;->mAvailableMcc:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 244
    const/4 v1, 0x1

    return v1

    .line 242
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 247
    .end local v2  # "i":I
    :cond_1d
    return v1
.end method

.method private isNetworkCountryCodeAvailable()Z
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "mcc":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isMccAvailable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 215
    return v2

    .line 221
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 223
    .local v1, "phoneType":I
    if-ne v1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method private notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V
    .registers 4
    .param p1, "country"  # Landroid/location/Country;
    .param p2, "detectedCountry"  # Landroid/location/Country;

    .line 427
    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_e

    .line 428
    invoke-virtual {p1, p2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 432
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 434
    :cond_11
    return-void
.end method

.method private declared-synchronized scheduleLocationRefresh()V
    .registers 5

    monitor-enter p0

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 445
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 446
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector$3;

    invoke-direct {v1, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    .line 456
    monitor-exit p0

    return-void

    .line 439
    .end local p0  # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startLocationBasedDetector(Landroid/location/CountryListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/location/CountryListener;

    monitor-enter p0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    if-eqz v0, :cond_7

    .line 392
    monitor-exit p0

    return-void

    .line 398
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 399
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    .line 401
    monitor-exit p0

    return-void

    .line 390
    .end local p0  # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    .end local p1  # "listener":Landroid/location/CountryListener;
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopLocationBasedDetector()V
    .registers 2

    monitor-enter p0

    .line 408
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-eqz v0, :cond_d

    .line 409
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->stop()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/CountryDetectorBase;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 412
    .end local p0  # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    :cond_d
    monitor-exit p0

    return-void

    .line 407
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addPhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 469
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_14

    .line 470
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/location/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 484
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 486
    .end local p0  # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    :cond_14
    monitor-exit p0

    return-void

    .line 468
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createLocationBasedCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .registers 3

    .line 415
    new-instance v0, Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/LocationBasedCountryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 3

    .line 151
    iget-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected getLastKnownLocationBasedCountry()Landroid/location/Country;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    return-object v0
.end method

.method protected getLocaleCountry()Landroid/location/Country;
    .registers 5

    .line 288
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 289
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v0, :cond_11

    .line 290
    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 292
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getNetworkBasedCountry()Landroid/location/Country;
    .registers 4

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "countryIso":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 257
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 259
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 262
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSimBasedCountry()Landroid/location/Country;
    .registers 4

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 279
    new-instance v1, Landroid/location/Country;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 281
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method protected isAirplaneModeOff()Z
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mContext:Landroid/content/Context;

    .line 420
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 419
    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method protected isGeoCoderImplemented()Z
    .registers 2

    .line 496
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized removePhoneStateListener()V
    .registers 4

    monitor-enter p0

    .line 489
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_10

    .line 490
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 493
    .end local p0  # "this":Lcom/android/server/location/ComprehensiveCountryDetector;
    :cond_10
    monitor-exit p0

    return-void

    .line 488
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runAfterDetection(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 7
    .param p1, "country"  # Landroid/location/Country;
    .param p2, "detectedCountry"  # Landroid/location/Country;
    .param p3, "notifyChange"  # Z
    .param p4, "startLocationBasedDetection"  # Z

    .line 347
    if-eqz p3, :cond_5

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/ComprehensiveCountryDetector;->notifyIfCountryChanged(Landroid/location/Country;Landroid/location/Country;)V

    .line 360
    :cond_5
    const/4 v0, 0x1

    if-eqz p4, :cond_25

    if-eqz p2, :cond_10

    .line 361
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v1

    if-le v1, v0, :cond_25

    .line 362
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isAirplaneModeOff()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->isGeoCoderImplemented()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 369
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Landroid/location/CountryListener;

    invoke-direct {p0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->startLocationBasedDetector(Landroid/location/CountryListener;)V

    .line 371
    :cond_25
    if-eqz p2, :cond_35

    .line 372
    invoke-virtual {p2}, Landroid/location/Country;->getSource()I

    move-result v1

    if-lt v1, v0, :cond_2e

    goto :goto_35

    .line 382
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    goto :goto_38

    .line 378
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->scheduleLocationRefresh()V

    .line 385
    :goto_38
    return-void
.end method

.method protected runAfterDetectionAsync(Landroid/location/Country;Landroid/location/Country;ZZ)V
    .registers 13
    .param p1, "country"  # Landroid/location/Country;
    .param p2, "detectedCountry"  # Landroid/location/Country;
    .param p3, "notifyChange"  # Z
    .param p4, "startLocationBasedDetection"  # Z

    .line 316
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/ComprehensiveCountryDetector$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .registers 7
    .param p1, "listener"  # Landroid/location/CountryListener;

    .line 327
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 328
    .local v0, "prevListener":Landroid/location/CountryListener;
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 329
    iget-object v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    if-nez v1, :cond_1f

    .line 331
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 332
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 333
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 335
    iget-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    iget-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    goto :goto_35

    .line 336
    :cond_1f
    if-nez v0, :cond_35

    .line 337
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V

    .line 338
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    .line 340
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    .line 341
    iput v2, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 343
    :cond_35
    :goto_35
    return-void
.end method

.method public stop()V
    .registers 3

    .line 157
    const-string v0, "CountryDetector"

    const-string v1, "Stop the detector."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->removePhoneStateListener()V

    .line 160
    invoke-direct {p0}, Lcom/android/server/location/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mListener:Landroid/location/CountryListener;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopped:Z

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 502
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 503
    .local v2, "currentSessionLength":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ComprehensiveCountryDetector{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-wide v5, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, ", "

    if-nez v5, :cond_37

    .line 507
    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long v2, v0, v7

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timeRunning="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 511
    :cond_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lastRunTimeLength="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStopTime:J

    iget-wide v9, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mStartTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :goto_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalCountServiceStateChanges="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentCountServiceStateChanges="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalTime:J

    add-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v5, "countries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v5, p0, Lcom/android/server/location/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Country;

    .line 519
    .local v6, "country":Landroid/location/Country;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/location/Country;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .end local v6  # "country":Landroid/location/Country;
    goto :goto_c4

    .line 521
    :cond_e9
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
