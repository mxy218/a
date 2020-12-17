.class final Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
.super Landroid/os/IBatteryPropertiesRegistrar$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryPropertiesRegistrar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1513
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/BatteryService;
    .param p2, "x1"  # Lcom/android/server/BatteryService$1;

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"  # Landroid/util/MutableInt;
    .param p1, "prop"  # Landroid/os/BatteryProperty;
    .param p2, "result"  # I
    .param p3, "value"  # I

    .line 1524
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1525
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1526
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"  # Landroid/util/MutableInt;
    .param p1, "prop"  # Landroid/os/BatteryProperty;
    .param p2, "result"  # I
    .param p3, "value"  # I

    .line 1530
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1531
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1532
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"  # Landroid/util/MutableInt;
    .param p1, "prop"  # Landroid/os/BatteryProperty;
    .param p2, "result"  # I
    .param p3, "value"  # I

    .line 1536
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1537
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1538
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"  # Landroid/util/MutableInt;
    .param p1, "prop"  # Landroid/os/BatteryProperty;
    .param p2, "result"  # I
    .param p3, "value"  # I

    .line 1542
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1543
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1544
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 6
    .param p0, "outResult"  # Landroid/util/MutableInt;
    .param p1, "prop"  # Landroid/os/BatteryProperty;
    .param p2, "result"  # I
    .param p3, "value"  # I

    .line 1548
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1549
    if-nez p2, :cond_8

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1550
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .registers 5
    .param p0, "outResult"  # Landroid/util/MutableInt;
    .param p1, "prop"  # Landroid/os/BatteryProperty;
    .param p2, "result"  # I
    .param p3, "value"  # J

    .line 1554
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1555
    if-nez p2, :cond_7

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1556
    :cond_7
    return-void
.end method


# virtual methods
.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 6
    .param p1, "id"  # I
    .param p2, "prop"  # Landroid/os/BatteryProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1516
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Ljava/lang/String;)V

    .line 1518
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1519
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_57

    .line 1520
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 1521
    .local v1, "outResult":Landroid/util/MutableInt;
    packed-switch p1, :pswitch_data_66

    goto :goto_51

    .line 1547
    :pswitch_1b  #0x6
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1551
    goto :goto_51

    .line 1553
    :pswitch_24  #0x5
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_51

    .line 1541
    :pswitch_2d  #0x4
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 1545
    goto :goto_51

    .line 1535
    :pswitch_36  #0x3
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 1539
    goto :goto_51

    .line 1529
    :pswitch_3f  #0x2
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 1533
    goto :goto_51

    .line 1523
    :pswitch_48  #0x1
    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;

    invoke-direct {v2, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, v2}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 1527
    nop

    .line 1559
    :goto_51
    iget v2, v1, Landroid/util/MutableInt;->value:I
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_60

    .line 1561
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    .line 1559
    return v2

    .line 1519
    .end local v1  # "outResult":Landroid/util/MutableInt;
    :cond_57
    :try_start_57
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .end local p1  # "id":I
    .end local p2  # "prop":Landroid/os/BatteryProperty;
    throw v1
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_60

    .line 1561
    .end local v0  # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0  # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    .restart local p1  # "id":I
    .restart local p2  # "prop":Landroid/os/BatteryProperty;
    :catchall_60
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    throw v0

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_3f  #00000002
        :pswitch_36  #00000003
        :pswitch_2d  #00000004
        :pswitch_24  #00000005
        :pswitch_1b  #00000006
    .end packed-switch
.end method

.method public scheduleUpdate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    const-string v0, "HealthScheduleUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Ljava/lang/String;)V

    .line 1568
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1569
    .local v0, "service":Landroid/hardware/health/V2_0/IHealth;
    if-eqz v0, :cond_1a

    .line 1570
    invoke-interface {v0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_23

    .line 1572
    nop

    .end local v0  # "service":Landroid/hardware/health/V2_0/IHealth;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    .line 1573
    nop

    .line 1574
    return-void

    .line 1569
    .restart local v0  # "service":Landroid/hardware/health/V2_0/IHealth;
    :cond_1a
    :try_start_1a
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    throw v1
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_23

    .line 1572
    .end local v0  # "service":Landroid/hardware/health/V2_0/IHealth;
    .restart local p0  # "this":Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
    :catchall_23
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    throw v0
.end method
