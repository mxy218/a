.class public Landroid/net/ipmemorystore/NetworkAttributes;
.super Ljava/lang/Object;
.source "NetworkAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final NULL_MATCH_WEIGHT:F = 0.25f

.field public static final TOTAL_WEIGHT:F = 850.0f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TOTAL_WEIGHT_CUTOFF:F = 520.0f

.field private static final WEIGHT_ASSIGNEDV4ADDR:F = 300.0f

.field private static final WEIGHT_ASSIGNEDV4ADDREXPIRY:F = 0.0f

.field private static final WEIGHT_DNSADDRESSES:F = 200.0f

.field private static final WEIGHT_GROUPHINT:F = 300.0f

.field private static final WEIGHT_MTU:F = 50.0f


# instance fields
.field public final assignedV4Address:Ljava/net/Inet4Address;

.field public final assignedV4AddressExpiry:Ljava/lang/Long;

.field public final dnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final groupHint:Ljava/lang/String;

.field public final mtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .registers 9
    .param p1, "parcelable"  # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 120
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    invoke-static {v0}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    .line 121
    iget-wide v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    .line 122
    iget-wide v3, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    goto :goto_1b

    :cond_1a
    move-object v3, v1

    :goto_1b
    iget-object v4, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->groupHint:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 124
    invoke-static {v0}, Landroid/net/ipmemorystore/NetworkAttributes;->blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;

    move-result-object v5

    .line 125
    iget v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    if-ltz v0, :cond_2f

    iget v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    goto :goto_30

    :cond_2f
    move-object v6, v1

    .line 120
    :goto_30
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 10
    .param p1, "assignedV4Address"  # Ljava/net/Inet4Address;
    .param p2, "assignedV4AddressExpiry"  # Ljava/lang/Long;
    .param p3, "groupHint"  # Ljava/lang/String;
    .param p5, "mtu"  # Ljava/lang/Integer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Inet4Address;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 103
    .local p4, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p5, :cond_14

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MTU can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_14
    :goto_14
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    goto :goto_2a

    .line 106
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lease expiry can\'t be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2a
    :goto_2a
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 109
    iput-object p2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 110
    iput-object p3, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    .line 111
    if-nez p4, :cond_34

    const/4 v0, 0x0

    goto :goto_3d

    .line 112
    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_3d
    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 113
    iput-object p5, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 114
    return-void
.end method

.method private static blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;
    .registers 6
    .param p0, "blobs"  # [Landroid/net/ipmemorystore/Blob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/ipmemorystore/Blob;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 140
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 143
    .local v3, "b":Landroid/net/ipmemorystore/Blob;
    iget-object v4, v3, Landroid/net/ipmemorystore/Blob;->data:[B

    invoke-static {v4}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 144
    .local v4, "addr":Ljava/net/InetAddress;
    if-eqz v4, :cond_1b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v3  # "b":Landroid/net/ipmemorystore/Blob;
    .end local v4  # "addr":Ljava/net/InetAddress;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 146
    :cond_1e
    return-object v0
.end method

.method private static getByAddressOrNull([B)Ljava/net/InetAddress;
    .registers 3
    .param p0, "address"  # [B

    .line 130
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 132
    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 133
    :catch_9
    move-exception v1

    .line 134
    .local v1, "e":Ljava/net/UnknownHostException;
    return-object v0
.end method

.method private static inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Landroid/net/ipmemorystore/Blob;"
        }
    .end annotation

    .line 151
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ipmemorystore/Blob;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 154
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 155
    .local v2, "addr":Ljava/net/InetAddress;
    if-nez v2, :cond_19

    goto :goto_27

    .line 156
    :cond_19
    new-instance v3, Landroid/net/ipmemorystore/Blob;

    invoke-direct {v3}, Landroid/net/ipmemorystore/Blob;-><init>()V

    .line 157
    .local v3, "b":Landroid/net/ipmemorystore/Blob;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    iput-object v4, v3, Landroid/net/ipmemorystore/Blob;->data:[B

    .line 158
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2  # "addr":Ljava/net/InetAddress;
    .end local v3  # "b":Landroid/net/ipmemorystore/Blob;
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 160
    .end local v1  # "i":I
    :cond_2a
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/ipmemorystore/Blob;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/ipmemorystore/Blob;

    return-object v1
.end method

.method private samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F
    .registers 6
    .param p1, "weight"  # F
    .param p2, "o1"  # Ljava/lang/Object;
    .param p3, "o2"  # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    if-nez p2, :cond_9

    .line 180
    if-nez p3, :cond_8

    const/high16 v0, 0x3e800000  # 0.25f

    mul-float/2addr v0, p1

    :cond_8
    return v0

    .line 182
    :cond_9
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, p1

    :cond_10
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"  # Ljava/lang/Object;

    .line 302
    instance-of v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 303
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 304
    .local v0, "other":Landroid/net/ipmemorystore/NetworkAttributes;
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iget-object v3, v0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iget-object v3, v0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 305
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    .line 306
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iget-object v3, v0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 307
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iget-object v3, v0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 308
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    nop

    .line 304
    :goto_3e
    return v1
.end method

.method public getNetworkGroupSamenessConfidence(Landroid/net/ipmemorystore/NetworkAttributes;)F
    .registers 7
    .param p1, "o"  # Landroid/net/ipmemorystore/NetworkAttributes;

    .line 187
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 188
    const/high16 v2, 0x43960000  # 300.0f

    invoke-direct {p0, v2, v0, v1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v0

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 189
    const/4 v4, 0x0

    invoke-direct {p0, v4, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    .line 191
    invoke-direct {p0, v2, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 192
    const/high16 v3, 0x43480000  # 200.0f

    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 193
    const/high16 v3, 0x42480000  # 50.0f

    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    move-result v1

    add-float/2addr v0, v1

    .line 199
    .local v0, "samenessScore":F
    const/high16 v1, 0x44020000  # 520.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3e

    .line 200
    const/high16 v1, 0x44820000  # 1040.0f

    div-float v1, v0, v1

    return v1

    .line 202
    :cond_3e
    sub-float v1, v0, v1

    const/high16 v2, 0x43a50000  # 330.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000  # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 313
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .registers 4

    .line 166
    new-instance v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;-><init>()V

    .line 167
    .local v0, "parcelable":Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    nop

    .line 168
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v1

    :goto_10
    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    .line 169
    nop

    .line 170
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-nez v1, :cond_1a

    const-wide/16 v1, 0x0

    goto :goto_1e

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1e
    iput-wide v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    .line 171
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->groupHint:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;

    move-result-object v1

    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 173
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-nez v1, :cond_32

    const/4 v1, -0x1

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_36
    iput v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 174
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 320
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 321
    .local v0, "resultJoiner":Ljava/util/StringJoiner;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v1, "nullFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    if-eqz v2, :cond_25

    .line 324
    const-string v2, "assignedV4Addr :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 325
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2a

    .line 327
    :cond_25
    const-string v2, "assignedV4Addr"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :goto_2a
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    if-eqz v2, :cond_3d

    .line 331
    const-string v2, "assignedV4AddressExpiry :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 332
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_42

    .line 334
    :cond_3d
    const-string v2, "assignedV4AddressExpiry"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :goto_42
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    if-eqz v2, :cond_51

    .line 338
    const-string v2, "groupHint :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 339
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->groupHint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_56

    .line 341
    :cond_51
    const-string v2, "groupHint"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_56
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    const-string v3, "]"

    if-eqz v2, :cond_7f

    .line 345
    const-string v2, "dnsAddr : ["

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 346
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 347
    .local v4, "addr":Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 348
    .end local v4  # "addr":Ljava/net/InetAddress;
    goto :goto_67

    .line 349
    :cond_7b
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_84

    .line 351
    :cond_7f
    const-string v2, "dnsAddr"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_84
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    if-eqz v2, :cond_98

    .line 355
    const-string/jumbo v2, "mtu :"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 356
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_9e

    .line 358
    :cond_98
    const-string/jumbo v2, "mtu"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :goto_9e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 362
    const-string v2, "; Null fields : ["

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 363
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ad
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 364
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 365
    .end local v4  # "field":Ljava/lang/String;
    goto :goto_ad

    .line 366
    :cond_bd
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 369
    :cond_c0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
