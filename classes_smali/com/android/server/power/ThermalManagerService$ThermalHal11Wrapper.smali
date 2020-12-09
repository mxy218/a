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

    .line 759
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 765
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

    return-void
.end method

.method static synthetic lambda$getCurrentCoolingDevices$1(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 833
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 835
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/thermal/V1_0/CoolingDevice;

    .line 836
    if-eqz p0, :cond_1b

    iget v0, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v0, :cond_1b

    .line 837
    goto :goto_8

    .line 839
    :cond_1b
    new-instance v0, Landroid/os/CoolingDevice;

    iget v1, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v1, v1

    iget v3, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object p4, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 845
    :cond_2c
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_44
    return-void
.end method

.method static synthetic lambda$getCurrentTemperatures$0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 796
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2c

    .line 798
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/thermal/V1_0/Temperature;

    .line 799
    if-eqz p0, :cond_1b

    iget v0, p4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v0, :cond_1b

    .line 800
    goto :goto_8

    .line 803
    :cond_1b
    new-instance v0, Landroid/os/Temperature;

    iget v1, p4, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p4, p4, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p4, v3}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    goto :goto_8

    :cond_2b
    goto :goto_44

    .line 809
    :cond_2c
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_44
    return-void
.end method


# virtual methods
.method protected connectToHal()Z
    .registers 6

    .line 861
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    invoke-static {}, Landroid/hardware/thermal/V1_1/IThermal;->getService()Landroid/hardware/thermal/V1_1/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 864
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v2, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v3, 0x15ec

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/thermal/V1_1/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 866
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalCallback11:Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;

    invoke-interface {v1, v2}, Landroid/hardware/thermal/V1_1/IThermal;->registerThermalCallback(Landroid/hardware/thermal/V1_1/IThermalCallback;)V

    .line 867
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Thermal HAL 1.1 service connected, limited thermal functions due to legacy API."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_23} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_23} :catch_26
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    .line 872
    goto :goto_31

    .line 874
    :catchall_24
    move-exception v1

    goto :goto_3a

    .line 869
    :catch_26
    move-exception v1

    .line 870
    :try_start_27
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Thermal HAL 1.1 service not connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    .line 873
    :goto_31
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    monitor-exit v0

    return v1

    .line 874
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_24

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 879
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 1.1 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-eqz v1, :cond_18

    const-string/jumbo v1, "yes"

    goto :goto_1b

    .line 882
    :cond_18
    const-string/jumbo v1, "no"

    :goto_1b
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    monitor-exit v0

    .line 884
    return-void

    .line 883
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

    .line 826
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_e

    .line 829
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 832
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$h5fsSA4CwK_Xli1jHnpETKQH7nA;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$h5fsSA4CwK_Xli1jHnpETKQH7nA;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 854
    goto :goto_24

    .line 851
    :catch_19
    move-exception p1

    .line 852
    :try_start_1a
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 855
    :goto_24
    monitor-exit v0

    return-object v1

    .line 856
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

    .line 786
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 788
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    if-nez v2, :cond_e

    .line 789
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    return-object v1

    .line 792
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mThermalHal11:Landroid/hardware/thermal/V1_1/IThermal;

    new-instance v3, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$ewP6gmklD7-k-bU5IqeZFG8-BZk;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/-$$Lambda$ThermalManagerService$ThermalHal11Wrapper$ewP6gmklD7-k-bU5IqeZFG8-BZk;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_1/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_19
    .catchall {:try_start_e .. :try_end_18} :catchall_26

    .line 818
    goto :goto_24

    .line 815
    :catch_19
    move-exception p1

    .line 816
    :try_start_1a
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->connectToHal()Z

    .line 819
    :goto_24
    monitor-exit v0

    return-object v1

    .line 820
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw p1
.end method
