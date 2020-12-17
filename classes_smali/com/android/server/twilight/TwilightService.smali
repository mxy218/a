.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwilightService"


# instance fields
.field private final FACTOR_GMT_OFFSET_LONGITUDE:D

.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private mBootCompleted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasListeners:Z

.field protected mLastLocation:Landroid/location/Location;

.field protected mLastTwilightState:Lcom/android/server/twilight/TwilightState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation
.end field

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/twilight/TwilightListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 342
    const-wide v0, 0x3f71111111111111L  # 0.004166666666666667

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService;->FACTOR_GMT_OFFSET_LONGITUDE:D

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/twilight/TwilightService;

    .line 52
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/twilight/TwilightService;

    .line 52
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/twilight/TwilightService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/twilight/TwilightService;

    .line 52
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 13
    .param p0, "location"  # Landroid/location/Location;
    .param p1, "timeMillis"  # J

    .line 293
    if-nez p0, :cond_4

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_4
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    .line 298
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 300
    .local v0, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 301
    .local v1, "noon":Landroid/icu/util/Calendar;
    invoke-virtual {v1, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 302
    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 303
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 304
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 305
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 306
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 308
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v4

    .line 309
    .local v4, "sunriseTimeMillis":J
    invoke-virtual {v0, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v6

    .line 311
    .local v6, "sunsetTimeMillis":J
    cmp-long v8, v6, p1

    const/4 v9, 0x5

    if-gez v8, :cond_51

    .line 312
    invoke-virtual {v1, v9, v3}, Landroid/icu/util/Calendar;->add(II)V

    .line 313
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 314
    invoke-virtual {v0, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v4

    goto :goto_64

    .line 315
    :cond_51
    cmp-long v3, v4, p1

    if-lez v3, :cond_64

    .line 316
    const/4 v3, -0x1

    invoke-virtual {v1, v9, v3}, Landroid/icu/util/Calendar;->add(II)V

    .line 317
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 318
    invoke-virtual {v0, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v6

    .line 321
    :cond_64
    :goto_64
    new-instance v2, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object v2
.end method

.method private getDefaultLocation()Landroid/location/Location;
    .registers 7

    .line 326
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 327
    .local v0, "currentTime":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 328
    iget-wide v1, v0, Landroid/text/format/Time;->gmtoff:J

    iget v3, v0, Landroid/text/format/Time;->isDst:I

    if-lez v3, :cond_15

    const/16 v3, 0xe10

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x3f71111111111111L  # 0.004166666666666667

    mul-double/2addr v1, v3

    .line 329
    .local v1, "lngOffset":D
    new-instance v3, Landroid/location/Location;

    const-string v4, "GuangZhou China"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 330
    .local v3, "location":Landroid/location/Location;
    invoke-virtual {v3, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 331
    const-wide/high16 v4, 0x4037000000000000L  # 23.0

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 332
    const v4, 0x48cb9d00  # 417000.0f

    invoke-virtual {v3, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 339
    return-object v3
.end method

.method private startListening()V
    .registers 4

    .line 158
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    .line 165
    const-string/jumbo v2, "passive"

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    .line 166
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 164
    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_39

    .line 170
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 171
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 172
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 177
    :cond_39
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_59

    .line 178
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    .end local v0  # "intentFilter":Landroid/content/IntentFilter;
    :cond_59
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 193
    return-void
.end method

.method private stopListening()V
    .registers 4

    .line 196
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 199
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    :cond_18
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_21

    .line 204
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 207
    :cond_21
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 208
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 209
    return-void
.end method

.method private updateTwilightState()V
    .registers 14

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "currentTimeMillis":J
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_9

    goto :goto_f

    .line 215
    :cond_9
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    :goto_f
    nop

    .line 216
    .local v2, "location":Landroid/location/Location;
    if-nez v2, :cond_16

    .line 217
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->getDefaultLocation()Landroid/location/Location;

    move-result-object v2

    .line 219
    :cond_16
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v3

    .line 226
    .local v3, "state":Lcom/android/server/twilight/TwilightState;
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 227
    :try_start_1d
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v5, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 228
    iput-object v3, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 230
    iget-object v5, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2f
    if-ltz v5, :cond_4d

    .line 231
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/twilight/TwilightListener;

    .line 232
    .local v6, "listener":Lcom/android/server/twilight/TwilightListener;
    iget-object v7, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    .line 233
    .local v7, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v8, p0, v6, v3}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 230
    nop

    .end local v6  # "listener":Lcom/android/server/twilight/TwilightListener;
    .end local v7  # "handler":Landroid/os/Handler;
    add-int/lit8 v5, v5, -0x1

    goto :goto_2f

    .line 241
    .end local v5  # "i":I
    :cond_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_1d .. :try_end_4e} :catchall_6c

    .line 244
    if-eqz v3, :cond_6b

    .line 245
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 246
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v4

    goto :goto_5f

    :cond_5b
    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v4

    :goto_5f
    move-wide v8, v4

    .line 247
    .local v8, "triggerAtMillis":J
    iget-object v6, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x1

    iget-object v12, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const-string v10, "TwilightService"

    move-object v11, p0

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 249
    .end local v8  # "triggerAtMillis":J
    :cond_6b
    return-void

    .line 241
    :catchall_6c
    move-exception v5

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    .line 154
    return v3

    .line 146
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v0, :cond_17

    .line 147
    iput-boolean v3, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_17

    .line 149
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    .line 152
    :cond_17
    return v1

    .line 138
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez v0, :cond_25

    .line 139
    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 140
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz v0, :cond_25

    .line 141
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 144
    :cond_25
    return v1
.end method

.method public onAlarm()V
    .registers 3

    .line 253
    const-string v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 255
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"  # I

    .line 122
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_27

    .line 123
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    .local v0, "c":Landroid/content/Context;
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 125
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 128
    iget-boolean v1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz v1, :cond_27

    .line 129
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 132
    .end local v0  # "c":Landroid/content/Context;
    :cond_27
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "location"  # Landroid/location/Location;

    .line 262
    if-eqz p1, :cond_4c

    .line 263
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4c

    .line 264
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v1, "TwilightService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 269
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 271
    :cond_4c
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"  # Ljava/lang/String;

    .line 283
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"  # Ljava/lang/String;

    .line 279
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 85
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"  # Ljava/lang/String;
    .param p2, "status"  # I
    .param p3, "extras"  # Landroid/os/Bundle;

    .line 275
    return-void
.end method
