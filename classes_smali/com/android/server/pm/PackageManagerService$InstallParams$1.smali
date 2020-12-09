.class Lcom/android/server/pm/PackageManagerService$InstallParams$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V
    .registers 3

    .line 15550
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->val$verificationId:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 15553
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 15554
    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 15555
    iget p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->val$verificationId:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 15556
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$1;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15557
    return-void
.end method
