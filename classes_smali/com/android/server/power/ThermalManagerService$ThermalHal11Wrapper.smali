.class Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThermalHal11Wrapper"
.end annotation


# instance fields
.field private final mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

.field private mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHalLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 755
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 761
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 12
    .param p0, "shouldFilter"  # Z
    .param p1, "type"  # I
    .param p2, "ret"  # Ljava/util/List;
    .param p3, "status"  # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p4, "coolingDevices"  # Ljava/util/ArrayList;

    .line 829
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 831
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V1_0/CoolingDevice;

    .line 832
    .local v1, "coolingDevice":Landroid/hardware/thermal/V1_0/CoolingDevice;
    if-eqz p0, :cond_1b

    iget v2, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v2, :cond_1b

    .line 833
    goto :goto_8

    .line 835
    :cond_1b
    new-instance v2, Landroid/os/CoolingDevice;

    iget v3, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v3, v3

    iget v5, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object v6, v1, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    .end local v1  # "coolingDevice":Landroid/hardware/thermal/V1_0/CoolingDevice;
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 841
    :cond_2c
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
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

    .line 792
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 794
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V1_0/Temperature;

    .line 795
    .local v1, "temperature":Landroid/hardware/thermal/V1_0/Temperature;
    if-eqz p0, :cond_1b

    iget v2, v1, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v2, :cond_1b

    .line 796
    goto :goto_8

    .line 799
    :cond_1b
    new-instance v2, Landroid/os/Temperature;

    iget v3, v1, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v4, v1, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v5, v1, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v1  # "temperature":Landroid/hardware/thermal/V1_0/Temperature;
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 805
    :cond_2c
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_44
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .registers 6

    .line 857
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_3
    invoke-static {}, Landroid/hardware/thermal/V1_1/IThermal;->getService()Landroid/hardware/thermal/V1_1/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 860
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v3, 0x15ec

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/thermal/V1_1/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 862
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

    invoke-interface {v1, v2}, Landroid/hardware/thermal/V1_1/IThermal;->registerThermalCallback(Landroid/hardware/thermal/V1_1/IThermalCallback;)V
    :try_end_1c
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_1f
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    .line 868
    goto :goto_2a

    .line 870
    :catchall_1d
    move-exception v1

    goto :goto_33

    .line 863
    :catch_1f
    move-exception v1

    .line 864
    .local v1, "e":Ljava/lang/Exception;
    :try_start_20
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.1 service not connected, no thermal call back will be called."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 869
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_2a
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    monitor-exit v0

    return v1

    .line 870
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

    .line 875
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThermalHAL 1.1 connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz v2, :cond_18

    const-string/jumbo v2, "yes"

    goto :goto_1b

    .line 878
    :cond_18
    const-string/jumbo v2, "no"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    monitor-exit v0

    .line 880
    return-void

    .line 879
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

    .line 822
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_e

    .line 825
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 828
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$h5fsSA4CwK_Xli1jHnpETKQH7nA;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$h5fsSA4CwK_Xli1jHnpETKQH7nA;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 850
    goto :goto_24

    .line 847
    :catch_19
    move-exception v2

    .line 848
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 851
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    return-object v1

    .line 852
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

    .line 782
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_e

    .line 785
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 788
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$ewP6gmklD7-k-bU5IqeZFG8-BZk;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$ewP6gmklD7-k-bU5IqeZFG8-BZk;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 814
    goto :goto_24

    .line 811
    :catch_19
    move-exception v2

    .line 812
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 815
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    return-object v1

    .line 816
    .end local v1  # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw v1
.end method
