.class Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;)V
    .registers 2

    .line 1483
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1487
    const-string v0, "HealthServiceWrapper"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v1, v1, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2500(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v2, v2, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v2}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object v1

    .line 1488
    iget-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v2, v2, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v2}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2600(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/health/V2_0/IHealth;

    .line 1491
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-void

    .line 1493
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "health: new instance registered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v4, v4, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v3, v3, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2700(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v4, v4, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v4}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5a} :catch_5b

    .line 1498
    goto :goto_89

    .line 1495
    :catch_5b
    move-exception v1

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: Cannot get instance \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;->this$1:Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    iget-object v3, v3, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2400(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Perhaps no permission?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :goto_89
    return-void
.end method