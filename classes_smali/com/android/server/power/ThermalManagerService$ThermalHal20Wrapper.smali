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

    .line 887
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 893
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 7

    .line 955
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_24

    .line 957
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 958
    new-instance v0, Landroid/os/CoolingDevice;

    iget-wide v1, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    iget v3, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    iget-object p2, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    goto :goto_8

    :cond_23
    goto :goto_3c

    .line 963
    :cond_24
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_3c
    return-void
.end method

.method static synthetic lambda$getCurrentTemperatures$0(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 7

    .line 921
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_26

    .line 923
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/thermal/V2_0/Temperature;

    .line 924
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v2, p2, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v3, p2, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget p2, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    goto :goto_8

    :cond_25
    goto :goto_3e

    .line 930
    :cond_26
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :goto_3e
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .registers 7

    .line 979
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 981
    const/4 v1, 0x0

    :try_start_4
    invoke-static {}, Landroid/hardware/thermal/V2_0/IThermal;->getService()Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 982
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 983
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    invoke-interface {v2, v3, v1, v1}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    .line 985
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 2.0 service connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_24} :catch_27
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_24} :catch_27
    .catchall {:try_start_4 .. :try_end_24} :catchall_25

    .line 989
    goto :goto_32

    .line 991
    :catchall_25
    move-exception v1

    goto :goto_39

    .line 986
    :catch_27
    move-exception v2

    .line 987
    :try_start_28
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 2.0 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 990
    :goto_32
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v2, :cond_37

    const/4 v1, 0x1

    :cond_37
    monitor-exit v0

    return v1

    .line 991
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_25

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 996
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 2.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz v1, :cond_18

    const-string/jumbo v1, "yes"

    goto :goto_1b

    .line 999
    :cond_18
    const-string/jumbo v1, "no"

    :goto_1b
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 998
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    monitor-exit v0

    .line 1001
    return-void

    .line 1000
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

    .line 947
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 949
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_e

    .line 950
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 953
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$dRsq86SXVH7z342fbs2U36cr67I;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 972
    goto :goto_24

    .line 969
    :catch_19
    move-exception p1

    .line 970
    :try_start_1a
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 973
    :goto_24
    monitor-exit v0

    return-object v1

    .line 974
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

    .line 913
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 915
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_e

    .line 916
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 919
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$R9S8YWn8x1F3V2TOvXtmky1V44Q;

    invoke-direct {v3, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal20Wrapper$R9S8YWn8x1F3V2TOvXtmky1V44Q;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 939
    goto :goto_24

    .line 936
    :catch_19
    move-exception p1

    .line 937
    :try_start_1a
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 938
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 940
    :goto_24
    monitor-exit v0

    return-object v1

    .line 941
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw p1
.end method
