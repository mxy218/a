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

    .line 645
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 12
    .param p0, "shouldFilter"  # Z
    .param p1, "type"  # I
    .param p2, "ret"  # Ljava/util/List;
    .param p3, "status"  # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p4, "coolingDevices"  # Ljava/util/ArrayList;

    .line 700
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 702
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V1_0/CoolingDevice;

    .line 703
    .local v1, "coolingDevice":Landroid/hardware/thermal/V1_0/CoolingDevice;
    if-eqz p0, :cond_1b

    iget v2, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v2, :cond_1b

    .line 704
    goto :goto_8

    .line 706
    :cond_1b
    new-instance v2, Landroid/os/CoolingDevice;

    iget v3, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v3, v3

    iget v5, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object v6, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v1  # "coolingDevice":Landroid/hardware/thermal/V1_0/CoolingDevice;
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 712
    :cond_2c
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_44
    return-void
.end method

.method static synthetic lambda$getCurrentTemperatures$0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 12
    .param p0, "shouldFilter"  # Z
    .param p1, "type"  # I
    .param p2, "ret"  # Ljava/util/List;
    .param p3, "status"  # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p4, "temperatures"  # Ljava/util/ArrayList;

    .line 663
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 665
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V1_0/Temperature;

    .line 666
    .local v1, "temperature":Landroid/hardware/thermal/V1_0/Temperature;
    if-eqz p0, :cond_1b

    iget v2, v1, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v2, :cond_1b

    .line 667
    goto :goto_8

    .line 670
    :cond_1b
    new-instance v2, Landroid/os/Temperature;

    iget v3, v1, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v4, v1, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v5, v1, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    .end local v1  # "temperature":Landroid/hardware/thermal/V1_0/Temperature;
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 676
    :cond_2c
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_44
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_3
    invoke-static {}, Landroid/hardware/thermal/V1_0/IThermal;->getService()Landroid/hardware/thermal/V1_0/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 731
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v3, 0x15ec

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/thermal/V1_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 733
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Thermal HAL 1.0 service connected, no thermal call back will be called due to legacy API."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    .line 740
    goto :goto_2a

    .line 742
    :catchall_1d
    move-exception v1

    goto :goto_33

    .line 736
    :catch_1f
    move-exception v1

    .line 737
    .local v1, "e":Ljava/lang/Exception;
    :try_start_20
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.0 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 741
    .end local v1  # "e":Ljava/lang/Exception;
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

    .line 742
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_1d

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThermalHAL 1.0 connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz v2, :cond_18

    const-string/jumbo v2, "yes"

    goto :goto_1b

    .line 750
    :cond_18
    const-string/jumbo v2, "no"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    monitor-exit v0

    .line 752
    return-void

    .line 751
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method protected getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 8
    .param p1, "shouldFilter"  # Z
    .param p2, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_e

    .line 696
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 699
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$sQ56quU7WPYADl2qUYrc2aj5zVg;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$sQ56quU7WPYADl2qUYrc2aj5zVg;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 721
    goto :goto_24

    .line 718
    :catch_19
    move-exception v2

    .line 719
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 722
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    return-object v1

    .line 723
    .end local v1  # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw v1
.end method

.method protected getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 8
    .param p1, "shouldFilter"  # Z
    .param p2, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_e

    .line 656
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 659
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal10Wrapper$ZThS0zQGVCG_VVOcIkHbcXIsWAI;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 685
    goto :goto_24

    .line 682
    :catch_19
    move-exception v2

    .line 683
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 686
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    return-object v1

    .line 687
    .end local v1  # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw v1
.end method
