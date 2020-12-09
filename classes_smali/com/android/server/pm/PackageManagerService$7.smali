.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 21910
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .registers 5

    .line 21913
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 21914
    const/4 p1, 0x0

    return p1

    .line 21916
    :cond_8
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    .line 21917
    const/4 p1, 0x1

    return p1

    .line 21919
    :cond_15
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p2, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_21

    .line 21920
    const/4 p1, 0x2

    return p1

    .line 21922
    :cond_21
    const/4 p1, 0x3

    return p1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .registers 3

    .line 21927
    const/4 p1, 0x1

    return p1
.end method
