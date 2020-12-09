.class public Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;
.super Ljava/lang/Object;
.source "RabinFingerprint64.java"


# static fields
.field private static final DEFAULT_IRREDUCIBLE_POLYNOMIAL_64:J = 0x1bL

.field private static final POLYNOMIAL_DEGREE:I = 0x40

.field private static final SLIDING_WINDOW_SIZE_BYTES:I = 0x1f


# instance fields
.field private final mPoly64:J

.field private final mTableFP64:[J

.field private final mTableOutByte:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    const-wide/16 v0, 0x1b

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;-><init>(J)V

    .line 44
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->computeFingerprintTables64()V

    .line 45
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->computeFingerprintTables64Windowed()V

    .line 46
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x100

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    .line 28
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    .line 38
    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    .line 39
    return-void
.end method

.method private computeFingerprintTables64()V
    .registers 12

    .line 66
    const/16 v0, 0x40

    new-array v1, v0, [J

    .line 67
    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 68
    const/4 v2, 0x1

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_2b

    .line 69
    add-int/lit8 v5, v3, -0x1

    aget-wide v6, v1, v5

    const-wide/high16 v8, -0x8000000000000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_20

    .line 70
    aget-wide v5, v1, v5

    shl-long/2addr v5, v2

    aput-wide v5, v1, v3

    goto :goto_28

    .line 72
    :cond_20
    aget-wide v5, v1, v5

    shl-long/2addr v5, v2

    iget-wide v7, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    xor-long/2addr v5, v7

    aput-wide v5, v1, v3

    .line 68
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 75
    :cond_2b
    move v0, v4

    :goto_2c
    const/16 v3, 0x100

    if-ge v0, v3, :cond_4e

    .line 76
    nop

    .line 77
    move v3, v0

    move v5, v4

    :goto_33
    if-lez v3, :cond_4b

    const/16 v6, 0x8

    if-ge v5, v6, :cond_4b

    .line 78
    and-int/lit8 v6, v3, 0x1

    if-ne v6, v2, :cond_46

    .line 79
    iget-object v6, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    aget-wide v7, v6, v0

    aget-wide v9, v1, v5

    xor-long/2addr v7, v9

    aput-wide v7, v6, v0

    .line 81
    :cond_46
    ushr-int/lit8 v3, v3, 0x1

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 75
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 84
    :cond_4e
    return-void
.end method

.method private computeFingerprintTables64Windowed()V
    .registers 14

    .line 94
    const/16 v0, 0x8

    new-array v1, v0, [J

    .line 95
    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 96
    const/16 v2, 0x41

    :goto_b
    const/16 v3, 0x100

    const/4 v5, 0x1

    if-ge v2, v3, :cond_33

    .line 97
    add-int/lit8 v3, v2, -0x1

    rem-int/2addr v3, v0

    aget-wide v6, v1, v3

    const-wide/high16 v8, -0x8000000000000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_26

    .line 98
    rem-int/lit8 v6, v2, 0x8

    aget-wide v7, v1, v3

    shl-long/2addr v7, v5

    aput-wide v7, v1, v6

    goto :goto_30

    .line 100
    :cond_26
    rem-int/lit8 v6, v2, 0x8

    aget-wide v7, v1, v3

    shl-long/2addr v7, v5

    iget-wide v9, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    xor-long/2addr v7, v9

    aput-wide v7, v1, v6

    .line 96
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 103
    :cond_33
    move v2, v4

    :goto_34
    if-ge v2, v3, :cond_52

    .line 104
    nop

    .line 105
    move v6, v2

    move v7, v4

    :goto_39
    if-lez v6, :cond_4f

    if-ge v7, v0, :cond_4f

    .line 106
    and-int/lit8 v8, v6, 0x1

    if-ne v8, v5, :cond_4a

    .line 107
    iget-object v8, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    aget-wide v9, v8, v2

    aget-wide v11, v1, v7

    xor-long/2addr v9, v11

    aput-wide v9, v8, v2

    .line 109
    :cond_4a
    ushr-int/lit8 v6, v6, 0x1

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 103
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 112
    :cond_52
    return-void
.end method


# virtual methods
.method public computeFingerprint64(BBJ)J
    .registers 9

    .line 58
    const/16 v0, 0x8

    shl-long v0, p3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    xor-long/2addr v0, v2

    iget-object p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    const/16 v2, 0x38

    ushr-long/2addr p3, v2

    long-to-int p3, p3

    aget-wide p3, p1, p3

    xor-long/2addr p3, v0

    iget-object p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    and-int/lit16 p2, p2, 0xff

    aget-wide p1, p1, p2

    xor-long/2addr p1, p3

    return-wide p1
.end method
