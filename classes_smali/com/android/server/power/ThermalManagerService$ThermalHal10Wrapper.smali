.class Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThermalHal10Wrapper"
.end annotation


# instance fields
.field private mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHalLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 649
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 704
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 706
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/thermal/V1_0/CoolingDevice;

    .line 707
    if-eqz p0, :cond_1b

    iget v0, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v0, :cond_1b

    .line 708
    goto :goto_8

    .line 710
    :cond_1b
    new-instance v0, Landroid/os/CoolingDevice;

    iget v1, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v1, v1

    iget v3, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object p4, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 716
    :cond_2c
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_44
    return-void
.end method

.method static synthetic lambda$getCurrentTemperatures$0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 667
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 669
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/thermal/V1_0/Temperature;

    .line 670
    if-eqz p0, :cond_1b

    iget v0, p4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v0, :cond_1b

    .line 671
    goto :goto_8

    .line 674
    :cond_1b
    new-instance v0, Landroid/os/Temperature;

    iget v1, p4, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p4, p4, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p4, v3}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 680
    :cond_2c
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_44
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .registers 6

    .line 732
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_3
    invoke-static {}, Landroid/hardware/thermal/V1_0/IThermal;->getService()Landroid/hardware/thermal/V1_0/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 735
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v3, 0x15ec

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/thermal/V1_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 737
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Thermal HAL 1.0 service connected, no thermal call back will be called due to legacy API."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    .line 744
    goto :goto_2a

    .line 746
    :catchall_1d
    move-exception v1

    goto :goto_33

    .line 740
    :catch_1f
    move-exception v1

    .line 741
    :try_start_20
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Thermal HAL 1.0 service not connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 745
    :goto_2a
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    monitor-exit v0

    return v1

    .line 746
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_1d

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 751
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 1.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz v1, :cond_18

    const-string/jumbo v1, "yes"

    goto :goto_1b

    .line 754
    :cond_18
    const-string/jumbo v1, "no"

    :goto_1b
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 753
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method protected getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_e

    .line 700
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 703
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$sQ56quU7WPYADl2qUYrc2aj5zVg;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$sQ56quU7WPYADl2qUYrc2aj5zVg;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 725
    goto :goto_24

    .line 722
    :catch_19
    move-exception p1

    .line 723
    :try_start_1a
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 726
    :goto_24
    monitor-exit v0

    return-object v1

    .line 727
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw p1
.end method

.method protected getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 659
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_e

    .line 660
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 663
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 689
    goto :goto_24

    .line 686
    :catch_19
    move-exception p1

    .line 687
    :try_start_1a
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 690
    :goto_24
    monitor-exit v0

    return-object v1

    .line 691
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw p1
.end method
