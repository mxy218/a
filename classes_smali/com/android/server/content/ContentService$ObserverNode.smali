.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1436
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 1437
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/content/ContentService$ObserverNode;

    .line 1362
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 29
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "index"  # I
    .param p3, "observer"  # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"  # Z
    .param p5, "observersLock"  # Ljava/lang/Object;
    .param p6, "uid"  # I
    .param p7, "pid"  # I
    .param p8, "userHandle"  # I

    .line 1501
    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne v10, v0, :cond_26

    .line 1502
    iget-object v11, v9, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    return-void

    .line 1508
    :cond_26
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "segment":Ljava/lang/String;
    if-eqz v0, :cond_7c

    .line 1512
    iget-object v1, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1513
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_5d

    .line 1514
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1515
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1516
    add-int/lit8 v13, v10, 0x1

    move-object v11, v3

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1518
    return-void

    .line 1513
    .end local v3  # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1523
    .end local v2  # "i":I
    :cond_5d
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v2, v0}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    add-int/lit8 v13, v10, 0x1

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1527
    return-void

    .line 1510
    .end local v1  # "N":I
    .end local v2  # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_7c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") used for observer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .registers 15
    .param p1, "leaf"  # Z
    .param p2, "observer"  # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"  # Z
    .param p4, "flags"  # I
    .param p5, "targetUserHandle"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .line 1561
    .local p6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1562
    .local v0, "N":I
    if-nez p2, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1563
    .local v1, "observerBinder":Landroid/os/IBinder;
    :goto_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_5b

    .line 1564
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1568
    .local v3, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v1, :cond_23

    const/4 v4, 0x1

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    .line 1569
    .local v4, "selfChange":Z
    :goto_24
    if-eqz v4, :cond_29

    if-nez p3, :cond_29

    .line 1570
    goto :goto_58

    .line 1574
    :cond_29
    const/4 v5, -0x1

    if-eq p5, v5, :cond_38

    .line 1575
    invoke-static {v3}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$500(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v6

    if-eq v6, v5, :cond_38

    .line 1576
    invoke-static {v3}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$500(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v5

    if-ne p5, v5, :cond_58

    .line 1578
    :cond_38
    if-eqz p1, :cond_43

    .line 1582
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_48

    iget-boolean v5, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v5, :cond_48

    .line 1586
    goto :goto_58

    .line 1591
    :cond_43
    iget-boolean v5, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v5, :cond_48

    .line 1594
    goto :goto_58

    .line 1600
    :cond_48
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v6, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v7, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1601
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v5, p0, v6, v4, v7}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZI)V

    .line 1600
    invoke-virtual {p6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    .end local v3  # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v4  # "selfChange":Z
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1604
    .end local v2  # "i":I
    :cond_5b
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .registers 3
    .param p1, "uri"  # Landroid/net/Uri;

    .line 1483
    if-nez p1, :cond_4

    .line 1484
    const/4 v0, 0x0

    return v0

    .line 1486
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 5
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "index"  # I

    .line 1471
    if-eqz p1, :cond_16

    .line 1472
    if-nez p2, :cond_9

    .line 1473
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1475
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1478
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 17
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "observer"  # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"  # Z
    .param p4, "observersLock"  # Ljava/lang/Object;
    .param p5, "uid"  # I
    .param p6, "pid"  # I
    .param p7, "userHandle"  # I

    .line 1493
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1495
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .registers 27
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "index"  # I
    .param p3, "observer"  # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"  # Z
    .param p5, "flags"  # I
    .param p6, "targetUserHandle"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "ZII",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .line 1612
    .local p7, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move-object/from16 v7, p0

    move/from16 v8, p2

    const/4 v9, 0x0

    .line 1613
    .local v9, "segment":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v10

    .line 1614
    .local v10, "segmentCount":I
    if-lt v8, v10, :cond_1c

    .line 1617
    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    goto :goto_32

    .line 1619
    :cond_1c
    if-ge v8, v10, :cond_32

    .line 1620
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1624
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1628
    :cond_32
    :goto_32
    iget-object v0, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1629
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    if-ge v1, v0, :cond_65

    .line 1630
    iget-object v2, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1631
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v9, :cond_4d

    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1633
    :cond_4d
    add-int/lit8 v13, v8, 0x1

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1635
    if-eqz v9, :cond_62

    .line 1636
    goto :goto_65

    .line 1629
    .end local v2  # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1640
    .end local v1  # "i":I
    :cond_65
    :goto_65
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 26
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "prefix"  # Ljava/lang/String;
    .param p6, "counts"  # [I
    .param p7, "pidCounts"  # Landroid/util/SparseIntArray;

    .line 1441
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 1442
    .local v2, "innerName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "/"

    const-string v5, ""

    const/4 v10, 0x1

    if-lez v3, :cond_57

    .line 1443
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1444
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_2f

    .line 1446
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1448
    :goto_2f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_57

    .line 1449
    aget v6, p6, v10

    add-int/2addr v6, v10

    aput v6, p6, v10

    .line 1450
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v2

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1448
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 1454
    .end local v3  # "i":I
    :cond_57
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ad

    .line 1455
    if-nez v2, :cond_81

    .line 1456
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1457
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    move-object v11, v2

    goto :goto_82

    .line 1459
    :cond_6b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_82

    .line 1455
    :cond_81
    move-object v11, v2

    .line 1462
    .end local v2  # "innerName":Ljava/lang/String;
    .local v11, "innerName":Ljava/lang/String;
    :goto_82
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_84
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_ae

    .line 1463
    const/4 v2, 0x0

    aget v3, p6, v2

    add-int/2addr v3, v10

    aput v3, p6, v2

    .line 1464
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 1462
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    .line 1454
    .end local v11  # "innerName":Ljava/lang/String;
    .end local v12  # "i":I
    .restart local v2  # "innerName":Ljava/lang/String;
    :cond_ad
    move-object v11, v2

    .line 1468
    .end local v2  # "innerName":Ljava/lang/String;
    .restart local v11  # "innerName":Ljava/lang/String;
    :cond_ae
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 8
    .param p1, "observer"  # Landroid/database/IContentObserver;

    .line 1530
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1531
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x1

    if-ge v1, v0, :cond_23

    .line 1532
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v3, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v3

    .line 1533
    .local v3, "empty":Z
    if-eqz v3, :cond_21

    .line 1534
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1535
    add-int/lit8 v1, v1, -0x1

    .line 1536
    add-int/lit8 v0, v0, -0x1

    .line 1531
    .end local v3  # "empty":Z
    :cond_21
    add-int/2addr v1, v2

    goto :goto_7

    .line 1540
    .end local v1  # "i":I
    :cond_23
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1541
    .local v1, "observerBinder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1542
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v0, :cond_50

    .line 1543
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1544
    .local v4, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_4d

    .line 1545
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1547
    invoke-static {}, Lcom/android/server/content/ContentService;->access$300()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/internal/os/BinderDeathDispatcher;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 1548
    goto :goto_50

    .line 1542
    .end local v4  # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1552
    .end local v3  # "i":I
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_61

    .line 1553
    return v2

    .line 1555
    :cond_61
    const/4 v2, 0x0

    return v2
.end method
