.class Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;
.super Ljava/lang/Object;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GmsManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;
    }
.end annotation


# static fields
.field static final GAPPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 503
    const-string v0, "com.android.vending"

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gsf"

    const-string v3, "com.google.android.gsf.login"

    const-string v4, "com.google.android.syncadapters.contacts"

    const-string v5, "com.google.android.syncadapters.calendar"

    const-string v6, "com.google.android.onetimeinitializer"

    const-string v7, "com.google.android.partnersetup"

    const-string v8, "com.google.android.apps.maps"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500()Z
    .registers 1

    .line 502
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->isAllGAppsInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()V
    .registers 0

    .line 502
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->uninstallGms()V

    return-void
.end method

.method private static isAllGAppsInstalled()Z
    .registers 6

    .line 548
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_17

    aget-object v4, v0, v3

    .line 549
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 550
    return v2

    .line 548
    .end local v4  # "packageName":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 555
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private static isPreviouslySystemApp(Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageName"  # Ljava/lang/String;

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_10
    .catchall {:try_start_2 .. :try_end_a} :catchall_e

    move-object v0, v2

    .line 580
    if-nez v0, :cond_1e

    .line 581
    return v1

    .line 580
    :catchall_e
    move-exception v2

    goto :goto_36

    .line 576
    :catch_10
    move-exception v2

    .line 577
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_11
    const-string v3, "UpdateAppsReceiver"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_e

    .line 580
    nop

    .end local v2  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-nez v0, :cond_1e

    .line 581
    return v1

    .line 588
    :cond_1e
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v1

    .line 589
    .local v2, "isUpdateSystemApp":Z
    :goto_28
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-nez v4, :cond_2f

    move v4, v3

    goto :goto_30

    :cond_2f
    move v4, v1

    .line 590
    .local v4, "isNotSystemApp":Z
    :goto_30
    if-eqz v2, :cond_35

    if-eqz v4, :cond_35

    move v1, v3

    :cond_35
    return v1

    .line 580
    .end local v2  # "isUpdateSystemApp":Z
    .end local v4  # "isNotSystemApp":Z
    :goto_36
    if-nez v0, :cond_39

    .line 581
    return v1

    :cond_39
    throw v2
.end method

.method private static uninstallGms()V
    .registers 7

    .line 562
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_1e

    aget-object v4, v0, v3

    .line 563
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->isPreviouslySystemApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 565
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$100()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;

    invoke-direct {v6}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$PackageDeleteObserver;-><init>()V

    invoke-virtual {v5, v4, v6, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 562
    .end local v4  # "packageName":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 568
    :cond_1e
    return-void
.end method

.method static uninstallGmsAsync()V
    .registers 1

    .line 531
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_7

    .line 532
    return-void

    .line 535
    :cond_7
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;-><init>()V

    .line 544
    invoke-virtual {v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager$1;->start()V

    .line 545
    return-void
.end method

.method static updateGmsPermissionsIfNeeeded(Landroid/content/pm/FlymePackageManager;Ljava/lang/String;)V
    .registers 8
    .param p0, "mFpm"  # Landroid/content/pm/FlymePackageManager;
    .param p1, "packageName"  # Ljava/lang/String;

    .line 517
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->GAPPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 518
    .local v3, "gapp":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update permissions for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UpdateAppsReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0, p1}, Landroid/content/pm/FlymePackageManager;->updatePermissions(Ljava/lang/String;)V

    .line 517
    .end local v3  # "gapp":Ljava/lang/String;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 523
    :cond_2a
    return-void
.end method
