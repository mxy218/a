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
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "systemInterface"  # Lcom/android/server/webkit/SystemInterface;

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

    .line 407
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1f

    .line 408
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_1a

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 413
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 414
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    .end local v0  # "newPackage":Landroid/content/pm/PackageInfo;
    goto :goto_19

    .line 415
    :catch_15
    move-exception v0

    .line 416
    .local v0, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 421
    .end local v0  # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_19
    goto :goto_1f

    .line 423
    :cond_1a
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 426
    :cond_1f
    :goto_1f
    return-void
.end method

.method private dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 16
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 567
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 568
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    const-string v1, "  WebView packages:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_a3

    aget-object v4, v0, v3

    .line 570
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 571
    invoke-interface {v5, v6, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v5

    .line 572
    .local v5, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    nop

    .line 573
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/UserPackage;

    invoke-virtual {v6}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 574
    .local v6, "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x1

    if-nez v6, :cond_38

    .line 575
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v2

    const-string v8, "    %s is NOT installed."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    goto :goto_9f

    .line 579
    :cond_38
    invoke-direct {p0, v4, v6}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v8

    .line 580
    .local v8, "validity":I
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 583
    invoke-virtual {v6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 584
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 580
    const-string/jumbo v11, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 585
    .local v10, "packageDetails":Ljava/lang/String;
    if-nez v8, :cond_88

    .line 586
    iget-object v11, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v13, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 587
    invoke-interface {v11, v13, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v11

    .line 586
    invoke-static {v11}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v11

    .line 588
    .local v11, "installedForAllUsers":Z
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v13, v9, v2

    aput-object v10, v9, v7

    .line 592
    if-eqz v11, :cond_7a

    const-string v7, ""

    goto :goto_7c

    :cond_7a
    const-string v7, "NOT"

    :goto_7c
    aput-object v7, v9, v12

    .line 588
    const-string v7, "    Valid package %s (%s) is %s installed/enabled for all users"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    .end local v11  # "installedForAllUsers":Z
    goto :goto_9f

    .line 594
    :cond_88
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v11, v9, v2

    aput-object v10, v9, v7

    .line 597
    invoke-static {v8}, Lcom/android/server/webkit/WebViewUpdater;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v12

    .line 594
    const-string v7, "    Invalid package %s (%s), reason: %s"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    .end local v4  # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5  # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    .end local v6  # "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v8  # "validity":I
    .end local v10  # "packageDetails":Ljava/lang/String;
    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 600
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

    .line 287
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 289
    .local v0, "providers":[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "userChosenProvider":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_33

    aget-object v5, v0, v4

    .line 294
    .local v5, "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 296
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 297
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 299
    .local v6, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 300
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 293
    .end local v5  # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .end local v6  # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 308
    :cond_33
    array-length v2, v0

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    .line 309
    .restart local v5  # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_52

    .line 311
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 312
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 314
    .restart local v6  # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 315
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 308
    .end local v5  # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .end local v6  # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 321
    :cond_55
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 322
    new-instance v2, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;

    const-string v3, "Could not find a loadable WebView package"

    invoke-direct {v2, v3}, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getInvalidityReason(I)Ljava/lang/String;
    .registers 2
    .param p0, "invalidityReason"  # I

    .line 603
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 613
    const-string v0, "Unexcepted validity-reason"

    return-object v0

    .line 611
    :cond_f
    const-string v0, "No WebView-library manifest flag"

    return-object v0

    .line 609
    :cond_12
    const-string v0, "Incorrect signature"

    return-object v0

    .line 607
    :cond_15
    const-string v0, "Version code too low"

    return-object v0

    .line 605
    :cond_18
    const-string v0, "SDK version too low"

    return-object v0
.end method

.method private getMinimumVersionCode()J
    .registers 12

    .line 489
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 490
    return-wide v0

    .line 493
    :cond_9
    const-wide/16 v0, -0x1

    .line 494
    .local v0, "minimumVersionCode":J
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v5, :cond_31

    aget-object v7, v4, v6

    .line 495
    .local v7, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_2e

    .line 497
    :try_start_1b
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v9, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 498
    invoke-interface {v8, v9}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_23} :catch_2d

    .line 499
    .local v8, "versionCode":J
    cmp-long v10, v0, v2

    if-ltz v10, :cond_2b

    cmp-long v10, v8, v0

    if-gez v10, :cond_2c

    .line 500
    :cond_2b
    move-wide v0, v8

    .line 504
    .end local v8  # "versionCode":J
    :cond_2c
    goto :goto_2e

    .line 502
    :catch_2d
    move-exception v8

    .line 494
    .end local v7  # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_2e
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 508
    :cond_31
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 509
    iget-wide v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    return-wide v2
.end method

.method private getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .registers 7

    .line 264
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 265
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 268
    :try_start_f
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 269
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 270
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 271
    new-instance v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_29} :catch_2a

    .line 275
    .end local v3  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_29
    goto :goto_2b

    .line 273
    :catch_2a
    move-exception v3

    .line 266
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 277
    .end local v2  # "n":I
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    return-object v2
.end method

.method static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 332
    .local p0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UserPackage;

    .line 334
    .local v1, "userPackage":Landroid/webkit/UserPackage;
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 335
    goto :goto_4

    .line 338
    :cond_1d
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_2b

    .line 341
    .end local v1  # "userPackage":Landroid/webkit/UserPackage;
    :cond_2a
    goto :goto_4

    .line 339
    .restart local v1  # "userPackage":Landroid/webkit/UserPackage;
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return v0

    .line 342
    .end local v1  # "userPackage":Landroid/webkit/UserPackage;
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "newPackage"  # Landroid/content/pm/PackageInfo;

    .line 219
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 221
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_21

    .line 222
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 227
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 229
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 230
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 233
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    goto :goto_23

    .line 235
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 237
    :goto_23
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .registers 10
    .param p0, "provider"  # Landroid/webkit/WebViewProviderInfo;
    .param p1, "packageInfo"  # Landroid/content/pm/PackageInfo;
    .param p2, "systemInterface"  # Lcom/android/server/webkit/SystemInterface;

    .line 515
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 518
    :cond_8
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 521
    :cond_11
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    return v2

    .line 524
    :cond_18
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v2

    :goto_1c
    if-ge v4, v3, :cond_2e

    aget-object v5, v0, v4

    .line 525
    .local v5, "signature":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    return v1

    .line 524
    .end local v5  # "signature":Landroid/content/pm/Signature;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 528
    :cond_2e
    return v2
.end method

.method private validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 7
    .param p1, "configInfo"  # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"  # Landroid/content/pm/PackageInfo;

    .line 437
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 438
    const/4 v0, 0x1

    return v0

    .line 440
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdater;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 441
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_20

    .line 444
    const/4 v0, 0x2

    return v0

    .line 446
    :cond_20
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdater;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 447
    const/4 v0, 0x3

    return v0

    .line 449
    :cond_2a
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 450
    const/4 v0, 0x4

    return v0

    .line 452
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private static versionCodeGE(JJ)Z
    .registers 9
    .param p0, "versionCode1"  # J
    .param p2, "versionCode2"  # J

    .line 472
    const-wide/32 v0, 0x186a0

    div-long v2, p0, v0

    .line 473
    .local v2, "v1":J
    div-long v0, p2, v0

    .line 475
    .local v0, "v2":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    return v4
.end method

.method private webViewIsReadyLocked()Z
    .registers 3

    .line 398
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
    .registers 4
    .param p1, "newProviderName"  # Ljava/lang/String;

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 168
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_9

    const-string v1, ""

    return-object v1

    .line 169
    :cond_9
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v1
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 532
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_10

    .line 534
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 536
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

    .line 540
    :goto_27
    const-string v1, "  Minimum targetSdkVersion: %d"

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v6, 0x1d

    .line 541
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 540
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const-string v1, "  Minimum WebView version code: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 543
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 542
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string v1, "  Number of relros started: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 545
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 544
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    const-string v1, "  Number of relros finished: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 547
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 546
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    const-string v1, "  WebView package dirty: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    const-string v1, "  Any WebView package installed: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 550
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 549
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_c2

    .line 553
    :try_start_99
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 554
    .local v1, "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v2, v4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b0
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_99 .. :try_end_b0} :catch_b1
    .catchall {:try_start_99 .. :try_end_b0} :catchall_c2

    .line 560
    .end local v1  # "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    goto :goto_bd

    .line 558
    :catch_b1
    move-exception v1

    .line 559
    .local v1, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :try_start_b2
    const-string v2, "  Preferred WebView package: none"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    .end local v1  # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_bd
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 563
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_b2 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 390
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 5

    .line 244
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 245
    .local v0, "providersAndPackageInfos":[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    array-length v1, v0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    .line 247
    .local v1, "providers":[Landroid/webkit/WebViewProviderInfo;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 248
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 250
    .end local v2  # "n":I
    :cond_14
    return-object v1
.end method

.method isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "configInfo"  # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"  # Landroid/content/pm/PackageInfo;

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method notifyRelroCreationCompleted()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 348
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method packageStateChanged(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "changedState"  # I

    .line 77
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_9e

    aget-object v4, v0, v3

    .line 78
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 80
    .local v5, "webviewPackage":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "updateWebView":Z
    const/4 v1, 0x0

    .line 83
    .local v1, "removedOrChangedOldPackage":Z
    const/4 v3, 0x0

    .line 84
    .local v3, "oldProviderName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 85
    .local v6, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 87
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v8

    move-object v6, v8

    .line 88
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_4a

    .line 89
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v8

    .line 90
    if-nez p2, :cond_36

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_32
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1c .. :try_end_32} :catch_71
    .catchall {:try_start_1c .. :try_end_32} :catchall_6f

    if-eqz v8, :cond_36

    .line 95
    :try_start_34
    monitor-exit v7
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_6f

    return-void

    .line 97
    :cond_36
    :try_start_36
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    iget-wide v8, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-wide v10, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_44
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_36 .. :try_end_44} :catch_71
    .catchall {:try_start_36 .. :try_end_44} :catchall_6f

    cmp-long v8, v8, v10

    if-nez v8, :cond_4a

    .line 101
    :try_start_48
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_6f

    return-void

    .line 107
    :cond_4a
    :try_start_4a
    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_60

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 109
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_60

    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v8, :cond_61

    :cond_60
    const/4 v2, 0x1

    :cond_61
    move v0, v2

    .line 113
    iget-object v2, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 115
    if-eqz v0, :cond_6e

    .line 116
    invoke-direct {p0, v6}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_6e
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_4a .. :try_end_6e} :catch_71
    .catchall {:try_start_4a .. :try_end_6e} :catchall_6f

    .line 122
    :cond_6e
    goto :goto_8b

    .line 123
    :catchall_6f
    move-exception v2

    goto :goto_98

    .line 118
    :catch_71
    move-exception v2

    .line 119
    .local v2, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v8, 0x0

    :try_start_73
    iput-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 120
    sget-object v8, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find valid WebView package to create relro with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v2  # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_8b
    monitor-exit v7
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_6f

    .line 124
    if-eqz v0, :cond_97

    if-nez v1, :cond_97

    if-eqz v3, :cond_97

    .line 130
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 132
    :cond_97
    return-void

    .line 123
    :goto_98
    :try_start_98
    monitor-exit v7
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_6f

    throw v2

    .line 77
    .end local v0  # "updateWebView":Z
    .end local v1  # "removedOrChangedOldPackage":Z
    .end local v3  # "oldProviderName":Ljava/lang/String;
    .end local v4  # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5  # "webviewPackage":Ljava/lang/String;
    .end local v6  # "newPackage":Landroid/content/pm/PackageInfo;
    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 135
    :cond_9e
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .registers 6

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_32

    .line 140
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 141
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "userSetting":Ljava/lang/String;
    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 149
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    :cond_28
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v2}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 153
    .end local v1  # "userSetting":Ljava/lang/String;
    monitor-exit v0

    .line 157
    goto :goto_3a

    .line 153
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    .end local p0  # "this":Lcom/android/server/webkit/WebViewUpdater;
    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 154
    .restart local p0  # "this":Lcom/android/server/webkit/WebViewUpdater;
    :catchall_32
    move-exception v0

    .line 156
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .end local v0  # "t":Ljava/lang/Throwable;
    :goto_3a
    return-void
.end method

.method updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 11
    .param p1, "newProviderName"  # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "oldPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 180
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 181
    .local v2, "providerChanged":Z
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 182
    :try_start_6
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v4

    .line 184
    if-eqz p1, :cond_12

    .line 185
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_57

    .line 189
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    .line 190
    if-eqz v0, :cond_26

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_12 .. :try_end_21} :catch_3b
    .catchall {:try_start_12 .. :try_end_21} :catchall_57

    if-nez v4, :cond_24

    goto :goto_26

    :cond_24
    const/4 v4, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v4, 0x1

    :goto_27
    move v2, v4

    .line 198
    nop

    .line 200
    if-eqz v2, :cond_2e

    .line 201
    :try_start_2b
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 203
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_57

    .line 205
    if-eqz v2, :cond_3a

    if-eqz v0, :cond_3a

    .line 206
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 211
    :cond_3a
    return-object v1

    .line 192
    :catch_3b
    move-exception v4

    .line 195
    .local v4, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v5, 0x0

    :try_start_3d
    iput-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 196
    sget-object v6, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find WebView package to use "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v3

    return-object v5

    .line 203
    .end local v4  # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :catchall_57
    move-exception v4

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    throw v4
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 16

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "webViewPackage":Landroid/content/pm/PackageInfo;
    const-wide/32 v1, 0xf4240

    .line 355
    .local v1, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v3, v7

    .line 356
    .local v3, "timeoutTimeMs":J
    const/4 v7, 0x0

    .line 357
    .local v7, "webViewReady":Z
    const/4 v8, 0x0

    .line 358
    .local v8, "webViewStatus":I
    iget-object v9, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 359
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    move v7, v10

    .line 360
    :goto_19
    if-nez v7, :cond_35

    .line 361
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long/2addr v10, v5
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_7f

    .line 362
    .local v10, "timeNowMs":J
    cmp-long v12, v10, v3

    if-ltz v12, :cond_25

    goto :goto_35

    .line 364
    :cond_25
    :try_start_25
    iget-object v12, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v13, v3, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2c} :catch_2d
    .catchall {:try_start_25 .. :try_end_2c} :catchall_7f

    goto :goto_2e

    .line 365
    :catch_2d
    move-exception v12

    :goto_2e
    nop

    .line 366
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v12

    move v7, v12

    .line 367
    .end local v10  # "timeNowMs":J
    goto :goto_19

    .line 369
    :cond_35
    :goto_35
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v5

    .line 370
    if-eqz v7, :cond_3b

    goto :goto_6f

    .line 371
    :cond_3b
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v5, :cond_42

    .line 372
    const/4 v5, 0x4

    move v8, v5

    .end local v8  # "webViewStatus":I
    .local v5, "webViewStatus":I
    goto :goto_6f

    .line 376
    .end local v5  # "webViewStatus":I
    .restart local v8  # "webViewStatus":I
    :cond_42
    const/4 v8, 0x3

    .line 377
    sget-object v5, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " relros finished "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " package dirty? "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_6f
    monitor-exit v9
    :try_end_70
    .catchall {:try_start_2f .. :try_end_70} :catchall_7f

    .line 383
    if-nez v7, :cond_79

    sget-object v5, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v6, "creating relro file timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_79
    new-instance v5, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v5, v0, v8}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v5

    .line 382
    :catchall_7f
    move-exception v5

    :try_start_80
    monitor-exit v9
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v5
.end method
