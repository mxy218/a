.class Lcom/android/server/statusbar/StatusBarManagerService$1;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNotificationLightOn:Z

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appTransitionCancelled(I)V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 402
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 403
    :catch_12
    move-exception p1

    .line 405
    :cond_13
    :goto_13
    return-void
.end method

.method public appTransitionFinished(I)V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$800(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 286
    :try_start_d
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionFinished(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_18

    .line 287
    :catch_17
    move-exception p1

    .line 289
    :cond_18
    :goto_18
    return-void
.end method

.method public appTransitionPending(I)V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 393
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 394
    :catch_12
    move-exception p1

    .line 396
    :cond_13
    :goto_13
    return-void
.end method

.method public appTransitionStarting(IJJ)V
    .registers 13

    .line 410
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 412
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(IJJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_16

    .line 414
    :catch_15
    move-exception p1

    .line 416
    :cond_16
    :goto_16
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 320
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 321
    :catch_12
    move-exception v0

    .line 323
    :cond_13
    :goto_13
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 347
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->dismissKeyboardShortcutsMenu()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 348
    :catch_12
    move-exception v0

    .line 350
    :cond_13
    :goto_13
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 338
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 339
    :catch_12
    move-exception p1

    .line 341
    :cond_13
    :goto_13
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 251
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onCameraLaunchGestureDetected(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 253
    goto :goto_13

    .line 252
    :catch_12
    move-exception p1

    .line 255
    :cond_13
    :goto_13
    return-void
.end method

.method public onDisplayReady(I)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 455
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onDisplayReady(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 456
    :catch_12
    move-exception p1

    .line 458
    :cond_13
    :goto_13
    return-void
.end method

.method public onProposedRotationChanged(IZ)V
    .registers 4

    .line 444
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 446
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onProposedRotationChanged(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 447
    :catch_12
    move-exception p1

    .line 449
    :cond_13
    :goto_13
    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 464
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onRecentsAnimationStateChanged(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 465
    :catch_12
    move-exception p1

    .line 468
    :cond_13
    :goto_13
    return-void
.end method

.method public preloadRecentApps()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 311
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 312
    :catch_12
    move-exception v0

    .line 314
    :cond_13
    :goto_13
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$902(Lcom/android/server/statusbar/StatusBarManagerService;I)I

    .line 304
    return-void
.end method

.method public setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$502(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;

    .line 215
    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .registers 20

    .line 266
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/server/statusbar/StatusBarManagerService;->access$700(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 269
    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 422
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 423
    :catch_12
    move-exception p1

    .line 425
    :cond_13
    :goto_13
    return-void
.end method

.method public setWindowState(III)V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 384
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(III)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 385
    :catch_12
    move-exception p1

    .line 387
    :cond_13
    :goto_13
    return-void
.end method

.method public showAssistDisclosure()V
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 231
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showAssistDisclosure()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 233
    goto :goto_13

    .line 232
    :catch_12
    move-exception v0

    .line 235
    :cond_13
    :goto_13
    return-void
.end method

.method public showChargingAnimation(I)V
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 365
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showWirelessChargingAnimation(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 367
    goto :goto_13

    .line 366
    :catch_12
    move-exception p1

    .line 369
    :cond_13
    :goto_13
    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 375
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPictureInPictureMenu()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 376
    :catch_12
    move-exception v0

    .line 378
    :cond_13
    :goto_13
    return-void
.end method

.method public showRecentApps(Z)V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 329
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 330
    :catch_12
    move-exception p1

    .line 332
    :cond_13
    :goto_13
    return-void
.end method

.method public showScreenPinningRequest(I)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 221
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showScreenPinningRequest(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 223
    goto :goto_13

    .line 222
    :catch_12
    move-exception p1

    .line 225
    :cond_13
    :goto_13
    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;Z)Z
    .registers 6

    .line 429
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$1000(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 430
    return v1

    .line 432
    :cond_15
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 434
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->showShutdownUi(ZLjava/lang/String;Z)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_28

    .line 435
    const/4 p1, 0x1

    return p1

    .line 436
    :catch_28
    move-exception p1

    .line 438
    :cond_29
    return v1
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 241
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 243
    goto :goto_13

    .line 242
    :catch_12
    move-exception p1

    .line 245
    :cond_13
    :goto_13
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 356
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->toggleKeyboardShortcutsMenu(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 357
    :catch_12
    move-exception p1

    .line 359
    :cond_13
    :goto_13
    return-void
.end method

.method public toggleRecentApps()V
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 295
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    .line 296
    :catch_12
    move-exception v0

    .line 298
    :cond_13
    :goto_13
    return-void
.end method

.method public toggleSplitScreen()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$800(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 276
    :try_start_d
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleSplitScreen()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_18

    .line 277
    :catch_17
    move-exception v0

    .line 279
    :cond_18
    :goto_18
    return-void
.end method

.method public topAppWindowChanged(IZ)V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$1;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->access$600(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V

    .line 260
    return-void
.end method
