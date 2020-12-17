.class Lcom/android/server/BatteryService$15;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/BatteryService;

    .line 2298
    iput-object p1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2303
    iget-object v1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$3802(Lcom/android/server/BatteryService;Z)Z

    goto :goto_29

    .line 2304
    :cond_13
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2305
    iget-object v1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$3802(Lcom/android/server/BatteryService;Z)Z

    .line 2306
    iget-object v1, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mBatteryHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2308
    :cond_29
    :goto_29
    return-void
.end method
