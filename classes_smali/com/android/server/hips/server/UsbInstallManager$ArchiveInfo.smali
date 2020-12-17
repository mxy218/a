.class Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;
.super Ljava/lang/Object;
.source "UsbInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/UsbInstallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArchiveInfo"
.end annotation


# instance fields
.field mApkName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field private mInstalledPkgLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/hips/server/UsbInstallManager;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/UsbInstallManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/hips/server/UsbInstallManager;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "apkPath"  # Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->this$0:Lcom/android/server/hips/server/UsbInstallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p2, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mContext:Landroid/content/Context;

    .line 372
    invoke-direct {p0}, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->getInstalledPkgLabels()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mInstalledPkgLabels:Ljava/util/Map;

    .line 373
    invoke-direct {p0, p3}, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->initArchiveData(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private getInstalledPkgLabels()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 402
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 403
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 404
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 405
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, "label":Ljava/lang/String;
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v4  # "info":Landroid/content/pm/PackageInfo;
    .end local v5  # "pkgName":Ljava/lang/String;
    .end local v6  # "label":Ljava/lang/String;
    goto :goto_14

    .line 408
    :cond_30
    return-object v0
.end method

.method private initArchiveData(Ljava/lang/String;)V
    .registers 6
    .param p1, "apkPath"  # Ljava/lang/String;

    .line 377
    const-string v0, "error"

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 379
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 380
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3e

    .line 381
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    .line 382
    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mInstalledPkgLabels:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 384
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mInstalledPkgLabels:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    goto :goto_3e

    .line 386
    :cond_2e
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 387
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 388
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mApkName:Ljava/lang/String;

    .line 393
    .end local v0  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 394
    iget-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_54

    if-eqz v2, :cond_54

    .line 395
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/server/UsbInstallManager$ArchiveInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 397
    :cond_54
    return-void
.end method
