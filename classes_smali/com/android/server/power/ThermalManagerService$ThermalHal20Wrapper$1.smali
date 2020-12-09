.class Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;
.super Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V
    .registers 2

    .line 894
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/hardware/thermal/V2_0/Temperature;)V
    .registers 6

    .line 898
    new-instance v0, Landroid/os/Temperature;

    iget v1, p1, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v2, p1, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v3, p1, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget p1, p1, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 903
    :try_start_11
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {p1, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 905
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 906
    nop

    .line 907
    return-void

    .line 905
    :catchall_1d
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
