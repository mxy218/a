.class Lcom/android/server/OldNetworkTimeUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OldNetworkTimeUpdateService;->registerForAlarms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OldNetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$1;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 149
    iget-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$1;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {p1}, Lcom/android/server/OldNetworkTimeUpdateService;->access$100(Lcom/android/server/OldNetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method
