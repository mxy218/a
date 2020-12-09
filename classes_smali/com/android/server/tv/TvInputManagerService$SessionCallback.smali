.class final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionCallback"
.end annotation


# instance fields
.field private final mChannels:[Landroid/view/InputChannel;

.field private final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .registers 4

    .line 2426
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    .line 2427
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2428
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    .line 2429
    return-void
.end method

.method private addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .registers 8

    .line 2454
    const-string v0, "TvInputManagerService"

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_5e

    .line 2458
    nop

    .line 2460
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 2461
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    .line 2462
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2463
    if-nez v3, :cond_4f

    .line 2464
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 2466
    :try_start_3c
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_48

    .line 2470
    nop

    .line 2471
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 2467
    :catch_48
    move-exception p1

    .line 2468
    const-string v2, "client process has already died"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2469
    return v1

    .line 2473
    :cond_4f
    :goto_4f
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2474
    const/4 p1, 0x1

    return p1

    .line 2455
    :catch_5e
    move-exception p1

    .line 2456
    const-string/jumbo v2, "session process has already died"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2457
    return v1
.end method


# virtual methods
.method public onChannelRetuned(Landroid/net/Uri;)V
    .registers 5

    .line 2479
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2483
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2491
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2494
    goto :goto_30

    .line 2492
    :catch_28
    move-exception p1

    .line 2493
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onChannelRetuned"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2495
    :goto_30
    monitor-exit v0

    .line 2496
    return-void

    .line 2484
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2495
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onContentAllowed()V
    .registers 5

    .line 2568
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2572
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2576
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2579
    goto :goto_30

    .line 2577
    :catch_28
    move-exception v1

    .line 2578
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onContentAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2580
    :goto_30
    monitor-exit v0

    .line 2581
    return-void

    .line 2573
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2580
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onContentBlocked(Ljava/lang/String;)V
    .registers 5

    .line 2585
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2589
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2593
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2596
    goto :goto_30

    .line 2594
    :catch_28
    move-exception p1

    .line 2595
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onContentBlocked"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2597
    :goto_30
    monitor-exit v0

    .line 2598
    return-void

    .line 2590
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2597
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onError(I)V
    .registers 5

    .line 2729
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2733
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2737
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onError(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2740
    goto :goto_30

    .line 2738
    :catch_28
    move-exception p1

    .line 2739
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onError"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2741
    :goto_30
    monitor-exit v0

    .line 2742
    return-void

    .line 2734
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2741
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onLayoutSurface(IIII)V
    .registers 13

    .line 2602
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2607
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_38

    if-nez v1, :cond_18

    goto :goto_36

    .line 2611
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2612
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    .line 2611
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2b} :catch_2c
    .catchall {:try_start_18 .. :try_end_2b} :catchall_38

    .line 2615
    goto :goto_34

    .line 2613
    :catch_2c
    move-exception p1

    .line 2614
    :try_start_2d
    const-string p2, "TvInputManagerService"

    const-string p3, "error in onLayoutSurface"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2616
    :goto_34
    monitor-exit v0

    .line 2617
    return-void

    .line 2608
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    .line 2616
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public onRecordingStopped(Landroid/net/Uri;)V
    .registers 5

    .line 2710
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2715
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2719
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onRecordingStopped(Landroid/net/Uri;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2722
    goto :goto_30

    .line 2720
    :catch_28
    move-exception p1

    .line 2721
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onRecordingStopped"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2723
    :goto_30
    monitor-exit v0

    .line 2724
    return-void

    .line 2716
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2723
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .registers 12

    .line 2436
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2437
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 2438
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1, p2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2702(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2439
    const/4 p2, 0x0

    if-eqz p1, :cond_3c

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 2440
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2441
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object v5, p1, p2

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2442
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v6

    .line 2440
    invoke-static/range {v1 .. v6}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_66

    .line 2444
    :cond_3c
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 2445
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v4

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2446
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v8

    .line 2445
    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 2448
    :goto_66
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 2449
    monitor-exit v0

    .line 2450
    return-void

    .line 2449
    :catchall_6f
    move-exception p1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_6f

    throw p1
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 2621
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2626
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2630
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2633
    goto :goto_30

    .line 2631
    :catch_28
    move-exception p1

    .line 2632
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v1, "error in onSessionEvent"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2634
    :goto_30
    monitor-exit v0

    .line 2635
    return-void

    .line 2627
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2634
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onTimeShiftCurrentPositionChanged(J)V
    .registers 6

    .line 2673
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2677
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2681
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2682
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    .line 2681
    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2685
    goto :goto_30

    .line 2683
    :catch_28
    move-exception p1

    .line 2684
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v1, "error in onTimeShiftCurrentPositionChanged"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2686
    :goto_30
    monitor-exit v0

    .line 2687
    return-void

    .line 2678
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2686
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onTimeShiftStartPositionChanged(J)V
    .registers 6

    .line 2656
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2660
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2664
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2667
    goto :goto_30

    .line 2665
    :catch_28
    move-exception p1

    .line 2666
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v1, "error in onTimeShiftStartPositionChanged"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2668
    :goto_30
    monitor-exit v0

    .line 2669
    return-void

    .line 2661
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2668
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onTimeShiftStatusChanged(I)V
    .registers 5

    .line 2639
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2643
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2647
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2650
    goto :goto_30

    .line 2648
    :catch_28
    move-exception p1

    .line 2649
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onTimeShiftStatusChanged"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2651
    :goto_30
    monitor-exit v0

    .line 2652
    return-void

    .line 2644
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2651
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .registers 6

    .line 2517
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2521
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2525
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2528
    goto :goto_30

    .line 2526
    :catch_28
    move-exception p1

    .line 2527
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v1, "error in onTrackSelected"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2529
    :goto_30
    monitor-exit v0

    .line 2530
    return-void

    .line 2522
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2529
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 2500
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2504
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2508
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2511
    goto :goto_30

    .line 2509
    :catch_28
    move-exception p1

    .line 2510
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onTracksChanged"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2512
    :goto_30
    monitor-exit v0

    .line 2513
    return-void

    .line 2505
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2512
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onTuned(Landroid/net/Uri;)V
    .registers 5

    .line 2692
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2696
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2700
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/media/tv/ITvInputClient;->onTuned(ILandroid/net/Uri;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2703
    goto :goto_30

    .line 2701
    :catch_28
    move-exception p1

    .line 2702
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onTuned"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    :goto_30
    monitor-exit v0

    .line 2705
    return-void

    .line 2697
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2704
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public onVideoAvailable()V
    .registers 5

    .line 2534
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2538
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2542
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2545
    goto :goto_30

    .line 2543
    :catch_28
    move-exception v1

    .line 2544
    :try_start_29
    const-string v2, "TvInputManagerService"

    const-string v3, "error in onVideoAvailable"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2546
    :goto_30
    monitor-exit v0

    .line 2547
    return-void

    .line 2539
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2546
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public onVideoUnavailable(I)V
    .registers 5

    .line 2551
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2555
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_34

    if-nez v1, :cond_18

    goto :goto_32

    .line 2559
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_27} :catch_28
    .catchall {:try_start_18 .. :try_end_27} :catchall_34

    .line 2562
    goto :goto_30

    .line 2560
    :catch_28
    move-exception p1

    .line 2561
    :try_start_29
    const-string v1, "TvInputManagerService"

    const-string v2, "error in onVideoUnavailable"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2563
    :goto_30
    monitor-exit v0

    .line 2564
    return-void

    .line 2556
    :cond_32
    :goto_32
    monitor-exit v0

    return-void

    .line 2563
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw p1
.end method
