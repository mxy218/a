.class Lflyme/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final sTwilightState:Lflyme/support/v7/app/TwilightManager$TwilightState;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lflyme/support/v7/app/TwilightManager$TwilightState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lflyme/support/v7/app/TwilightManager$TwilightState;-><init>(Lflyme/support/v7/app/TwilightManager$1;)V

    sput-object v0, Lflyme/support/v7/app/TwilightManager;->sTwilightState:Lflyme/support/v7/app/TwilightManager$TwilightState;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lflyme/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v0, "location"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lflyme/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 7

    .line 85
    iget-object v0, p0, Lflyme/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, "network"

    .line 88
    invoke-direct {p0, v0}, Lflyme/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 91
    :goto_13
    iget-object v2, p0, Lflyme/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_23

    const-string v1, "gps"

    .line 94
    invoke-direct {p0, v1}, Lflyme/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_23
    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    .line 99
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_34

    move-object v0, v1

    :cond_34
    return-object v0

    :cond_35
    if-eqz v1, :cond_38

    move-object v0, v1

    :cond_38
    return-object v0
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 3

    .line 107
    iget-object v0, p0, Lflyme/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_19

    .line 109
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 110
    iget-object p0, p0, Lflyme/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    move-exception p0

    const-string p1, "TwilightManager"

    const-string v0, "Failed to get last known location"

    .line 113
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private isStateValid(Lflyme/support/v7/app/TwilightManager$TwilightState;)Z
    .registers 4

    if-eqz p1, :cond_e

    .line 120
    iget-wide p0, p1, Lflyme/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 22
    .param p1  # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    sget-object v0, Lflyme/support/v7/app/TwilightManager;->sTwilightState:Lflyme/support/v7/app/TwilightManager$TwilightState;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 126
    invoke-static {}, Lflyme/support/v7/app/TwilightCalculator;->getInstance()Lflyme/support/v7/app/TwilightCalculator;

    move-result-object v10

    const-wide/32 v11, 0x5265c00

    sub-long v2, v8, v11

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v1, v10

    .line 129
    invoke-virtual/range {v1 .. v7}, Lflyme/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 131
    iget-wide v13, v10, Lflyme/support/v7/app/TwilightCalculator;->sunset:J

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-wide v2, v8

    invoke-virtual/range {v1 .. v7}, Lflyme/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 135
    iget v1, v10, Lflyme/support/v7/app/TwilightCalculator;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    move v15, v2

    .line 136
    iget-wide v6, v10, Lflyme/support/v7/app/TwilightCalculator;->sunrise:J

    .line 137
    iget-wide v4, v10, Lflyme/support/v7/app/TwilightCalculator;->sunset:J

    add-long v2, v8, v11

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object v1, v10

    move-wide/from16 v18, v13

    move-wide v13, v4

    move-wide v4, v11

    move-wide v11, v6

    move-wide/from16 v6, v16

    .line 140
    invoke-virtual/range {v1 .. v7}, Lflyme/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    .line 142
    iget-wide v1, v10, Lflyme/support/v7/app/TwilightCalculator;->sunrise:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v11, v5

    if-eqz v7, :cond_6b

    cmp-long v5, v13, v5

    if-nez v5, :cond_59

    goto :goto_6b

    :cond_59
    cmp-long v5, v8, v13

    if-lez v5, :cond_5f

    add-long/2addr v3, v1

    goto :goto_66

    :cond_5f
    cmp-long v5, v8, v11

    if-lez v5, :cond_65

    add-long/2addr v3, v13

    goto :goto_66

    :cond_65
    add-long/2addr v3, v11

    :goto_66
    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    goto :goto_6f

    :cond_6b
    :goto_6b
    const-wide/32 v3, 0x2932e00

    add-long/2addr v3, v8

    .line 162
    :goto_6f
    iput-boolean v15, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    move-wide/from16 v5, v18

    .line 163
    iput-wide v5, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    .line 164
    iput-wide v11, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    .line 165
    iput-wide v13, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    .line 166
    iput-wide v1, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    .line 167
    iput-wide v3, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    return-void
.end method


# virtual methods
.method isNight()Z
    .registers 3

    .line 56
    sget-object v0, Lflyme/support/v7/app/TwilightManager;->sTwilightState:Lflyme/support/v7/app/TwilightManager$TwilightState;

    .line 58
    invoke-direct {p0, v0}, Lflyme/support/v7/app/TwilightManager;->isStateValid(Lflyme/support/v7/app/TwilightManager$TwilightState;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 60
    iget-boolean p0, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return p0

    .line 64
    :cond_b
    invoke-direct {p0}, Lflyme/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 66
    invoke-direct {p0, v1}, Lflyme/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    .line 67
    iget-boolean p0, v0, Lflyme/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return p0

    :cond_17
    const-string p0, "TwilightManager"

    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    .line 77
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x6

    if-lt p0, v0, :cond_32

    const/16 v0, 0x16

    if-lt p0, v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 p0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 p0, 0x1

    :goto_33
    return p0
.end method
