.class public final Landroidx/collection/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final INT:[I

.field private static final OBJECT:[Ljava/lang/Object;

.field private static sBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sBaseCacheSize:I

.field private static sTwiceBaseCache:[Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field private mCollections:Landroidx/collection/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field private mHashes:[I

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 50
    sput-object v1, Landroidx/collection/ArraySet;->INT:[I

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    sput-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    .line 249
    sget-object p1, Landroidx/collection/ArraySet;->INT:[I

    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 250
    sget-object p1, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_11

    .line 252
    :cond_e
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    :goto_11
    const/4 p1, 0x0

    .line 254
    iput p1, p0, Landroidx/collection/ArraySet;->mSize:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .param p1  # Ljava/util/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Landroidx/collection/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    .line 273
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_2e

    .line 161
    const-class v3, Landroidx/collection/ArraySet;

    monitor-enter v3

    .line 162
    :try_start_a
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_29

    .line 163
    sget-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 164
    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 165
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 166
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 167
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 168
    sget p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 173
    monitor-exit v3

    return-void

    .line 175
    :cond_29
    monitor-exit v3

    goto :goto_58

    :catchall_2b
    move-exception p0

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw p0

    :cond_2e
    const/4 v3, 0x4

    if-ne p1, v3, :cond_58

    .line 177
    const-class v3, Landroidx/collection/ArraySet;

    monitor-enter v3

    .line 178
    :try_start_34
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_53

    .line 179
    sget-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 180
    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 181
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 182
    aget-object v4, p1, v2

    check-cast v4, [I

    iput-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 183
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 184
    sget p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    sub-int/2addr p0, v2

    sput p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 189
    monitor-exit v3

    return-void

    .line 191
    :cond_53
    monitor-exit v3

    goto :goto_58

    :catchall_55
    move-exception p0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_55

    throw p0

    .line 194
    :cond_58
    :goto_58
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 195
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    .line 200
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2c

    .line 201
    const-class v0, Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 202
    :try_start_e
    sget v6, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v6, v4, :cond_27

    .line 203
    sget-object v4, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 204
    aput-object p0, p1, v5

    sub-int/2addr p2, v5

    :goto_19
    if-lt p2, v2, :cond_20

    .line 206
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    .line 208
    :cond_20
    sput-object p1, Landroidx/collection/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    sget p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Landroidx/collection/ArraySet;->sTwiceBaseCacheSize:I

    .line 215
    :cond_27
    monitor-exit v0

    goto :goto_51

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw p0

    .line 216
    :cond_2c
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_51

    .line 217
    const-class v0, Landroidx/collection/ArraySet;

    monitor-enter v0

    .line 218
    :try_start_33
    sget v6, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    if-ge v6, v4, :cond_4c

    .line 219
    sget-object v4, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 220
    aput-object p0, p1, v5

    sub-int/2addr p2, v5

    :goto_3e
    if-lt p2, v2, :cond_45

    .line 222
    aput-object v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_3e

    .line 224
    :cond_45
    sput-object p1, Landroidx/collection/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 225
    sget p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    add-int/2addr p0, v5

    sput p0, Landroidx/collection/ArraySet;->sBaseCacheSize:I

    .line 231
    :cond_4c
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    :goto_51
    return-void
.end method

.method private getCollection()Landroidx/collection/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MapCollections<",
            "TE;TE;>;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    if-nez v0, :cond_b

    .line 635
    new-instance v0, Landroidx/collection/ArraySet$1;

    invoke-direct {v0, p0}, Landroidx/collection/ArraySet$1;-><init>(Landroidx/collection/ArraySet;)V

    iput-object v0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    .line 682
    :cond_b
    iget-object p0, p0, Landroidx/collection/ArraySet;->mCollections:Landroidx/collection/MapCollections;

    return-object p0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 7

    .line 83
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 90
    :cond_6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    .line 98
    :cond_f
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v1, 0x1

    :goto_1c
    if-ge v2, v0, :cond_32

    .line 104
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_32

    .line 105
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    add-int/lit8 v1, v1, -0x1

    :goto_34
    if-ltz v1, :cond_4a

    .line 109
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_4a

    .line 110
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    return v1

    :cond_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_4a
    not-int p0, v2

    return p0
.end method

.method private indexOfNull()I
    .registers 5

    .line 121
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 128
    :cond_6
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/collection/ContainerHelpers;->binarySearch([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    .line 136
    :cond_10
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v2, v1, 0x1

    :goto_19
    if-ge v2, v0, :cond_2b

    .line 142
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2b

    .line 143
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_3f

    .line 147
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_3f

    .line 148
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    :cond_3f
    not-int p0, v2

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 10
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 361
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result v1

    move v2, v0

    goto :goto_14

    .line 363
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 364
    invoke-direct {p0, p1, v1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_14
    if-ltz v1, :cond_17

    return v0

    :cond_17
    not-int v1, v1

    .line 371
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v4, v4

    if-lt v3, v4, :cond_46

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v3, v5, :cond_28

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v3

    goto :goto_2b

    :cond_28
    if-lt v3, v4, :cond_2b

    move v4, v5

    .line 377
    :cond_2b
    :goto_2b
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 378
    iget-object v5, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 379
    invoke-direct {p0, v4}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 381
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v6, v4

    if-lez v6, :cond_41

    .line 383
    array-length v6, v3

    invoke-static {v3, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    :cond_41
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v3, v5, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 390
    :cond_46
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v0, :cond_5a

    .line 395
    iget-object v3, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_5a
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    aput v2, v0, v1

    .line 400
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 401
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/collection/ArraySet;->mSize:I

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .param p1  # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 719
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->ensureCapacity(I)V

    .line 721
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 722
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 4

    .line 282
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-eqz v0, :cond_16

    .line 283
    iget-object v1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 284
    sget-object v0, Landroidx/collection/ArraySet;->INT:[I

    iput-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 285
    sget-object v0, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    :cond_16
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 315
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .param p1  # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 705
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 706
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public ensureCapacity(I)V
    .registers 6

    .line 295
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v1, v0

    if-ge v1, p1, :cond_20

    .line 297
    iget-object v1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 298
    invoke-direct {p0, p1}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 299
    iget p1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-lez p1, :cond_1b

    .line 300
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_1b
    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {v0, v1, p0}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_20
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 562
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 563
    check-cast p1, Ljava/util/Set;

    .line 564
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    move v1, v2

    .line 569
    :goto_17
    :try_start_17
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v3, :cond_29

    .line 570
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 571
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_23} :catch_2a
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_2a

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    return v0

    :catch_2a
    :cond_2a
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 590
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 592
    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, p0, :cond_e

    .line 593
    aget v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_7

    .line 325
    invoke-direct {p0}, Landroidx/collection/ArraySet;->indexOfNull()I

    move-result p0

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    :goto_f
    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 343
    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-gtz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 694
    invoke-direct {p0}, Landroidx/collection/ArraySet;->getCollection()Landroidx/collection/MapCollections;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 433
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 435
    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .param p1  # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 735
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 736
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 448
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1a

    .line 451
    iget-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {p1, v0, v2}, Landroidx/collection/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 452
    sget-object p1, Landroidx/collection/ArraySet;->INT:[I

    iput-object p1, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 453
    sget-object p1, Landroidx/collection/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 454
    iput v3, p0, Landroidx/collection/ArraySet;->mSize:I

    goto :goto_79

    .line 456
    :cond_1a
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    array-length v5, v0

    const/16 v6, 0x8

    if-le v5, v6, :cond_59

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    if-ge v2, v0, :cond_59

    if-le v2, v6, :cond_2c

    shr-int/lit8 v0, v2, 0x1

    add-int v6, v2, v0

    .line 464
    :cond_2c
    iget-object v0, p0, Landroidx/collection/ArraySet;->mHashes:[I

    .line 465
    iget-object v2, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    .line 466
    invoke-direct {p0, v6}, Landroidx/collection/ArraySet;->allocArrays(I)V

    .line 468
    iget v5, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v5, v4

    iput v5, p0, Landroidx/collection/ArraySet;->mSize:I

    if-lez p1, :cond_44

    .line 471
    iget-object v4, p0, Landroidx/collection/ArraySet;->mHashes:[I

    invoke-static {v0, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object v4, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v3, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_44
    iget v3, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge p1, v3, :cond_79

    add-int/lit8 v4, p1, 0x1

    .line 479
    iget-object v5, p0, Landroidx/collection/ArraySet;->mHashes:[I

    sub-int/2addr v3, p1

    invoke-static {v0, v4, v5, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr p0, p1

    invoke-static {v2, v4, v0, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_79

    .line 483
    :cond_59
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/collection/ArraySet;->mSize:I

    .line 484
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge p1, v0, :cond_72

    .line 488
    iget-object v2, p0, Landroidx/collection/ArraySet;->mHashes:[I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    sub-int/2addr v2, p1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    :cond_72
    iget-object p1, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_79
    :goto_79
    return-object v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .param p1  # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 750
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_5
    if-ltz v0, :cond_18

    .line 751
    iget-object v3, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 752
    invoke-virtual {p0, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    move v2, v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public size()I
    .registers 1

    .line 522
    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 528
    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 529
    iget-object p0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .param p1  # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 536
    array-length v0, p1

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v0, v1, :cond_15

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroidx/collection/ArraySet;->mSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 541
    :cond_15
    iget-object v0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    array-length v0, p1

    iget p0, p0, Landroidx/collection/ArraySet;->mSize:I

    if-le v0, p0, :cond_25

    const/4 v0, 0x0

    .line 543
    aput-object v0, p1, p0

    :cond_25
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 607
    invoke-virtual {p0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo p0, "{}"

    return-object p0

    .line 611
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/ArraySet;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 613
    :goto_19
    iget v2, p0, Landroidx/collection/ArraySet;->mSize:I

    if-ge v1, v2, :cond_36

    if-lez v1, :cond_24

    const-string v2, ", "

    .line 615
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_24
    invoke-virtual {p0, v1}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2e

    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_2e
    const-string v2, "(this Set)"

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_36
    const/16 p0, 0x7d

    .line 624
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 335
    iget-object p0, p0, Landroidx/collection/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
