.class final Lcom/google/common/collect/LinkedHashMultimap$ValueSet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet<",
        "TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private modCount:I

.field private size:I

.field final synthetic this$0:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 312
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 320
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    .line 321
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 322
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    const-wide/high16 p1, 0x3ff0000000000000L  # 1.0

    .line 324
    invoke-static {p3, p1, p2}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result p1

    .line 327
    new-array p1, p1, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 328
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)I
    .registers 1

    .line 303
    iget p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return p0
.end method

.method private mask()I
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private rehashIfNecessary()V
    .registers 7

    .line 439
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/Hashing;->needsResizing(IID)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 442
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 443
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 444
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    :goto_1b
    if-eq v2, p0, :cond_2e

    .line 446
    move-object v3, v2

    check-cast v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 447
    iget v4, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    and-int/2addr v4, v1

    .line 448
    aget-object v5, v0, v4

    iput-object v5, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 449
    aput-object v3, v0, v4

    .line 445
    invoke-interface {v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v2

    goto :goto_1b

    :cond_2e
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 7
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 416
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 417
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 418
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_e
    if-eqz v3, :cond_1b

    .line 421
    invoke-virtual {v3, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p0, 0x0

    return p0

    .line 420
    :cond_18
    iget-object v3, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_e

    .line 426
    :cond_1b
    new-instance v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 427
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 428
    invoke-static {v3, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 429
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 430
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->this$0:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/common/collect/LinkedHashMultimap;->access$400(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 431
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v3, p1, v1

    .line 432
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 433
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    .line 434
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->rehashIfNecessary()V

    return v0
.end method

.method public clear()V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    :goto_b
    if-eq v0, p0, :cond_18

    .line 484
    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 485
    invoke-static {v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 483
    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_b

    .line 487
    :cond_18
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 488
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 404
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result p0

    and-int/2addr p0, v0

    aget-object p0, v1, p0

    :goto_d
    if-eqz p0, :cond_1a

    .line 407
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x1

    return p0

    .line 406
    :cond_17
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_d

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 337
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 342
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 357
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap$ValueSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 456
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 457
    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    .line 459
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_e
    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    if-eqz v3, :cond_3b

    .line 461
    invoke-virtual {v3, p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_38

    if-nez v2, :cond_22

    .line 464
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->hashTable:[Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iget-object v0, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    aput-object v0, p1, v1

    goto :goto_26

    .line 466
    :cond_22
    iget-object p1, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    iput-object p1, v2, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 468
    :goto_26
    invoke-static {v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V

    .line 469
    invoke-static {v3}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;)V

    .line 470
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    .line 471
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->modCount:I

    return v0

    .line 460
    :cond_38
    iget-object v2, v3, Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lcom/google/common/collect/LinkedHashMultimap$ValueEntry;

    goto :goto_e

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->lastEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->firstEntry:Lcom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public size()I
    .registers 1

    .line 399
    iget p0, p0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;->size:I

    return p0
.end method
