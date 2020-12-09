.class Lcom/android/server/StorageManagerService$ObbState;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObbState"
.end annotation


# instance fields
.field final canonicalPath:Ljava/lang/String;

.field final nonce:I

.field final ownerGid:I

.field final rawPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final token:Landroid/os/storage/IObbActionListener;

.field volId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V
    .registers 8

    .line 504
    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 506
    iput-object p3, p0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 507
    invoke-static {p4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 508
    iput-object p5, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 509
    iput p6, p0, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    .line 510
    iput-object p7, p0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 511
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 532
    new-instance v0, Lcom/android/server/StorageManagerService$UnmountObbAction;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 533
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/StorageManagerService$ObbState;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$800(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public link()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 538
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObbState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    const-string/jumbo v1, "rawPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, ",canonicalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v1, ",ownerGid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 550
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    const-string v1, ",volId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlink()V
    .registers 3

    .line 541
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 542
    return-void
.end method
