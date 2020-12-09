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

    .line 5146
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public finishUidChanges()V
    .registers 2

    .line 5247
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    .line 5248
    return-void
.end method

.method public getFeature(I)I
    .registers 2

    .line 5292
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$7300(I)I

    move-result p1

    return p1
.end method

.method public getLastWakeup()Landroid/os/PowerManager$WakeData;
    .registers 2

    .line 5282
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;

    move-result-object v0

    return-object v0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .registers 3

    .line 5212
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object p1

    return-object p1
.end method

.method public powerHint(II)V
    .registers 4

    .line 5272
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;II)V

    .line 5273
    return-void
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 3

    .line 5217
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 5218
    return-void
.end method

.method public setButtonBrightnessOverrideFromWindowManager(I)V
    .registers 5

    .line 5158
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5162
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 5164
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5165
    nop

    .line 5166
    return-void

    .line 5164
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setDeviceIdleMode(Z)Z
    .registers 3

    .line 5222
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result p1

    return p1
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .registers 3

    .line 5237
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    .line 5238
    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .registers 3

    .line 5232
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    .line 5233
    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .registers 5

    .line 5170
    packed-switch p1, :pswitch_data_14

    .line 5180
    const/4 p1, 0x0

    goto :goto_6

    .line 5178
    :pswitch_5  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    nop

    .line 5183
    :goto_6
    const/4 v0, -0x1

    if-lt p2, v0, :cond_d

    const/16 v1, 0xff

    if-le p2, v1, :cond_e

    .line 5185
    :cond_d
    move p2, v0

    .line 5187
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$6800(Lcom/android/server/power/PowerManagerService;II)V

    .line 5188
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

    .line 5202
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$7100(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5203
    return-void
.end method

.method public setFeature(II)V
    .registers 3

    .line 5297
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$900(II)V

    .line 5298
    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .registers 3

    .line 5227
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result p1

    return p1
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .registers 5

    .line 5207
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    .line 5208
    return-void
.end method

.method public setPowerSaveMode(Z)Z
    .registers 3

    .line 5287
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result p1

    return p1
.end method

.method public setScreenBrightnessOverrideFromWindowManager(I)V
    .registers 4

    .line 5149
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    const/16 v1, 0xff

    if-le p1, v1, :cond_8

    .line 5151
    :cond_7
    move p1, v0

    .line 5153
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;I)V

    .line 5154
    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 4

    .line 5197
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$7000(Lcom/android/server/power/PowerManagerService;J)V

    .line 5198
    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .registers 2

    .line 5192
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6900(Lcom/android/server/power/PowerManagerService;)V

    .line 5193
    return-void
.end method

.method public startUidChanges()V
    .registers 2

    .line 5242
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    .line 5243
    return-void
.end method

.method public uidActive(I)V
    .registers 3

    .line 5262
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    .line 5263
    return-void
.end method

.method public uidGone(I)V
    .registers 3

    .line 5257
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    .line 5258
    return-void
.end method

.method public uidIdle(I)V
    .registers 3

    .line 5267
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    .line 5268
    return-void
.end method

.method public updateUidProcState(II)V
    .registers 4

    .line 5252
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    .line 5253
    return-void
.end method

.method public wasDeviceIdleFor(J)Z
    .registers 4

    .line 5277
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    move-result p1

    return p1
.end method
