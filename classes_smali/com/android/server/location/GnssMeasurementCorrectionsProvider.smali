.class public Lcom/android/server/location/GnssMeasurementCorrectionsProvider;
.super Ljava/lang/Object;
.source "GnssMeasurementCorrectionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;
    }
.end annotation


# static fields
.field static final CAPABILITY_EXCESS_PATH_LENGTH:I = 0x2

.field static final CAPABILITY_LOS_SATS:I = 0x1

.field static final CAPABILITY_REFLECTING_PLANE:I = 0x4

.field private static final INVALID_CAPABILITIES:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "GnssMeasurementCorrectionsProvider"


# instance fields
.field private volatile mCapabilities:I

.field private final mHandler:Landroid/os/Handler;

.field private final mNative:Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 48
    new-instance v0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;-><init>(Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    .line 54
    iput-object p1, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p2, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mNative:Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    .line 56
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 33
    invoke-static {}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->native_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->native_inject_gnss_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method private static hasCapability(II)Z
    .registers 2

    .line 128
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private isCapabilitiesReceived()Z
    .registers 3

    .line 132
    iget v0, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static native native_inject_gnss_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
.end method

.method private static native native_is_measurement_corrections_supported()Z
.end method


# virtual methods
.method getCapabilities()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    return v0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->isCapabilitiesReceived()Z

    move-result v0

    if-nez v0, :cond_e

    .line 74
    const-string p1, "GnssMeasurementCorrectionsProvider"

    const-string v0, "Failed to inject GNSS measurement corrections. Capabilities not received yet."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_e
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssMeasurementCorrectionsProvider$VUSA1ROgV90b6YMNVx53Jh7SSc8;-><init>(Lcom/android/server/location/GnssMeasurementCorrectionsProvider;Landroid/location/GnssMeasurementCorrections;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public isAvailableInPlatform()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mNative:Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;->isMeasurementCorrectionsSupported()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$injectGnssMeasurementCorrections$0$GnssMeasurementCorrectionsProvider(Landroid/location/GnssMeasurementCorrections;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mNative:Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider$GnssMeasurementCorrectionsProviderNative;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 80
    const-string p1, "GnssMeasurementCorrectionsProvider"

    const-string v0, "Failure in injecting GNSS corrections."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_f
    return-void
.end method

.method onCapabilitiesUpdated(I)Z
    .registers 4

    .line 87
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_30

    .line 92
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set capabilities. Received capabilities 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not contain the mandatory LOS_SATS or the EXCESS_PATH_LENGTH capability."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    const-string v0, "GnssMeasurementCorrectionsProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 p1, 0x0

    return p1

    .line 89
    :cond_30
    :goto_30
    iput p1, p0, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->mCapabilities:I

    .line 90
    return v0
.end method

.method toStringCapabilities()Ljava/lang/String;
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->getCapabilities()I

    move-result v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v2, "mCapabilities=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 115
    const-string v2, "LOS_SATS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_26
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 118
    const-string v2, "EXCESS_PATH_LENGTH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_32
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/location/GnssMeasurementCorrectionsProvider;->hasCapability(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 121
    const-string v0, "REFLECTING_PLANE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3e
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
