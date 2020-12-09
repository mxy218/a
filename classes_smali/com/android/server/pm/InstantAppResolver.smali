.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_INSTANT:Z

.field private static final RESOLUTION_BIND_TIMEOUT:I = 0x2

.field private static final RESOLUTION_CALL_TIMEOUT:I = 0x3

.field private static final RESOLUTION_FAILURE:I = 0x1

.field private static final RESOLUTION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 7

    .line 69
    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(IJLjava/lang/String;I)V
    .registers 5

    .line 69
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 262
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v0, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 263
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 264
    const/high16 v7, 0x40000000  # 2.0f

    or-int/2addr v5, v7

    const/high16 v7, 0x800000

    or-int/2addr v5, v7

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    if-eqz v3, :cond_23

    .line 268
    const-string v5, "android.intent.extra.INSTANT_APP_TOKEN"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 271
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v7, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v5, "android.intent.extra.INTENT"

    move-object/from16 v7, p1

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    if-eqz p9, :cond_4f

    .line 277
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_150

    .line 280
    :cond_4f
    const-string v7, "android.intent.extra.SPLIT_NAME"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p2, :cond_57

    if-eqz v0, :cond_a9

    .line 284
    :cond_57
    if-eqz v0, :cond_7b

    .line 285
    :try_start_59
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 286
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 287
    if-eqz v4, :cond_75

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_75

    .line 288
    nop

    .line 289
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v0, v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    .line 288
    invoke-virtual {v10, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_75
    invoke-virtual {v10, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_7d

    .line 308
    :catch_79
    move-exception v0

    goto :goto_a8

    .line 293
    :cond_7b
    move-object/from16 v10, p2

    .line 295
    :goto_7d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    new-array v0, v9, [Landroid/content/Intent;

    aput-object v10, v0, v8

    new-array v5, v9, [Ljava/lang/String;

    aput-object p5, v5, v8

    const/high16 v19, 0x54000000

    const/16 v20, 0x0

    .line 296
    move-object/from16 v13, p3

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move/from16 v21, p6

    invoke-interface/range {v11 .. v21}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 305
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 307
    const-string v0, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_a8} :catch_79

    .line 308
    :goto_a8
    nop

    .line 312
    :cond_a9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 315
    :try_start_b1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v1, v9, [Landroid/content/Intent;

    aput-object v0, v1, v8

    new-array v0, v9, [Ljava/lang/String;

    aput-object p5, v0, v8

    const/high16 v18, 0x54000000

    const/16 v19, 0x0

    .line 316
    move-object/from16 v12, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    move/from16 v20, p6

    invoke-interface/range {v10 .. v20}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 324
    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 325
    const-string v0, "android.intent.extra.INSTANT_APP_SUCCESS"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_db} :catch_dc

    goto :goto_dd

    .line 326
    :catch_dc
    move-exception v0

    :goto_dd
    nop

    .line 327
    if-eqz v2, :cond_e5

    .line 328
    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    :cond_e5
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    if-eqz v4, :cond_14b

    .line 333
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 334
    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v1

    move v2, v8

    :goto_f9
    if-ge v2, v1, :cond_146

    .line 335
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 336
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 337
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v10, :cond_114

    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 339
    invoke-virtual {v10}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v10

    if-eqz v10, :cond_114

    move v10, v9

    goto :goto_115

    :cond_114
    move v10, v8

    .line 337
    :goto_115
    const-string v11, "android.intent.extra.UNKNOWN_INSTANT_APP"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    const-string v11, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-wide v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    const-string v12, "android.intent.extra.LONG_VERSION_CODE"

    invoke-virtual {v3, v12, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 343
    iget-object v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    const-string v11, "android.intent.extra.INSTANT_APP_EXTRAS"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 344
    aput-object v3, v0, v2

    .line 345
    if-nez v2, :cond_143

    .line 348
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 349
    iget-wide v10, v5, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v3, v10

    const-string v5, "android.intent.extra.VERSION_CODE"

    invoke-virtual {v6, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    :cond_143
    add-int/lit8 v2, v2, 0x1

    goto :goto_f9

    .line 352
    :cond_146
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    :cond_14b
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    :goto_150
    return-object v6
.end method

.method private static computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 439
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 442
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v2, v4, v1}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 439
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 444
    :cond_1b
    if-eqz v0, :cond_28

    .line 445
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 446
    return-object v4

    .line 448
    :cond_28
    nop

    .line 449
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v0

    .line 450
    const-string v3, "PackageManager"

    if-eqz v0, :cond_10b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object v6, p0

    goto/16 :goto_10c

    .line 461
    :cond_3a
    new-instance v5, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;

    invoke-direct {v5}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;-><init>()V

    .line 463
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_45
    if-ltz v6, :cond_ac

    .line 464
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstantAppIntentFilter;

    .line 465
    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v8

    .line 466
    if-eqz v8, :cond_a9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 467
    goto :goto_a9

    .line 469
    :cond_5a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_60
    if-ltz v9, :cond_a9

    .line 470
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter;

    .line 471
    nop

    .line 472
    invoke-virtual {v10}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 474
    if-eqz v11, :cond_75

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_96

    .line 475
    :cond_75
    const-string v11, "http"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_85

    const-string v11, "https"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 476
    :cond_85
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 477
    const-string v11, "android.intent.category.BROWSABLE"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 478
    goto :goto_a6

    .line 480
    :cond_96
    new-instance v11, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 484
    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v12

    .line 485
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-direct {v11, v10, v2, v12, v13}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    invoke-virtual {v5, v11}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 469
    :goto_a6
    add-int/lit8 v9, v9, -0x1

    goto :goto_60

    .line 463
    :cond_a9
    :goto_a9
    add-int/lit8 v6, v6, -0x1

    goto :goto_45

    .line 489
    :cond_ac
    const/4 v0, 0x0

    .line 490
    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p2

    invoke-virtual {v5, p0, p1, v0, v8}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v6, "["

    if-nez v5, :cond_dc

    .line 493
    sget-boolean v2, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_db

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Found match(es); "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_db
    return-object v0

    .line 497
    :cond_dc
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_10a

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] No matches found package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_10a
    return-object v4

    .line 450
    :cond_10b
    move-object v6, p0

    .line 452
    :goto_10c
    invoke-virtual {p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 453
    return-object v4

    .line 456
    :cond_113
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_11c

    .line 457
    const-string v0, "No app filters; go to phase 2"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_11c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 419
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 420
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, -0x801

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 421
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    .line 422
    return-object v0
.end method

.method public static doInstantAppResolutionPhaseOne(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 20

    .line 122
    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v12, "["

    const-string v13, "PackageManager"

    if-eqz v0, :cond_2d

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Phase1; resolving"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2d
    iget-object v14, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 128
    invoke-static {v14}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    nop

    .line 131
    nop

    .line 133
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    :try_start_39
    iget-object v4, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 135
    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v4

    iget v5, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 134
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v4, v5, v11}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppResolveInfoList(Landroid/content/Intent;[IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    .line 137
    iget-object v6, v1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v0, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 139
    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v16

    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    :try_end_59
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_39 .. :try_end_59} :catch_6f

    .line 137
    move-object/from16 v17, v5

    move-object v5, v14

    move v15, v7

    move v7, v0

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move v15, v10

    move-object v10, v11

    :try_start_64
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0
    :try_end_68
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_64 .. :try_end_68} :catch_6a

    move-object v8, v0

    goto :goto_6d

    .line 141
    :catch_6a
    move-exception v0

    goto :goto_71

    .line 149
    :cond_6c
    const/4 v8, 0x0

    :goto_6d
    const/4 v15, 0x0

    goto :goto_81

    .line 141
    :catch_6f
    move-exception v0

    move v15, v10

    .line 142
    :goto_71
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    if-ne v4, v15, :cond_78

    .line 143
    const/4 v8, 0x0

    const/4 v15, 0x2

    goto :goto_81

    .line 144
    :cond_78
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_80

    .line 145
    const/4 v8, 0x0

    const/4 v15, 0x3

    goto :goto_81

    .line 147
    :cond_80
    const/4 v8, 0x0

    .line 151
    :goto_81
    iget-boolean v0, v1, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v0, :cond_8c

    if-nez v15, :cond_8c

    .line 152
    const/16 v0, 0x383

    invoke-static {v0, v2, v3, v11, v15}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 155
    :cond_8c
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_f9

    if-nez v8, :cond_f9

    .line 156
    const/4 v1, 0x2

    if-ne v15, v1, :cond_ad

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase1; bind timed out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 158
    :cond_ad
    const/4 v1, 0x3

    if-ne v15, v1, :cond_c8

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase1; call timed out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 160
    :cond_c8
    if-eqz v15, :cond_e2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase1; service connection error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 163
    :cond_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase1; No results matched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_f9
    :goto_f9
    if-nez v8, :cond_10f

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10f

    .line 168
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    invoke-static {v14, v11}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v11, v2, v1, v3}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    return-object v0

    .line 171
    :cond_10f
    return-object v8
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .registers 20

    .line 177
    move-object/from16 v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 178
    iget-object v1, v0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v11, v1, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 179
    sget-boolean v1, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    const-string v12, "["

    const-string v13, "PackageManager"

    if-eqz v1, :cond_29

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase2; resolving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_29
    iget-object v2, v0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 183
    invoke-static {v2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    .line 185
    new-instance v14, Lcom/android/server/pm/InstantAppResolver$1;

    move-object v1, v14

    move-object/from16 v3, p2

    move-object v4, v11

    move-object v5, v8

    move-object/from16 v6, p3

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Landroid/content/Intent;Landroid/content/pm/InstantAppRequest;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    .line 226
    :try_start_3c
    iget-object v1, v0, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 227
    invoke-virtual {v1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v2

    iget v3, v0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 226
    move-object/from16 v0, p1

    move-object v1, v8

    move-object v4, v11

    move-object v5, v14

    move-object/from16 v6, p4

    move-wide v7, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/Intent;[IILjava/lang/String;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_4f
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_3c .. :try_end_4f} :catch_50

    .line 243
    goto :goto_93

    .line 229
    :catch_50
    move-exception v0

    .line 230
    nop

    .line 231
    iget v0, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_59

    .line 232
    move v2, v1

    .line 234
    :cond_59
    const/16 v0, 0x384

    invoke-static {v0, v9, v10, v11, v2}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    .line 236
    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_93

    .line 237
    if-ne v2, v1, :cond_7c

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase2; bind timed out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 240
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Phase2; service connection error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_93
    :goto_93
    return-void
.end method

.method private static filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    .line 363
    move-object/from16 v6, p6

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v7

    .line 364
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v8

    .line 365
    nop

    .line 366
    nop

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_22

    array-length v0, v7

    if-lez v0, :cond_20

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_20

    goto :goto_22

    :cond_20
    move v11, v9

    goto :goto_23

    :cond_22
    :goto_22
    move v11, v10

    .line 369
    :goto_23
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    move v15, v9

    move-object v14, v13

    :goto_2a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/InstantAppResolveInfo;

    .line 370
    if-eqz v11, :cond_47

    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 371
    const-string v0, "PackageManager"

    const-string v1, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    goto :goto_2a

    .line 375
    :cond_47
    invoke-virtual {v5}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v0

    .line 378
    array-length v1, v7

    if-lez v1, :cond_6a

    if-nez v11, :cond_53

    array-length v1, v0

    if-lez v1, :cond_6a

    .line 379
    :cond_53
    nop

    .line 381
    array-length v1, v7

    sub-int/2addr v1, v10

    :goto_56
    if-ltz v1, :cond_66

    .line 382
    aget-object v2, v8, v1

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 383
    nop

    .line 384
    move v0, v10

    goto :goto_67

    .line 381
    :cond_63
    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    :cond_66
    move v0, v9

    .line 387
    :goto_67
    if-nez v0, :cond_6a

    .line 388
    goto :goto_2a

    .line 392
    :cond_6a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolver;->computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_8d

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 396
    move v15, v10

    .line 398
    :cond_81
    if-nez v14, :cond_8a

    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v14, v1

    goto :goto_8d

    .line 401
    :cond_8a
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 404
    :cond_8d
    :goto_8d
    goto :goto_2a

    .line 405
    :cond_8e
    if-eqz v14, :cond_a2

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 406
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    .line 407
    move-object/from16 v1, p1

    invoke-static {v1, v6}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v6, v15, v1, v14}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    .line 406
    return-object v0

    .line 410
    :cond_a2
    return-object v13
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 92
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 95
    :cond_b
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static logMetrics(IJLjava/lang/String;I)V
    .registers 8

    .line 507
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 508
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    new-instance v0, Ljava/lang/Long;

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 509
    const/16 p1, 0x385

    invoke-virtual {p0, p1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 511
    const/16 p1, 0x387

    invoke-virtual {p0, p1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 512
    const/16 p2, 0x386

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 513
    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 514
    return-void
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_23

    .line 107
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    goto :goto_13

    .line 111
    :cond_23
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 112
    const/4 v1, 0x0

    goto :goto_35

    .line 113
    :cond_2b
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    :goto_35
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method
