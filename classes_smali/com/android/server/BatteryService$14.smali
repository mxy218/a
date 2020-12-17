.class Lcom/android/server/BatteryService$14;
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

    .line 2125
    iput-object p1, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2129
    .local v0, "action":Ljava/lang/String;
    const-string v1, "close_reverse_charging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2130
    iget-object v1, p0, Lcom/android/server/BatteryService$14;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$3000(Lcom/android/server/BatteryService;I)V

    .line 2132
    :cond_12
    return-void
.end method
