.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/power/PowerManagerService;

    .line 5317
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public finishUidChanges()V
    .registers 2

    .line 5406
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    .line 5407
    return-void
.end method

.method public getLastWakeup()Landroid/os/PowerManager$WakeData;
    .registers 2

    .line 5441
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7600(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .registers 3
    .param p1, "serviceType"  # I

    .line 5371
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v0

    return-object v0
.end method

.method public isProximityPositive()Z
    .registers 2

    .line 5447
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public powerHint(II)V
    .registers 4
    .param p1, "hintId"  # I
    .param p2, "data"  # I

    .line 5431
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;II)V

    .line 5432
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 5376
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 5377
    return-void
.end method

.method public setDeviceIdleMode(Z)Z
    .registers 3
    .param p1, "enabled"  # Z

    .line 5381
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .registers 3
    .param p1, "appids"  # [I

    .line 5396
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 5397
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .registers 3
    .param p1, "appids"  # [I

    .line 5391
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 5392
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .registers 4
    .param p1, "screenState"  # I
    .param p2, "screenBrightness"  # I

    .line 5329
    packed-switch p1, :pswitch_data_14

    .line 5339
    const/4 p1, 0x0

    goto :goto_6

    .line 5337
    :pswitch_5  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    nop

    .line 5342
    :goto_6
    const/4 v0, -0x1

    if-lt p2, v0, :cond_d

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p2, v0, :cond_e

    .line 5344
    :cond_d
    const/4 p2, -0x1

    .line 5346
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;II)V

    .line 5347
    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method

.method public setDrawWakeLockOverrideFromSidekick(Z)V
    .registers 3
    .param p1, "keepState"  # Z

    .line 5361
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5362
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .registers 3
    .param p1, "enabled"  # Z

    .line 5386
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "timeMs"  # J

    .line 5366
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    .line 5367
    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .registers 3
    .param p1, "screenBrightness"  # I

    .line 5320
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le p1, v0, :cond_8

    .line 5322
    :cond_7
    const/4 p1, -0x1

    .line 5324
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;I)V

    .line 5325
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 4
    .param p1, "timeoutMillis"  # J

    .line 5356
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;J)V

    .line 5357
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .registers 2

    .line 5351
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7300(Lcom/android/server/power/PowerManagerService;)V

    .line 5352
    return-void
.end method

.method public startUidChanges()V
    .registers 2

    .line 5401
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    .line 5402
    return-void
.end method

.method public uidActive(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 5421
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    .line 5422
    return-void
.end method

.method public uidGone(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 5416
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 5417
    return-void
.end method

.method public uidIdle(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 5426
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    .line 5427
    return-void
.end method

.method public updateUidProcState(II)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "procState"  # I

    .line 5411
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 5412
    return-void
.end method

.method public wasDeviceIdleFor(J)Z
    .registers 4
    .param p1, "ms"  # J

    .line 5436
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    move-result v0

    return v0
.end method
