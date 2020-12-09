.class public Lcom/android/server/location/GnssCapabilitiesProvider;
.super Ljava/lang/Object;
.source "GnssCapabilitiesProvider.java"


# static fields
.field private static final DEBUG:Z

.field private static final GNSS_CAPABILITIES_SUB_HAL_MEASUREMENT_CORRECTIONS:J = 0x1e0L

.field private static final GNSS_CAPABILITIES_TOP_HAL:J = 0x1fL

.field private static final TAG:Ljava/lang/String; = "GnssCapabilitiesProvider"


# instance fields
.field private mGnssCapabilities:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const-string v0, "GnssCapabilitiesProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssCapabilitiesProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasCapability(II)Z
    .registers 2

    .line 122
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public getGnssCapabilities()J
    .registers 3

    .line 53
    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    monitor-exit p0

    return-wide v0

    .line 55
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setSubHalMeasurementCorrectionsCapabilities(I)V
    .registers 8

    .line 96
    nop

    .line 97
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 99
    const-wide/16 v0, 0x60

    goto :goto_d

    .line 97
    :cond_b
    const-wide/16 v0, 0x20

    .line 101
    :goto_d
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 103
    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    .line 105
    :cond_17
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 107
    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    .line 110
    :cond_21
    monitor-enter p0

    .line 111
    :try_start_22
    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    const-wide/16 v4, -0x1e1

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    .line 112
    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    .line 113
    sget-boolean p1, Lcom/android/server/location/GnssCapabilitiesProvider;->DEBUG:Z

    if-eqz p1, :cond_5d

    .line 114
    const-string p1, "GnssCapabilitiesProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSubHalMeasurementCorrectionsCapabilities, mGnssCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    invoke-static {v1, v2}, Landroid/location/GnssCapabilities;->of(J)Landroid/location/GnssCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_5d
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_5f
    move-exception p1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_22 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method setTopHalCapabilities(I)V
    .registers 8

    .line 62
    nop

    .line 63
    const/16 v0, 0x100

    invoke-static {p1, v0}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    const-wide/16 v0, 0x1

    goto :goto_e

    .line 63
    :cond_c
    const-wide/16 v0, 0x0

    .line 67
    :goto_e
    const/16 v2, 0x200

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 69
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 71
    :cond_19
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 72
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 74
    :cond_24
    const/16 v2, 0x40

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 75
    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    .line 77
    :cond_2f
    const/16 v2, 0x80

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 78
    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    .line 81
    :cond_3a
    monitor-enter p0

    .line 82
    :try_start_3b
    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    const-wide/16 v4, -0x20

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    .line 83
    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    .line 84
    sget-boolean p1, Lcom/android/server/location/GnssCapabilitiesProvider;->DEBUG:Z

    if-eqz p1, :cond_76

    .line 85
    const-string p1, "GnssCapabilitiesProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTopHalCapabilities, mGnssCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    .line 86
    invoke-static {v1, v2}, Landroid/location/GnssCapabilities;->of(J)Landroid/location/GnssCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_76
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_78
    move-exception p1

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_3b .. :try_end_7a} :catchall_78

    throw p1
.end method
