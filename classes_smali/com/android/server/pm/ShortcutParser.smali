.class public Lcom/android/server/pm/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# static fields
.field private static final DEBUG:Z = false

.field static final METADATA_KEY:Ljava/lang/String; = "android.app.shortcuts"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_SHARE_TARGET:Ljava/lang/String; = "share-target"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_SHORTCUTS:Ljava/lang/String; = "shortcuts"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;
    .registers 41

    .line 419
    if-eqz p10, :cond_5

    const/16 v0, 0x20

    goto :goto_7

    :cond_5
    const/16 v0, 0x40

    :goto_7
    or-int/lit16 v0, v0, 0x100

    .line 421
    const/4 v1, 0x0

    if-eqz p9, :cond_e

    const/4 v2, 0x4

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    or-int v23, v0, v2

    .line 423
    if-eqz p10, :cond_16

    move/from16 v27, v1

    goto :goto_19

    .line 424
    :cond_16
    const/4 v1, 0x1

    move/from16 v27, v1

    .line 428
    :goto_19
    new-instance v0, Landroid/content/pm/ShortcutInfo;

    move-object v2, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, p5

    move/from16 v12, p6

    move/from16 v15, p7

    move/from16 v19, p8

    move/from16 v24, p9

    invoke-direct/range {v2 .. v29}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;)V

    .line 428
    return-object v0
.end method

.method private static parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 4

    .line 355
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->ShortcutCategories:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 358
    const/4 p1, 0x0

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 359
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_28

    .line 365
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    return-object p1

    .line 361
    :cond_1c
    :try_start_1c
    const-string p1, "ShortcutService"

    const-string v0, "android:name for shortcut category must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    .line 362
    const/4 p1, 0x0

    .line 365
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 362
    return-object p1

    .line 365
    :catchall_28
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 4

    .line 458
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 461
    const/4 p1, 0x0

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 462
    const-string p1, "ShortcutService"

    const-string v0, "android:name must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_28

    .line 463
    const/4 p1, 0x0

    .line 467
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 463
    return-object p1

    .line 465
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 467
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    return-object p1

    .line 467
    :catchall_28
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;
    .registers 4

    .line 473
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 476
    const/4 p1, 0x4

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 478
    const-string p1, "ShortcutService"

    const-string v0, "android:targetClass must be provided."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_2d

    .line 479
    nop

    .line 483
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 479
    return-object v1

    .line 481
    :cond_24
    :try_start_24
    new-instance v0, Lcom/android/server/pm/ShareTargetInfo;

    invoke-direct {v0, v1, p1, v1}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2d

    .line 483
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 481
    return-object v0

    .line 483
    :catchall_2d
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;
    .registers 12

    .line 489
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 492
    const/4 p1, 0x0

    :try_start_d
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 493
    const-string p1, "ShortcutService"

    const-string v0, "android:mimeType must be string literal."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_4b

    .line 494
    const/4 p1, 0x0

    .line 506
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 494
    return-object p1

    .line 496
    :cond_20
    const/4 v0, 0x1

    :try_start_21
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 497
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 499
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 500
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 501
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 502
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 503
    new-instance p1, Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/ShareTargetInfo$TargetData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_4b

    .line 506
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    return-object p1

    .line 506
    :catchall_4b
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;
    .registers 19

    .line 372
    move-object/from16 v0, p3

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Shortcut:[I

    move-object v4, p1

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 375
    const/4 v2, 0x2

    :try_start_11
    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_9d

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-string v6, "ShortcutService"

    if-eq v3, v4, :cond_34

    .line 376
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutId must be string literal. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_9d

    .line 377
    nop

    .line 409
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    return-object v5

    .line 379
    :cond_34
    :try_start_34
    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    const/4 v2, 0x1

    invoke-virtual {v12, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 382
    invoke-virtual {v12, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 383
    const/4 v4, 0x4

    invoke-virtual {v12, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 384
    const/4 v4, 0x5

    invoke-virtual {v12, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 387
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutId must be provided. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_34 .. :try_end_6a} :catchall_9d

    .line 389
    nop

    .line 409
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    return-object v5

    .line 391
    :cond_6f
    if-nez v7, :cond_8a

    .line 392
    :try_start_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:shortcutShortLabel must be provided. activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_9d

    .line 393
    nop

    .line 409
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    return-object v5

    .line 396
    :cond_8a
    move-object v1, p0

    move/from16 v2, p4

    move-object v4, p2

    move-object/from16 v5, p3

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p5

    :try_start_95
    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/ShortcutParser;->createShortcutFromManifest(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IIIIIZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_9d

    .line 409
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 396
    return-object v0

    .line 409
    :catchall_9d
    move-exception v0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static parseShortcuts(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetMainActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 72
    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_54

    .line 76
    :cond_e
    nop

    .line 77
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 80
    :try_start_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    const/4 v3, 0x0

    move-object v8, v1

    :goto_18
    if-ge v3, v2, :cond_3c

    .line 82
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 83
    if-nez v4, :cond_25

    .line 84
    goto :goto_39

    .line 87
    :cond_25
    nop

    .line 89
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 88
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/ShortcutService;->getActivityInfoWithMetadata(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 90
    if-eqz v5, :cond_39

    .line 91
    move-object v4, p0

    move-object v6, p1

    move v7, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/ShortcutParser;->parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_38} :catch_3e

    move-object v8, v4

    .line 81
    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 101
    :cond_3c
    nop

    .line 102
    return-object v8

    .line 95
    :catch_3e
    move-exception p2

    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception caught while parsing shortcut XML for package="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-object v1

    .line 73
    :cond_54
    :goto_54
    return-object v1
.end method

.method private static parseShortcutsOneFile(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/ShortcutService;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ShareTargetInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 115
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 117
    :try_start_4
    const-string v0, "android.app.shortcuts"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/pm/ShortcutService;->injectXmlMetaData(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3da

    .line 118
    if-nez v10, :cond_13

    .line 119
    nop

    .line 347
    if-eqz v10, :cond_12

    .line 348
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 119
    :cond_12
    return-object p4

    .line 122
    :cond_13
    :try_start_13
    new-instance v11, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v12, p2

    invoke-direct {v11, v12, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 128
    nop

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->getMaxActivityShortcuts()I

    move-result v14

    .line 130
    nop

    .line 134
    nop

    .line 138
    nop

    .line 141
    nop

    .line 144
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    .line 150
    :goto_3b
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v5, 0x1

    if-eq v9, v5, :cond_3d2

    const/4 v5, 0x3

    if-ne v9, v5, :cond_4f

    .line 151
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v18

    if-lez v18, :cond_4c

    goto :goto_4f

    :cond_4c
    move-object v12, v4

    goto/16 :goto_3d3

    .line 152
    :cond_4f
    :goto_4f
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 153
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_57
    .catchall {:try_start_13 .. :try_end_57} :catchall_3d8

    .line 156
    const-string/jumbo v12, "shortcut"

    const-string v7, "ShortcutService"

    move-object/from16 v19, v11

    const/4 v11, 0x3

    if-ne v9, v11, :cond_129

    const/4 v11, 0x2

    if-ne v5, v11, :cond_129

    :try_start_64
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_129

    .line 157
    if-nez v0, :cond_70

    .line 159
    move/from16 v20, v3

    goto/16 :goto_13e

    .line 161
    :cond_70
    nop

    .line 162
    nop

    .line 164
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 165
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ab

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has no intent. Skipping it."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v11, 0x0

    goto/16 :goto_11e

    .line 171
    :cond_9e
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 172
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_ab
    if-lt v3, v14, :cond_d8

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shortcuts found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping the rest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_64 .. :try_end_d2} :catchall_3d8

    .line 178
    nop

    .line 347
    nop

    .line 348
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 178
    return-object v4

    .line 182
    :cond_d8
    const/4 v11, 0x0

    :try_start_d9
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const v8, 0x1000c000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_3d8

    .line 187
    :try_start_e5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/Intent;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/pm/ShortcutInfo;->setIntents([Landroid/content/Intent;)V
    :try_end_f4
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_f4} :catch_117
    .catchall {:try_start_e5 .. :try_end_f4} :catchall_3d8

    .line 194
    nop

    .line 195
    :try_start_f5
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 197
    if-eqz v2, :cond_fe

    .line 198
    invoke-virtual {v0, v2}, Landroid/content/pm/ShortcutInfo;->setCategories(Ljava/util/Set;)V

    .line 199
    const/4 v2, 0x0

    .line 202
    :cond_fe
    if-nez v4, :cond_105

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :cond_105
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 207
    add-int/lit8 v16, v16, 0x1

    .line 211
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move-object/from16 v11, v19

    const/4 v0, 0x0

    goto/16 :goto_3b

    .line 188
    :catch_117
    move-exception v0

    .line 192
    const-string v0, "Shortcut\'s extras contain un-persistable values. Skipping it."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_f5 .. :try_end_11d} :catchall_3d8

    .line 193
    nop

    .line 150
    :goto_11e
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move-object/from16 v11, v19

    const/4 v0, 0x0

    goto/16 :goto_3b

    .line 156
    :cond_129
    const/4 v11, 0x0

    .line 215
    const-string/jumbo v11, "share-target"

    move/from16 v20, v3

    const/4 v3, 0x3

    if-ne v9, v3, :cond_1b0

    const/4 v3, 0x2

    if-ne v5, v3, :cond_1b0

    .line 216
    :try_start_135
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a9

    .line 217
    if-nez v1, :cond_14a

    .line 219
    nop

    .line 150
    :goto_13e
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move-object/from16 v11, v19

    move/from16 v3, v20

    goto/16 :goto_3b

    .line 221
    :cond_14a
    nop

    .line 222
    nop

    .line 224
    if-eqz v2, :cond_192

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_192

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_161

    .line 226
    move-object/from16 v21, v4

    move/from16 v22, v14

    move-object/from16 v14, p5

    goto :goto_198

    .line 229
    :cond_161
    new-instance v3, Lcom/android/server/pm/ShareTargetInfo;

    .line 230
    move-object/from16 v21, v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/pm/ShareTargetInfo$TargetData;

    iget-object v1, v1, Lcom/android/server/pm/ShareTargetInfo;->mTargetClass:Ljava/lang/String;

    .line 231
    move/from16 v22, v14

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lcom/android/server/pm/ShareTargetInfo;-><init>([Lcom/android/server/pm/ShareTargetInfo$TargetData;Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    move-object/from16 v14, p5

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    nop

    .line 237
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_1ba

    .line 224
    :cond_192
    move-object/from16 v21, v4

    move/from16 v22, v14

    move-object/from16 v14, p5

    .line 150
    :goto_198
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move-object/from16 v11, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v14, v22

    const/4 v1, 0x0

    goto/16 :goto_3b

    .line 216
    :cond_1a9
    move-object/from16 v21, v4

    move/from16 v22, v14

    move-object/from16 v14, p5

    goto :goto_1b6

    .line 215
    :cond_1b0
    move-object/from16 v21, v4

    move/from16 v22, v14

    move-object/from16 v14, p5

    .line 241
    :goto_1b6
    move-object/from16 v23, v1

    move-object/from16 v24, v2

    :goto_1ba
    const/4 v1, 0x2

    if-eq v9, v1, :cond_1c7

    .line 242
    move-object/from16 v2, p0

    move-object v1, v6

    move-object/from16 v4, v19

    move-object/from16 v12, v21

    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 245
    :cond_1c7
    const/4 v9, 0x1

    if-ne v5, v9, :cond_1dd

    const-string/jumbo v1, "shortcuts"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dd

    .line 246
    move-object/from16 v2, p0

    move-object v1, v6

    move-object/from16 v4, v19

    move-object/from16 v12, v21

    const/4 v9, 0x0

    goto/16 :goto_3c0

    .line 248
    :cond_1dd
    const/4 v1, 0x2

    if-ne v5, v1, :cond_247

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_247

    .line 249
    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v12, v21

    move-object/from16 v4, v19

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v5, p3

    move-object v8, v6

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/ShortcutParser;->parseShortcutAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 251
    if-nez v1, :cond_204

    .line 253
    move-object/from16 v2, p0

    move-object v1, v8

    move-object/from16 v4, v19

    goto/16 :goto_3c0

    .line 258
    :cond_204
    if-eqz v12, :cond_231

    .line 259
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_20c
    if-ltz v2, :cond_231

    .line 260
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22e

    .line 261
    const-string v1, "Duplicate shortcut ID detected. Skipping it."

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v2, p0

    move-object v1, v8

    move-object/from16 v4, v19

    goto/16 :goto_3c0

    .line 259
    :cond_22e
    add-int/lit8 v2, v2, -0x1

    goto :goto_20c

    .line 266
    :cond_231
    nop

    .line 267
    nop

    .line 268
    move-object/from16 v7, p0

    move-object v0, v1

    move-object v6, v8

    move-object v4, v12

    move-object/from16 v11, v19

    move/from16 v3, v20

    move/from16 v14, v22

    move-object/from16 v1, v23

    const/4 v2, 0x0

    move-object/from16 v8, p1

    move-object/from16 v12, p2

    goto/16 :goto_3b

    .line 248
    :cond_247
    move-object v1, v6

    move/from16 v17, v9

    move-object/from16 v12, v21

    const/4 v9, 0x0

    .line 270
    const/4 v2, 0x2

    if-ne v5, v2, :cond_278

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_278

    .line 271
    move-object/from16 v2, p0

    invoke-static {v2, v13}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetAttributes(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo;

    move-result-object v3

    .line 272
    if-nez v3, :cond_262

    .line 274
    move-object/from16 v4, v19

    goto/16 :goto_3c0

    .line 276
    :cond_262
    nop

    .line 277
    nop

    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 279
    move-object/from16 v8, p1

    move-object v6, v1

    move-object v7, v2

    move-object v1, v3

    move-object v4, v12

    move-object/from16 v11, v19

    move/from16 v3, v20

    move/from16 v14, v22

    const/4 v2, 0x0

    move-object/from16 v12, p2

    goto/16 :goto_3b

    .line 270
    :cond_278
    move v3, v2

    move-object/from16 v2, p0

    .line 281
    const/4 v4, 0x3

    if-ne v5, v4, :cond_2df

    const-string v4, "intent"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2df

    .line 282
    if-eqz v0, :cond_2d6

    .line 283
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_291

    move-object/from16 v4, v19

    goto :goto_2d8

    .line 288
    :cond_291
    iget-object v3, v2, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v10, v13}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2cf

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcut intent action must be provided. activity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    nop

    .line 293
    move-object/from16 v8, p1

    move-object v6, v1

    move-object v7, v2

    move-object v11, v4

    move-object v4, v12

    move/from16 v3, v20

    move/from16 v14, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    const/4 v0, 0x0

    move-object/from16 v12, p2

    goto/16 :goto_3b

    .line 295
    :cond_2cf
    move-object/from16 v4, v19

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    goto/16 :goto_3c0

    .line 282
    :cond_2d6
    move-object/from16 v4, v19

    .line 284
    :goto_2d8
    const-string v3, "Ignoring excessive intent tag."

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2dd
    .catchall {:try_start_135 .. :try_end_2dd} :catchall_3d8

    .line 285
    goto/16 :goto_3c0

    .line 281
    :cond_2df
    move-object/from16 v4, v19

    .line 298
    const-string v6, "Empty category found. activity="

    const/4 v11, 0x3

    if-ne v5, v11, :cond_334

    :try_start_2e6
    const-string v11, "categories"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_334

    .line 299
    if-eqz v0, :cond_3c0

    .line 300
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2f8

    .line 301
    goto/16 :goto_3c0

    .line 303
    :cond_2f8
    invoke-static {v2, v13}, Lcom/android/server/pm/ShortcutParser;->parseCategories(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_316

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    goto/16 :goto_3c0

    .line 309
    :cond_316
    if-nez v24, :cond_31e

    .line 310
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    goto :goto_320

    .line 309
    :cond_31e
    move-object/from16 v5, v24

    .line 312
    :goto_320
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    move-object/from16 v8, p1

    move-object v6, v1

    move-object v7, v2

    move-object v11, v4

    move-object v2, v5

    move-object v4, v12

    move/from16 v3, v20

    move/from16 v14, v22

    move-object/from16 v1, v23

    move-object/from16 v12, p2

    goto/16 :goto_3b

    .line 315
    :cond_334
    const/4 v11, 0x3

    if-ne v5, v11, :cond_37f

    const-string v11, "category"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37f

    .line 316
    if-nez v23, :cond_343

    .line 317
    goto/16 :goto_3c0

    .line 319
    :cond_343
    invoke-static {v2, v13}, Lcom/android/server/pm/ShortcutParser;->parseCategory(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_361

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    goto/16 :goto_3c0

    .line 325
    :cond_361
    if-nez v24, :cond_369

    .line 326
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    goto :goto_36b

    .line 325
    :cond_369
    move-object/from16 v5, v24

    .line 328
    :goto_36b
    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v8, p1

    move-object v6, v1

    move-object v7, v2

    move-object v11, v4

    move-object v2, v5

    move-object v4, v12

    move/from16 v3, v20

    move/from16 v14, v22

    move-object/from16 v1, v23

    move-object/from16 v12, p2

    goto/16 :goto_3b

    .line 331
    :cond_37f
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3ac

    const-string v6, "data"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ac

    .line 332
    if-nez v23, :cond_38d

    .line 333
    goto :goto_3c0

    .line 335
    :cond_38d
    invoke-static {v2, v13}, Lcom/android/server/pm/ShortcutParser;->parseShareTargetData(Lcom/android/server/pm/ShortcutService;Landroid/util/AttributeSet;)Lcom/android/server/pm/ShareTargetInfo$TargetData;

    move-result-object v3

    .line 336
    if-nez v3, :cond_3a8

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid data tag found. activity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    goto :goto_3c0

    .line 340
    :cond_3a8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    goto :goto_3c0

    .line 344
    :cond_3ac
    const-string v6, "Invalid tag \'%s\' found at depth %d"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v17

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3bf
    .catchall {:try_start_2e6 .. :try_end_3bf} :catchall_3d8

    .line 345
    nop

    .line 150
    :cond_3c0
    :goto_3c0
    move-object/from16 v8, p1

    move-object v6, v1

    move-object v7, v2

    move-object v11, v4

    move-object v4, v12

    move/from16 v3, v20

    move/from16 v14, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v12, p2

    goto/16 :goto_3b

    :cond_3d2
    move-object v12, v4

    .line 347
    :goto_3d3
    nop

    .line 348
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 351
    return-object v12

    .line 347
    :catchall_3d8
    move-exception v0

    goto :goto_3dc

    :catchall_3da
    move-exception v0

    const/4 v10, 0x0

    :goto_3dc
    if-eqz v10, :cond_3e1

    .line 348
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3e1
    throw v0
.end method
