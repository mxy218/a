.class final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1577
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/BatteryService;
    .param p2, "x1"  # Lcom/android/server/BatteryService$1;

    .line 1577
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public getBatteryChargeCounter()I
    .registers 3

    .line 1601
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1602
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    monitor-exit v0

    return v1

    .line 1603
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getBatteryFullCharge()I
    .registers 3

    .line 1608
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1609
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    monitor-exit v0

    return v1

    .line 1610
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getBatteryLevel()I
    .registers 3

    .line 1594
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1595
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    monitor-exit v0

    return v1

    .line 1596
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getBatteryLevelLow()Z
    .registers 3

    .line 1615
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1616
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1617
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getInvalidCharger()I
    .registers 3

    .line 1622
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1623
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1624
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getPlugType()I
    .registers 3

    .line 1587
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1588
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1589
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isPowered(I)Z
    .registers 4
    .param p1, "plugTypeSet"  # I

    .line 1580
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1581
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1, p1}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1582
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
