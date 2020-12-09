.class Lcom/android/server/pm/PackageManagerService$9;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isCurrentLocationExternal:Z

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/pm/PackageManagerService$PackageFreezer;ILjava/lang/String;Z)V
    .registers 7

    .line 23690
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$9;->val$moveId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$9;->val$packageName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$9;->val$isCurrentLocationExternal:Z

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23702
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 23703
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 23705
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result p1

    .line 23706
    if-eqz p1, :cond_2d

    const/4 p2, 0x6

    if-eq p1, p2, :cond_20

    .line 23717
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$moveId:I

    const/4 p3, -0x6

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$5100(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_44

    .line 23713
    :cond_20
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$moveId:I

    const/4 p3, -0x1

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$5100(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23715
    goto :goto_44

    .line 23708
    :cond_2d
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$5200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object p1

    iget p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$moveId:I

    const/16 p3, -0x64

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$5100(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23710
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$packageName:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$isCurrentLocationExternal:Z

    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$5300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Z)V

    .line 23711
    nop

    .line 23721
    :goto_44
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23693
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
