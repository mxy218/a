.class public Lcom/android/server/pm/FlymePackageManagerService;
.super Landroid/content/pm/IFlymePackageManager$Stub;
.source "FlymePackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FlymePackageManagerService$Death;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "FPMS"


# instance fields
.field private keyguardActivitylist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private lasttaskId:I

.field private mAction:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mInstaller:Lcom/android/server/pm/Installer;

.field private mInterceptPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPms:Lcom/android/server/pm/PackageManagerService;

.field mayForbitPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pkgname:Ljava/lang/String;

.field privacyBlock:Z

.field private rapkComponentName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private rapkPackageInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rapkState:Z

.field private recordKeyguardPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startFromInteractive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "pms"  # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installer"  # Lcom/android/server/pm/Installer;

    .line 80
    invoke-direct {p0}, Landroid/content/pm/IFlymePackageManager$Stub;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 44
    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkPackageInfo:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkComponentName:Ljava/util/HashMap;

    .line 54
    iput-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkState:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 83
    iput-object p3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 84
    return-void
.end method

.method private containRpk(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 6
    .param p1, "componentName"  # Landroid/content/ComponentName;

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkComponentName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 415
    .local v1, "result":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 416
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 417
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkComponentName:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0

    .line 419
    .end local v1  # "result":Landroid/content/ComponentName;
    :cond_3b
    goto :goto_a

    .line 420
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public backupData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "sourceDir"  # Ljava/lang/String;
    .param p2, "targetDir"  # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "FPMS"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 89
    const-string v3, "Calling package is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 92
    :cond_15
    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v0, v2, v2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 93
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_4a

    iget-object v4, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4a

    .line 95
    :try_start_29
    iget-object v4, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/pm/Installer;->copyDataFiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_29 .. :try_end_2e} :catch_30

    .line 96
    const/4 v1, 0x1

    return v1

    .line 97
    :catch_30
    move-exception v4

    .line 98
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupData exception happen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/Installer$InstallerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v2

    .line 102
    .end local v4  # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_4a
    const-string v4, "Calling package isn\'t System App"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v2
.end method

.method public changeInterceptPackage(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "state"  # Z

    .line 138
    if-eqz p2, :cond_13

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 144
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public changeMayForbitPackage(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "state"  # Z

    .line 202
    if-eqz p2, :cond_13

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 208
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public changeMayInterceptPackage(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "state"  # Z

    .line 149
    if-eqz p2, :cond_13

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 151
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 155
    :cond_13
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method checkCallingSignature()Z
    .registers 8

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "FPMS"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 426
    const-string v3, "Calling package is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v2

    .line 429
    :cond_15
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Is share user calling this? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v2

    .line 433
    :cond_32
    iget-object v3, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v0, v2, v2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 434
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_48

    iget-object v4, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_48

    .line 435
    const/4 v1, 0x1

    return v1

    .line 437
    :cond_48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Signature mismatch!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v2
.end method

.method public compareActivity(ILjava/lang/String;)Z
    .registers 6
    .param p1, "taskid"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 66
    iget v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->lasttaskId:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->pkgname:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 67
    return v1

    .line 71
    :cond_10
    invoke-static {p2}, Lmeizu/security/AccessControlManager;->getAccessControlIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->mAction:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 73
    return v1

    .line 77
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public getInterceptPackage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    return-object v0
.end method

.method public getInternalAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getInternalAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyGuardPackage(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgname"  # Ljava/lang/String;
    .param p2, "level"  # I

    .line 254
    if-eqz p1, :cond_1a

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1a

    .line 257
    const/4 v0, 0x1

    return v0

    .line 261
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getMayForbitPackage()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to intercept package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymePackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1  # "pkg":Ljava/lang/String;
    goto :goto_6

    .line 189
    :cond_29
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    return-object v0
.end method

.method public getMayInterceptPackage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->startFromInteractive:Ljava/util/List;

    return-object v0
.end method

.method public getPackageActivateState(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageActivateState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "flags"  # I

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProtectionState()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    return v0
.end method

.method public getRpkInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkPackageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getSystemAppPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userid"  # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 271
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_e

    .line 272
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 274
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getkeyguarActivitylist()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 322
    .local v2, "componentName":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 323
    .local v4, "comp":Landroid/content/ComponentName;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v4  # "comp":Landroid/content/ComponentName;
    goto :goto_1f

    .line 325
    .end local v2  # "componentName":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_2f
    goto :goto_f

    .line 326
    :cond_30
    return-object v0
.end method

.method public getkeyguardBlackForSystem()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    return-object v0
.end method

.method public isForceFullForUid(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 451
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->isForceFullForUid(I)Z

    move-result v0

    return v0
.end method

.method public isMzApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x2000

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 285
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 286
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 288
    :cond_18
    return v1
.end method

.method public isWhiltList(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "componentName"  # Landroid/content/ComponentName;

    .line 340
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 341
    .local v0, "componentNameArraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2f

    .line 342
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 343
    .local v2, "componentName1":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 344
    const/4 v1, 0x1

    return v1

    .line 346
    .end local v2  # "componentName1":Landroid/content/ComponentName;
    :cond_2e
    goto :goto_12

    .line 348
    :cond_2f
    const/4 v1, 0x0

    return v1
.end method

.method public recordLastRecentActivity(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "activityInfo"  # I
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "action"  # Ljava/lang/String;

    .line 61
    iput p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->lasttaskId:I

    .line 62
    iput-object p2, p0, Lcom/android/server/pm/FlymePackageManagerService;->pkgname:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public resetVersion(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->resetVersion(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setForceFull(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "forceFull"  # Z

    .line 447
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setForceFull(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setInterceptPackage(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mInterceptPackage:Ljava/util/List;

    .line 136
    return-void
.end method

.method public setKeyGuardPackage(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "pkgname"  # Ljava/lang/String;
    .param p2, "intercept"  # Z
    .param p3, "level"  # I

    .line 236
    if-eqz p1, :cond_1d

    .line 237
    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/FlymePackageManagerService;->changeInterceptPackage(Ljava/lang/String;Z)Z

    .line 240
    :cond_8
    const/4 v0, 0x2

    if-ne p3, v0, :cond_3e

    .line 241
    if-eqz p2, :cond_17

    .line 242
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 244
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 248
    :cond_1d
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to clear package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->recordKeyguardPackage:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymePackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setMayForbitPackage(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "packageSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 194
    iput-object p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    goto :goto_26

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to clear package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymePackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_26
    return-void
.end method

.method public setPackageSpecPersistent(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "persistent"  # Z

    .line 443
    return-void
.end method

.method public setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 19
    .param p1, "packageNames"  # [Ljava/lang/String;
    .param p2, "suspended"  # Z
    .param p3, "appExtras"  # Landroid/os/PersistableBundle;
    .param p4, "launcherExtras"  # Landroid/os/PersistableBundle;
    .param p5, "dialogMessage"  # Ljava/lang/String;
    .param p6, "callingPackage"  # Ljava/lang/String;
    .param p7, "userId"  # I

    .line 458
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 459
    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v0

    .line 460
    .local v0, "builder":Landroid/content/pm/SuspendDialogInfo$Builder;
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 461
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v8

    .line 460
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/PackageManagerService;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setProtectionState(ZLandroid/os/IBinder;)V
    .registers 5
    .param p1, "state"  # Z
    .param p2, "binder"  # Landroid/os/IBinder;

    .line 173
    if-eqz p2, :cond_14

    .line 175
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Lcom/android/server/pm/FlymePackageManagerService$Death;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/FlymePackageManagerService$Death;-><init>(Lcom/android/server/pm/FlymePackageManagerService;Landroid/os/IBinder;)V

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    .line 179
    goto :goto_14

    .line 176
    :catch_c
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 178
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mayForbitPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    iput-boolean p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->privacyBlock:Z

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymePackageManage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public setRpkComponmentInfo(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "src"  # Landroid/content/ComponentName;
    .param p2, "dst"  # Landroid/content/ComponentName;

    .line 395
    invoke-virtual {p0}, Lcom/android/server/pm/FlymePackageManagerService;->checkCallingSignature()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkComponentName:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_b
    return-void
.end method

.method public setRpkSignature(Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "signatures"  # [Landroid/content/pm/Signature;

    .line 356
    invoke-virtual {p0}, Lcom/android/server/pm/FlymePackageManagerService;->checkCallingSignature()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 357
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 358
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 359
    iput-object p2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 360
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkPackageInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v0  # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_14
    return-void
.end method

.method public setRpkState(Z)Z
    .registers 3
    .param p1, "state"  # Z

    .line 406
    invoke-virtual {p0}, Lcom/android/server/pm/FlymePackageManagerService;->checkCallingSignature()Z

    move-result v0

    if-nez v0, :cond_8

    .line 407
    const/4 v0, 0x0

    return v0

    .line 409
    :cond_8
    iput-boolean p1, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkState:Z

    .line 410
    iget-boolean v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkState:Z

    return v0
.end method

.method public setkeyguardActivitylist(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "componment"  # Landroid/content/ComponentName;
    .param p2, "shouldClear"  # Z

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "componentNameArraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_10

    .line 300
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/util/ArraySet;

    .line 302
    :cond_10
    if-nez p2, :cond_41

    if-eqz p1, :cond_41

    .line 303
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    .line 304
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 307
    :cond_2f
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 308
    .local v1, "componentNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1  # "componentNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    goto :goto_46

    .line 312
    :cond_41
    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->keyguardActivitylist:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 314
    :goto_46
    return-void
.end method

.method public syncPackageState()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->initDefaultOpService()V

    .line 165
    return-void
.end method

.method public transformIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 7
    .param p1, "src"  # Landroid/content/Intent;
    .param p2, "userid"  # I

    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 376
    .local v0, "dst":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkState:Z

    if-eqz v1, :cond_52

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 377
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/FlymePackageManagerService;->containRpk(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v1

    .line 378
    .local v1, "transform":Landroid/content/ComponentName;
    if-eqz v1, :cond_52

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/pm/FlymePackageManagerService;->rapkState:Z

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer intent form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FPMS"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-object v0

    .line 385
    .end local v1  # "transform":Landroid/content/ComponentName;
    :cond_52
    return-object p1
.end method

.method public updateMultiOpenAppData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "sourceDir"  # Ljava/lang/String;
    .param p2, "targetDir"  # Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public updatePermissions(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/server/pm/FlymePackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->updatePermissions(Ljava/lang/String;)V

    .line 112
    return-void
.end method
