.class Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThermalHal20Wrapper"
.end annotation


# instance fields
.field private final mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

.field private mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHalLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 883
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 889
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "ret"  # Ljava/util/List;
    .param p1, "status"  # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p2, "coolingDevices"  # Ljava/util/ArrayList;

    .line 951
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_24

    .line 953
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 954
    .local v1, "coolingDevice":Landroid/hardware/thermal/V2_0/CoolingDevice;
    new-instance v2, Landroid/os/CoolingDevice;

    iget-wide v3, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    iget v5, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    iget-object v6, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    .end local v1  # "coolingDevice":Landroid/hardware/thermal/V2_0/CoolingDevice;
    goto :goto_8

    :cond_23
    goto :goto_3c

    .line 959
    :cond_24
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :goto_3c
    return-void
.end method

.method static synthetic lambda$getCurrentTemperatures$0(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "ret"  # Ljava/util/List;
    .param p1, "status"  # Landroid/hardware/thermal/V1_0/ThermalStatus;
    .param p2, "temperatures"  # Ljava/util/ArrayList;

    .line 917
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_26

    .line 919
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/thermal/V2_0/Temperature;

    .line 920
    .local v1, "temperature":Landroid/hardware/thermal/V2_0/Temperature;
    new-instance v2, Landroid/os/Temperature;

    iget v3, v1, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v4, v1, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v5, v1, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget v6, v1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    .end local v1  # "temperature":Landroid/hardware/thermal/V2_0/Temperature;
    goto :goto_8

    :cond_25
    goto :goto_3e

    .line 926
    :cond_26
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_3e
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .registers 7

    .line 975
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    const/4 v1, 0x0

    :try_start_4
    invoke-static {}, Landroid/hardware/thermal/V2_0/IThermal;->getService()Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 978
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 979
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    invoke-interface {v2, v3, v1, v1}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_1d} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_20
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1e

    .line 984
    goto :goto_2b

    .line 986
    :catchall_1e
    move-exception v1

    goto :goto_32

    .line 981
    :catch_20
    move-exception v2

    .line 982
    .local v2, "e":Ljava/lang/Exception;
    :try_start_21
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service not connected, trying 1.1."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 985
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_2b
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v2, :cond_30

    const/4 v1, 0x1

    :cond_30
    monitor-exit v0

    return v1

    .line 986
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_1e

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 991
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThermalHAL 2.0 connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v2, :cond_18

    const-string/jumbo v2, "yes"

    goto :goto_1b

    .line 994
    :cond_18
    const-string/jumbo v2, "no"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    monitor-exit v0

    .line 996
    return-void

    .line 995
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

    .line 943
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 944
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/CoolingDevice;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_e

    .line 946
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 949
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 968
    goto :goto_24

    .line 965
    :catch_19
    move-exception v2

    .line 966
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 969
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    return-object v1

    .line 970
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

    .line 909
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_e

    .line 912
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 915
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$R9S8YWn8x1F3V2TOvXtmky1V44Q;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$R9S8YWn8x1F3V2TOvXtmky1V44Q;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 935
    goto :goto_24

    .line 932
    :catch_19
    move-exception v2

    .line 933
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1a
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 936
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    return-object v1

    .line 937
    .end local v1  # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw v1
.end method
