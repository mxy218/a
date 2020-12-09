.class Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;
.super Ljava/lang/Object;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkAttributes"
.end annotation


# instance fields
.field private mApn:Ljava/lang/String;

.field private mCapabilities:Landroid/net/NetworkCapabilities;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler$1;)V
    .registers 2

    .line 108
    invoke-direct {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 2

    .line 108
    invoke-static {p0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Landroid/net/NetworkCapabilities;)S
    .registers 1

    .line 108
    invoke-static {p0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->getCapabilityFlags(Landroid/net/NetworkCapabilities;)S

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)I
    .registers 1

    .line 108
    iget p0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;I)I
    .registers 2

    .line 108
    iput p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;)Landroid/net/NetworkCapabilities;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method private static getCapabilityFlags(Landroid/net/NetworkCapabilities;)S
    .registers 3

    .line 137
    nop

    .line 138
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 139
    const/4 v0, 0x2

    int-to-short v0, v0

    goto :goto_d

    .line 138
    :cond_c
    const/4 v0, 0x0

    .line 141
    :goto_d
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 142
    or-int/lit8 p0, v0, 0x1

    int-to-short v0, p0

    .line 144
    :cond_18
    return v0
.end method

.method private static hasCapabilitiesChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 4

    .line 119
    const/4 v0, 0x1

    if-eqz p0, :cond_1b

    if-nez p1, :cond_6

    goto :goto_1b

    .line 124
    :cond_6
    const/16 v1, 0x12

    invoke-static {p0, p1, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0xb

    .line 126
    invoke-static {p0, p1, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    nop

    .line 124
    :goto_1a
    return v0

    .line 120
    :cond_1b
    :goto_1b
    return v0
.end method

.method private static hasCapabilityChanged(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;I)Z
    .registers 3

    .line 132
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    .line 133
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 132
    :goto_d
    return p0
.end method
