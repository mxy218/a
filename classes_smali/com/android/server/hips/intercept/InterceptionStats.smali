.class public Lcom/android/server/hips/intercept/InterceptionStats;
.super Ljava/lang/Object;
.source "InterceptionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;,
        Lcom/android/server/hips/intercept/InterceptionStats$SortByRefercence;,
        Lcom/android/server/hips/intercept/InterceptionStats$SortByCallee;
    }
.end annotation


# static fields
.field private static final MAX_SING_TIME_CACHE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "InterceptionStats"


# instance fields
.field CalleeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mBgAction:I

.field public mCallee3Party:I

.field public mCalleeSystem:I

.field public mCaller3Party:I

.field public mCallerSystem:I

.field public mFgAction:I

.field public mIntercept:I

.field public mListSingleBrTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMapCallee:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMapCalleeDetail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mMapCaller:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMapCallerDetail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public mMapInterceptReason:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMapTotalBrTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMapUnfreezeReason:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStartProcess:I

.field public mType:I

.field public mUnfreeze:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"  # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCaller:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallee:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapInterceptReason:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapUnfreezeReason:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallerDetail:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCalleeDetail:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapTotalBrTime:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionStats$1;

    invoke-direct {v0, p0}, Lcom/android/server/hips/intercept/InterceptionStats$1;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;)V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->valueComparator:Ljava/util/Comparator;

    .line 228
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionStats$2;

    invoke-direct {v0, p0}, Lcom/android/server/hips/intercept/InterceptionStats$2;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;)V

    iput-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->CalleeComparator:Ljava/util/Comparator;

    .line 59
    iput p1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mType:I

    .line 60
    return-void
.end method

.method private dumpBroadcastSingleRank(Ljava/io/PrintWriter;Ljava/util/ArrayList;I)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p3, "top"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;I)V"
        }
    .end annotation

    .line 341
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    const/4 v0, 0x0

    .line 342
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 343
    .local v2, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    .line 345
    if-le v0, p3, :cond_40

    .line 346
    goto :goto_41

    .line 348
    .end local v2  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    :cond_40
    goto :goto_7

    .line 349
    :cond_41
    :goto_41
    return-void
.end method

.method private dumpDetail(Ljava/io/PrintWriter;Ljava/util/HashMap;Ljava/lang/String;I)V
    .registers 15
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "top"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 380
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    if-eqz v0, :cond_71

    .line 381
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 382
    .local v0, "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/hips/intercept/InterceptionStats;->orderMap2(Ljava/util/HashMap;)Ljava/util/List;

    .line 383
    if-eqz v0, :cond_71

    .line 384
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "key2":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 386
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    new-instance v4, Lcom/android/server/hips/intercept/InterceptionStats$SortByRefercence;

    invoke-direct {v4, p0}, Lcom/android/server/hips/intercept/InterceptionStats$SortByRefercence;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 387
    const/4 v4, 0x0

    .line 388
    .local v4, "index":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 389
    .local v6, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mDetail:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    add-int/lit8 v4, v4, 0x1

    .line 391
    if-le v4, p4, :cond_6f

    .line 392
    goto :goto_70

    .line 394
    .end local v6  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    :cond_6f
    goto :goto_36

    .line 395
    .end local v2  # "key2":Ljava/lang/String;
    .end local v3  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    .end local v4  # "index":I
    :cond_70
    :goto_70
    goto :goto_17

    .line 398
    .end local v0  # "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    :cond_71
    return-void
.end method

.method private dumpDetailOrdered(Ljava/io/PrintWriter;Ljava/util/HashMap;Ljava/lang/String;I)V
    .registers 19
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "top"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 402
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    move-object v0, p0

    move-object v1, p1

    sget-boolean v2, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    if-eqz v2, :cond_d2

    .line 403
    invoke-virtual/range {p2 .. p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 404
    .local v2, "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    if-eqz v2, :cond_cf

    .line 405
    invoke-virtual {p0, v2}, Lcom/android/server/hips/intercept/InterceptionStats;->orderMap2(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v3

    .line 406
    .local v3, "listSubEntry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 407
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 408
    .local v6, "key2":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 409
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    new-instance v8, Lcom/android/server/hips/intercept/InterceptionStats$SortByRefercence;

    invoke-direct {v8, p0}, Lcom/android/server/hips/intercept/InterceptionStats$SortByRefercence;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 410
    const/4 v8, 0x0

    .line 411
    .local v8, "index":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 412
    .local v10, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    if-nez v8, :cond_83

    .line 413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  Total: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/hips/intercept/InterceptionStats;->getTotalReference(Ljava/util/ArrayList;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " Bg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0, v7}, Lcom/android/server/hips/intercept/InterceptionStats;->getTotalBgReference(Ljava/util/ArrayList;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " Intercept:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/hips/intercept/InterceptionStats;->getTotalInterceptReference(Ljava/util/ArrayList;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 413
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    :cond_83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mBgRefence:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mIntercept:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    add-int/lit8 v8, v8, 0x1

    .line 419
    move/from16 v11, p4

    if-le v8, v11, :cond_c6

    .line 420
    goto :goto_ca

    .line 422
    .end local v10  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    :cond_c6
    goto/16 :goto_3b

    .line 411
    :cond_c8
    move/from16 v11, p4

    .line 423
    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    .end local v6  # "key2":Ljava/lang/String;
    .end local v7  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    .end local v8  # "index":I
    :goto_ca
    goto/16 :goto_16

    .line 406
    :cond_cc
    move/from16 v11, p4

    goto :goto_d4

    .line 404
    .end local v3  # "listSubEntry":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    :cond_cf
    move/from16 v11, p4

    goto :goto_d4

    .line 402
    .end local v2  # "subMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    :cond_d2
    move/from16 v11, p4

    .line 426
    :goto_d4
    return-void
.end method

.method private updateCalleeDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V
    .registers 20
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "detail"  # Ljava/lang/String;
    .param p4, "time"  # J
    .param p6, "ref"  # I
    .param p7, "bg"  # I
    .param p8, "intercept"  # I

    .line 250
    move-object v10, p0

    iget-object v1, v10, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCalleeDetail:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/hips/intercept/InterceptionStats;->updateMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 251
    return-void
.end method

.method private updateCallerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V
    .registers 20
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "detail"  # Ljava/lang/String;
    .param p4, "time"  # J
    .param p6, "ref"  # I
    .param p7, "bg"  # I
    .param p8, "intercept"  # I

    .line 246
    move-object v10, p0

    iget-object v1, v10, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallerDetail:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/hips/intercept/InterceptionStats;->updateMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 247
    return-void
.end method

.method private updateMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V
    .registers 28
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "key2"  # Ljava/lang/String;
    .param p4, "detail"  # Ljava/lang/String;
    .param p5, "time"  # J
    .param p7, "ref"  # I
    .param p8, "bg"  # I
    .param p9, "intercept"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIII)V"
        }
    .end annotation

    .line 255
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, ""

    if-nez v1, :cond_e

    .line 256
    const-string/jumbo v1, "null"

    .end local p2  # "key":Ljava/lang/String;
    .local v1, "key":Ljava/lang/String;
    goto :goto_17

    .line 257
    .end local v1  # "key":Ljava/lang/String;
    .restart local p2  # "key":Ljava/lang/String;
    :cond_e
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 258
    const-string/jumbo v1, "unknown"

    .line 260
    .end local p2  # "key":Ljava/lang/String;
    .restart local v1  # "key":Ljava/lang/String;
    :cond_17
    :goto_17
    if-nez v2, :cond_1c

    .line 261
    const-string/jumbo v1, "null"

    .line 262
    :cond_1c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 263
    const-string/jumbo v2, "unknown"

    .line 265
    .end local p3  # "key2":Ljava/lang/String;
    .local v2, "key2":Ljava/lang/String;
    :cond_25
    if-nez p4, :cond_2b

    .line 266
    const-string/jumbo v3, "unknown"

    .end local p4  # "detail":Ljava/lang/String;
    .local v3, "detail":Ljava/lang/String;
    goto :goto_2d

    .line 265
    .end local v3  # "detail":Ljava/lang/String;
    .restart local p4  # "detail":Ljava/lang/String;
    :cond_2b
    move-object/from16 v3, p4

    .line 268
    .end local p4  # "detail":Ljava/lang/String;
    .restart local v3  # "detail":Ljava/lang/String;
    :goto_2d
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 269
    .local v14, "mapSub":Ljava/lang/Object;
    if-eqz v14, :cond_bd

    .line 270
    move-object v4, v14

    check-cast v4, Ljava/util/HashMap;

    .line 271
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/util/ArrayList;

    .line 272
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    if-eqz v15, :cond_90

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "isFound":Z
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v16, v4

    .end local v4  # "isFound":Z
    .local v16, "isFound":Z
    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 276
    .local v4, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    iget-object v6, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mDetail:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 277
    const/4 v6, 0x1

    .line 278
    .end local v16  # "isFound":Z
    .local v6, "isFound":Z
    iget-wide v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    add-long v7, v7, p5

    iput-wide v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    .line 279
    iget v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    add-int v7, v7, p7

    iput v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    .line 280
    iget v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mBgRefence:I

    add-int v7, v7, p8

    iput v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mBgRefence:I

    .line 281
    iget v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mIntercept:I

    add-int v7, v7, p9

    iput v7, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mIntercept:I

    move/from16 v16, v6

    .line 283
    .end local v4  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    .end local v6  # "isFound":Z
    .restart local v16  # "isFound":Z
    :cond_75
    goto :goto_46

    .line 284
    :cond_76
    if-nez v16, :cond_8f

    .line 285
    new-instance v17, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 286
    .local v4, "infoNew":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v4  # "infoNew":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    .end local v16  # "isFound":Z
    :cond_8f
    goto :goto_bc

    .line 290
    :cond_90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v4

    .line 291
    .local v13, "listNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    new-instance v16, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    move-object/from16 v4, v16

    move-object/from16 v5, p0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 p2, v15

    move-object v15, v13

    .end local v13  # "listNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    .local v15, "listNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 292
    .local v4, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    move-object v5, v14

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object v5, v14

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .end local v4  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    .end local v15  # "listNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    .end local p2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    :goto_bc
    goto :goto_ec

    .line 298
    :cond_bd
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v14, v4

    .line 299
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v4

    .line 300
    .restart local v15  # "listNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    new-instance v16, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    move-object/from16 v4, v16

    move-object/from16 v5, p0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 301
    .restart local v4  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    move-object v5, v14

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-object v5, v14

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v4  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    .end local v15  # "listNew":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    :goto_ec
    return-void
.end method

.method private updateSingleTimeRank(Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;)I
    .registers 11
    .param p1, "info"  # Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 153
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 154
    .local v0, "size":I
    const/4 v1, 0x0

    .line 155
    .local v1, "index":I
    if-nez v0, :cond_15

    .line 156
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 160
    :cond_15
    const/4 v2, 0x0

    .line 161
    .local v2, "added":Z
    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 162
    .local v4, "br":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    iget-wide v5, v4, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    iget-wide v7, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_37

    .line 163
    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 164
    const/4 v2, 0x1

    .line 165
    goto :goto_3b

    .line 167
    :cond_37
    nop

    .end local v4  # "br":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_1c

    .line 169
    :cond_3b
    :goto_3b
    if-nez v2, :cond_42

    .line 170
    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 173
    :cond_42
    const/16 v3, 0x32

    if-le v0, v3, :cond_4b

    .line 174
    iget-object v4, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    :cond_4b
    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3
.end method

.method private updateTotalTimeRank(Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;)V
    .registers 7
    .param p1, "info"  # Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 180
    iget-object v0, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 181
    const-string/jumbo v0, "null"

    iput-object v0, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapTotalBrTime:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    .local v0, "object":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 186
    .local v1, "mmTime":I
    if-eqz v0, :cond_1f

    .line 187
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v3, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    long-to-int v3, v3

    add-int/2addr v2, v3

    .end local v1  # "mmTime":I
    .local v2, "mmTime":I
    goto :goto_22

    .line 189
    .end local v2  # "mmTime":I
    .restart local v1  # "mmTime":I
    :cond_1f
    iget-wide v2, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mSpendTime:J

    long-to-int v2, v2

    .line 191
    .end local v1  # "mmTime":I
    .restart local v2  # "mmTime":I
    :goto_22
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapTotalBrTime:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mCalleePkg:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 308
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    aget-object v0, p2, v1

    const-string/jumbo v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 309
    invoke-virtual {p0}, Lcom/android/server/hips/intercept/InterceptionStats;->reset()V

    .line 310
    return-void

    .line 312
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmFgAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mFgAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmBgAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mBgAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCallerSystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCallerSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCaller3Party:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCaller3Party:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCalleeSystem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCalleeSystem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmCallee3Party:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCallee3Party:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmIntercept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmUnfreeze:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mUnfreeze:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tmStartProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mStartProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    const-string v0, "\n    Caller package rank:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCaller:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallerDetail:Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/hips/intercept/InterceptionStats;->dumpMap(Ljava/io/PrintWriter;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    .line 324
    const-string v0, "\n    Callee package rank:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallee:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCalleeDetail:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/hips/intercept/InterceptionStats;->dumpMap(Ljava/io/PrintWriter;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    .line 331
    iget v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10e

    .line 332
    const-string v0, "\n    Callee package spend total time rank:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapTotalBrTime:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/hips/intercept/InterceptionStats;->dumpMap(Ljava/io/PrintWriter;Ljava/util/HashMap;I)V

    .line 334
    const-string v0, "\n    Callee package spend single time rank:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hips/intercept/InterceptionStats;->dumpBroadcastSingleRank(Ljava/io/PrintWriter;Ljava/util/ArrayList;I)V

    .line 338
    :cond_10e
    return-void
.end method

.method public dumpMap(Ljava/io/PrintWriter;Ljava/util/HashMap;I)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p3, "top"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 352
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/InterceptionStats;->orderMap(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .line 354
    .local v1, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 355
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 357
    if-le v1, p3, :cond_40

    .line 358
    goto :goto_41

    .line 360
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_40
    goto :goto_9

    .line 361
    :cond_41
    :goto_41
    return-void
.end method

.method public dumpMap(Ljava/io/PrintWriter;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p4, "top"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;I)V"
        }
    .end annotation

    .line 365
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "mapDetail":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/InterceptionStats;->orderMap(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .line 367
    .local v1, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 368
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x5

    invoke-direct {p0, p1, p3, v4, v5}, Lcom/android/server/hips/intercept/InterceptionStats;->dumpDetailOrdered(Ljava/io/PrintWriter;Ljava/util/HashMap;Ljava/lang/String;I)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    .line 372
    if-le v1, p4, :cond_4a

    .line 373
    goto :goto_4b

    .line 375
    .end local v3  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4a
    goto :goto_9

    .line 376
    :cond_4b
    :goto_4b
    return-void
.end method

.method public getTotalBgReference(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;)I"
        }
    .end annotation

    .line 436
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    const/4 v0, 0x0

    .line 437
    .local v0, "total":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 438
    .local v2, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    iget v3, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mBgRefence:I

    add-int/2addr v0, v3

    .line 439
    .end local v2  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    goto :goto_5

    .line 440
    :cond_15
    return v0
.end method

.method public getTotalInterceptReference(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;)I"
        }
    .end annotation

    .line 443
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    const/4 v0, 0x0

    .line 444
    .local v0, "total":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 445
    .local v2, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    iget v3, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mIntercept:I

    add-int/2addr v0, v3

    .line 446
    .end local v2  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    goto :goto_5

    .line 447
    :cond_15
    return v0
.end method

.method public getTotalReference(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;)I"
        }
    .end annotation

    .line 429
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    const/4 v0, 0x0

    .line 430
    .local v0, "total":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 431
    .local v2, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    iget v3, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    add-int/2addr v0, v3

    .line 432
    .end local v2  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    goto :goto_5

    .line 433
    :cond_15
    return v0
.end method

.method public orderMap(Ljava/util/HashMap;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 211
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    return-object v0
.end method

.method public orderMap2(Ljava/util/HashMap;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 220
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;>;"
    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionStats;->CalleeComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    return-object v0
.end method

.method public reset()V
    .registers 7

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mFgAction:I

    .line 501
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mBgAction:I

    .line 502
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCallerSystem:I

    .line 503
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCaller3Party:I

    .line 504
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCalleeSystem:I

    .line 505
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mCallee3Party:I

    .line 506
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mIntercept:I

    .line 507
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mUnfreeze:I

    .line 508
    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mStartProcess:I

    .line 510
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCaller:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 511
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallee:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 512
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapInterceptReason:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 513
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapUnfreezeReason:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapTotalBrTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 516
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mListSingleBrTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 518
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    if-eqz v0, :cond_bf

    .line 519
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallerDetail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 520
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallerDetail:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 521
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 522
    .local v4, "key2":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 523
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 524
    .end local v4  # "key2":Ljava/lang/String;
    .end local v5  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    goto :goto_5b

    .line 525
    :cond_71
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 526
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    goto :goto_3f

    .line 527
    :cond_75
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallerDetail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 529
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCalleeDetail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    .restart local v1  # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCalleeDetail:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 531
    .restart local v2  # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 532
    .restart local v4  # "key2":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 533
    .restart local v5  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 534
    .end local v4  # "key2":Ljava/lang/String;
    .end local v5  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;"
    goto :goto_a0

    .line 535
    :cond_b6
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 536
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    goto :goto_84

    .line 537
    :cond_ba
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCalleeDetail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 539
    :cond_bf
    return-void
.end method

.method public updateReceiverTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 18
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "detail"  # Ljava/lang/String;
    .param p4, "spendTime"  # J
    .param p6, "ref"  # I

    .line 141
    move-object v9, p0

    new-instance v8, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;-><init>(Lcom/android/server/hips/intercept/InterceptionStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    move-object v10, v8

    .line 142
    .local v10, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    invoke-direct {p0, v10}, Lcom/android/server/hips/intercept/InterceptionStats;->updateSingleTimeRank(Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;)I

    .line 143
    invoke-direct {p0, v10}, Lcom/android/server/hips/intercept/InterceptionStats;->updateTotalTimeRank(Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;)V

    .line 146
    sget-boolean v0, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    if-eqz v0, :cond_28

    .line 147
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/hips/intercept/InterceptionStats;->updateCallerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 148
    invoke-direct/range {v0 .. v8}, Lcom/android/server/hips/intercept/InterceptionStats;->updateCalleeDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 150
    :cond_28
    return-void
.end method

.method public updateStats(ZZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)V
    .registers 29
    .param p1, "isFgAction"  # Z
    .param p2, "isCallerSystem"  # Z
    .param p3, "isCalleeSystem"  # Z
    .param p4, "isIntercept"  # Z
    .param p5, "interceptReason"  # Ljava/lang/String;
    .param p6, "isUnfreeze"  # Z
    .param p7, "unFreezeReason"  # Ljava/lang/String;
    .param p8, "callerPkg"  # Ljava/lang/String;
    .param p9, "calleePkg"  # Ljava/lang/String;
    .param p10, "isNeedStart"  # Z
    .param p11, "parcel"  # Landroid/os/Parcelable;

    .line 69
    move-object/from16 v9, p0

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 70
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mFgAction:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mFgAction:I

    .line 71
    const/4 v1, 0x0

    move v10, v1

    .local v1, "bg":I
    goto :goto_14

    .line 73
    .end local v1  # "bg":I
    :cond_d
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mBgAction:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mBgAction:I

    .line 74
    const/4 v1, 0x1

    move v10, v1

    .line 76
    .local v10, "bg":I
    :goto_14
    if-eqz p2, :cond_1c

    .line 77
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCallerSystem:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCallerSystem:I

    goto :goto_21

    .line 79
    :cond_1c
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCaller3Party:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCaller3Party:I

    .line 81
    :goto_21
    if-eqz p3, :cond_29

    .line 82
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCalleeSystem:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCalleeSystem:I

    goto :goto_2e

    .line 84
    :cond_29
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCallee3Party:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mCallee3Party:I

    .line 86
    :goto_2e
    if-eqz p4, :cond_35

    .line 87
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mIntercept:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mIntercept:I

    .line 89
    :cond_35
    if-eqz p6, :cond_3c

    .line 90
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mUnfreeze:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mUnfreeze:I

    .line 92
    :cond_3c
    if-eqz p10, :cond_43

    .line 93
    iget v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mStartProcess:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mStartProcess:I

    .line 96
    :cond_43
    iget-object v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCaller:Ljava/util/HashMap;

    move-object/from16 v11, p8

    invoke-static {v1, v11}, Lcom/android/server/hips/utils/HipsUtils;->updateMap(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 97
    iget-object v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mMapCallee:Ljava/util/HashMap;

    move-object/from16 v12, p9

    invoke-static {v1, v12}, Lcom/android/server/hips/utils/HipsUtils;->updateMap(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 98
    iget-object v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mMapInterceptReason:Ljava/util/HashMap;

    move-object/from16 v13, p5

    invoke-static {v1, v13}, Lcom/android/server/hips/utils/HipsUtils;->updateMap(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 99
    iget-object v1, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mMapUnfreezeReason:Ljava/util/HashMap;

    move-object/from16 v14, p7

    invoke-static {v1, v14}, Lcom/android/server/hips/utils/HipsUtils;->updateMap(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 101
    sget-boolean v1, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_DETAIL_ENABLE:Z

    if-eqz v1, :cond_cd

    .line 103
    const-string/jumbo v1, "null"

    .line 104
    .local v1, "detail":Ljava/lang/String;
    if-eqz p11, :cond_b0

    .line 105
    iget v2, v9, Lcom/android/server/hips/intercept/InterceptionStats;->mType:I

    if-eq v2, v0, :cond_94

    const/4 v0, 0x2

    if-eq v2, v0, :cond_8a

    const/4 v0, 0x3

    if-eq v2, v0, :cond_76

    const/4 v0, 0x4

    if-eq v2, v0, :cond_94

    goto :goto_b0

    .line 110
    :cond_76
    move-object/from16 v0, p11

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 111
    move-object/from16 v0, p11

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v1  # "detail":Ljava/lang/String;
    .local v0, "detail":Ljava/lang/String;
    goto :goto_b1

    .line 107
    .end local v0  # "detail":Ljava/lang/String;
    .restart local v1  # "detail":Ljava/lang/String;
    :cond_8a
    move-object/from16 v0, p11

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v1  # "detail":Ljava/lang/String;
    .restart local v0  # "detail":Ljava/lang/String;
    move-object v15, v0

    goto :goto_b1

    .line 116
    .end local v0  # "detail":Ljava/lang/String;
    .restart local v1  # "detail":Ljava/lang/String;
    :cond_94
    move-object/from16 v0, p11

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 117
    move-object/from16 v0, p11

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .end local v1  # "detail":Ljava/lang/String;
    .restart local v0  # "detail":Ljava/lang/String;
    goto :goto_b1

    .line 125
    .end local v0  # "detail":Ljava/lang/String;
    .restart local v1  # "detail":Ljava/lang/String;
    :cond_b0
    :goto_b0
    move-object v15, v1

    .end local v1  # "detail":Ljava/lang/String;
    .local v15, "detail":Ljava/lang/String;
    :goto_b1
    const/4 v0, 0x0

    .line 126
    .local v0, "intercept":I
    if-eqz p4, :cond_b8

    .line 127
    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_ba

    .line 126
    :cond_b8
    move/from16 v16, v0

    .line 129
    .end local v0  # "intercept":I
    .local v16, "intercept":I
    :goto_ba
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object v3, v15

    move v7, v10

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/server/hips/intercept/InterceptionStats;->updateCallerDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 130
    invoke-direct/range {v0 .. v8}, Lcom/android/server/hips/intercept/InterceptionStats;->updateCalleeDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIII)V

    .line 132
    .end local v15  # "detail":Ljava/lang/String;
    .end local v16  # "intercept":I
    :cond_cd
    return-void
.end method

.method public updateUnfreezeStats(Z)V
    .registers 3
    .param p1, "isUnfreeze"  # Z

    .line 135
    if-eqz p1, :cond_8

    .line 136
    iget v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mUnfreeze:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/hips/intercept/InterceptionStats;->mUnfreeze:I

    .line 138
    :cond_8
    return-void
.end method
