.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 3

    .line 849
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureCaptureTvInputPermission()V
    .registers 3

    .line 1973
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1978
    return-void

    .line 1976
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureParentalControlsPermission()V
    .registers 3

    .line 1149
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 1155
    return-void

    .line 1152
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have parental controls permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 911
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 914
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 916
    :cond_1b
    const-string/jumbo v0, "unknown"

    return-object v0
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1729
    const/4 p1, 0x0

    return-object p1

    .line 1732
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1734
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "acquireTvInputHardware"

    invoke-static {v2, v3, v6, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1737
    :try_start_24
    iget-object p4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p4}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_35

    .line 1740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    return-object p1

    .line 1740
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 7

    .line 1116
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1117
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1117
    const-string v3, "addBlockedRating"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1121
    :try_start_17
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_38

    .line 1122
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 1123
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object p2

    .line 1124
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object p1

    .line 1123
    invoke-virtual {p2, p1}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1125
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 1127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    nop

    .line 1129
    return-void

    .line 1125
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1127
    :catchall_38
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1913
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 1915
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1917
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    invoke-static {v2, v3, v6, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1920
    const/4 p4, 0x0

    .line 1921
    :try_start_18
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_a0

    .line 1922
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 1923
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 1924
    const-string p2, "TvInputManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "input not found for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 p1, 0x0

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_9d

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1925
    return p1

    .line 1927
    :cond_4b
    :try_start_4b
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1928
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 1929
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_86

    .line 1930
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p4

    .line 1931
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    .line 1930
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1931
    invoke-static {p4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object p4

    .line 1932
    goto :goto_87

    .line 1934
    :cond_86
    goto :goto_57

    .line 1935
    :cond_87
    :goto_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_4b .. :try_end_88} :catchall_9d

    .line 1936
    :try_start_88
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    .line 1937
    if-eqz p4, :cond_92

    move-object v3, p4

    goto :goto_93

    :cond_92
    move-object v3, p1

    .line 1936
    :goto_93
    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z

    move-result p1
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_a0

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1936
    return p1

    .line 1935
    :catchall_9d
    move-exception p1

    :try_start_9e
    monitor-exit v2
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw p1
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 1940
    :catchall_a0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 10

    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1491
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createOverlayView"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1495
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_37

    .line 1497
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1498
    invoke-interface {p1, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    .line 1501
    goto :goto_2f

    .line 1502
    :catchall_25
    move-exception p1

    goto :goto_35

    .line 1499
    :catch_27
    move-exception p1

    .line 1500
    :try_start_28
    const-string p2, "TvInputManagerService"

    const-string p3, "error in createOverlayView"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    :goto_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 1504
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1505
    nop

    .line 1506
    return-void

    .line 1502
    :goto_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_25

    :try_start_36
    throw p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 1504
    :catchall_37
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .registers 28

    .line 1160
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v1, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1161
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "createSession"

    invoke-static {v3, v4, v9, v1, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v12

    .line 1163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1165
    :try_start_1a
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_122

    .line 1166
    :try_start_21
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    if-eq v1, v3, :cond_3d

    if-nez p3, :cond_3d

    .line 1170
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1171
    monitor-exit v15
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_119

    .line 1214
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    return-void

    .line 1173
    :cond_3d
    :try_start_3d
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1, v12}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v16

    .line 1174
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 1175
    if-nez v1, :cond_77

    .line 1176
    const-string v1, "TvInputManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find input state for inputId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1178
    monitor-exit v15
    :try_end_73
    .catchall {:try_start_3d .. :try_end_73} :catchall_119

    .line 1214
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    return-void

    .line 1180
    :cond_77
    :try_start_77
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v17

    .line 1181
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1182
    if-nez v1, :cond_a5

    .line 1183
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v12, v5}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1184
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v1

    goto :goto_a7

    .line 1182
    :cond_a5
    move-object/from16 v18, v1

    .line 1187
    :goto_a7
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1188
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1189
    monitor-exit v15
    :try_end_bb
    .catchall {:try_start_77 .. :try_end_bb} :catchall_119

    .line 1214
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    return-void

    .line 1193
    :cond_bf
    :try_start_bf
    new-instance v11, Landroid/os/Binder;

    invoke-direct {v11}, Landroid/os/Binder;-><init>()V

    .line 1194
    new-instance v10, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1195
    invoke-virtual/range {v17 .. v17}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5
    :try_end_d0
    .catchall {:try_start_bf .. :try_end_d0} :catchall_119

    const/16 v19, 0x0

    move-object v1, v10

    move-object v3, v11

    move/from16 v6, p3

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-wide/from16 v20, v13

    move-object v13, v10

    move v10, v12

    move-object v14, v11

    move-object/from16 v11, v19

    :try_start_e1
    invoke-direct/range {v1 .. v11}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1199
    invoke-static/range {v16 .. v16}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 1205
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v2

    invoke-static {v1, v2, v14, v12}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_113

    .line 1207
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, v14, v12}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    goto :goto_113

    .line 1210
    :cond_10a
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 1212
    :cond_113
    :goto_113
    monitor-exit v15
    :try_end_114
    .catchall {:try_start_e1 .. :try_end_114} :catchall_120

    .line 1214
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1215
    nop

    .line 1216
    return-void

    .line 1212
    :catchall_119
    move-exception v0

    move-wide/from16 v20, v13

    :goto_11c
    :try_start_11c
    monitor-exit v15
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_120

    :try_start_11d
    throw v0
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11e

    .line 1214
    :catchall_11e
    move-exception v0

    goto :goto_125

    .line 1212
    :catchall_120
    move-exception v0

    goto :goto_11c

    .line 1214
    :catchall_122
    move-exception v0

    move-wide/from16 v20, v13

    :goto_125
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 11

    .line 1310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1311
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p5

    .line 1313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1315
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_52

    .line 1317
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p5}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 1319
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1321
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1322
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    const/16 v4, 0x3e8

    invoke-static {v0, p1, v4, p5}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1323
    invoke-interface {p1, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3f} :catch_42
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_3f} :catch_42
    .catchall {:try_start_1b .. :try_end_3f} :catchall_40

    .line 1327
    :cond_3f
    goto :goto_4a

    .line 1328
    :catchall_40
    move-exception p1

    goto :goto_50

    .line 1325
    :catch_42
    move-exception p1

    .line 1326
    :try_start_43
    const-string p2, "TvInputManagerService"

    const-string p3, "error in dispatchSurfaceChanged"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    :goto_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    .line 1330
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1331
    nop

    .line 1332
    return-void

    .line 1328
    :goto_50
    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_40

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 1330
    :catchall_52
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 2010
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2011
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "TvInputManagerService"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    .line 2013
    :cond_16
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2014
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User Ids (Current user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2016
    const/4 v2, 0x0

    move v3, v2

    :goto_41
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 2017
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2018
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2016
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 2020
    :cond_61
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2022
    nop

    :goto_65
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40b

    .line 2023
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2024
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 2025
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserState ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2028
    const-string v3, "inputMap: inputId -> TvInputState"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2030
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2031
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    goto :goto_b1

    .line 2033
    :cond_df
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2035
    const-string/jumbo v3, "packageSet:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2037
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2038
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    goto :goto_f3

    .line 2040
    :cond_103
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2042
    const-string v3, "clientStateMap: ITvInputClient -> ClientState"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2045
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2046
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2047
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2051
    const-string/jumbo v5, "sessionTokens:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2053
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 2054
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    goto :goto_15b

    .line 2056
    :cond_17c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2058
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clientTokens: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$6300(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$6400(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2062
    goto/16 :goto_11a

    .line 2063
    :cond_1b5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2065
    const-string/jumbo v3, "serviceStateMap: ComponentName -> ServiceState"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2068
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1cd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_299

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2069
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2070
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2074
    const-string/jumbo v5, "sessionTokens:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2076
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 2077
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    goto :goto_20e

    .line 2079
    :cond_22f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2081
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callback: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bound: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reconnecting: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2087
    goto/16 :goto_1cd

    .line 2088
    :cond_299
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2090
    const-string/jumbo v3, "sessionStateMap: ITvInputSession -> SessionState"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2093
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2094
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2095
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inputId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "client: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "seq: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callingUid: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sessionToken: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "session: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logUri: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$6500(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hardwareSessionToken: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2108
    goto/16 :goto_2b1

    .line 2109
    :cond_3c2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2111
    const-string v3, "callbackSet:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2113
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/tv/ITvInputManagerCallback;

    .line 2114
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    goto :goto_3d5

    .line 2116
    :cond_3e9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainSessionToken: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2022
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_65

    .line 2121
    :cond_40b
    monitor-exit v1
    :try_end_40c
    .catchall {:try_start_1d .. :try_end_40c} :catchall_416

    .line 2122
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2123
    return-void

    .line 2121
    :catchall_416
    move-exception p1

    :try_start_417
    monitor-exit v1
    :try_end_418
    .catchall {:try_start_417 .. :try_end_418} :catchall_416

    throw p1
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1895
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 1897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1899
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "getAvailableTvStreamConfigList"

    invoke-static {v3, v4, v2, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1902
    :try_start_17
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 1905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1902
    return-object p1

    .line 1905
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1097
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1096
    const-string v3, "getBlockedRatings"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p1

    .line 1098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1100
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_46

    .line 1101
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 1102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object p1

    array-length v4, p1

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v4, :cond_3e

    aget-object v6, p1, v5

    .line 1105
    invoke-virtual {v6}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1107
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_43

    .line 1110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    return-object v3

    .line 1108
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 1110
    :catchall_46
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1766
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f1

    .line 1771
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1774
    :try_start_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    new-instance v3, Ljava/io/File;

    const-string v4, "/dev"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1776
    nop

    .line 1777
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_27
    const/4 v8, 0x1

    if-ge v6, v4, :cond_5f

    aget-object v9, v3, v6

    .line 1778
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5900()Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1779
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_53

    .line 1780
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1781
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1782
    new-instance v12, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v12, v11, v10}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    :cond_53
    const-string v10, "dvb"

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 1785
    move v7, v8

    .line 1777
    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 1788
    :cond_5f
    if-nez v7, :cond_69

    .line 1789
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_65
    .catchall {:try_start_12 .. :try_end_65} :catchall_ec

    .line 1814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1789
    return-object v2

    .line 1791
    :cond_69
    :try_start_69
    new-instance v3, Ljava/io/File;

    const-string v4, "/dev/dvb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_7b
    if-ge v7, v6, :cond_d9

    aget-object v9, v3, v7

    .line 1795
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6000()Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 1796
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_d6

    .line 1797
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1798
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/dev/dvb/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    array-length v11, v9

    move v12, v5

    :goto_b1
    if-ge v12, v11, :cond_d6

    aget-object v13, v9, v12

    .line 1800
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6100()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 1802
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_d3

    .line 1803
    invoke-virtual {v13, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1804
    new-instance v14, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v14, v10, v13}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    :cond_d3
    add-int/lit8 v12, v12, 0x1

    goto :goto_b1

    .line 1794
    :cond_d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 1810
    :cond_d9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 1811
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_e8

    .line 1812
    :cond_e4
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_e8
    .catchall {:try_start_69 .. :try_end_e8} :catchall_ec

    .line 1814
    :goto_e8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    return-object v2

    .line 1814
    :catchall_ec
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1768
    :cond_f1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1712
    const/4 v0, 0x0

    return-object v0

    .line 1715
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1717
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_22

    .line 1719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1717
    return-object v2

    .line 1719
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTENT_RATING_SYSTEMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 943
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 943
    const-string v3, "getTvContentRatingSystemList"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p1

    .line 945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 947
    :try_start_22
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_3b

    .line 948
    :try_start_29
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 949
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object p1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    return-object p1

    .line 950
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 952
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 940
    :cond_40
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "The caller does not have permission to read content rating systems"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 7

    .line 871
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 871
    const-string v3, "getTvInputInfo"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 873
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 875
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 876
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 877
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 878
    if-nez p1, :cond_2f

    const/4 p1, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object p1

    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    return-object p1

    .line 879
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 881
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 852
    const-string v3, "getTvInputList"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p1

    .line 854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 856
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_4e

    .line 857
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 859
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 860
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    goto :goto_32

    .line 862
    :cond_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_4b

    .line 865
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    return-object v3

    .line 863
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 865
    :catchall_4e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 7

    .line 921
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 921
    const-string v3, "getTvInputState"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 925
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 926
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 927
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 928
    if-nez p1, :cond_2f

    const/4 p1, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4000(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result p1

    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    return p1

    .line 929
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 931
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 6

    .line 1049
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1050
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1049
    const-string v3, "isParentalControlsEnabled"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p1

    .line 1051
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1053
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_31

    .line 1054
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 1055
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z

    move-result p1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2e

    .line 1058
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    return p1

    .line 1056
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 1058
    :catchall_31
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 7

    .line 1080
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1080
    const-string v3, "isRatingBlocked"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1084
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_35

    .line 1085
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 1086
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object p2

    .line 1087
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object p1

    .line 1086
    invoke-virtual {p2, p1}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result p1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_32

    .line 1090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1086
    return p1

    .line 1088
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 1090
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isSingleSessionActive(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1946
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureCaptureTvInputPermission()V

    .line 1947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1949
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "isSingleSessionActive"

    invoke-static {v3, v4, v2, p1, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p1

    .line 1952
    :try_start_17
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_6d

    .line 1953
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    .line 1954
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    .line 1955
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_6a

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1955
    return v4

    .line 1956
    :cond_34
    :try_start_34
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_65

    .line 1957
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v3, v6, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1960
    aget-object v3, p1, v5

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_60

    aget-object p1, p1, v4

    .line 1961
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 1962
    :cond_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_34 .. :try_end_61} :catchall_6a

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    return v4

    .line 1965
    :cond_65
    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_6a

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1965
    return v5

    .line 1966
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 1968
    :catchall_6d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    move/from16 v0, p2

    move-object v1, p0

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DVB_DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_138

    .line 1826
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1827
    nop

    .line 1828
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_21
    const/4 v6, 0x1

    if-ge v4, v2, :cond_90

    aget-object v7, v1, v4

    .line 1829
    const-string v8, "dvb"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 1830
    new-instance v7, Ljava/io/File;

    const-string v8, "/dev/dvb"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    move v5, v3

    :goto_3c
    if-ge v5, v8, :cond_89

    aget-object v10, v7, v5

    .line 1832
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6000()Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 1833
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_82

    .line 1834
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/dev/dvb/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v3

    :goto_6a
    if-ge v12, v11, :cond_82

    aget-object v13, v10, v12

    .line 1836
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6100()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 1838
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_7f

    .line 1839
    nop

    .line 1840
    move v9, v6

    goto :goto_82

    .line 1835
    :cond_7f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6a

    .line 1844
    :cond_82
    :goto_82
    if-eqz v9, :cond_86

    .line 1845
    move v5, v9

    goto :goto_8a

    .line 1831
    :cond_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_89
    move v5, v9

    .line 1849
    :cond_8a
    :goto_8a
    if-eqz v5, :cond_8d

    .line 1850
    goto :goto_90

    .line 1828
    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1854
    :cond_90
    :goto_90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1857
    const/4 v4, 0x2

    if-eqz v0, :cond_f8

    if-eq v0, v6, :cond_d6

    if-ne v0, v4, :cond_bd

    .line 1869
    if-eqz v5, :cond_a0

    .line 1870
    :try_start_9d
    const-string v5, "/dev/dvb/adapter%d/frontend%d"

    goto :goto_a2

    :cond_a0
    const-string v5, "/dev/dvb%d.frontend%d"

    :goto_a2
    new-array v7, v4, [Ljava/lang/Object;

    .line 1871
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    .line 1869
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1872
    goto :goto_11a

    .line 1874
    :cond_bd
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid DVB device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1888
    :catchall_d4
    move-exception v0

    goto :goto_134

    .line 1864
    :cond_d6
    if-eqz v5, :cond_db

    .line 1865
    const-string v5, "/dev/dvb/adapter%d/dvr%d"

    goto :goto_dd

    :cond_db
    const-string v5, "/dev/dvb%d.dvr%d"

    :goto_dd
    new-array v7, v4, [Ljava/lang/Object;

    .line 1866
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    .line 1864
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1867
    goto :goto_11a

    .line 1859
    :cond_f8
    if-eqz v5, :cond_fd

    .line 1860
    const-string v5, "/dev/dvb/adapter%d/demux%d"

    goto :goto_ff

    :cond_fd
    const-string v5, "/dev/dvb%d.demux%d"

    :goto_ff
    new-array v7, v4, [Ljava/lang/Object;

    .line 1861
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    .line 1859
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_119
    .catchall {:try_start_9d .. :try_end_119} :catchall_d4

    .line 1862
    nop

    .line 1880
    :goto_11a
    :try_start_11a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1881
    if-ne v4, v0, :cond_124

    .line 1882
    const/high16 v0, 0x30000000

    goto :goto_126

    .line 1883
    :cond_124
    const/high16 v0, 0x10000000

    .line 1880
    :goto_126
    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_12a
    .catch Ljava/io/FileNotFoundException; {:try_start_11a .. :try_end_12a} :catch_12e
    .catchall {:try_start_11a .. :try_end_12a} :catchall_d4

    .line 1888
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    return-object v0

    .line 1884
    :catch_12e
    move-exception v0

    .line 1885
    const/4 v0, 0x0

    .line 1888
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1885
    return-object v0

    .line 1888
    :goto_134
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1823
    :cond_138
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 8

    .line 1002
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1002
    const-string/jumbo v3, "registerCallback"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1004
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1006
    :try_start_15
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_53

    .line 1007
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 1008
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    new-instance v4, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    invoke-static {v3, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4502(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder$DeathRecipient;)Landroid/os/IBinder$DeathRecipient;
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_50

    .line 1021
    :try_start_33
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42
    .catchall {:try_start_33 .. :try_end_41} :catchall_50

    .line 1024
    goto :goto_4a

    .line 1022
    :catch_42
    move-exception p1

    .line 1023
    :try_start_43
    const-string p2, "TvInputManagerService"

    const-string v3, "client process has already died"

    invoke-static {p2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    :goto_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_50

    .line 1027
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    nop

    .line 1029
    return-void

    .line 1025
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 1027
    :catchall_53
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 9

    .line 1510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1511
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutOverlayView"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1515
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1517
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1518
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1521
    goto :goto_30

    .line 1522
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1519
    :catch_28
    move-exception p1

    .line 1520
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in relayoutOverlayView"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1522
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1524
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1525
    nop

    .line 1526
    return-void

    .line 1522
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1524
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 8

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1224
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1226
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1228
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2a

    .line 1229
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    .line 1230
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    .line 1232
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    nop

    .line 1234
    return-void

    .line 1230
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 1232
    :catchall_2a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1749
    return-void

    .line 1752
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1754
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "releaseTvInputHardware"

    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1757
    :try_start_24
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2, p3}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_32

    .line 1760
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1761
    nop

    .line 1762
    return-void

    .line 1760
    :catchall_32
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 7

    .line 1133
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1134
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1134
    const-string/jumbo v3, "removeBlockedRating"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1138
    :try_start_18
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_39

    .line 1139
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 1140
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object p2

    .line 1141
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object p1

    .line 1140
    invoke-virtual {p2, p1}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1142
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_36

    .line 1144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1142
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 1144
    :catchall_39
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 8

    .line 1530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1531
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeOverlayView"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1535
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1537
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1538
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1541
    goto :goto_30

    .line 1542
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1539
    :catch_28
    move-exception p1

    .line 1540
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v0, "error in removeOverlayView"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1542
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1544
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    nop

    .line 1546
    return-void

    .line 1542
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1544
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestChannelBrowsable(Landroid/net/Uri;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1983
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1984
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1986
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string/jumbo v6, "requestChannelBrowsable"

    invoke-static {v4, v5, v3, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1989
    :try_start_19
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1990
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 1991
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1992
    if-eqz v4, :cond_65

    .line 1993
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1994
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1995
    const-string v6, "android.media.tv.extra.CHANNEL_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1997
    const-string v6, "android.media.tv.extra.PACKAGE_NAME"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_64
    .catchall {:try_start_19 .. :try_end_64} :catchall_6a

    .line 2000
    goto :goto_35

    .line 2003
    :cond_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2004
    nop

    .line 2005
    return-void

    .line 2003
    :catchall_6a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 10

    .line 1448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1449
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "selectTrack"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1453
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1455
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1459
    goto :goto_30

    .line 1460
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1457
    :catch_28
    move-exception p1

    .line 1458
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in selectTrack"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1462
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1463
    nop

    .line 1464
    return-void

    .line 1460
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1462
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 10

    .line 1469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1470
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendAppPrivateCommand"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1474
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1476
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1477
    invoke-interface {p1, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1480
    goto :goto_30

    .line 1481
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1478
    :catch_28
    move-exception p1

    .line 1479
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in appPrivateCommand"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1483
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1484
    nop

    .line 1485
    return-void

    .line 1481
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1483
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    .registers 14

    .line 958
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.NOTIFY_TV_INPUTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_ec

    .line 964
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 967
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x98de898

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_47

    const v3, 0x5d81b12d

    if-eq v2, v3, :cond_3d

    const v3, 0x77e569e1

    if-eq v2, v3, :cond_33

    :cond_32
    goto :goto_50

    :cond_33
    const-string v2, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v1, v4

    goto :goto_50

    :cond_3d
    const-string v2, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    goto :goto_50

    :cond_47
    const-string v2, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v1, v5

    :goto_50
    const-string v0, "Invalid preview program ID."

    const-string v2, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    if-eqz v1, :cond_a9

    const-string v3, "Invalid watch next program ID."

    const-string v10, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    if-eq v1, v5, :cond_9a

    if-ne v1, v4, :cond_7f

    .line 979
    invoke-virtual {p1, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-ltz v1, :cond_79

    .line 982
    invoke-virtual {p1, v10, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_73

    goto :goto_b1

    .line 983
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 980
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 987
    :cond_7f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid TV input notifying action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 974
    :cond_9a
    invoke-virtual {p1, v10, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_a3

    goto :goto_b1

    .line 975
    :cond_a3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 969
    :cond_a9
    invoke-virtual {p1, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-ltz v1, :cond_de

    .line 990
    :goto_b1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 990
    const-string/jumbo v3, "sendTvInputNotifyIntent"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 992
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 994
    :try_start_c6
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d4
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_d9

    .line 996
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    nop

    .line 998
    return-void

    .line 996
    :catchall_d9
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 970
    :cond_de
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 965
    :cond_e4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify package name to notify."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 960
    :cond_ec
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The caller: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t have permission: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 9

    .line 1428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1429
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setCaptionEnabled"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1433
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1435
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1436
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1439
    goto :goto_30

    .line 1440
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1437
    :catch_28
    move-exception p1

    .line 1438
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in setCaptionEnabled"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1442
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    nop

    .line 1444
    return-void

    .line 1440
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1442
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 10

    .line 1238
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_62

    .line 1247
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1248
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setMainSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1252
    :try_start_23
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5d

    .line 1253
    :try_start_2a
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 1254
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, p1, :cond_3b

    .line 1255
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_5a

    .line 1273
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    return-void

    .line 1260
    :cond_3b
    :try_start_3b
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v5

    .line 1261
    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1265
    if-eqz p1, :cond_4a

    .line 1266
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v6, 0x1

    invoke-static {v1, p1, v6, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1268
    :cond_4a
    if-eqz v5, :cond_54

    .line 1269
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {p1, v5, v0, v1, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1271
    :cond_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_5a

    .line 1273
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    nop

    .line 1275
    return-void

    .line 1271
    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 1273
    :catchall_5d
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1241
    :cond_62
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "The caller does not have CHANGE_HDMI_CEC_ACTIVE_SOURCE permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 7

    .line 1064
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1065
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1066
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1065
    const-string/jumbo v3, "setParentalControlsEnabled"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1069
    :try_start_18
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_35

    .line 1070
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 1071
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V

    .line 1072
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_32

    .line 1074
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1075
    nop

    .line 1076
    return-void

    .line 1072
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 1074
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 9

    .line 1279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1280
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1282
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1284
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 1286
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 1288
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_32

    .line 1289
    iget-object p3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p3, p1}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    goto :goto_41

    .line 1291
    :cond_32
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    const/16 v4, 0x3e8

    invoke-static {v0, p1, v4, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1292
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_44
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_41} :catch_44
    .catchall {:try_start_1c .. :try_end_41} :catchall_42

    .line 1296
    :goto_41
    goto :goto_4c

    .line 1297
    :catchall_42
    move-exception p1

    goto :goto_57

    .line 1294
    :catch_44
    move-exception p1

    .line 1295
    :try_start_45
    const-string p3, "TvInputManagerService"

    const-string v0, "error in setSurface"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    :goto_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    .line 1299
    if-eqz p2, :cond_52

    .line 1301
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1303
    :cond_52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1297
    :goto_57
    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_42

    :try_start_58
    throw p1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 1299
    :catchall_59
    move-exception p1

    if-eqz p2, :cond_5f

    .line 1301
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1303
    :cond_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 9

    .line 1338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1339
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setVolume"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1343
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_5c

    .line 1345
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    .line 1347
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1348
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1351
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object p1

    const/16 v4, 0x3e8

    invoke-static {v0, p1, v4, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1352
    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_45

    .line 1353
    const/high16 p3, 0x3f800000  # 1.0f

    goto :goto_46

    :cond_45
    nop

    .line 1352
    :goto_46
    invoke-interface {p1, p3}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_49} :catch_4c
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_49} :catch_4c
    .catchall {:try_start_1c .. :try_end_49} :catchall_4a

    .line 1357
    :cond_49
    goto :goto_54

    .line 1358
    :catchall_4a
    move-exception p1

    goto :goto_5a

    .line 1355
    :catch_4c
    move-exception p1

    .line 1356
    :try_start_4d
    const-string p2, "TvInputManagerService"

    const-string p3, "error in setVolume"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    :goto_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_4a

    .line 1360
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1361
    nop

    .line 1362
    return-void

    .line 1358
    :goto_5a
    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_4a

    :try_start_5b
    throw p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 1360
    :catchall_5c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 9

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1672
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startRecording"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1674
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1676
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1678
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1682
    goto :goto_30

    .line 1683
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1680
    :catch_28
    move-exception p1

    .line 1681
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in startRecording"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1685
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    nop

    .line 1687
    return-void

    .line 1683
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1685
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .registers 8

    .line 1691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1692
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopRecording"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1696
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1698
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1701
    goto :goto_30

    .line 1702
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1699
    :catch_28
    move-exception p1

    .line 1700
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v0, "error in stopRecording"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1704
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    nop

    .line 1706
    return-void

    .line 1702
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1704
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 9

    .line 1651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1652
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftEnablePositionTracking"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1656
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1658
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1659
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1662
    goto :goto_30

    .line 1663
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1660
    :catch_28
    move-exception p1

    .line 1661
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in timeShiftEnablePositionTracking"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1663
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1665
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    nop

    .line 1667
    return-void

    .line 1663
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1665
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .registers 8

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1571
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPause"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1575
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1577
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1580
    goto :goto_30

    .line 1581
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1578
    :catch_28
    move-exception p1

    .line 1579
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v0, "error in timeShiftPause"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1581
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1583
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1584
    nop

    .line 1585
    return-void

    .line 1581
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1583
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 9

    .line 1550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1551
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPlay"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1555
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1557
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1561
    goto :goto_30

    .line 1562
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1559
    :catch_28
    move-exception p1

    .line 1560
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in timeShiftPlay"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1562
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1564
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    nop

    .line 1566
    return-void

    .line 1562
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1564
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .registers 8

    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1590
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftResume"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1594
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1596
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1597
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1600
    goto :goto_30

    .line 1601
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1598
    :catch_28
    move-exception p1

    .line 1599
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string v0, "error in timeShiftResume"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1603
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    nop

    .line 1605
    return-void

    .line 1601
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1603
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 10

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1610
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSeekTo"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1614
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1616
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1617
    invoke-interface {p1, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1620
    goto :goto_30

    .line 1621
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1618
    :catch_28
    move-exception p1

    .line 1619
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in timeShiftSeekTo"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1623
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1624
    nop

    .line 1625
    return-void

    .line 1621
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1623
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 9

    .line 1630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1631
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSetPlaybackParams"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1635
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1637
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1638
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1641
    goto :goto_30

    .line 1642
    :catchall_26
    move-exception p1

    goto :goto_36

    .line 1639
    :catch_28
    move-exception p1

    .line 1640
    :try_start_29
    const-string p2, "TvInputManagerService"

    const-string p3, "error in timeShiftSetPlaybackParams"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    :goto_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1644
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1645
    nop

    .line 1646
    return-void

    .line 1642
    :goto_36
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1644
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 11

    .line 1366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1367
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "tune"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p4

    .line 1369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1371
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_92

    .line 1373
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p4}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1375
    invoke-static {p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_29} :catch_82
    .catchall {:try_start_1c .. :try_end_29} :catchall_80

    if-eqz v0, :cond_30

    .line 1377
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_80

    .line 1400
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    return-void

    .line 1380
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, p4}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p4

    .line 1381
    invoke-static {p4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1382
    invoke-static {p4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v0
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_44} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_30 .. :try_end_44} :catch_82
    .catchall {:try_start_30 .. :try_end_44} :catchall_80

    if-eqz v0, :cond_4b

    .line 1383
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_80

    .line 1400
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1383
    return-void

    .line 1387
    :cond_4b
    :try_start_4b
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1388
    invoke-static {p4}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1390
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1391
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1392
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1393
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->access$5700(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1394
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_7f} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_4b .. :try_end_7f} :catch_82
    .catchall {:try_start_4b .. :try_end_7f} :catchall_80

    .line 1397
    goto :goto_8a

    .line 1398
    :catchall_80
    move-exception p1

    goto :goto_90

    .line 1395
    :catch_82
    move-exception p1

    .line 1396
    :try_start_83
    const-string p2, "TvInputManagerService"

    const-string p3, "error in tune"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1398
    :goto_8a
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_80

    .line 1400
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1401
    nop

    .line 1402
    return-void

    .line 1398
    :goto_90
    :try_start_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_80

    :try_start_91
    throw p1
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 1400
    :catchall_92
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9

    .line 1407
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1409
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "unblockContent"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p3

    .line 1411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1413
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3b

    .line 1415
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, p1, v0, p3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object p1

    .line 1416
    invoke-interface {p1, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_28} :catch_2b
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    .line 1419
    goto :goto_33

    .line 1420
    :catchall_29
    move-exception p1

    goto :goto_39

    .line 1417
    :catch_2b
    move-exception p1

    .line 1418
    :try_start_2c
    const-string p2, "TvInputManagerService"

    const-string p3, "error in unblockContent"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 1422
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    nop

    .line 1424
    return-void

    .line 1420
    :goto_39
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_29

    :try_start_3a
    throw p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1422
    :catchall_3b
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 7

    .line 1033
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1033
    const-string/jumbo v3, "unregisterCallback"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 1035
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1037
    :try_start_15
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_40

    .line 1038
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 1039
    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1040
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {p2}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1041
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_3d

    .line 1043
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    nop

    .line 1045
    return-void

    .line 1041
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1043
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .registers 7

    .line 886
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 887
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 889
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_3e

    .line 893
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling package "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to change TvInputInfo for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 897
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 897
    const-string/jumbo v3, "updateTvInputInfo"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result p2

    .line 899
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 901
    :try_start_53
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_6e

    .line 902
    :try_start_5a
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    .line 903
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3, p2, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    .line 904
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_6b

    .line 906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    nop

    .line 908
    return-void

    .line 904
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 906
    :catchall_6e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
