.class Lcom/android/server/webkit/WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;,
        Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VALIDITY_INCORRECT_SDK_VERSION:I = 0x1

.field private static final VALIDITY_INCORRECT_SIGNATURE:I = 0x3

.field private static final VALIDITY_INCORRECT_VERSION_CODE:I = 0x2

.field private static final VALIDITY_NO_LIBRARY_FLAG:I = 0x4

.field private static final VALIDITY_OK:I = 0x0

.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:J

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 59
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 61
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 64
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 74
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .registers 3

    .line 389
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1f

    .line 390
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_1a

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 395
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 396
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_19

    .line 397
    :catch_15
    move-exception v0

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 403
    :goto_19
    goto :goto_1f

    .line 405
    :cond_1a
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 408
    :cond_1f
    :goto_1f
    return-void
.end method

.method private dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 14

    .line 549
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 550
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_a3

    aget-object v4, v0, v3

    .line 552
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 553
    invoke-interface {v5, v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 554
    nop

    .line 555
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/UserPackage;

    invoke-virtual {v5}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 556
    const/4 v6, 0x1

    if-nez v5, :cond_38

    .line 557
    new-array v5, v6, [Ljava/lang/Object;

    iget-object v4, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v4, v5, v2

    const-string v4, "    %s is NOT installed."

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    goto :goto_9f

    .line 561
    :cond_38
    invoke-direct {p0, v4, v5}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v7

    .line 562
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v10, v9, v2

    .line 565
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 566
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 562
    const-string/jumbo v10, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 567
    if-nez v7, :cond_88

    .line 568
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 569
    invoke-interface {v7, v10, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v4

    .line 568
    invoke-static {v4}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v4

    .line 570
    new-array v7, v8, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v7, v2

    aput-object v9, v7, v6

    .line 574
    if-eqz v4, :cond_7a

    const-string v4, ""

    goto :goto_7c

    :cond_7a
    const-string v4, "NOT"

    :goto_7c
    aput-object v4, v7, v11

    .line 570
    const-string v4, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    goto :goto_9f

    .line 576
    :cond_88
    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v9, v4, v6

    .line 579
    invoke-static {v7}, Lcom/android/server/webkit/WebViewUpdater;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 576
    const-string v5, "    Invalid package %s (%s), reason: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 582
    :cond_a3
    return-void
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 280
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_33

    aget-object v5, v0, v4

    .line 281
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 283
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 284
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 286
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 287
    iget-object v0, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0

    .line 280
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 295
    :cond_33
    array-length v1, v0

    move v2, v3

    :goto_35
    if-ge v2, v1, :cond_55

    aget-object v4, v0, v2

    .line 296
    iget-object v5, v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v5, v5, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v5, :cond_52

    .line 298
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 299
    invoke-interface {v5, v6, v7}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 301
    invoke-static {v5}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 302
    iget-object v0, v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0

    .line 295
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 308
    :cond_55
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 309
    new-instance v0, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;

    const-string v1, "Could not find a loadable WebView package"

    invoke-direct {v0, v1}, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInvalidityReason(I)Ljava/lang/String;
    .registers 2

    .line 585
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 595
    const-string p0, "Unexcepted validity-reason"

    return-object p0

    .line 593
    :cond_f
    const-string p0, "No WebView-library manifest flag"

    return-object p0

    .line 591
    :cond_12
    const-string p0, "Incorrect signature"

    return-object p0

    .line 589
    :cond_15
    const-string p0, "Version code too low"

    return-object p0

    .line 587
    :cond_18
    const-string p0, "SDK version too low"

    return-object p0
.end method

.method private getMinimumVersionCode()J
    .registers 11

    .line 471
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 472
    return-wide v0

    .line 475
    :cond_9
    const-wide/16 v0, -0x1

    .line 476
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_31

    aget-object v7, v4, v6

    .line 477
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_2e

    .line 479
    :try_start_1b
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 480
    invoke-interface {v8, v7}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_23} :catch_2d

    .line 481
    cmp-long v9, v0, v2

    if-ltz v9, :cond_2b

    cmp-long v9, v7, v0

    if-gez v9, :cond_2c

    .line 482
    :cond_2b
    move-wide v0, v7

    .line 486
    :cond_2c
    goto :goto_2e

    .line 484
    :catch_2d
    move-exception v7

    .line 476
    :cond_2e
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 490
    :cond_31
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 491
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    return-wide v0
.end method

.method private getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .registers 7

    .line 251
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 255
    :try_start_f
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 256
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 257
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 258
    new-instance v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_29} :catch_2a

    .line 262
    :cond_29
    goto :goto_2b

    .line 260
    :catch_2a
    move-exception v3

    .line 253
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 264
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    return-object v0
.end method

.method static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 319
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UserPackage;

    .line 320
    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    .line 323
    :cond_1d
    goto :goto_4

    .line 321
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0

    .line 324
    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 208
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_21

    .line 209
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 214
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 215
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 216
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 217
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result p1

    iput p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 220
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    goto :goto_23

    .line 222
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 224
    :goto_23
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .registers 8

    .line 497
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 500
    :cond_8
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_11

    return v0

    .line 503
    :cond_11
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_18

    return v1

    .line 506
    :cond_18
    iget-object p0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    move v2, v1

    :goto_1c
    if-ge v2, p2, :cond_2e

    aget-object v3, p0, v2

    .line 507
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return v0

    .line 506
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 510
    :cond_2e
    return v1
.end method

.method private validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 7

    .line 419
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 420
    const/4 p1, 0x1

    return p1

    .line 422
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdater;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 423
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_20

    .line 426
    const/4 p1, 0x2

    return p1

    .line 428
    :cond_20
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdater;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 429
    const/4 p1, 0x3

    return p1

    .line 431
    :cond_2a
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_34

    .line 432
    const/4 p1, 0x4

    return p1

    .line 434
    :cond_34
    const/4 p1, 0x0

    return p1
.end method

.method private static versionCodeGE(JJ)Z
    .registers 6

    .line 454
    const-wide/32 v0, 0x186a0

    div-long/2addr p0, v0

    .line 455
    div-long/2addr p2, v0

    .line 457
    cmp-long p0, p0, p2

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private webViewIsReadyLocked()Z
    .registers 3

    .line 380
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 155
    if-nez p1, :cond_9

    const-string p1, ""

    return-object p1

    .line 156
    :cond_9
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .registers 10

    .line 514
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_10

    .line 516
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 518
    :cond_10
    const-string v1, "  Current WebView package (name, version): (%s, %s)"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    :goto_27
    const-string v1, "  Minimum targetSdkVersion: %d"

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v6, 0x1d

    .line 523
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 522
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    const-string v1, "  Minimum WebView version code: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 525
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 524
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    const-string v1, "  Number of relros started: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 527
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 526
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    const-string v1, "  Number of relros finished: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 529
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 528
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    const-string v1, "  WebView package dirty: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    const-string v1, "  Any WebView package installed: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 532
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 531
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_c2

    .line 535
    :try_start_99
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 536
    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v2, v4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b0
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_99 .. :try_end_b0} :catch_b1
    .catchall {:try_start_99 .. :try_end_b0} :catchall_c2

    .line 542
    goto :goto_bd

    .line 540
    :catch_b1
    move-exception v1

    .line 541
    :try_start_b2
    const-string v1, "  Preferred WebView package: none"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    :goto_bd
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 545
    monitor-exit v0

    .line 546
    return-void

    .line 545
    :catchall_c2
    move-exception p1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_b2 .. :try_end_c4} :catchall_c2

    throw p1
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 372
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 5

    .line 231
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 232
    array-length v1, v0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    .line 234
    const/4 v2, 0x0

    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 235
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v2

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 237
    :cond_14
    return-object v1
.end method

.method isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .registers 3

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method notifyRelroCreationCompleted()V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 330
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method packageStateChanged(Ljava/lang/String;I)V
    .registers 9

    .line 77
    iget-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_84

    aget-object v3, p2, v2

    .line 78
    iget-object v4, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 81
    nop

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 87
    const/4 p1, 0x0

    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2a

    .line 89
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_29
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1d .. :try_end_29} :catch_57
    .catchall {:try_start_1d .. :try_end_29} :catchall_55

    goto :goto_2b

    .line 88
    :cond_2a
    move-object v0, p1

    .line 94
    :goto_2b
    :try_start_2b
    iget-object v2, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 95
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;
    :try_end_3f
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_2b .. :try_end_3f} :catch_53
    .catchall {:try_start_2b .. :try_end_3f} :catchall_55

    if-nez v2, :cond_42

    goto :goto_44

    :cond_42
    move v2, v1

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v2, 0x1

    .line 100
    :goto_45
    :try_start_45
    iget-object v3, v3, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 102
    if-eqz v2, :cond_50

    .line 103
    invoke-direct {p0, p2}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_50
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_45 .. :try_end_50} :catch_51
    .catchall {:try_start_45 .. :try_end_50} :catchall_55

    .line 109
    :cond_50
    goto :goto_72

    .line 105
    :catch_51
    move-exception p2

    goto :goto_5a

    :catch_53
    move-exception p2

    goto :goto_59

    .line 110
    :catchall_55
    move-exception p1

    goto :goto_7f

    .line 105
    :catch_57
    move-exception p2

    move-object v0, p1

    :goto_59
    move v2, v1

    .line 106
    :goto_5a
    :try_start_5a
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 107
    sget-object p1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find valid WebView package to create relro with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_72
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_55

    .line 111
    if-eqz v2, :cond_7e

    if-nez v1, :cond_7e

    if-eqz v0, :cond_7e

    .line 117
    iget-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {p1, v0}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 119
    :cond_7e
    return-void

    .line 110
    :goto_7f
    :try_start_7f
    monitor-exit v4
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_55

    throw p1

    .line 77
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 122
    :cond_84
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .registers 5

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_32

    .line 127
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 128
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 136
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    :cond_28
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 140
    monitor-exit v0

    .line 144
    goto :goto_3a

    .line 140
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 141
    :catchall_32
    move-exception v0

    .line 143
    sget-object v1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :goto_3a
    return-void
.end method

.method updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7

    .line 165
    nop

    .line 166
    nop

    .line 167
    nop

    .line 168
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_6
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 171
    if-eqz p1, :cond_11

    .line 172
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_54

    .line 176
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 177
    if-eqz v1, :cond_24

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_11 .. :try_end_1f} :catch_38
    .catchall {:try_start_11 .. :try_end_1f} :catchall_54

    if-nez v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    .line 185
    :goto_25
    nop

    .line 187
    if-eqz v2, :cond_2b

    .line 188
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 190
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_54

    .line 192
    if-eqz v2, :cond_37

    if-eqz v1, :cond_37

    .line 193
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 198
    :cond_37
    return-object p1

    .line 179
    :catch_38
    move-exception p1

    .line 182
    const/4 v1, 0x0

    :try_start_3a
    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 183
    sget-object v2, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find WebView package to use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    monitor-exit v0

    return-object v1

    .line 190
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_54

    throw p1
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 10

    .line 335
    nop

    .line 337
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    .line 338
    nop

    .line 339
    nop

    .line 340
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 341
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v5

    .line 342
    :goto_15
    if-nez v5, :cond_30

    .line 343
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_79

    .line 344
    cmp-long v8, v6, v0

    if-ltz v8, :cond_21

    goto :goto_30

    .line 346
    :cond_21
    :try_start_21
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29
    .catchall {:try_start_21 .. :try_end_28} :catchall_79

    goto :goto_2a

    .line 347
    :catch_29
    move-exception v5

    :goto_2a
    nop

    .line 348
    :try_start_2b
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v5

    .line 349
    goto :goto_15

    .line 351
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 352
    if-eqz v5, :cond_36

    const/4 v1, 0x0

    goto :goto_69

    .line 353
    :cond_36
    iget-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v1, :cond_3c

    .line 354
    const/4 v1, 0x4

    goto :goto_69

    .line 358
    :cond_3c
    const/4 v1, 0x3

    .line 359
    sget-object v2, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " relros finished "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " package dirty? "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_2b .. :try_end_6a} :catchall_79

    .line 365
    if-nez v5, :cond_73

    sget-object v2, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v3, "creating relro file timed out"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_73
    new-instance v2, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v2, v0, v1}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v2

    .line 364
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0
.end method
