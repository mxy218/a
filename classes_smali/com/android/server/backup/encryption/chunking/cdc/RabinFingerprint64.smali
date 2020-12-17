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
    .param p1, "poly64"  # J

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
    .registers 11

    .line 66
    const/16 v0, 0x40

    new-array v1, v0, [J

    .line 67
    .local v1, "degreesRes64":[J
    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 68
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    const/4 v3, 0x1

    if-ge v2, v0, :cond_31

    .line 69
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_23

    .line 70
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    shl-long v3, v4, v3

    aput-wide v3, v1, v2

    goto :goto_2e

    .line 72
    :cond_23
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    shl-long v3, v4, v3

    iget-wide v5, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    xor-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 68
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 75
    .end local v2  # "i":I
    :cond_31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    const/16 v2, 0x100

    if-ge v0, v2, :cond_53

    .line 76
    move v2, v0

    .line 77
    .local v2, "currIndex":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_38
    if-lez v2, :cond_50

    const/16 v5, 0x8

    if-ge v4, v5, :cond_50

    .line 78
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_4b

    .line 79
    iget-object v5, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    aget-wide v6, v5, v0

    aget-wide v8, v1, v4

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    .line 81
    :cond_4b
    ushr-int/lit8 v2, v2, 0x1

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 75
    .end local v2  # "currIndex":I
    .end local v4  # "j":I
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 84
    .end local v0  # "i":I
    :cond_53
    return-void
.end method

.method private computeFingerprintTables64Windowed()V
    .registers 13

    .line 94
    const/16 v0, 0x8

    new-array v1, v0, [J

    .line 95
    .local v1, "degsRes64":[J
    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 96
    const/16 v2, 0x41

    .local v2, "i":I
    :goto_b
    const/16 v3, 0x100

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3b

    .line 97
    add-int/lit8 v3, v2, -0x1

    rem-int/2addr v3, v0

    aget-wide v5, v1, v3

    const-wide/high16 v7, -0x8000000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_2a

    .line 98
    rem-int/lit8 v3, v2, 0x8

    add-int/lit8 v5, v2, -0x1

    rem-int/2addr v5, v0

    aget-wide v5, v1, v5

    shl-long v4, v5, v4

    aput-wide v4, v1, v3

    goto :goto_38

    .line 100
    :cond_2a
    rem-int/lit8 v3, v2, 0x8

    add-int/lit8 v5, v2, -0x1

    rem-int/2addr v5, v0

    aget-wide v5, v1, v5

    shl-long v4, v5, v4

    iget-wide v6, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mPoly64:J

    xor-long/2addr v4, v6

    aput-wide v4, v1, v3

    .line 96
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 103
    .end local v2  # "i":I
    :cond_3b
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_3c
    if-ge v2, v3, :cond_59

    .line 104
    move v5, v2

    .line 105
    .local v5, "currIndex":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_40
    if-lez v5, :cond_56

    if-ge v6, v0, :cond_56

    .line 106
    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_51

    .line 107
    iget-object v7, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    aget-wide v8, v7, v2

    aget-wide v10, v1, v6

    xor-long/2addr v8, v10

    aput-wide v8, v7, v2

    .line 109
    :cond_51
    ushr-int/lit8 v5, v5, 0x1

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 103
    .end local v5  # "currIndex":I
    .end local v6  # "j":I
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 112
    .end local v2  # "i":I
    :cond_59
    return-void
.end method


# virtual methods
.method public computeFingerprint64(BBJ)J
    .registers 10
    .param p1, "inChar"  # B
    .param p2, "outChar"  # B
    .param p3, "fingerPrint"  # J

    .line 58
    const/16 v0, 0x8

    shl-long v0, p3, v0

    and-int/lit16 v2, p1, 0xff

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableFP64:[J

    const/16 v3, 0x38

    ushr-long v3, p3, v3

    long-to-int v3, v3

    aget-wide v2, v2, v3

    xor-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->mTableOutByte:[J

    and-int/lit16 v3, p2, 0xff

    aget-wide v2, v2, v3

    xor-long/2addr v0, v2

    return-wide v0
.end method
