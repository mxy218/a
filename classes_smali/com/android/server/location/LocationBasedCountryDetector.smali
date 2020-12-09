.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 69
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .registers 4

    monitor-enter p0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 239
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 256
    iget-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    .line 257
    monitor-exit p0

    return-void

    .line 237
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .registers 7

    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    if-nez v0, :cond_56

    .line 169
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getEnabledProviders()Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 171
    if-lez v1, :cond_4b

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 173
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_35

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    invoke-virtual {p0, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->isAcceptableProvider(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 176
    new-instance v4, Lcom/android/server/location/LocationBasedCountryDetector$1;

    invoke-direct {v4, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 194
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0, v3, v4}, Lcom/android/server/location/LocationBasedCountryDetector;->registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 173
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 199
    :cond_35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 200
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getQueryLocationTimeout()J

    move-result-wide v2

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_52

    .line 212
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/location/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 214
    :goto_52
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_5c

    monitor-exit p0

    return-object v0

    .line 166
    :cond_56
    :try_start_56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5c

    .line 164
    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 9

    .line 76
    nop

    .line 77
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 79
    nop

    .line 80
    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    .line 79
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_2b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 82
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2a} :catch_2c

    move-object v6, p1

    .line 86
    :cond_2b
    goto :goto_34

    .line 84
    :catch_2c
    move-exception p1

    .line 85
    const-string p1, "LocationBasedCountryDetector"

    const-string v0, "Exception occurs when getting country from location"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_34
    return-object v6
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 152
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .registers 10

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    iget-object v5, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 129
    if-eqz v4, :cond_32

    .line 130
    if-eqz v3, :cond_31

    .line 131
    invoke-virtual {v3}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    .line 132
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_38

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    .line 133
    :cond_31
    move-object v3, v4

    .line 136
    :cond_32
    goto :goto_f

    .line 137
    :cond_33
    nop

    .line 139
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    return-object v3

    .line 139
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected getQueryLocationTimeout()J
    .registers 3

    .line 147
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .registers 3

    .line 92
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .registers 11

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 101
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    nop

    .line 105
    return-void

    .line 103
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public declared-synchronized stop()V
    .registers 4

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 223
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationListener;

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->unregisterListener(Landroid/location/LocationListener;)V

    .line 225
    goto :goto_c

    .line 226
    :cond_1c
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationListeners:Ljava/util/List;

    .line 228
    :cond_1e
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_29

    .line 229
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    iput-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 232
    :cond_29
    monitor-exit p0

    return-void

    .line 221
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .registers 5

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    nop

    .line 117
    return-void

    .line 115
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
