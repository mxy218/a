.class Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;
.super Landroid/os/Handler;
.source "FlymeHipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 89
    iput-object p1, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;->this$0:Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private getPkgName(Landroid/os/Message;)Ljava/lang/String;
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 105
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 107
    :cond_10
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_1d

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;->this$0:Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;

    invoke-direct {p0, p1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;->getPkgName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->access$100(Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;Ljava/lang/String;)V

    goto :goto_1d

    .line 94
    :cond_13
    iget-object v0, p0, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;->this$0:Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;

    invoke-direct {p0, p1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver$1;->getPkgName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;->access$000(Lcom/android/server/hips/server/FlymeHipsService$InstallOrUninstallReceiver;Ljava/lang/String;)V

    .line 95
    nop

    .line 100
    :goto_1d
    return-void
.end method
