.class public Lcom/meizu/settings/search/DatabaseIndexingManager;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;,
        Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;,
        Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/search/DatabaseIndexingManager;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    new-instance v0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    invoke-direct {v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    .line 148
    iput-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mBaseAuthority:Ljava/lang/String;

    return-void
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 21

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 588
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot add index data for Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseIndexingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 596
    :cond_2c
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ae

    .line 598
    :goto_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    const/4 v0, 0x0

    .line 599
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    const/4 v0, 0x1

    .line 601
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 602
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 603
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 604
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 605
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 607
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    .line 609
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    .line 610
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v9, 0x9

    .line 612
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    .line 613
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb

    .line 615
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc

    .line 618
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xd

    .line 619
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 621
    new-instance v14, Lcom/meizu/settings/search/SearchIndexableRaw;

    move-object/from16 v15, p1

    invoke-direct {v14, v15}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 622
    iput-object v0, v14, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 623
    iput-object v2, v14, Lcom/meizu/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 624
    iput-object v3, v14, Lcom/meizu/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 625
    iput-object v4, v14, Lcom/meizu/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 626
    iput-object v5, v14, Lcom/meizu/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 627
    iput-object v6, v14, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 628
    iput-object v7, v14, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    move-object/from16 v0, p2

    .line 629
    iput-object v0, v14, Landroid/provider/SearchIndexableData;->packageName:Ljava/lang/String;

    .line 630
    iput v8, v14, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 631
    iput-object v9, v14, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 632
    iput-object v10, v14, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 633
    iput-object v11, v14, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 634
    iput-object v12, v14, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 635
    iput v13, v14, Landroid/provider/SearchIndexableData;->userId:I

    move-object/from16 v2, p0

    .line 637
    invoke-virtual {v2, v14}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_ad
    .catchall {:try_start_2c .. :try_end_ad} :catchall_b2

    goto :goto_32

    .line 641
    :cond_ae
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_b2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 11

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p4

    .line 545
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    if-nez p4, :cond_2a

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot add index data for Uri: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseIndexingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 553
    :cond_2a
    :try_start_2a
    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_6b

    .line 555
    :goto_30
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_6b

    const/4 p3, 0x1

    .line 556
    invoke-interface {p4, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x2

    .line 558
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 559
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    .line 561
    invoke-interface {p4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 562
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 564
    invoke-interface {p4, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 567
    new-instance v5, Landroid/provider/SearchIndexableResource;

    invoke-direct {v5, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 568
    iput p3, v5, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 569
    iput-object v0, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 570
    iput-object p2, v5, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 571
    iput v1, v5, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 572
    iput-object v2, v5, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 573
    iput-object v3, v5, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 574
    iput-object v4, v5, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 576
    invoke-virtual {p0, v5}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_6a
    .catchall {:try_start_2a .. :try_end_6a} :catchall_6f

    goto :goto_30

    .line 580
    :cond_6b
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_6f
    move-exception p0

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "settings/non_indexables_key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "settings/indexables_raw"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "settings/indexables_xml_res"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    .line 446
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p3, "DatabaseIndexingManager"

    if-nez p0, :cond_2c

    .line 449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot add index data for Uri: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 453
    :cond_2c
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    :try_start_31
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6c

    .line 457
    :goto_37
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x0

    .line 458
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v1, 0x2

    invoke-static {p3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty non-indexable key from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 466
    :cond_68
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_31 .. :try_end_6b} :catchall_70

    goto :goto_37

    .line 471
    :cond_6c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_70
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 432
    invoke-static {p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 433
    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not create context for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseIndexingManager"

    .line 436
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 519
    :try_start_0
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const-string v0, "DatabaseIndexingManager"

    const-string v1, "Cannot open writable database"

    .line 521
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private indexFromProvider(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/meizu/settings/search/Indexable$SearchIndexProvider;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/search/Indexable$SearchIndexProvider;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p4

    move-object/from16 v10, p5

    .line 900
    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 901
    iget-object v12, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 902
    iget-object v13, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    if-nez v9, :cond_29

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseIndexingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 909
    :cond_29
    iget-object v0, v7, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-interface {v9, v0, v14}, Lcom/meizu/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    if-eqz v15, :cond_b0

    .line 914
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v5, v16

    :goto_3a
    if-ge v5, v6, :cond_b0

    .line 916
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/search/SearchIndexableRaw;

    .line 919
    iget-object v1, v0, Landroid/provider/SearchIndexableData;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    move/from16 v19, v5

    move/from16 v18, v6

    goto :goto_ab

    .line 922
    :cond_53
    iget-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v14

    .line 924
    new-instance v2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    .line 925
    invoke-virtual {v2, v8}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v3, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 926
    invoke-virtual {v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 927
    invoke-virtual {v2, v11}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v3, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 928
    invoke-virtual {v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget v3, v0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 929
    invoke-virtual {v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIconResId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v3, v0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 930
    invoke-virtual {v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v3, v0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 931
    invoke-virtual {v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v3, v0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 932
    invoke-virtual {v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 933
    invoke-virtual {v2, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 934
    invoke-virtual {v2, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget v1, v0, Landroid/provider/SearchIndexableData;->userId:I

    .line 935
    invoke-virtual {v2, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 937
    iget-object v3, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iget-object v1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    iget-object v0, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_ab
    add-int/lit8 v5, v19, 0x1

    move/from16 v6, v18

    goto :goto_3a

    .line 942
    :cond_b0
    iget-object v0, v7, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    .line 943
    invoke-interface {v9, v0, v14}, Lcom/meizu/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_107

    .line 945
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, v16

    :goto_be
    if-ge v2, v1, :cond_107

    .line 947
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableResource;

    .line 950
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d5

    move-object/from16 v4, p1

    goto :goto_104

    .line 954
    :cond_d5
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_df

    move-object v4, v11

    goto :goto_e1

    .line 956
    :cond_df
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    :goto_e1
    iput-object v4, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 957
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ed

    move-object v4, v12

    goto :goto_ef

    .line 959
    :cond_ed
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    :goto_ef
    iput-object v4, v3, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 960
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_fb

    move-object v4, v13

    goto :goto_fd

    .line 962
    :cond_fb
    iget-object v4, v3, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    :goto_fd
    iput-object v4, v3, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v4, p1

    .line 964
    invoke-virtual {v7, v4, v8, v3, v10}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V

    :goto_104
    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    :cond_107
    return-void
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/meizu/settings/search/SearchIndexableRaw;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/meizu/settings/search/SearchIndexableRaw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 657
    iget-object v0, p3, Landroid/provider/SearchIndexableData;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 661
    :cond_d
    iget-object v0, p3, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    .line 662
    iget-boolean v0, p3, Landroid/provider/SearchIndexableData;->enabled:Z

    if-eqz p4, :cond_22

    .line 664
    iget-object v1, p3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_22

    const/4 v0, 0x0

    .line 668
    :cond_22
    new-instance v3, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    .line 669
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Lcom/meizu/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 670
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 671
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 672
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget p2, p3, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 673
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIconResId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget p2, p3, Landroid/provider/SearchIndexableData;->rank:I

    .line 674
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 675
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 676
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    .line 677
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 678
    invoke-virtual {v3, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object p2, p3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 679
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    iget p2, p3, Landroid/provider/SearchIndexableData;->userId:I

    .line 680
    invoke-virtual {v3, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 682
    iget-object v4, p3, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v5, p3, Lcom/meizu/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iget-object v6, p3, Lcom/meizu/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    iget-object v7, p3, Lcom/meizu/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "DatabaseIndexingManager"

    if-nez p3, :cond_a

    const-string p0, "Cannot index a null resource!"

    .line 690
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 694
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 696
    iget v1, p3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-lez v1, :cond_2a

    .line 697
    iget-object v0, p3, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    if-eqz p4, :cond_26

    .line 698
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 699
    invoke-interface {v6, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 702
    :cond_26
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V

    goto :goto_88

    .line 704
    :cond_2a
    iget-object p4, p3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_38

    const-string p0, "Cannot index an empty Search Provider name!"

    .line 705
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 709
    :cond_38
    iget-object p4, p3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {p4}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    if-nez p4, :cond_6a

    .line 711
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SearchIndexableResource \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should implement the "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/meizu/settings/search/Indexable;

    .line 712
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " interface!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 719
    :cond_6a
    invoke-static {p4}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    move-result-object v4

    if-eqz v4, :cond_88

    .line 721
    iget-object p4, p3, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v4, p4}, Lcom/meizu/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_81

    .line 722
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_81

    .line 723
    invoke-interface {v6, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_81
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 726
    invoke-direct/range {v1 .. v6}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexFromProvider(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/meizu/settings/search/Indexable$SearchIndexProvider;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V

    :cond_88
    :goto_88
    return-void
.end method

.method private onlyRebuildDatabase()V
    .registers 2

    .line 248
    invoke-direct {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 249
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->onlyReconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private resolveFlymeTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "fp_head_title"

    .line 1376
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 1377
    iget-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "flyme.face.facerecognition"

    .line 1378
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 1379
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const p1, 0x7f120d9d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    .line 1381
    :cond_20
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const p1, 0x7f120da4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_29
    :goto_29
    return-object p1
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;)V
    .registers 8

    .line 996
    iget-object p0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    .line 1000
    :cond_9
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 1002
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->getDocId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "docid"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->locale:Ljava/lang/String;

    const-string v2, "locale"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->rank:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "data_rank"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1007
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    const-string v2, "data_title"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    const-string v2, "data_title_normalized"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    const-string v2, "data_summary_on"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    const-string v2, "data_summary_on_normalized"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    const-string v2, "data_summary_off"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    const-string v2, "data_summary_off_normalized"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->entries:Ljava/lang/String;

    const-string v2, "data_entries"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->spaceDelimitedKeywords:Ljava/lang/String;

    const-string v2, "data_keywords"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    const-string v2, "class_name"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    const-string v2, "screen_title"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentAction:Ljava/lang/String;

    const-string v2, "intent_action"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    const-string v2, "intent_target_package"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    const-string v2, "intent_target_class"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->iconResId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "icon"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    iget-boolean v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "enabled"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1022
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    const-string v2, "data_key_reference"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "user_id"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    iget v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->payloadType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "payload_type"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1025
    iget-object v0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->payload:[B

    const-string v2, "payload"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const-string v2, "prefs_index"

    .line 1027
    invoke-virtual {p1, v2, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1030
    iget-object p0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_141

    iget-object p0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ed

    iget-object p0, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_141

    .line 1031
    :cond_ed
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1032
    iget-object v4, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    .line 1033
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    iget-object v1, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    const-string v2, "parent_class"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v1, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    const-string v2, "parent_title"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v1, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "child_class"

    if-eqz v1, :cond_130

    iget-object v1, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_130

    .line 1037
    iget-object v1, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_135

    .line 1039
    :cond_130
    iget-object v1, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :goto_135
    iget-object p2, p2, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    const-string v1, "child_title"

    invoke-virtual {p0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "site_map"

    .line 1045
    invoke-virtual {p1, p2, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_141
    return-void
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 972
    invoke-static {p3}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 973
    invoke-static {p4}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 974
    invoke-static {p5}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 976
    invoke-static {p3}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-static {p4}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-static {p5}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 981
    invoke-static {p6}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 983
    invoke-virtual {p2, p3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 984
    invoke-virtual {p2, p4}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 985
    invoke-virtual {p2, p5}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUpdatedSummaryOff(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 986
    invoke-virtual {p2, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setNormalizedTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 987
    invoke-virtual {p2, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setNormalizedSummaryOn(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 988
    invoke-virtual {p2, v2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setNormalizedSummaryOff(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 989
    invoke-virtual {p2, p6}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setSpaceDelimitedKeywords(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 991
    iget-object p3, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->build(Landroid/content/Context;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow;)V

    return-void
.end method


# virtual methods
.method addDataToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "DatabaseIndexingManager"

    if-eqz v2, :cond_3c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/SearchIndexableData;

    .line 316
    :try_start_16
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_8

    :catch_1a
    move-exception v4

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_29

    iget-object v2, v2, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    :cond_29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for locale: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 323
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 324
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Indexing locale \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' took "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " millis"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addIndexableData(Landroid/provider/SearchIndexableData;)V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    monitor-enter v0

    .line 477
    :try_start_3
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 400
    :try_start_1
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 401
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    goto :goto_12

    :cond_c
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 403
    :goto_12
    invoke-static {p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 404
    sget-object v3, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 407
    invoke-static {p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 408
    sget-object v2, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_24} :catch_26

    const/4 p0, 0x1

    return p0

    :catch_26
    move-exception p0

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create context for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseIndexingManager"

    .line 412
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    monitor-enter v0

    if-eqz p2, :cond_17

    .line 483
    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 484
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public indexDatabase(Lcom/meizu/settings/search/IndexingCallback;)V
    .registers 3

    .line 161
    new-instance v0, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/search/DatabaseIndexingManager$IndexingTask;-><init>(Lcom/meizu/settings/search/DatabaseIndexingManager;Lcom/meizu/settings/search/IndexingCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 162
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method indexFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V
    .registers 35
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "Error parsing PreferenceScreen"

    .line 734
    iget-object v4, v1, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 737
    :try_start_a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_14} :catch_210
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_204
    .catchall {:try_start_a .. :try_end_14} :catchall_200

    .line 740
    :goto_14
    :try_start_14
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1f

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1f

    goto :goto_14

    .line 745
    :cond_1f
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "PreferenceScreen"

    .line 746
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_29} :catch_1f9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_29} :catch_1f1
    .catchall {:try_start_14 .. :try_end_29} :catchall_1ed

    if-nez v9, :cond_62

    :try_start_2b
    const-string v9, "android.preference.PreferenceScreen"

    .line 748
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    goto :goto_62

    .line 750
    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_57} :catch_5d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_57} :catch_57
    .catchall {:try_start_2b .. :try_end_57} :catchall_1ed

    :catch_57
    move-exception v0

    move-object/from16 v26, v3

    :goto_5a
    move-object v5, v6

    goto/16 :goto_208

    :catch_5d
    move-exception v0

    move-object v2, v3

    move-object v5, v6

    goto/16 :goto_213

    .line 755
    :cond_62
    :goto_62
    :try_start_62
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 756
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    .line 760
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v10

    .line 772
    iget-object v11, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 773
    iget v12, v1, Landroid/provider/SearchIndexableResource;->rank:I

    .line 774
    iget-object v13, v1, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 775
    iget-object v14, v1, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 776
    iget-object v1, v1, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;
    :try_end_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_78} :catch_1f9
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_78} :catch_1f1
    .catchall {:try_start_62 .. :try_end_78} :catchall_1ed

    if-eqz v11, :cond_7f

    .line 782
    :try_start_7a
    invoke-static {v11, v4}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->getPreferenceControllerUriMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v15
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7a .. :try_end_7e} :catch_5d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_57
    .catchall {:try_start_7a .. :try_end_7e} :catchall_1ed

    goto :goto_80

    :cond_7f
    const/4 v15, 0x0

    .line 789
    :goto_80
    :try_start_80
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p0

    .line 790
    invoke-direct {v5, v8, v10}, Lcom/meizu/settings/search/DatabaseIndexingManager;->resolveFlymeTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 796
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v23

    .line 797
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v24

    .line 798
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_96} :catch_1f9
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_96} :catch_1f1
    .catchall {:try_start_80 .. :try_end_96} :catchall_1ed

    const/16 v25, 0x0

    move-object/from16 v26, v3

    if-nez v16, :cond_9e

    const/4 v5, 0x1

    goto :goto_a0

    :cond_9e
    move/from16 v5, v25

    .line 801
    :goto_a0
    :try_start_a0
    new-instance v3, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v3}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    .line 802
    invoke-virtual {v3, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    move-object/from16 p3, v15

    const/4 v15, 0x0

    .line 803
    invoke-virtual {v3, v15}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 804
    invoke-virtual {v3, v11}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 805
    invoke-virtual {v3, v8}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 806
    invoke-virtual {v3, v12}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 807
    invoke-virtual {v3, v13}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 808
    invoke-virtual {v3, v14}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 809
    invoke-virtual {v3, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 810
    invoke-virtual {v3, v5}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 811
    invoke-virtual {v3, v10}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    const/4 v5, -0x1

    .line 812
    invoke-virtual {v3, v5}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    const/4 v10, 0x1

    .line 818
    :goto_cb
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15
    :try_end_cf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_cf} :catch_1e7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_cf} :catch_1e5
    .catchall {:try_start_a0 .. :try_end_cf} :catchall_1ed

    const/4 v5, 0x1

    if-eq v15, v5, :cond_1c3

    const/4 v5, 0x3

    if-ne v15, v5, :cond_e6

    .line 819
    :try_start_d5
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5
    :try_end_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_d9} :catch_e0
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d9} :catch_dd
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_1ed

    if-le v5, v7, :cond_1c3

    const/4 v5, 0x3

    goto :goto_e6

    :catch_dd
    move-exception v0

    goto/16 :goto_5a

    :catch_e0
    move-exception v0

    move-object v5, v6

    move-object/from16 v2, v26

    goto/16 :goto_213

    :cond_e6
    :goto_e6
    if-eq v15, v5, :cond_1b2

    const/4 v5, 0x4

    if-ne v15, v5, :cond_ed

    goto/16 :goto_1b2

    .line 824
    :cond_ed
    :try_start_ed
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 826
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v15

    move/from16 v27, v7

    .line 827
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 828
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_103

    const/4 v2, 0x1

    goto :goto_105

    :cond_103
    move/from16 v2, v25

    .line 829
    :goto_105
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v22
    :try_end_109
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ed .. :try_end_109} :catch_1e7
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_109} :catch_1e5
    .catchall {:try_start_ed .. :try_end_109} :catchall_1ed

    move-object/from16 v28, v6

    .line 830
    :try_start_10b
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v6

    if-eqz v10, :cond_11a

    .line 832
    invoke-static {v8, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_11a

    move/from16 v29, v25

    goto :goto_11c

    :cond_11a
    move/from16 v29, v10

    .line 836
    :goto_11c
    new-instance v10, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v10}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    .line 837
    invoke-virtual {v10, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 838
    invoke-virtual {v10, v11}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 839
    invoke-virtual {v10, v8}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 840
    invoke-virtual {v10, v6}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIconResId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 841
    invoke-virtual {v10, v12}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 842
    invoke-virtual {v10, v13}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 843
    invoke-virtual {v10, v14}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 844
    invoke-virtual {v10, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 845
    invoke-virtual {v10, v2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 846
    invoke-virtual {v10, v7}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    const/4 v2, -0x1

    .line 847
    invoke-virtual {v10, v2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    const-string v6, "CheckBoxPreference"

    .line 849
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_180

    .line 850
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v20

    const-string v6, "ListPreference"

    .line 854
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 855
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p3

    goto :goto_161

    :cond_15e
    move-object/from16 v6, p3

    const/4 v5, 0x0

    .line 859
    :goto_161
    invoke-static {v6, v7}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->getPayloadFromUriMap(Ljava/util/Map;Ljava/lang/String;)Lcom/meizu/settings/search/ResultPayload;

    move-result-object v7

    .line 860
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataChildFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-virtual {v10, v5}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 863
    invoke-virtual {v10, v2}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setChildClassName(Ljava/lang/String;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    .line 864
    invoke-virtual {v10, v7}, Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;->setPayload(Lcom/meizu/settings/search/ResultPayload;)Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;

    const/16 v21, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v10

    move-object/from16 v19, v15

    .line 867
    invoke-direct/range {v16 .. v22}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a7

    :cond_180
    move-object/from16 v6, p3

    .line 870
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    .line 871
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v21

    .line 873
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19a

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19a

    .line 874
    invoke-static {v4, v9}, Lcom/meizu/settings/search/XmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    :cond_19a
    move-object/from16 v20, v2

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v10

    move-object/from16 v19, v15

    .line 877
    invoke-direct/range {v16 .. v22}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a7
    move-object/from16 v2, p4

    move-object/from16 p3, v6

    move/from16 v7, v27

    move-object/from16 v6, v28

    move/from16 v10, v29

    goto :goto_1c0

    :cond_1b2
    :goto_1b2
    move-object/from16 v28, v6

    move/from16 v27, v7

    move-object/from16 v6, p3

    move-object/from16 v2, p4

    move-object/from16 p3, v6

    move/from16 v7, v27

    move-object/from16 v6, v28

    :goto_1c0
    const/4 v5, -0x1

    goto/16 :goto_cb

    :cond_1c3
    move-object/from16 v28, v6

    if-eqz v10, :cond_1df

    const/16 v21, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v23

    move-object/from16 v22, v24

    .line 884
    invoke-direct/range {v16 .. v22}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/meizu/settings/search/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10b .. :try_end_1d8} :catch_1dd
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_1d8} :catch_1db
    .catchall {:try_start_10b .. :try_end_1d8} :catchall_1d9

    goto :goto_1df

    :catchall_1d9
    move-exception v0

    goto :goto_21c

    :catch_1db
    move-exception v0

    goto :goto_1f6

    :catch_1dd
    move-exception v0

    goto :goto_1ea

    :cond_1df
    :goto_1df
    if-eqz v28, :cond_1e4

    .line 892
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1e4
    return-void

    :catch_1e5
    move-exception v0

    goto :goto_1f4

    :catch_1e7
    move-exception v0

    move-object/from16 v28, v6

    :goto_1ea
    move-object/from16 v2, v26

    goto :goto_1fd

    :catchall_1ed
    move-exception v0

    move-object/from16 v28, v6

    goto :goto_21c

    :catch_1f1
    move-exception v0

    move-object/from16 v26, v3

    :goto_1f4
    move-object/from16 v28, v6

    :goto_1f6
    move-object/from16 v5, v28

    goto :goto_208

    :catch_1f9
    move-exception v0

    move-object/from16 v28, v6

    move-object v2, v3

    :goto_1fd
    move-object/from16 v5, v28

    goto :goto_213

    :catchall_200
    move-exception v0

    const/16 v28, 0x0

    goto :goto_21c

    :catch_204
    move-exception v0

    move-object/from16 v26, v3

    const/4 v5, 0x0

    .line 890
    :goto_208
    :try_start_208
    new-instance v1, Ljava/lang/RuntimeException;

    move-object/from16 v2, v26

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_210
    move-exception v0

    move-object v2, v3

    const/4 v5, 0x0

    .line 888
    :goto_213
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_219
    .catchall {:try_start_208 .. :try_end_219} :catchall_219

    :catchall_219
    move-exception v0

    move-object/from16 v28, v5

    :goto_21c
    if-eqz v28, :cond_221

    .line 892
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_221
    throw v0
.end method

.method public indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 647
    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_a

    .line 648
    check-cast p3, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    goto :goto_13

    .line 649
    :cond_a
    instance-of v0, p3, Lcom/meizu/settings/search/SearchIndexableRaw;

    if-eqz v0, :cond_13

    .line 650
    check-cast p3, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/search/DatabaseIndexingManager;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/meizu/settings/search/SearchIndexableRaw;Ljava/util/Map;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public isIndexingComplete()Z
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public performIndexing()V
    .registers 9

    const-string v0, "hxt"

    const-string v1, "start performIndexing.."

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 181
    invoke-static {v1}, Lcom/meizu/settings/search/IndexDatabaseHelper;->buildProviderVersionedNames(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 183
    iget-object v5, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3, v4}, Lcom/meizu/settings/search/IndexDatabaseHelper;->isFullIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 187
    invoke-direct {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->onlyRebuildDatabase()V

    .line 190
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 191
    iget-object v7, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/meizu/settings/search/DatabaseIndexingUtils;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4e

    goto :goto_39

    .line 194
    :cond_4e
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 195
    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_59

    .line 198
    invoke-virtual {p0, v6, v7}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    :cond_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 201
    invoke-virtual {p0, v6, v7}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 208
    :cond_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    invoke-virtual {p0, v5, v2}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateDatabase(ZLjava/lang/String;)V

    if-eqz v5, :cond_81

    const-string v1, "start index finish, setlocales"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/meizu/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/meizu/settings/search/IndexDatabaseHelper;->setBuildIndexed(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v4}, Lcom/meizu/settings/search/IndexDatabaseHelper;->setProvidersIndexed(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "end index finish, setlocales"

    .line 221
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    const-string p0, "end performIndexing.."

    .line 230
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public rebuildDatabase()V
    .registers 2

    .line 241
    invoke-direct {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/search/IndexDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method updateDataInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 342
    sget-object v3, Lcom/meizu/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const-string v2, "prefs_index"

    const-string v4, "enabled = 1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 345
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    .line 346
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v12, "enabled"

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    :cond_25
    :goto_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v13, 0x0

    const-string v14, "prefs_index"

    const-string v15, "docid = "

    const/16 v8, 0xa

    const/16 v7, 0x8

    if-eqz v3, :cond_69

    .line 353
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    .line 355
    iget-object v3, v0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 358
    :cond_40
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_25

    .line 362
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual {v9, v14, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_25

    .line 367
    :cond_69
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 369
    sget-object v3, Lcom/meizu/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v2, "prefs_index"

    const-string v4, "enabled = 0"

    move-object/from16 v1, p1

    move v13, v7

    move-object/from16 v7, v16

    move v11, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 372
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    .line 373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    :goto_91
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 378
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a3

    .line 380
    iget-object v3, v0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 383
    :cond_a3
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_ce

    .line 389
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 391
    invoke-virtual {v9, v14, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_91

    :cond_ce
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_91

    .line 394
    :cond_d1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method updateDatabase(ZLjava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    invoke-virtual {v1}, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->copy()Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mDataToProcess:Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;

    invoke-virtual {v2}, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->clear()V

    .line 269
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e

    .line 271
    iget-object v0, v1, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 272
    iget-object v1, v1, Lcom/meizu/settings/search/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 274
    invoke-direct {p0}, Lcom/meizu/settings/search/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_21

    const-string p0, "DatabaseIndexingManager"

    const-string p1, "Cannot indexDatabase Index as I cannot get a writable database"

    .line 276
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2d

    .line 285
    invoke-virtual {p0, v2, p2, v0, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager;->addDataToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_2d
    if-nez p1, :cond_32

    .line 291
    invoke-virtual {p0, v2, v1}, Lcom/meizu/settings/search/DatabaseIndexingManager;->updateDataInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    .line 294
    :cond_32
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_39

    .line 296
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_39
    move-exception p0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_3e
    move-exception p0

    .line 269
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public updateFromClassNameResource(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p1, :cond_2e

    .line 500
    invoke-static {p1}, Lcom/meizu/settings/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 502
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseIndexingManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :cond_1f
    iget-object p1, p0, Lcom/meizu/settings/search/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    iput-object p1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 506
    iput-boolean p2, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    .line 507
    new-instance p1, Lcom/meizu/settings/search/DatabaseIndexingManager$1;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/search/DatabaseIndexingManager$1;-><init>(Lcom/meizu/settings/search/DatabaseIndexingManager;Landroid/provider/SearchIndexableResource;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 498
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "class name cannot be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
