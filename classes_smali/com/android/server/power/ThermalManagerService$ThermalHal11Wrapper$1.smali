.class Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;
.super Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .registers 2

    .line 766
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/V1_1/IThermalCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(ZLandroid/hardware/thermal/V1_0/Temperature;)V
    .registers 6

    .line 770
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p2, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p2, p2, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    .line 772
    if-eqz p1, :cond_c

    const/4 p1, 0x3

    goto :goto_d

    .line 773
    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-direct {v0, v1, v2, p2, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 776
    :try_start_14
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    iget-object v1, v1, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;

    invoke-interface {v1, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;->onValues(Landroid/os/Temperature;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    .line 778
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    nop

    .line 780
    return-void

    .line 778
    :catchall_20
    move-exception v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
