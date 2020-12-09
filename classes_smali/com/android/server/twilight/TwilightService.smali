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
    .registers 3

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/twilight/TwilightService;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method private static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .registers 12

    .line 281
    if-nez p0, :cond_4

    .line 282
    const/4 p0, 0x0

    return-object p0

    .line 285
    :cond_4
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    .line 286
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 288
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    .line 289
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 290
    const/16 v1, 0xb

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 291
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 292
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 293
    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 294
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 296
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    .line 297
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    .line 299
    cmp-long v7, v5, p1

    const/4 v8, 0x5

    if-gez v7, :cond_51

    .line 300
    invoke-virtual {p0, v8, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 301
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 302
    invoke-virtual {v0, v2}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    goto :goto_64

    .line 303
    :cond_51
    cmp-long p1, v3, p1

    if-lez p1, :cond_64

    .line 304
    const/4 p1, -0x1

    invoke-virtual {p0, v8, p1}, Landroid/icu/util/Calendar;->add(II)V

    .line 305
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 306
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    .line 309
    :cond_64
    :goto_64
    new-instance p0, Lcom/android/server/twilight/TwilightState;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object p0
.end method

.method private startListening()V
    .registers 4

    .line 154
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 158
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 157
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 162
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 163
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 164
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 163
    invoke-virtual {v0, v1, p0, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 169
    :cond_2e
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4e

    .line 170
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 185
    return-void
.end method

.method private stopListening()V
    .registers 4

    .line 188
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 191
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    :cond_18
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_21

    .line 196
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 199
    :cond_21
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 200
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 201
    return-void
.end method

.method private updateTwilightState()V
    .registers 10

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_9

    goto :goto_f

    .line 207
    :cond_9
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    .line 208
    :goto_f
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 215
    :try_start_16
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 216
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 218
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_28
    if-ltz v2, :cond_45

    .line 219
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightListener;

    .line 220
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 221
    new-instance v5, Lcom/android/server/twilight/TwilightService$3;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/server/twilight/TwilightService$3;-><init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 229
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_64

    .line 232
    if-eqz v0, :cond_63

    .line 233
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 234
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v0

    goto :goto_57

    :cond_53
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v0

    :goto_57
    move-wide v4, v0

    .line 235
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    iget-object v8, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const-string v6, "TwilightService"

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 237
    :cond_63
    return-void

    .line 229
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 132
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    .line 150
    return v2

    .line 142
    :cond_a
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_17

    .line 143
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 144
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_17

    .line 145
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    .line 148
    :cond_17
    return v0

    .line 134
    :cond_18
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez p1, :cond_25

    .line 135
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 136
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_25

    .line 137
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 140
    :cond_25
    return v0
.end method

.method public onAlarm()V
    .registers 3

    .line 241
    const-string v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 243
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 118
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    .line 119
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 120
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 121
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 123
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 124
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_26

    .line 125
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    .line 128
    :cond_26
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    .line 250
    if-eqz p1, :cond_4c

    .line 251
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4c

    .line 252
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v1, "TwilightService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 257
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    .line 259
    :cond_4c
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .line 271
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .line 267
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 81
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    new-instance v1, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v1, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/twilight/TwilightService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 263
    return-void
.end method
