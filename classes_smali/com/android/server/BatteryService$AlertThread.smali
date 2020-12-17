.class Lcom/android/server/BatteryService$AlertThread;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertThread"
.end annotation


# instance fields
.field final HightTemperature_Delay_time:I

.field isHightTemperature:Z

.field mAlartObject:Ljava/lang/Object;

.field final mzSleepTime:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/BatteryService;

    .line 1805
    iput-object p1, p0, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1806
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/BatteryService$AlertThread;->mzSleepTime:I

    .line 1807
    iput v0, p0, Lcom/android/server/BatteryService$AlertThread;->HightTemperature_Delay_time:I

    .line 1808
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService$AlertThread;->mAlartObject:Ljava/lang/Object;

    .line 1809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService$AlertThread;->isHightTemperature:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1825
    :goto_0
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/BatteryService$AlertThread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1828
    goto :goto_7

    .line 1826
    :catch_6
    move-exception v0

    .line 1829
    :goto_7
    const-string v0, "device_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1830
    .local v0, "iBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_9a

    .line 1831
    invoke-static {v0}, Lmeizu/os/IDeviceControlService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/os/IDeviceControlService;

    move-result-object v1

    .line 1832
    .local v1, "service":Lmeizu/os/IDeviceControlService;
    new-instance v2, Lmeizu/os/DeviceControlManager;

    iget-object v3, p0, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lmeizu/os/DeviceControlManager;-><init>(Landroid/content/Context;Lmeizu/os/IDeviceControlService;)V

    .line 1833
    .local v2, "deviceControl":Lmeizu/os/DeviceControlManager;
    nop

    .line 1841
    .end local v0  # "iBinder":Landroid/os/IBinder;
    .end local v1  # "service":Lmeizu/os/IDeviceControlService;
    :goto_1f
    invoke-virtual {v2}, Lmeizu/os/DeviceControlManager;->getUSBChargeTemperature()I

    move-result v1

    .line 1842
    .local v1, "temperature":I
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUSBChargeTemperature       "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    const/16 v0, 0x3c

    const-wide/16 v3, 0x1388

    const/4 v5, 0x0

    if-lt v1, v0, :cond_58

    .line 1844
    iget-boolean v0, p0, Lcom/android/server/BatteryService$AlertThread;->isHightTemperature:Z

    if-nez v0, :cond_54

    .line 1845
    iget-object v0, p0, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2800(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v6, Lcom/android/server/BatteryService$AlertThread$1;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$AlertThread$1;-><init>(Lcom/android/server/BatteryService$AlertThread;)V

    invoke-virtual {v0, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1856
    :cond_54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService$AlertThread;->isHightTemperature:Z

    goto :goto_5e

    .line 1857
    :cond_58
    const/16 v0, 0x2d

    if-gt v1, v0, :cond_5e

    .line 1858
    iput-boolean v5, p0, Lcom/android/server/BatteryService$AlertThread;->isHightTemperature:Z

    .line 1860
    :cond_5e
    :goto_5e
    iget-object v6, p0, Lcom/android/server/BatteryService$AlertThread;->mAlartObject:Ljava/lang/Object;

    monitor-enter v6

    .line 1862
    :try_start_61
    iget-object v0, p0, Lcom/android/server/BatteryService$AlertThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)I

    move-result v0

    if-nez v0, :cond_71

    .line 1863
    iput-boolean v5, p0, Lcom/android/server/BatteryService$AlertThread;->isHightTemperature:Z

    .line 1864
    iget-object v0, p0, Lcom/android/server/BatteryService$AlertThread;->mAlartObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_76

    .line 1866
    :cond_71
    iget-object v0, p0, Lcom/android/server/BatteryService$AlertThread;->mAlartObject:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_76} :catch_79
    .catchall {:try_start_61 .. :try_end_76} :catchall_77

    .line 1870
    :goto_76
    goto :goto_96

    .line 1871
    :catchall_77
    move-exception v0

    goto :goto_98

    .line 1868
    :catch_79
    move-exception v0

    .line 1869
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7a
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_96
    monitor-exit v6

    goto :goto_1f

    :goto_98
    monitor-exit v6
    :try_end_99
    .catchall {:try_start_7a .. :try_end_99} :catchall_77

    throw v0

    .line 1835
    .end local v1  # "temperature":I
    .end local v2  # "deviceControl":Lmeizu/os/DeviceControlManager;
    .local v0, "iBinder":Landroid/os/IBinder;
    :cond_9a
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wait for   DeviceControlService"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    .end local v0  # "iBinder":Landroid/os/IBinder;
    goto/16 :goto_0
.end method

.method public startCheck()V
    .registers 6

    .line 1811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService$AlertThread;->isHightTemperature:Z

    .line 1812
    iget-object v0, p0, Lcom/android/server/BatteryService$AlertThread;->mAlartObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1814
    :try_start_6
    iget-object v1, p0, Lcom/android/server/BatteryService$AlertThread;->mAlartObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_e
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 1818
    goto :goto_2b

    .line 1819
    :catchall_c
    move-exception v1

    goto :goto_2d

    .line 1816
    :catch_e
    move-exception v1

    .line 1817
    .local v1, "e":Ljava/lang/Exception;
    :try_start_f
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_2b
    monitor-exit v0

    .line 1820
    return-void

    .line 1819
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_c

    throw v1
.end method
