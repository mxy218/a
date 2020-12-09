.class Lcom/android/server/am/ActivityManagerService$PermissionController;
.super Landroid/os/IPermissionController$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionController"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 5780
    invoke-direct {p0}, Landroid/os/IPermissionController$Stub;-><init>()V

    .line 5781
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 5782
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)Z
    .registers 5

    .line 5786
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .registers 4

    .line 5818
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5819
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    .line 5818
    return p1

    .line 5820
    :catch_d
    move-exception p1

    .line 5821
    const/4 p1, -0x1

    return p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .registers 3

    .line 5798
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5799
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 5798
    return-object p1
.end method

.method public isRuntimePermission(Ljava/lang/String;)Z
    .registers 6

    .line 5805
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5806
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 5807
    iget p1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_16

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    move v0, v1

    :cond_15
    return v0

    .line 5809
    :catch_16
    move-exception v1

    .line 5810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ActivityManager"

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5812
    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .line 5792
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 5793
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1

    .line 5792
    return p1
.end method
