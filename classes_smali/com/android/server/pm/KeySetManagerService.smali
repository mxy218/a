.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field private lastIssuedKeyId:J

.field private lastIssuedKeySetId:J

.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 68
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 114
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 115
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 116
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 117
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 118
    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    .line 433
    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_6a

    .line 438
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 439
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 440
    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_2d

    .line 441
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-direct {p0, v4}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v4

    .line 442
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 446
    :cond_2d
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v3

    .line 447
    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_56

    .line 450
    nop

    :goto_38
    if-ge v2, v1, :cond_4a

    .line 451
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 453
    :cond_4a
    iget-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/KeySetHandle;

    .line 454
    invoke-virtual {p1}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    .line 455
    return-object p1

    .line 459
    :cond_56
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    move-result-wide v1

    .line 462
    new-instance p1, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {p1, v1, v2}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .line 463
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 464
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 465
    return-object p1

    .line 434
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add an empty set of keys!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .registers 6

    .line 509
    const-string v0, "Cannot add null public key!"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    .line 511
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    .line 514
    iget-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 515
    return-wide v0

    .line 519
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    move-result-wide v0

    .line 520
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v3, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 521
    return-wide v0
.end method

.method private addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 820
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 821
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const-string v3, "KeySetManagerService"

    if-ge v2, v0, :cond_34

    .line 822
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    .line 823
    if-nez v4, :cond_24

    .line 825
    const-string v4, "Encountered non-existent key-set reference when reading settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    goto :goto_31

    .line 828
    :cond_24
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    .line 821
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 837
    :cond_34
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 838
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 839
    move v2, v1

    :goto_40
    if-ge v2, v0, :cond_8c

    .line 840
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    move-result v4

    if-nez v4, :cond_62

    .line 841
    const-string v4, "Encountered key-set w/out package references when reading settings"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_62
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 845
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 846
    move v6, v1

    :goto_6f
    if-ge v6, v5, :cond_89

    .line 847
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v7}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 846
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 839
    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 850
    :cond_8c
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 851
    nop

    :goto_91
    if-ge v1, v0, :cond_a3

    .line 852
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 854
    :cond_a3
    return-void
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 5

    .line 594
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 595
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 596
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 597
    return-void
.end method

.method private decrementKeySetLPw(J)V
    .registers 8

    .line 474
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetHandle;

    .line 475
    if-nez v0, :cond_b

    .line 477
    return-void

    .line 479
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    move-result v0

    if-gtz v0, :cond_3a

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 481
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 482
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_30

    .line 483
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 485
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 488
    :cond_3a
    return-void
.end method

.method private decrementPublicKeyLPw(J)V
    .registers 7

    .line 495
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 496
    if-nez v0, :cond_b

    .line 498
    return-void

    .line 500
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 503
    :cond_1a
    return-void
.end method

.method private getFreeKeySetIDLPw()J
    .registers 5

    .line 558
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 559
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .registers 5

    .line 566
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 567
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .registers 4

    .line 269
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 270
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 271
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 272
    iget-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    return-wide v0

    .line 269
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .registers 5

    .line 543
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 544
    const/4 p1, 0x0

    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_37

    .line 545
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 546
    new-instance v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    return-wide v0

    .line 544
    :cond_34
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 551
    :cond_37
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 530
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 531
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 532
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 533
    iget-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    return-wide v0

    .line 530
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    :cond_21
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    .line 287
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 288
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 289
    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_3b

    .line 290
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 291
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 292
    if-eqz v5, :cond_38

    if-eqz v6, :cond_38

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_38

    .line 293
    invoke-direct {p0, v6}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 299
    :cond_3b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 300
    nop

    :goto_40
    if-ge v3, p2, :cond_52

    .line 301
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 303
    :cond_52
    iget-object p2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 306
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Landroid/util/ArrayMap;)V

    .line 307
    return-void
.end method

.method public addScannedPackageLPw(Landroid/content/pm/PackageParser$Package;)V
    .registers 5

    .line 221
    const-string v0, "Attempted to add null pkg to ksms."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 227
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    if-eqz v1, :cond_49

    .line 228
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 229
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    if-eqz v1, :cond_49

    .line 230
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/KeySetManagerService;->addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 233
    :cond_49
    return-void
.end method

.method addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 242
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    .line 244
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_19

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 249
    return-void

    .line 253
    :cond_19
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 258
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p2

    .line 259
    invoke-virtual {p2}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v0

    .line 260
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 261
    return-void
.end method

.method addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 318
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 319
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 321
    :cond_15
    return-void
.end method

.method public assertScannedPackageValid(Landroid/content/pm/PackageParser$Package;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 187
    const/4 v0, -0x2

    if-eqz p1, :cond_7e

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_7e

    .line 191
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 192
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_76

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 196
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 197
    if-eqz v1, :cond_5c

    .line 198
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 202
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 203
    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v3, :cond_5c

    .line 204
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_4c

    .line 205
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 206
    :cond_4c
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Package has null/no public keys for defined key-sets."

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 199
    :cond_54
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Package has null defined key set."

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 211
    :cond_5c
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 212
    if-eqz p1, :cond_75

    .line 213
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6d

    goto :goto_75

    .line 214
    :cond_6d
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 218
    :cond_75
    :goto_75
    return-void

    .line 193
    :cond_76
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Package has invalid signing-key-set."

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 188
    :cond_7e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Passed invalid package to keyset validation."

    invoke-direct {p1, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSettingBase;Landroid/content/pm/PackageParser$Package;)Z
    .registers 7

    .line 371
    iget-object p1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p1

    .line 372
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 373
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_1f

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 375
    const/4 p1, 0x1

    return p1

    .line 372
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 378
    :cond_22
    return v0
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 19

    .line 606
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 607
    move-object v2, p0

    iget-object v2, v2, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 608
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 609
    if-eqz v1, :cond_2c

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 610
    goto :goto_11

    .line 612
    :cond_2c
    const/4 v7, 0x1

    if-nez v4, :cond_3e

    .line 613
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 614
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 615
    :cond_38
    const-string v4, "Key Set Manager:"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    move v4, v7

    .line 618
    :cond_3e
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 619
    const-string v8, "  ["

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v6, :cond_12a

    .line 621
    nop

    .line 622
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v3

    :goto_65
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ", "

    if-eqz v9, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 623
    if-nez v8, :cond_7c

    .line 624
    const-string v8, "      KeySets Aliases: "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    move v8, v7

    goto :goto_7f

    .line 627
    :cond_7c
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    :goto_7f
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    const/16 v10, 0x3d

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 631
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    goto :goto_65

    .line 633
    :cond_9f
    const-string v6, ""

    if-eqz v8, :cond_a6

    .line 634
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    :cond_a6
    nop

    .line 637
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v8

    if-eqz v8, :cond_dd

    .line 638
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v8

    .line 639
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 640
    move v11, v3

    move v12, v11

    :goto_bb
    if-ge v11, v9, :cond_de

    .line 641
    if-nez v12, :cond_c6

    .line 642
    const-string v12, "      Defined KeySets: "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 643
    move v12, v7

    goto :goto_c9

    .line 645
    :cond_c6
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    :goto_c9
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    add-int/lit8 v11, v11, 0x1

    goto :goto_bb

    .line 637
    :cond_dd
    move v12, v3

    .line 650
    :cond_de
    if-eqz v12, :cond_e3

    .line 651
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    :cond_e3
    nop

    .line 654
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v8

    .line 655
    const-string v11, "      Signing KeySets: "

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v8

    if-eqz v8, :cond_124

    .line 659
    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v5

    array-length v8, v5

    move v9, v3

    move v11, v9

    :goto_10a
    if-ge v9, v8, :cond_125

    aget-wide v12, v5, v9

    .line 660
    if-nez v11, :cond_117

    .line 661
    const-string v11, "      Upgrade KeySets: "

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    move v11, v7

    goto :goto_11a

    .line 664
    :cond_117
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    :goto_11a
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    add-int/lit8 v9, v9, 0x1

    goto :goto_10a

    .line 658
    :cond_124
    move v11, v3

    .line 669
    :cond_125
    if-eqz v11, :cond_12a

    .line 670
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    :cond_12a
    goto/16 :goto_11

    .line 674
    :cond_12c
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 331
    if-eqz p1, :cond_41

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v0, :cond_f

    goto :goto_41

    .line 334
    :cond_f
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 335
    if-eqz p1, :cond_2a

    .line 338
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/KeySetHandle;

    return-object p1

    .line 336
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown KeySet alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_41
    :goto_41
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 390
    if-nez p1, :cond_c

    .line 391
    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_c
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 394
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 395
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_34

    .line 396
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 398
    :cond_34
    return-object p2
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 6

    .line 409
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 410
    if-eqz p1, :cond_2a

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 412
    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    goto :goto_2a

    .line 416
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/KeySetHandle;

    return-object p1

    .line 414
    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public isIdValidKeySetId(J)Z
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 7

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 159
    if-eqz p1, :cond_47

    .line 162
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 163
    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3f

    .line 167
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 168
    cmp-long p2, v0, v2

    if-nez p2, :cond_24

    .line 169
    const/4 p1, 0x0

    return p1

    .line 171
    :cond_24
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 172
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 173
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 165
    :cond_3f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Package has no KeySet data"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid package name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 7

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 133
    if-eqz p1, :cond_3d

    .line 136
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v0, :cond_35

    .line 139
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 140
    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1a

    .line 141
    const/4 p1, 0x0

    return p1

    .line 143
    :cond_1a
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 144
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 145
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 137
    :cond_35
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Package has no KeySet data"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid package name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 782
    const-wide/16 v1, 0x0

    .line 783
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_69

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 784
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_69

    .line 785
    :cond_16
    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c

    .line 786
    goto :goto_6

    .line 788
    :cond_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 789
    const-string v4, "keyset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "identifier"

    const/4 v6, 0x0

    if-eqz v4, :cond_49

    .line 790
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 792
    const/4 v3, 0x0

    .line 793
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v5, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v5, v1, v2, v3}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    invoke-virtual {v4, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 794
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 795
    :cond_48
    goto :goto_68

    :cond_49
    const-string v4, "key-id"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 796
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 797
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 798
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 800
    :goto_68
    goto :goto_6

    .line 801
    :cond_69
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    nop

    .line 725
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 726
    const/4 v1, 0x0

    const-string/jumbo v2, "version"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v2, :cond_3b

    .line 730
    :cond_11
    :goto_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    if-eq p2, v3, :cond_20

    if-ne p2, v4, :cond_11

    .line 731
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p2

    if-le p2, v0, :cond_20

    .line 732
    goto :goto_11

    .line 736
    :cond_20
    iget-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 737
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 738
    goto :goto_2a

    .line 739
    :cond_3a
    return-void

    .line 741
    :cond_3b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 742
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_97

    if-ne v2, v4, :cond_4c

    .line 743
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_97

    .line 744
    :cond_4c
    if-eq v2, v4, :cond_3e

    const/4 v5, 0x4

    if-ne v2, v5, :cond_52

    .line 745
    goto :goto_3e

    .line 747
    :cond_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 748
    const-string v5, "keys"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_96

    .line 750
    :cond_62
    const-string v5, "keysets"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_96

    .line 752
    :cond_6e
    const-string v5, "lastIssuedKeyId"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "value"

    if-eqz v5, :cond_84

    .line 753
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    goto :goto_96

    .line 754
    :cond_84
    const-string v5, "lastIssuedKeySetId"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 755
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 757
    :cond_96
    :goto_96
    goto :goto_3e

    .line 759
    :cond_97
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    .line 760
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 766
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 767
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2b

    .line 768
    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 769
    goto :goto_4

    .line 771
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 772
    const-string/jumbo v2, "public-key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 773
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 775
    :cond_2a
    goto :goto_4

    .line 776
    :cond_2b
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 805
    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 807
    nop

    .line 808
    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-static {p1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v7

    .line 810
    if-eqz v7, :cond_28

    .line 811
    new-instance p1, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$1;)V

    .line 812
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v9, v10, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 814
    :cond_28
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .registers 6

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    .line 582
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 583
    iget-object p1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p1

    .line 584
    const/4 v1, 0x0

    :goto_32
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 585
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 589
    :cond_48
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 590
    return-void
.end method

.method public shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSettingBase;I)Z
    .registers 7

    .line 348
    const/4 v0, 0x0

    if-eqz p1, :cond_5c

    and-int/lit16 p2, p2, 0x200

    if-nez p2, :cond_5c

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSettingBase;->isSharedUser()Z

    move-result p2

    if-nez p2, :cond_5c

    iget-object p2, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 349
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_5c

    .line 353
    :cond_16
    iget-object p2, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p2

    .line 354
    move v1, v0

    :goto_1d
    array-length v2, p2

    if-ge v1, v2, :cond_5a

    .line 355
    aget-wide v2, p2, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->isIdValidKeySetId(J)Z

    move-result v2

    if-nez v2, :cond_57

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    if-eqz v3, :cond_39

    iget-object p1, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    goto :goto_3b

    :cond_39
    const-string p1, "<null>"

    :goto_3b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains upgrade-key-set reference to unknown key-set: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p1, p2, v1

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reverting to signatures check."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    const-string p2, "KeySetManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v0

    .line 354
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 364
    :cond_5a
    const/4 p1, 0x1

    return p1

    .line 350
    :cond_5c
    :goto_5c
    return v0
.end method

.method writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    const-string v0, "keyset-settings"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 681
    const-string v2, "lastIssuedKeyId"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 683
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    const-string v2, "lastIssuedKeySetId"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    iget-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 686
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 687
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 688
    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    const-string v0, "keysets"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 706
    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 707
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 708
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 709
    const-string v6, "keyset"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "identifier"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 712
    const-string v5, "key-id"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    goto :goto_2f

    .line 716
    :cond_4f
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 718
    :cond_55
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    const-string v0, "keys"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 692
    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 693
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 694
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 695
    invoke-virtual {v5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/KeySetManagerService;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    .line 696
    const-string/jumbo v6, "public-key"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "identifier"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    const-string/jumbo v3, "value"

    invoke-interface {p1, v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 699
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 701
    :cond_40
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    return-void
.end method
