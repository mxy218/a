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

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1431
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 1432
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .registers 1

    .line 1357
    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 24

    .line 1496
    move-object v1, p0

    move/from16 v0, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v2

    if-ne v0, v2, :cond_24

    .line 1497
    iget-object v9, v1, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    return-void

    .line 1503
    :cond_24
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    .line 1504
    if-eqz v2, :cond_79

    .line 1507
    iget-object v3, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1508
    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_5b

    .line 1509
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1510
    iget-object v5, v6, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1511
    add-int/lit8 v8, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v6 .. v14}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1513
    return-void

    .line 1508
    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1518
    :cond_5b
    new-instance v5, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v5, v2}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1519
    iget-object v1, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v7, v0, 0x1

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v5 .. v13}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1522
    return-void

    .line 1505
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") used for observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .registers 14
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

    .line 1556
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1557
    if-nez p2, :cond_a

    const/4 p2, 0x0

    goto :goto_e

    :cond_a
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1558
    :goto_e
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_5c

    .line 1559
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1563
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p2, :cond_24

    const/4 v4, 0x1

    goto :goto_25

    :cond_24
    move v4, v1

    .line 1564
    :goto_25
    if-eqz v4, :cond_2a

    if-nez p3, :cond_2a

    .line 1565
    goto :goto_59

    .line 1569
    :cond_2a
    const/4 v5, -0x1

    if-eq p5, v5, :cond_39

    .line 1570
    invoke-static {v3}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$500(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v6

    if-eq v6, v5, :cond_39

    .line 1571
    invoke-static {v3}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->access$500(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v5

    if-ne p5, v5, :cond_59

    .line 1573
    :cond_39
    if-eqz p1, :cond_44

    .line 1577
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_49

    iget-boolean v5, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v5, :cond_49

    .line 1581
    goto :goto_59

    .line 1586
    :cond_44
    iget-boolean v5, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v5, :cond_49

    .line 1589
    goto :goto_59

    .line 1595
    :cond_49
    new-instance v5, Lcom/android/server/content/ContentService$ObserverCall;

    iget-object v6, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v3, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 1596
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v5, p0, v6, v4, v3}, Lcom/android/server/content/ContentService$ObserverCall;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZI)V

    .line 1595
    invoke-virtual {p6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1599
    :cond_5c
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .registers 2

    .line 1478
    if-nez p1, :cond_4

    .line 1479
    const/4 p1, 0x0

    return p1

    .line 1481
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 3

    .line 1466
    if-eqz p1, :cond_16

    .line 1467
    if-nez p2, :cond_9

    .line 1468
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1470
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1473
    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 17

    .line 1488
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

    .line 1490
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V
    .registers 26
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

    .line 1607
    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 1608
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    .line 1609
    if-lt v8, v0, :cond_1b

    .line 1612
    const/4 v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    goto :goto_32

    .line 1614
    :cond_1b
    if-ge v8, v0, :cond_32

    .line 1615
    invoke-direct/range {p0 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1619
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    goto :goto_33

    .line 1623
    :cond_32
    :goto_32
    const/4 v9, 0x0

    :goto_33
    iget-object v0, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1624
    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v0, :cond_66

    .line 1625
    iget-object v2, v7, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1626
    if-eqz v9, :cond_4f

    iget-object v2, v10, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1628
    :cond_4f
    add-int/lit8 v12, v8, 0x1

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p7

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 1630
    if-eqz v9, :cond_63

    .line 1631
    goto :goto_66

    .line 1624
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1635
    :cond_66
    :goto_66
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 26

    .line 1436
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1437
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "/"

    const-string v4, ""

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v2, :cond_57

    .line 1438
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1439
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_2f

    .line 1441
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1443
    :goto_2f
    move v5, v9

    :goto_30
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_58

    .line 1444
    aget v6, p6, v10

    add-int/2addr v6, v10

    aput v6, p6, v10

    .line 1445
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

    .line 1443
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1437
    :cond_57
    const/4 v2, 0x0

    .line 1449
    :cond_58
    iget-object v5, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ac

    .line 1450
    if-nez v2, :cond_82

    .line 1451
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1452
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    move-object v11, v1

    goto :goto_83

    .line 1454
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_83

    .line 1450
    :cond_82
    move-object v11, v2

    .line 1457
    :goto_83
    move v12, v9

    :goto_84
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_ac

    .line 1458
    aget v1, p6, v9

    add-int/2addr v1, v10

    aput v1, p6, v9

    .line 1459
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 1457
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    .line 1463
    :cond_ac
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 9

    .line 1525
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1526
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_9
    const/4 v3, 0x1

    if-ge v0, v2, :cond_25

    .line 1527
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v4

    .line 1528
    if-eqz v4, :cond_23

    .line 1529
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1530
    add-int/lit8 v0, v0, -0x1

    .line 1531
    add-int/lit8 v2, v2, -0x1

    .line 1526
    :cond_23
    add-int/2addr v0, v3

    goto :goto_9

    .line 1535
    :cond_25
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1536
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1537
    move v4, v1

    :goto_30
    if-ge v4, v2, :cond_52

    .line 1538
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1539
    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_4f

    .line 1540
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1542
    invoke-static {}, Lcom/android/server/content/ContentService;->access$300()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/os/BinderDeathDispatcher;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 1543
    goto :goto_52

    .line 1537
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1547
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_63

    iget-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_63

    .line 1548
    return v3

    .line 1550
    :cond_63
    return v1
.end method
