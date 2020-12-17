.class Lcom/android/server/pm/UpdateAppsReceiver$3;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UpdateAppsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UpdateAppsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 314
    iput-object p1, p0, Lcom/android/server/pm/UpdateAppsReceiver$3;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "returnCode"  # I
    .param p3, "msg"  # Ljava/lang/String;
    .param p4, "extras"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    .line 321
    .local v0, "status":I
    if-nez v0, :cond_3a

    .line 322
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$3;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver$3;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    .line 323
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()I

    move-result v1

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1300()I

    move-result v2

    mul-int/2addr v1, v2

    if-eqz v1, :cond_53

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1300()I

    move-result v1

    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver;->access$700()I

    move-result v2

    if-ne v1, v2, :cond_53

    .line 326
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$3;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->access$1400(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/content/pm/FlymePackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/FlymePackageManager;->syncPackageState()V

    goto :goto_53

    .line 329
    :cond_3a
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver$3;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v1}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver$3;->this$0:Lcom/android/server/pm/UpdateAppsReceiver;

    invoke-static {v2}, Lcom/android/server/pm/UpdateAppsReceiver;->access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x68

    .line 330
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 329
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    :cond_53
    :goto_53
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"  # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
