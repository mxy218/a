.class public Landroid/net/util/InterfaceParams;
.super Ljava/lang/Object;
.source "InterfaceParams.java"


# static fields
.field private static final ETHER_MTU:I = 0x5dc

.field private static final IPV6_MIN_MTU:I = 0x500


# instance fields
.field public final defaultMtu:I

.field public final index:I

.field public final macAddr:Landroid/net/MacAddress;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/net/MacAddress;)V
    .registers 5

    .line 64
    const/16 v0, 0x5dc

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "impossible interface name"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 69
    if-lez p2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v0, "invalid interface index"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 70
    iput-object p1, p0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    .line 71
    iput p2, p0, Landroid/net/util/InterfaceParams;->index:I

    .line 72
    if-eqz p3, :cond_1e

    goto :goto_28

    :cond_1e
    const/4 p1, 0x6

    new-array p1, p1, [B

    fill-array-data p1, :array_32

    invoke-static {p1}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p3

    :goto_28
    iput-object p3, p0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 74
    const/16 p1, 0x500

    if-le p4, p1, :cond_2f

    move p1, p4

    :cond_2f
    iput p1, p0, Landroid/net/util/InterfaceParams;->defaultMtu:I

    .line 75
    return-void

    :array_32
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .registers 6

    .line 50
    invoke-static {p0}, Landroid/net/util/InterfaceParams;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 54
    :cond_8
    invoke-static {v0}, Landroid/net/util/InterfaceParams;->getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;

    move-result-object v2

    .line 57
    :try_start_c
    new-instance v3, Landroid/net/util/InterfaceParams;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v0

    invoke-direct {v3, p0, v4, v2, v0}, Landroid/net/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_19} :catch_1a

    return-object v3

    .line 58
    :catch_1a
    move-exception p0

    .line 59
    return-object v1
.end method

.method private static getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;
    .registers 1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object p0

    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 93
    :catch_9
    move-exception p0

    .line 94
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .registers 1

    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 85
    :catch_5
    move-exception p0

    .line 86
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/util/InterfaceParams;->defaultMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s/%d/%s/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
