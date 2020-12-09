.class Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvStatusInfo"
.end annotation


# instance fields
.field private mCn0s:[F

.field private mSvAzimuths:[F

.field private mSvCarrierFreqs:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider$1;)V
    .registers 2

    .line 1462
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I
    .registers 1

    .line 1462
    iget p0, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;I)I
    .registers 2

    .line 1462
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I
    .registers 1

    .line 1462
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    return-object p0
.end method

.method static synthetic access$1502(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[I)[I
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .registers 1

    .line 1462
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .registers 1

    .line 1462
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .registers 1

    .line 1462
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .registers 1

    .line 1462
    iget-object p0, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .registers 2

    .line 1462
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    return-object p1
.end method
