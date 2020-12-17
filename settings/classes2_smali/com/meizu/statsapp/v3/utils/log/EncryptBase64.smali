.class public Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;
.super Ljava/lang/Object;
.source "EncryptBase64.java"


# static fields
.field private static final base64_table:[C

.field private static final last2byte:C

.field private static final last4byte:C

.field private static final last6byte:C


# instance fields
.field private mBase64Table:[C

.field private offset:I

.field private private_base64_table:[C

.field private private_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 6
    fill-array-data v0, :array_26

    sput-object v0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->base64_table:[C

    const/4 v0, 0x2

    const-string v1, "00000011"

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    sput-char v1, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last2byte:C

    const-string v1, "00001111"

    .line 16
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    sput-char v1, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last4byte:C

    const-string v1, "00111111"

    .line 18
    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last6byte:C

    return-void

    :array_26
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->offset:I

    .line 30
    iput-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->private_key:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->initPrivateTable()V

    return-void
.end method

.method private initPrivateTable()V
    .registers 6

    .line 113
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->base64_table:[C

    array-length v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->private_base64_table:[C

    .line 114
    iget-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->private_key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    rem-int/lit8 v0, v0, 0xd

    iput v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->offset:I

    .line 115
    :goto_12
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->base64_table:[C

    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 116
    iget-object v2, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->private_base64_table:[C

    iget v3, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->offset:I

    add-int/2addr v3, v1

    array-length v4, v0

    rem-int/2addr v3, v4

    aget-char v0, v0, v3

    aput-char v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 119
    :cond_25
    iget-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->private_base64_table:[C

    iput-object v0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    return-void
.end method


# virtual methods
.method public encode([B)Ljava/lang/String;
    .registers 10

    if-eqz p1, :cond_ab

    .line 35
    array-length v0, p1

    if-nez v0, :cond_7

    goto/16 :goto_ab

    .line 37
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 40
    array-length v2, p1

    :goto_15
    if-ge v1, v2, :cond_a6

    add-int/lit8 v3, v1, 0x1

    .line 42
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-ne v3, v2, :cond_3a

    .line 44
    iget-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    ushr-int/lit8 v2, v1, 0x2

    aget-char p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    iget-object p0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    sget-char p1, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last2byte:C

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x4

    aget-char p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "=="

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    :cond_3a
    add-int/lit8 v4, v3, 0x1

    .line 49
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v4, v2, :cond_6c

    .line 51
    iget-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    ushr-int/lit8 v2, v1, 0x2

    aget-char p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    iget-object p1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    sget-char v2, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last2byte:C

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v2, v3, 0x4

    or-int/2addr v1, v2

    aget-char p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget-object p0, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    sget-char p1, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last4byte:C

    and-int/2addr p1, v3

    shl-int/lit8 p1, p1, 0x2

    aget-char p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "="

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    :cond_6c
    add-int/lit8 v5, v4, 0x1

    .line 57
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 58
    iget-object v6, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    ushr-int/lit8 v7, v1, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v6, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    sget-char v7, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last2byte:C

    and-int/2addr v1, v7

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v7, v3, 0x4

    or-int/2addr v1, v7

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    sget-char v6, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last4byte:C

    and-int/2addr v3, v6

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v6, v4, 0x6

    or-int/2addr v3, v6

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->mBase64Table:[C

    sget-char v3, Lcom/meizu/statsapp/v3/utils/log/EncryptBase64;->last6byte:C

    and-int/2addr v3, v4

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v5

    goto/16 :goto_15

    .line 64
    :cond_a6
    :goto_a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_ab
    :goto_ab
    const/4 p0, 0x0

    return-object p0
.end method
