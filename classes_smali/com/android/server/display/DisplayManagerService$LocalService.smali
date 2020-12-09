.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 2341
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3

    .line 2341
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 4

    .line 2392
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .registers 12

    .line 2482
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3

    .line 2469
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V
    .registers 4

    .line 2420
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$5000(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 2421
    return-void
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .registers 13

    .line 2345
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2346
    :try_start_7
    new-instance v6, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {v6, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 2361
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    new-instance v8, Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2362
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    .line 2361
    invoke-static {v7, v8}, Lcom/android/server/display/DisplayManagerService;->access$3902(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;

    .line 2363
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, p3}, Lcom/android/server/display/DisplayManagerService;->access$4402(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 2364
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_31

    .line 2366
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$4500(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 2367
    return-void

    .line 2364
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public isProximitySensorAvailable()Z
    .registers 3

    .line 2380
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2381
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2382
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onOverlayChanged()V
    .registers 4

    .line 2459
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2460
    const/4 v1, 0x0

    :goto_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$5500(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 2461
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$5500(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->onOverlayChangedLocked()V

    .line 2460
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2463
    :cond_26
    monitor-exit v0

    .line 2464
    return-void

    .line 2463
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public performTraversal(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 2425
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V

    .line 2426
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 3

    .line 2452
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2453
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->persistBrightnessTrackerState()V

    .line 2454
    monitor-exit v0

    .line 2455
    return-void

    .line 2454
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3

    .line 2397
    if-eqz p1, :cond_8

    .line 2401
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4700(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2402
    return-void

    .line 2398
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 5

    .line 2372
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2373
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 2375
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public screenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 3

    .line 2387
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4600(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method public setDisplayAccessUIDs(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 2447
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$5400(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V

    .line 2448
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .registers 4

    .line 2415
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$4900(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 2416
    return-void
.end method

.method public setDisplayOffsets(III)V
    .registers 5

    .line 2437
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$5200(Lcom/android/server/display/DisplayManagerService;III)V

    .line 2438
    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .registers 12

    .line 2431
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    .line 2433
    return-void
.end method

.method public setDisplayScalingDisabled(IZ)V
    .registers 4

    .line 2442
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$5300(Lcom/android/server/display/DisplayManagerService;IZ)V

    .line 2443
    return-void
.end method

.method public setDisplayedContentSamplingEnabled(IZII)Z
    .registers 6

    .line 2475
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->setDisplayedContentSamplingEnabledInternal(IZII)Z

    move-result p1

    return p1
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .registers 3

    .line 2406
    if-eqz p1, :cond_8

    .line 2410
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 2411
    return-void

    .line 2407
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
