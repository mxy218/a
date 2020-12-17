.class public Landroid/support/v4/util/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 59
    invoke-direct {p0, v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-nez p1, :cond_11

    .line 71
    sget-object p1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 72
    sget-object p1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_1d

    .line 74
    :cond_11
    invoke-static {p1}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result p1

    .line 75
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 76
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 78
    :goto_1d
    iput v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    return-void
.end method

.method private gc()V
    .registers 9

    .line 165
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 167
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 168
    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_9
    if-ge v4, v0, :cond_21

    .line 171
    aget-object v6, v2, v4

    .line 173
    sget-object v7, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v6, v7, :cond_1e

    if-eq v4, v5, :cond_1c

    .line 175
    aget v7, v1, v4

    aput v7, v1, v5

    .line 176
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 177
    aput-object v6, v2, v4

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 184
    :cond_21
    iput-boolean v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 185
    iput v5, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 357
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-gt p1, v0, :cond_10

    .line 358
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    .line 362
    :cond_10
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1e

    .line 363
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 366
    :cond_1e
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 367
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_40

    add-int/lit8 v1, v0, 0x1

    .line 368
    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 370
    new-array v2, v1, [I

    .line 371
    new-array v1, v1, [Ljava/lang/Object;

    .line 374
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 378
    iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 381
    :cond_40
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 382
    iget-object p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 383
    iput v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 6

    .line 341
    iget v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 342
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    const/4 v4, 0x0

    .line 345
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 348
    :cond_e
    iput v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 349
    iput-boolean v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    return-void
.end method

.method public clone()Landroid/support/v4/util/SparseArrayCompat;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/SparseArrayCompat;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1c

    .line 87
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 88
    iget-object p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    iput-object p0, v1, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_7 .. :try_end_1b} :catch_1d

    goto :goto_1d

    :catch_1c
    move-object v1, v0

    :catch_1d
    :goto_1d
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Landroid/support/v4/util/SparseArrayCompat;->clone()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object p0

    return-object p0
.end method

.method public delete(I)V
    .registers 5

    .line 122
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_17

    .line 125
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_17

    .line 126
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    :cond_17
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result p1

    if-ltz p1, :cond_16

    .line 111
    iget-object p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v0, p0, p1

    sget-object v1, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    goto :goto_16

    .line 114
    :cond_13
    aget-object p0, p0, p1

    return-object p0

    :cond_16
    :goto_16
    return-object p2
.end method

.method public indexOfKey(I)I
    .registers 3

    .line 308
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 309
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 312
    :cond_7
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, p0, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result p0

    return p0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 326
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 327
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    :cond_7
    const/4 v0, 0x0

    .line 330
    :goto_8
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v0, v1, :cond_16

    .line 331
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public keyAt(I)I
    .registers 3

    .line 268
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 269
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 272
    :cond_7
    iget-object p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aget p0, p0, p1

    return p0
.end method

.method public put(ILjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_f

    .line 199
    iget-object p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, p0, v0

    goto :goto_80

    :cond_f
    not-int v0, v0

    .line 203
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v2, v1, v0

    sget-object v3, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v2, v3, :cond_23

    .line 204
    iget-object p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, p0, v0

    .line 205
    aput-object p2, v1, v0

    return-void

    .line 209
    :cond_23
    iget-boolean v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_3a

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3a

    .line 210
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 213
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v0

    not-int v0, v0

    .line 216
    :cond_3a
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_5c

    add-int/lit8 v1, v1, 0x1

    .line 217
    invoke-static {v1}, Landroid/support/v4/util/ContainerHelpers;->idealIntArraySize(I)I

    move-result v1

    .line 219
    new-array v2, v1, [I

    .line 220
    new-array v1, v1, [Ljava/lang/Object;

    .line 223
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v3, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 227
    iput-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 230
    :cond_5c
    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_72

    .line 232
    iget-object v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :cond_72
    iget-object v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    aput p1, v1, v0

    .line 237
    iget-object p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 238
    iget p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    :goto_80
    return-void
.end method

.method public remove(I)V
    .registers 2

    .line 136
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .registers 5

    .line 143
    iget-object v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_d

    .line 144
    aput-object v2, v0, p1

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    :cond_d
    return-void
.end method

.method public size()I
    .registers 2

    .line 247
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 248
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 251
    :cond_7
    iget p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 395
    invoke-virtual {p0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const-string/jumbo p0, "{}"

    return-object p0

    .line 399
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 401
    :goto_19
    iget v2, p0, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v1, v2, :cond_42

    if-lez v1, :cond_24

    const-string v2, ", "

    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_24
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v2

    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3a

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_3a
    const-string v2, "(this Map)"

    .line 412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_42
    const/16 p0, 0x7d

    .line 415
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 282
    iget-boolean v0, p0, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v0, :cond_7

    .line 283
    invoke-direct {p0}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 286
    :cond_7
    iget-object p0, p0, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
