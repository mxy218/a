.class Lcom/android/server/BatteryService$AlertThread$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$AlertThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$AlertThread;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$AlertThread;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/BatteryService$AlertThread;

    .line 1845
    iput-object p1, p0, Lcom/android/server/BatteryService$AlertThread$1;->this$1:Lcom/android/server/BatteryService$AlertThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1848
    iget-object v0, p0, Lcom/android/server/BatteryService$AlertThread$1;->this$1:Lcom/android/server/BatteryService$AlertThread;

    iget-object v0, v0, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)I

    move-result v0

    if-eqz v0, :cond_2b

    .line 1849
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HightTemperature action    "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BatteryService$AlertThread$1;->this$1:Lcom/android/server/BatteryService$AlertThread;

    iget-object v1, v1, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mzAlertIntentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v0, "temperatureAlerIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/BatteryService$AlertThread$1;->this$1:Lcom/android/server/BatteryService$AlertThread;

    iget-object v1, v1, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1853
    .end local v0  # "temperatureAlerIntent":Landroid/content/Intent;
    :cond_2b
    return-void
.end method
