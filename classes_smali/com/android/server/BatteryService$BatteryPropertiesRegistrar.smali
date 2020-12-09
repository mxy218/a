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

    .line 1215
    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method

.method static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 1226
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1227
    if-nez p2, :cond_8

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1228
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 1232
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1233
    if-nez p2, :cond_8

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1234
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 1238
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1239
    if-nez p2, :cond_8

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1240
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 1244
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1245
    if-nez p2, :cond_8

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1246
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 1250
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1251
    if-nez p2, :cond_8

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1252
    :cond_8
    return-void
.end method

.method static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .registers 5

    .line 1256
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 1257
    if-nez p2, :cond_7

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    .line 1258
    :cond_7
    return-void
.end method


# virtual methods
.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    const-string v0, "HealthGetProperty"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Ljava/lang/String;)V

    .line 1220
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1221
    if-eqz v0, :cond_57

    .line 1222
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 1223
    packed-switch p1, :pswitch_data_66

    goto :goto_51

    .line 1249
    :pswitch_1b  #0x6
    new-instance p1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;

    invoke-direct {p1, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$hInbvsihGvN2hXqvdcoFYzdeqHw;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1253
    goto :goto_51

    .line 1255
    :pswitch_24  #0x5
    new-instance p1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;

    invoke-direct {p1, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$9z3zqgxtPzBN8Qoni5nHVb0m8EY;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_51

    .line 1243
    :pswitch_2d  #0x4
    new-instance p1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;

    invoke-direct {p1, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$DM4ow6LC--JYWBfhHp2f1JW8nww;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 1247
    goto :goto_51

    .line 1237
    :pswitch_36  #0x3
    new-instance p1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;

    invoke-direct {p1, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$KZAu97wwr_7_MI0awCjQTzdIuAI;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 1241
    goto :goto_51

    .line 1231
    :pswitch_3f  #0x2
    new-instance p1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;

    invoke-direct {p1, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$JTQ79fl14NyImudsJhx-Mp1dJI8;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 1235
    goto :goto_51

    .line 1225
    :pswitch_48  #0x1
    new-instance p1, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;

    invoke-direct {p1, v1, p2}, Lcom/android/server/-$$Lambda$BatteryService$BatteryPropertiesRegistrar$7Y-B9O7NDYgUY9hQvFzC2FQ2V5w;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {v0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 1229
    nop

    .line 1261
    :goto_51
    iget p1, v1, Landroid/util/MutableInt;->value:I
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_60

    .line 1263
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1261
    return p1

    .line 1221
    :cond_57
    :try_start_57
    new-instance p1, Landroid/os/RemoteException;

    const-string/jumbo p2, "no health service"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_60

    .line 1263
    :catchall_60
    move-exception p1

    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    throw p1

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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1268
    const-string v0, "HealthScheduleUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1500(Ljava/lang/String;)V

    .line 1270
    :try_start_5
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->getLastService()Landroid/hardware/health/V2_0/IHealth;

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_19

    .line 1272
    invoke-interface {v0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    .line 1274
    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    .line 1275
    nop

    .line 1276
    return-void

    .line 1271
    :cond_19
    :try_start_19
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "no health service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_22

    .line 1274
    :catchall_22
    move-exception v0

    invoke-static {}, Lcom/android/server/BatteryService;->access$1600()V

    throw v0
.end method
