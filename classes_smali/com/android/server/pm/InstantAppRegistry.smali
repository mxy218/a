.class Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;,
        Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    }
.end annotation


# static fields
.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final DEFAULT_UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final INSTANT_APPS_FOLDER:Ljava/lang/String; = "instant"

.field private static final INSTANT_APP_ANDROID_ID_FILE:Ljava/lang/String; = "android_id"

.field private static final INSTANT_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final INSTANT_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field private static final INSTANT_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field private static final INSTANT_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "InstantAppRegistry"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field private mInstalledInstantAppUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mInstantGrants:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mUninstalledInstantApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 204
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 134
    new-instance p1, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 135
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/io/File;
    .registers 2

    .line 80
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V
    .registers 5

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private addUninstalledInstantAppLPw(Landroid/content/pm/PackageParser$Package;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 495
    if-nez v0, :cond_8

    .line 496
    return-void

    .line 498
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v1, :cond_13

    .line 499
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 501
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 502
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 503
    if-nez v1, :cond_27

    .line 504
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 505
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    :cond_27
    new-instance v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 509
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeInstantApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 513
    return-void
.end method

.method private static computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 1019
    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1020
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cookie_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dat"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1022
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method private createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;
    .registers 7

    .line 845
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 846
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 847
    return-object v1

    .line 849
    :cond_8
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 850
    return-object v1

    .line 853
    :cond_f
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 854
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 856
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object p2

    .line 857
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 858
    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 860
    if-eqz p3, :cond_37

    .line 861
    new-instance p2, Landroid/content/pm/InstantAppInfo;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p2, p1, v1, v0}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p2

    .line 864
    :cond_37
    new-instance p2, Landroid/content/pm/InstantAppInfo;

    iget-object p3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 865
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p2, p3, p1, v1, v0}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 864
    return-object p2
.end method

.method private static deleteDir(Ljava/io/File;)V
    .registers 5

    .line 1156
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_12

    .line 1158
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1159
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1162
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1163
    return-void
.end method

.method private generateInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 235
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 236
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 237
    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "InstantAppRegistry"

    if-nez v2, :cond_2e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 240
    const-string p1, "Cannot create instant app cookie directory"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v0

    .line 243
    :cond_2e
    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "android_id"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    :try_start_39
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_51

    const/4 p2, 0x0

    .line 246
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4a

    .line 247
    :try_start_46
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_51

    .line 249
    goto :goto_66

    .line 245
    :catchall_4a
    move-exception p2

    :try_start_4b
    throw p2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 247
    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_51} :catch_51

    :catch_51
    move-exception p1

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing instant app android id file: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :goto_66
    return-object v0
.end method

.method private getInstalledInstantApplicationsLPr(I)Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 818
    nop

    .line 820
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 821
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_39

    .line 822
    iget-object v3, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 823
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 824
    if-eqz v4, :cond_36

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-nez v4, :cond_24

    .line 825
    goto :goto_36

    .line 827
    :cond_24
    const/4 v4, 0x1

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v3

    .line 829
    if-nez v3, :cond_2c

    .line 830
    goto :goto_36

    .line 832
    :cond_2c
    if-nez v1, :cond_33

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 835
    :cond_33
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 838
    :cond_39
    return-object v1
.end method

.method private static getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 1152
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getInstantApplicationsDir(I)Ljava/io/File;
    .registers 3

    .line 1147
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "instant"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUninstalledInstantAppStatesLPr(I)Ljava/util/List;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;"
        }
    .end annotation

    .line 946
    nop

    .line 947
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-eqz v0, :cond_e

    .line 948
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 949
    if-eqz v0, :cond_f

    .line 950
    return-object v0

    .line 947
    :cond_e
    const/4 v0, 0x0

    .line 954
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 956
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 957
    if-eqz v1, :cond_48

    .line 958
    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_48

    aget-object v4, v1, v3

    .line 959
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 960
    goto :goto_45

    .line 962
    :cond_2c
    new-instance v5, Ljava/io/File;

    const-string v6, "metadata.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 964
    nop

    .line 965
    invoke-static {v5}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v4

    .line 966
    if-nez v4, :cond_3b

    .line 967
    goto :goto_45

    .line 969
    :cond_3b
    if-nez v0, :cond_42

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 972
    :cond_42
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 977
    :cond_48
    if-eqz v0, :cond_5a

    .line 978
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v1, :cond_55

    .line 979
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 981
    :cond_55
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 984
    :cond_5a
    return-object v0
.end method

.method private getUninstalledInstantApplicationsLPr(I)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 873
    nop

    .line 874
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantAppStatesLPr(I)Ljava/util/List;

    move-result-object p1

    .line 875
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2d

    .line 879
    :cond_f
    nop

    .line 880
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 881
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2c

    .line 882
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 883
    if-nez v0, :cond_24

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 886
    :cond_24
    iget-object v3, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 888
    :cond_2c
    return-object v0

    .line 876
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private hasInstantAppMetadataLPr(Ljava/lang/String;I)Z
    .registers 6

    .line 617
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 618
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_34

    .line 621
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_32

    goto :goto_34

    :cond_32
    const/4 p1, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p1, 0x1

    .line 618
    :goto_35
    return p1
.end method

.method private hasUninstalledInstantAppStateLPr(Ljava/lang/String;I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 599
    return v1

    .line 601
    :cond_6
    nop

    .line 602
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 603
    if-nez p2, :cond_10

    .line 604
    return v1

    .line 606
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 607
    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_2e

    .line 608
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 609
    iget-object v3, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v3}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 610
    const/4 p1, 0x1

    return p1

    .line 607
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 613
    :cond_2e
    return v1
.end method

.method static synthetic lambda$deleteInstantApplicationMetadataLPw$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    .line 555
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onPackageInstalledLPw$0(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    .line 290
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$pruneInstantApps$3(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 7

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    sub-long/2addr v0, v2

    .line 778
    cmp-long p0, v0, p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1049
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1050
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1051
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1052
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object p0

    return-object p0

    .line 1055
    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .registers 7

    .line 989
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 990
    return-object v1

    .line 994
    :cond_8
    :try_start_8
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_56

    .line 998
    nop

    .line 1000
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1001
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1002
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1005
    :try_start_1e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1006
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1007
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1008
    invoke-static {v4, v1}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v1

    invoke-direct {v5, v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_34} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_34} :catch_3a
    .catchall {:try_start_1e .. :try_end_34} :catchall_38

    .line 1013
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1007
    return-object v5

    .line 1013
    :catchall_38
    move-exception p0

    goto :goto_52

    .line 1009
    :catch_3a
    move-exception v1

    .line 1010
    :try_start_3b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing instant metadata file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_38

    .line 1013
    :goto_52
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    .line 995
    :catch_56
    move-exception p0

    .line 996
    const-string p0, "InstantAppRegistry"

    const-string v0, "No instant metadata file"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-object v1
.end method

.method private static parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1061
    const/4 v0, 0x0

    const-string v1, "label"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1067
    :cond_15
    :goto_15
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1068
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1069
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/InstantAppRegistry;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_15

    .line 1073
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 1074
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1076
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1077
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1079
    new-instance v2, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v2, p1, v0, p0, v1}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method private static parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1087
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1088
    :cond_4
    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1089
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1090
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    const-string v2, "granted"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1093
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_2c
    goto :goto_4

    .line 1097
    :cond_2d
    return-void
.end method

.method private static peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 7

    .line 1027
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1028
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 1029
    return-object v0

    .line 1031
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1032
    if-nez p0, :cond_13

    .line 1033
    return-object v0

    .line 1035
    :cond_13
    array-length p1, p0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_3b

    aget-object v2, p0, v1

    .line 1036
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_38

    .line 1037
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1038
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1039
    return-object v2

    .line 1035
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1042
    :cond_3b
    return-object v0
.end method

.method private peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;
    .registers 8

    .line 918
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-eqz v0, :cond_2c

    .line 919
    nop

    .line 920
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 921
    if-eqz v0, :cond_2c

    .line 922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 923
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2c

    .line 924
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 925
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 926
    invoke-virtual {v4}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 927
    iget-object p1, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object p1

    .line 923
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 933
    :cond_2c
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "metadata.xml"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 935
    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object p1

    .line 936
    if-nez p1, :cond_3f

    .line 937
    const/4 p1, 0x0

    return-object p1

    .line 940
    :cond_3f
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object p1
.end method

.method private persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    .registers 7

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 187
    :try_start_5
    invoke-static {p2, p4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 188
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_1e

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_1e

    .line 189
    const-string p1, "InstantAppRegistry"

    const-string p2, "Cannot create instant app cookie directory"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-exit v0

    return-void

    .line 193
    :cond_1e
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_31

    .line 194
    const-string p2, "InstantAppRegistry"

    const-string p4, "Cannot delete instant app cookie file"

    invoke-static {p2, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_31
    if-eqz p1, :cond_66

    array-length p2, p1

    if-gtz p2, :cond_37

    goto :goto_66

    .line 201
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_68

    .line 202
    :try_start_38
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_4e

    const/4 p4, 0x0

    .line 203
    const/4 v0, 0x0

    :try_start_3f
    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_47

    .line 204
    :try_start_43
    invoke-static {p4, p2}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4e

    .line 206
    goto :goto_65

    .line 202
    :catchall_47
    move-exception p1

    :try_start_48
    throw p1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 204
    :catchall_49
    move-exception p4

    :try_start_4a
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p4
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error writing instant app cookie file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "InstantAppRegistry"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :goto_65
    return-void

    .line 199
    :cond_66
    :goto_66
    :try_start_66
    monitor-exit v0

    return-void

    .line 201
    :catchall_68
    move-exception p1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method private propagateInstantAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V
    .registers 11

    .line 893
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 895
    if-nez v0, :cond_9

    .line 896
    return-void

    .line 898
    :cond_9
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 899
    return-void

    .line 901
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 903
    :try_start_18
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_3e

    aget-object v5, v0, v4

    .line 904
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 905
    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v6

    .line 906
    if-eqz v6, :cond_3b

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 907
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5, p2}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_43

    .line 903
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 911
    :cond_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    nop

    .line 913
    return-void

    .line 911
    :catchall_43
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private pruneInstantApps(JJJ)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    iget-object v3, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 677
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 679
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long v4, v4, p1

    const/4 v5, 0x1

    if-ltz v4, :cond_20

    .line 680
    return v5

    .line 683
    :cond_20
    const/4 v4, 0x0

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 689
    iget-object v8, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 690
    :try_start_2a
    sget-object v9, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    .line 692
    iget-object v10, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 693
    move-object v12, v4

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v10, :cond_8e

    .line 694
    iget-object v13, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageParser$Package;

    .line 695
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v14

    sub-long v14, v6, v14

    cmp-long v14, v14, p3

    if-gez v14, :cond_51

    .line 696
    goto :goto_8a

    .line 698
    :cond_51
    iget-object v14, v13, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v14, v14, Lcom/android/server/pm/PackageSetting;

    if-nez v14, :cond_58

    .line 699
    goto :goto_8a

    .line 701
    :cond_58
    iget-object v14, v13, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 702
    nop

    .line 703
    array-length v15, v9

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_61
    if-ge v11, v15, :cond_7c

    aget v5, v9, v11

    .line 704
    invoke-virtual {v14, v5}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v17

    if-eqz v17, :cond_78

    .line 705
    invoke-virtual {v14, v5}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 706
    const/16 v16, 0x1

    goto :goto_78

    .line 708
    :cond_74
    nop

    .line 709
    const/16 v16, 0x0

    goto :goto_7c

    .line 703
    :cond_78
    :goto_78
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_61

    .line 713
    :cond_7c
    :goto_7c
    if-eqz v16, :cond_8a

    .line 714
    if-nez v12, :cond_85

    .line 715
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 717
    :cond_85
    iget-object v5, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_8a
    :goto_8a
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_3a

    .line 721
    :cond_8e
    if-eqz v12, :cond_98

    .line 722
    new-instance v4, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;

    invoke-direct {v4, v0}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    invoke-interface {v12, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 755
    :cond_98
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_2a .. :try_end_99} :catchall_13f

    .line 757
    if-eqz v12, :cond_c7

    .line 758
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .line 759
    const/4 v5, 0x0

    :goto_a0
    if-ge v5, v4, :cond_c7

    .line 760
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/String;

    .line 761
    iget-object v6, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c4

    .line 764
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v8

    cmp-long v6, v8, p1

    if-ltz v6, :cond_c4

    .line 765
    return v7

    .line 759
    :cond_c4
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 772
    :cond_c7
    iget-object v4, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 774
    :try_start_cc
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_d6
    if-ge v7, v6, :cond_139

    aget v8, v5, v7

    .line 776
    new-instance v9, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$BuKCbLr_MGBazMPl54-pWTuGHYY;

    invoke-direct {v9, v1, v2}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$BuKCbLr_MGBazMPl54-pWTuGHYY;-><init>(J)V

    invoke-direct {v0, v9, v8}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 782
    invoke-static {v8}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v8

    .line 783
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_ee

    .line 784
    const/4 v11, 0x1

    goto :goto_136

    .line 786
    :cond_ee
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 787
    if-nez v8, :cond_f6

    .line 788
    const/4 v11, 0x1

    goto :goto_136

    .line 790
    :cond_f6
    array-length v9, v8

    const/4 v10, 0x0

    :goto_f8
    if-ge v10, v9, :cond_135

    aget-object v11, v8, v10

    .line 791
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_104

    .line 792
    const/4 v11, 0x1

    goto :goto_132

    .line 795
    :cond_104
    new-instance v12, Ljava/io/File;

    const-string v13, "metadata.xml"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_113

    .line 797
    const/4 v11, 0x1

    goto :goto_132

    .line 800
    :cond_113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 801
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    sub-long v13, v13, v17

    .line 802
    cmp-long v12, v13, v1

    if-lez v12, :cond_131

    .line 803
    invoke-static {v11}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 804
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v11

    cmp-long v11, v11, p1

    if-ltz v11, :cond_12f

    .line 805
    monitor-exit v4

    const/4 v11, 0x1

    return v11

    .line 804
    :cond_12f
    const/4 v11, 0x1

    goto :goto_132

    .line 802
    :cond_131
    const/4 v11, 0x1

    .line 790
    :goto_132
    add-int/lit8 v10, v10, 0x1

    goto :goto_f8

    :cond_135
    const/4 v11, 0x1

    .line 774
    :goto_136
    add-int/lit8 v7, v7, 0x1

    goto :goto_d6

    .line 810
    :cond_139
    monitor-exit v4

    .line 812
    const/4 v0, 0x0

    return v0

    .line 810
    :catchall_13c
    move-exception v0

    monitor-exit v4
    :try_end_13e
    .catchall {:try_start_cc .. :try_end_13e} :catchall_13c

    throw v0

    .line 755
    :catchall_13f
    move-exception v0

    :try_start_140
    monitor-exit v8
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw v0
.end method

.method private removeAppLPw(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 481
    return-void

    .line 483
    :cond_5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 484
    if-nez p1, :cond_e

    .line 485
    return-void

    .line 487
    :cond_e
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 488
    return-void
.end method

.method private removeInstantAppLPw(II)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 455
    return-void

    .line 457
    :cond_5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 458
    if-nez v0, :cond_e

    .line 459
    return-void

    .line 462
    :cond_e
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v0, :cond_16

    .line 466
    return-void

    .line 468
    :cond_16
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 469
    if-nez p1, :cond_1f

    .line 470
    return-void

    .line 472
    :cond_1f
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_33

    .line 473
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 472
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 475
    :cond_33
    return-void
.end method

.method private removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;I)V"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 572
    return-void

    .line 574
    :cond_5
    nop

    .line 575
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 576
    if-nez v0, :cond_f

    .line 577
    return-void

    .line 579
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 580
    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_41

    .line 581
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 582
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 583
    goto :goto_3e

    .line 585
    :cond_24
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 586
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 587
    iget-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 588
    iget-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-gtz p1, :cond_3d

    .line 589
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 591
    :cond_3d
    return-void

    .line 580
    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 594
    :cond_41
    return-void
.end method

.method private writeInstantApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V
    .registers 9

    .line 517
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 519
    return-void

    .line 522
    :cond_d
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 525
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_26

    .line 526
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_49

    .line 528
    :cond_26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 529
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 528
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 530
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 531
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 535
    :goto_49
    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "icon.png"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 538
    :try_start_56
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_6e

    const/4 p2, 0x0

    .line 539
    :try_start_5c
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_67

    .line 540
    :try_start_63
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_6e

    .line 542
    goto :goto_76

    .line 538
    :catchall_67
    move-exception p2

    :try_start_68
    throw p2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 540
    :catchall_69
    move-exception v0

    :try_start_6a
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception p1

    .line 541
    const-string p2, "InstantAppRegistry"

    const-string v0, "Error writing instant app icon"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    :goto_76
    return-void
.end method

.method private writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V
    .registers 15

    .line 1101
    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "package"

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 1102
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1103
    return-void

    .line 1106
    :cond_1e
    new-instance v3, Ljava/io/File;

    const-string v4, "metadata.xml"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1109
    nop

    .line 1111
    const/4 v3, 0x0

    :try_start_2c
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_a0

    .line 1113
    :try_start_30
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 1114
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1115
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1117
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1119
    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1120
    const-string v6, "label"

    iget-object v8, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1121
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1120
    invoke-virtual {p1, v8}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1121
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1120
    invoke-interface {v5, v3, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    :goto_6b
    if-ge v9, v8, :cond_91

    aget-object v10, v6, v9

    .line 1125
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1126
    const-string/jumbo v11, "name"

    invoke-interface {v5, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    .line 1128
    const-string v10, "granted"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    :cond_8b
    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 1132
    :cond_91
    invoke-interface {v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    invoke-interface {v5, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1136
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1137
    invoke-virtual {p2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_9d
    .catchall {:try_start_30 .. :try_end_9d} :catchall_9e

    goto :goto_ac

    .line 1138
    :catchall_9e
    move-exception p1

    goto :goto_a2

    :catchall_a0
    move-exception p1

    move-object v4, v3

    .line 1139
    :goto_a2
    :try_start_a2
    const-string v0, "InstantAppRegistry"

    const-string v1, "Failed to write instant state, restoring backup"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    invoke-virtual {p2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_b1

    .line 1142
    :goto_ac
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1143
    nop

    .line 1144
    return-void

    .line 1142
    :catchall_b1
    move-exception p1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method


# virtual methods
.method public addInstantAppLPw(II)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 441
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    .line 443
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 444
    if-nez v0, :cond_1f

    .line 445
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 446
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    :cond_1f
    const/4 p1, 0x1

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 449
    return-void
.end method

.method public deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 554
    new-instance v0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;

    invoke-direct {v0, p1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 558
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/io/File;

    const-string v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 560
    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 561
    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 562
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 563
    if-eqz p1, :cond_33

    .line 564
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 566
    :cond_33
    return-void
.end method

.method public getInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "android_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 225
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object p1

    .line 226
    :catch_1a
    move-exception v1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read instant app android id file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InstantAppRegistry"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->generateInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInstantAppCookieLPw(Ljava/lang/String;I)[B
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 142
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 143
    return-object v1

    .line 146
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B

    move-result-object v0

    .line 147
    if-eqz v0, :cond_17

    .line 148
    return-object v0

    .line 150
    :cond_17
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_43

    .line 153
    :try_start_23
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_2c

    return-object p1

    .line 154
    :catch_2c
    move-exception p2

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error reading cookie file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InstantAppRegistry"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_43
    return-object v1
.end method

.method public getInstantAppIconLPw(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "icon.png"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 216
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstantAppsLPr(I)Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstalledInstantApplicationsLPr(I)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantApplicationsLPr(I)Ljava/util/List;

    move-result-object p1

    .line 258
    if-eqz v0, :cond_10

    .line 259
    if-eqz p1, :cond_f

    .line 260
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_f
    return-object v0

    .line 264
    :cond_10
    return-object p1
.end method

.method public grantInstantAccessLPw(ILandroid/content/Intent;II)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 407
    return-void

    .line 409
    :cond_5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 410
    if-eqz v0, :cond_6c

    invoke-virtual {v0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_6c

    .line 413
    :cond_14
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 414
    return-void

    .line 416
    :cond_1b
    if-eqz p2, :cond_38

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p2

    .line 418
    if-eqz p2, :cond_38

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 419
    return-void

    .line 422
    :cond_38
    iget-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez p2, :cond_43

    .line 423
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    .line 425
    :cond_43
    iget-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    .line 426
    if-nez p2, :cond_57

    .line 427
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    :cond_57
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 431
    if-nez p1, :cond_67

    .line 432
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 433
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    :cond_67
    const/4 p2, 0x1

    invoke-virtual {p1, p4, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 436
    return-void

    .line 411
    :cond_6c
    :goto_6c
    return-void
.end method

.method hasInstantApplicationMetadataLPr(Ljava/lang/String;I)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasUninstalledInstantAppStateLPr(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantAppMetadataLPr(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 547
    :goto_10
    return p1
.end method

.method public isInstantAccessGranted(III)Z
    .registers 6

    .line 389
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 390
    return v1

    .line 392
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    .line 393
    if-nez p1, :cond_f

    .line 394
    return v1

    .line 396
    :cond_f
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 397
    if-nez p1, :cond_18

    .line 398
    return v1

    .line 400
    :cond_18
    invoke-virtual {p1, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$pruneInstantApps$2$InstantAppRegistry(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 723
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 724
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    .line 725
    const/4 v0, 0x0

    if-nez p1, :cond_1a

    if-nez p2, :cond_1a

    .line 726
    return v0

    .line 727
    :cond_1a
    const/4 v1, -0x1

    if-nez p1, :cond_1e

    .line 728
    return v1

    .line 729
    :cond_1e
    const/4 v2, 0x1

    if-nez p2, :cond_22

    .line 730
    return v2

    .line 732
    :cond_22
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v3

    .line 733
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2f

    .line 734
    return v2

    .line 735
    :cond_2f
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v3

    .line 736
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3c

    .line 737
    return v1

    .line 739
    :cond_3c
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_5a

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_5a

    .line 741
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 742
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 743
    iget-wide v3, p1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iget-wide p1, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    cmp-long p1, v3, p1

    if-lez p1, :cond_59

    .line 744
    return v2

    .line 746
    :cond_59
    return v1

    .line 749
    :cond_5a
    return v0
.end method

.method public onPackageInstalledLPw(Landroid/content/pm/PackageParser$Package;[I)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 269
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 270
    if-nez v0, :cond_7

    .line 271
    return-void

    .line 274
    :cond_7
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_c0

    aget v4, p2, v3

    .line 276
    iget-object v5, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_bc

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v5

    if-nez v5, :cond_22

    .line 277
    goto/16 :goto_bc

    .line 281
    :cond_22
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V

    .line 284
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 285
    iget v5, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->addInstantAppLPw(II)V

    .line 289
    :cond_30
    new-instance v5, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;

    invoke-direct {v5, p1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;-><init>(Landroid/content/pm/PackageParser$Package;)V

    invoke-direct {p0, v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 294
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 295
    new-instance v6, Ljava/io/File;

    const-string v7, "metadata.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 296
    new-instance v6, Ljava/io/File;

    const-string v7, "icon.png"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 299
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 300
    if-nez v5, :cond_5b

    .line 301
    goto :goto_bc

    .line 304
    :cond_5b
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 305
    nop

    .line 306
    const-string v7, "cookie_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 307
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ".dat"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    .line 306
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 314
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 316
    return-void

    .line 321
    :cond_7f
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v7, v7, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 322
    invoke-static {v7}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v7

    .line 323
    array-length v8, v7

    move v9, v2

    :goto_89
    if-ge v9, v8, :cond_97

    aget-object v10, v7, v9

    .line 324
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_94

    .line 325
    return-void

    .line 323
    :cond_94
    add-int/lit8 v9, v9, 0x1

    goto :goto_89

    .line 330
    :cond_97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Signature for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " changed - dropping cookie"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InstantAppRegistry"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v6, p1, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 334
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 274
    :cond_bc
    :goto_bc
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 336
    :cond_c0
    return-void
.end method

.method public onPackageUninstalledLPw(Landroid/content/pm/PackageParser$Package;[I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 341
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 342
    if-nez v0, :cond_7

    .line 343
    return-void

    .line 346
    :cond_7
    array-length v1, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_45

    aget v3, p2, v2

    .line 347
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 348
    goto :goto_42

    .line 351
    :cond_20
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 353
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 354
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    goto :goto_42

    .line 357
    :cond_2f
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 358
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 359
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeAppLPw(II)V

    .line 346
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 362
    :cond_45
    return-void
.end method

.method public onUserRemovedLPw(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 367
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 369
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 372
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-eqz v0, :cond_23

    .line 373
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_23

    .line 375
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    .line 378
    :cond_23
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-eqz v0, :cond_34

    .line 379
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_34

    .line 381
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    .line 384
    :cond_34
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 385
    return-void
.end method

.method pruneInstalledInstantApps(JJ)Z
    .registers 12

    .line 645
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    :try_start_8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z

    move-result p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 646
    :catch_d
    move-exception p1

    .line 647
    const-string p2, "InstantAppRegistry"

    const-string p3, "Error pruning installed instant apps"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    const/4 p1, 0x0

    return p1
.end method

.method pruneInstantApps()V
    .registers 12

    .line 625
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 626
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 625
    const-wide v1, 0x39ef8b000L

    const-string v3, "installed_instant_app_max_cache_period"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 631
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 630
    const-string/jumbo v3, "uninstalled_instant_app_max_cache_period"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 636
    const-wide v5, 0x7fffffffffffffffL

    move-object v4, p0

    :try_start_28
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 640
    goto :goto_34

    .line 638
    :catch_2c
    move-exception v0

    .line 639
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning installed and uninstalled instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    :goto_34
    return-void
.end method

.method pruneUninstalledInstantApps(JJ)Z
    .registers 12

    .line 654
    const-wide v3, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    :try_start_8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z

    move-result p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    return p1

    .line 655
    :catch_d
    move-exception p1

    .line 656
    const-string p2, "InstantAppRegistry"

    const-string p3, "Error pruning uninstalled instant apps"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    const/4 p1, 0x0

    return p1
.end method

.method public setInstantAppCookieLPw(Ljava/lang/String;[BI)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mPackages"
        }
    .end annotation

    .line 164
    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    array-length v1, p2

    if-lez v1, :cond_3d

    .line 165
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v1

    .line 167
    array-length v2, p2

    if-le v2, v1, :cond_3d

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app cookie for package "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes while max size is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InstantAppRegistry"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v0

    .line 175
    :cond_3d
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 176
    if-nez p1, :cond_4a

    .line 177
    return v0

    .line 180
    :cond_4a
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V

    .line 181
    const/4 p1, 0x1

    return p1
.end method
