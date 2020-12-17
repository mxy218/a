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
    .param p1, "x0"  # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"  # Lcom/android/server/tv/TvInputManagerService$1;

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
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_1b

    array-length v1, v0

    if-lez v1, :cond_1b

    .line 914
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 916
    :cond_1b
    const-string/jumbo v1, "unknown"

    return-object v1
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .registers 15
    .param p1, "deviceId"  # I
    .param p2, "callback"  # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"  # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"  # I
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
    const/4 v0, 0x0

    return-object v0

    .line 1732
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1733
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1734
    .local v8, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "acquireTvInputHardware"

    invoke-static {v2, v3, v8, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v9

    .line 1737
    .local v9, "resolvedUserId":I
    :try_start_24
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_37

    .line 1740
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    return-object v2

    .line 1740
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 10
    .param p1, "rating"  # Ljava/lang/String;
    .param p2, "userId"  # I

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

    move-result v0

    .line 1119
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1121
    .local v1, "identity":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_38

    .line 1122
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1123
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1124
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1123
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1125
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    .line 1127
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    nop

    .line 1129
    return-void

    .line 1125
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "rating":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_37
    throw v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1127
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "rating":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_38
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 16
    .param p1, "inputId"  # Ljava/lang/String;
    .param p2, "surface"  # Landroid/view/Surface;
    .param p3, "config"  # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"  # I
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
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1917
    .local v8, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    invoke-static {v2, v3, v8, p4, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v9

    .line 1920
    .local v9, "resolvedUserId":I
    const/4 v2, 0x0

    .line 1921
    .local v2, "hardwareInputId":Ljava/lang/String;
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_a9

    .line 1922
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v9}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1923
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4c

    .line 1924
    const-string v5, "TvInputManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "input not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v5, 0x0

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_a6

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1925
    return v5

    .line 1927
    :cond_4c
    :try_start_4c
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1928
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 1929
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_89

    .line 1930
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    .line 1931
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    .line 1930
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1931
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v5
    :try_end_86
    .catchall {:try_start_4c .. :try_end_86} :catchall_a6

    move-object v2, v5

    .line 1932
    move-object v10, v2

    goto :goto_8b

    .line 1934
    .end local v6  # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_89
    goto :goto_58

    .line 1927
    :cond_8a
    move-object v10, v2

    .line 1935
    .end local v2  # "hardwareInputId":Ljava/lang/String;
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .local v10, "hardwareInputId":Ljava/lang/String;
    :goto_8b
    :try_start_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_a3

    .line 1936
    :try_start_8c
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    .line 1937
    if-eqz v10, :cond_96

    move-object v3, v10

    goto :goto_97

    :cond_96
    move-object v3, p1

    .line 1936
    :goto_97
    move-object v4, p2

    move-object v5, p3

    move v6, v8

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z

    move-result v2
    :try_end_9f
    .catchall {:try_start_8c .. :try_end_9f} :catchall_a9

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1936
    return v2

    .line 1935
    :catchall_a3
    move-exception v4

    move-object v2, v10

    goto :goto_a7

    .end local v10  # "hardwareInputId":Ljava/lang/String;
    .restart local v2  # "hardwareInputId":Ljava/lang/String;
    :catchall_a6
    move-exception v4

    :goto_a7
    :try_start_a7
    monitor-exit v3
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    .end local v0  # "identity":J
    .end local v8  # "callingUid":I
    .end local v9  # "resolvedUserId":I
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "inputId":Ljava/lang/String;
    .end local p2  # "surface":Landroid/view/Surface;
    .end local p3  # "config":Landroid/media/tv/TvStreamConfig;
    .end local p4  # "userId":I
    :try_start_a8
    throw v4
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a9

    .line 1940
    .end local v2  # "hardwareInputId":Ljava/lang/String;
    .restart local v0  # "identity":J
    .restart local v8  # "callingUid":I
    .restart local v9  # "resolvedUserId":I
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "inputId":Ljava/lang/String;
    .restart local p2  # "surface":Landroid/view/Surface;
    .restart local p3  # "config":Landroid/media/tv/TvStreamConfig;
    .restart local p4  # "userId":I
    :catchall_a9
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "windowToken"  # Landroid/os/IBinder;
    .param p3, "frame"  # Landroid/graphics/Rect;
    .param p4, "userId"  # I

    .line 1490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1491
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createOverlayView"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1493
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1495
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_37

    .line 1497
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1498
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_27
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    .line 1501
    goto :goto_2f

    .line 1502
    :catchall_25
    move-exception v5

    goto :goto_35

    .line 1499
    :catch_27
    move-exception v5

    .line 1500
    .local v5, "e":Ljava/lang/Exception;
    :try_start_28
    const-string v6, "TvInputManagerService"

    const-string v7, "error in createOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1502
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_25

    .line 1504
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1505
    nop

    .line 1506
    return-void

    .line 1502
    :goto_35
    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_25

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "windowToken":Landroid/os/IBinder;
    .end local p3  # "frame":Landroid/graphics/Rect;
    .end local p4  # "userId":I
    :try_start_36
    throw v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 1504
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "windowToken":Landroid/os/IBinder;
    .restart local p3  # "frame":Landroid/graphics/Rect;
    .restart local p4  # "userId":I
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    .registers 33
    .param p1, "client"  # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"  # Ljava/lang/String;
    .param p3, "isRecordingSession"  # Z
    .param p4, "seq"  # I
    .param p5, "userId"  # I

    .line 1160
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1161
    .local v15, "callingUid":I
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "createSession"

    invoke-static {v0, v2, v15, v9, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v14

    .line 1163
    .local v14, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 1165
    .local v21, "identity":J
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_12c

    .line 1166
    :try_start_21
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_123

    if-eq v9, v0, :cond_42

    if-nez p3, :cond_42

    .line 1170
    :try_start_2b
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1171
    monitor-exit v23
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3d

    .line 1214
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    return-void

    .line 1212
    :catchall_3d
    move-exception v0

    move v5, v14

    move v4, v15

    goto/16 :goto_126

    .line 1173
    :cond_42
    :try_start_42
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, v14}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    .line 1174
    .local v0, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_123

    move-object/from16 v24, v2

    .line 1175
    .local v24, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v24, :cond_7e

    .line 1176
    :try_start_56
    const-string v2, "TvInputManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find input state for inputId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1178
    monitor-exit v23
    :try_end_7a
    .catchall {:try_start_56 .. :try_end_7a} :catchall_3d

    .line 1214
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1178
    return-void

    .line 1180
    :cond_7e
    :try_start_7e
    invoke-static/range {v24 .. v24}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    move-object/from16 v25, v2

    .line 1181
    .local v25, "info":Landroid/media/tv/TvInputInfo;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :try_end_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_123

    .line 1182
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v2, :cond_af

    .line 1183
    :try_start_94
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v25 .. v25}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v14, v6}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    move-object v2, v3

    .line 1184
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ac
    .catchall {:try_start_94 .. :try_end_ac} :catchall_3d

    move-object/from16 v26, v2

    goto :goto_b1

    .line 1182
    :cond_af
    move-object/from16 v26, v2

    .line 1187
    .end local v2  # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .local v26, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :goto_b1
    :try_start_b1
    invoke-static/range {v26 .. v26}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v2
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_123

    if-eqz v2, :cond_c9

    .line 1188
    :try_start_b7
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 1189
    monitor-exit v23
    :try_end_c5
    .catchall {:try_start_b7 .. :try_end_c5} :catchall_3d

    .line 1214
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    return-void

    .line 1193
    :cond_c9
    :try_start_c9
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1194
    .local v2, "sessionToken":Landroid/os/IBinder;
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v11, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v25 .. v25}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v13

    .line 1195
    invoke-virtual/range {v25 .. v25}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_da
    .catchall {:try_start_c9 .. :try_end_da} :catchall_123

    const/16 v20, 0x0

    move-object v10, v3

    move-object v12, v2

    move v5, v14

    .end local v14  # "resolvedUserId":I
    .local v5, "resolvedUserId":I
    move-object v14, v4

    move v4, v15

    .end local v15  # "callingUid":I
    .local v4, "callingUid":I
    move/from16 v15, p3

    move-object/from16 v16, p1

    move/from16 v17, p4

    move/from16 v18, v4

    move/from16 v19, v5

    :try_start_eb
    invoke-direct/range {v10 .. v20}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1199
    .local v3, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-static/range {v26 .. v26}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-static/range {v26 .. v26}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    if-eqz v6, :cond_114

    .line 1205
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static/range {v26 .. v26}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v7

    invoke-static {v6, v7, v2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z

    move-result v6

    if-nez v6, :cond_11d

    .line 1207
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    goto :goto_11d

    .line 1210
    :cond_114
    iget-object v6, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual/range {v25 .. v25}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    .line 1212
    .end local v0  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v2  # "sessionToken":Landroid/os/IBinder;
    .end local v3  # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v24  # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v25  # "info":Landroid/media/tv/TvInputInfo;
    .end local v26  # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_11d
    :goto_11d
    monitor-exit v23
    :try_end_11e
    .catchall {:try_start_eb .. :try_end_11e} :catchall_12a

    .line 1214
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1215
    nop

    .line 1216
    return-void

    .line 1212
    .end local v4  # "callingUid":I
    .end local v5  # "resolvedUserId":I
    .restart local v14  # "resolvedUserId":I
    .restart local v15  # "callingUid":I
    :catchall_123
    move-exception v0

    move v5, v14

    move v4, v15

    .end local v14  # "resolvedUserId":I
    .end local v15  # "callingUid":I
    .restart local v4  # "callingUid":I
    .restart local v5  # "resolvedUserId":I
    :goto_126
    :try_start_126
    monitor-exit v23
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_12a

    .end local v4  # "callingUid":I
    .end local v5  # "resolvedUserId":I
    .end local v21  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "client":Landroid/media/tv/ITvInputClient;
    .end local p2  # "inputId":Ljava/lang/String;
    .end local p3  # "isRecordingSession":Z
    .end local p4  # "seq":I
    .end local p5  # "userId":I
    :try_start_127
    throw v0
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_128

    .line 1214
    .restart local v4  # "callingUid":I
    .restart local v5  # "resolvedUserId":I
    .restart local v21  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "client":Landroid/media/tv/ITvInputClient;
    .restart local p2  # "inputId":Ljava/lang/String;
    .restart local p3  # "isRecordingSession":Z
    .restart local p4  # "seq":I
    .restart local p5  # "userId":I
    :catchall_128
    move-exception v0

    goto :goto_12f

    .line 1212
    :catchall_12a
    move-exception v0

    goto :goto_126

    .line 1214
    .end local v4  # "callingUid":I
    .end local v5  # "resolvedUserId":I
    .restart local v14  # "resolvedUserId":I
    .restart local v15  # "callingUid":I
    :catchall_12c
    move-exception v0

    move v5, v14

    move v4, v15

    .end local v14  # "resolvedUserId":I
    .end local v15  # "callingUid":I
    .restart local v4  # "callingUid":I
    .restart local v5  # "resolvedUserId":I
    :goto_12f
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 15
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "format"  # I
    .param p3, "width"  # I
    .param p4, "height"  # I
    .param p5, "userId"  # I

    .line 1310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1311
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "dispatchSurfaceChanged"

    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1313
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1315
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_52

    .line 1317
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1319
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1321
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1322
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    .line 1323
    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3f} :catch_42
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_3f} :catch_42
    .catchall {:try_start_1b .. :try_end_3f} :catchall_40

    .line 1327
    .end local v5  # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3f
    goto :goto_4a

    .line 1328
    :catchall_40
    move-exception v5

    goto :goto_50

    .line 1325
    :catch_42
    move-exception v5

    .line 1326
    .local v5, "e":Ljava/lang/Exception;
    :try_start_43
    const-string v6, "TvInputManagerService"

    const-string v7, "error in dispatchSurfaceChanged"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    .line 1330
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1331
    nop

    .line 1332
    return-void

    .line 1328
    :goto_50
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_40

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "format":I
    .end local p3  # "width":I
    .end local p4  # "height":I
    .end local p5  # "userId":I
    :try_start_51
    throw v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 1330
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "format":I
    .restart local p3  # "width":I
    .restart local p4  # "height":I
    .restart local p5  # "userId":I
    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2010
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2011
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
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

    .local v3, "i":I
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
    .local v4, "userId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2016
    .end local v4  # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 2020
    .end local v3  # "i":I
    :cond_61
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2022
    nop

    .local v2, "i":I
    :goto_65
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_413

    .line 2023
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$6200(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2024
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 2025
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserState ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2028
    const-string/jumbo v5, "inputMap: inputId -> TvInputState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2030
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2031
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    .end local v6  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    goto :goto_b2

    .line 2033
    :cond_e0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2035
    const-string/jumbo v5, "packageSet:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2037
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_104

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2038
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2039
    .end local v6  # "packageName":Ljava/lang/String;
    goto :goto_f4

    .line 2040
    :cond_104
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2042
    const-string v5, "clientStateMap: ITvInputClient -> ClientState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2045
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2046
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 2047
    .local v7, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2051
    const-string/jumbo v8, "sessionTokens:"

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2053
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3800(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 2054
    .local v9, "token":Landroid/os/IBinder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    .end local v9  # "token":Landroid/os/IBinder;
    goto :goto_15c

    .line 2056
    :cond_17d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2058
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clientTokens: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$6300(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$6400(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2062
    nop

    .end local v6  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v7  # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    goto/16 :goto_11b

    .line 2063
    :cond_1b7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2065
    const-string/jumbo v5, "serviceStateMap: ComponentName -> ServiceState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2068
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1cf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2069
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 2070
    .local v7, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2074
    const-string/jumbo v8, "sessionTokens:"

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2076
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1900(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_210
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_231

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    .line 2077
    .restart local v9  # "token":Landroid/os/IBinder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    .end local v9  # "token":Landroid/os/IBinder;
    goto :goto_210

    .line 2079
    :cond_231
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2081
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bound: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3500(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reconnecting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3300(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2087
    nop

    .end local v6  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v7  # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    goto/16 :goto_1cf

    .line 2088
    :cond_29c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2090
    const-string/jumbo v5, "sessionStateMap: ITvInputSession -> SessionState"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2093
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2094
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 2095
    .local v7, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2098
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inputId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2300(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "seq: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2400(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2101
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callingUid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sessionToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "logUri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$6500(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hardwareSessionToken: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2108
    nop

    .end local v6  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v7  # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    goto/16 :goto_2b4

    .line 2109
    :cond_3c8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2111
    const-string v5, "callbackSet:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2113
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3ef

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/tv/ITvInputManagerCallback;

    .line 2114
    .local v6, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    .end local v6  # "callback":Landroid/media/tv/ITvInputManagerCallback;
    goto :goto_3db

    .line 2116
    :cond_3ef
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mainSessionToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2022
    nop

    .end local v3  # "userId":I
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_65

    .line 2121
    .end local v2  # "i":I
    :cond_413
    monitor-exit v1
    :try_end_414
    .catchall {:try_start_1d .. :try_end_414} :catchall_41e

    .line 2122
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2123
    return-void

    .line 2121
    :catchall_41e
    move-exception v2

    :try_start_41f
    monitor-exit v1
    :try_end_420
    .catchall {:try_start_41f .. :try_end_420} :catchall_41e

    throw v2
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .param p1, "inputId"  # Ljava/lang/String;
    .param p2, "userId"  # I
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
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1899
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "getAvailableTvStreamConfigList"

    invoke-static {v3, v4, v2, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1902
    .local v3, "resolvedUserId":I
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 1905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1902
    return-object v4

    .line 1905
    :catchall_25
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"  # I
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

    move-result v0

    .line 1098
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1100
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_47

    .line 1101
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1102
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v5, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_30
    if-ge v8, v7, :cond_3f

    aget-object v9, v6, v8

    .line 1105
    .local v9, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v9}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    nop

    .end local v9  # "rating":Landroid/media/tv/TvContentRating;
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 1107
    :cond_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_1b .. :try_end_40} :catchall_44

    .line 1110
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    return-object v5

    .line 1108
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5  # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_44
    move-exception v4

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "userId":I
    :try_start_46
    throw v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 1110
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "userId":I
    :catchall_47
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 24
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
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_124

    .line 1771
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1774
    .local v2, "identity":J
    :try_start_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    .local v0, "deviceInfosFromPattern1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    new-instance v4, Ljava/io/File;

    const-string v5, "/dev"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1776
    .local v4, "devDirectory":Ljava/io/File;
    const/4 v5, 0x0

    .line 1777
    .local v5, "dvbDirectoryFound":Z
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v9, v5

    const/4 v5, 0x0

    .end local v5  # "dvbDirectoryFound":Z
    .local v9, "dvbDirectoryFound":Z
    :goto_28
    const/4 v10, 0x1

    if-ge v5, v7, :cond_60

    aget-object v11, v6, v5

    .line 1778
    .local v11, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$5900()Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 1779
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_54

    .line 1780
    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1781
    .local v10, "adapterId":I
    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1782
    .local v13, "deviceId":I
    new-instance v14, Landroid/media/tv/DvbDeviceInfo;

    invoke-direct {v14, v10, v13}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    .end local v10  # "adapterId":I
    .end local v13  # "deviceId":I
    :cond_54
    const-string v10, "dvb"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 1785
    const/4 v9, 0x1

    .line 1777
    .end local v11  # "fileName":Ljava/lang/String;
    .end local v12  # "matcher":Ljava/util/regex/Matcher;
    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 1788
    :cond_60
    if-nez v9, :cond_6a

    .line 1789
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_66
    .catchall {:try_start_14 .. :try_end_66} :catchall_11f

    .line 1814
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1789
    return-object v5

    .line 1791
    :cond_6a
    :try_start_6a
    new-instance v5, Ljava/io/File;

    const-string v6, "/dev/dvb"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1793
    .local v5, "dvbDirectory":Ljava/io/File;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    .local v6, "deviceInfosFromPattern2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    const/4 v12, 0x0

    :goto_7c
    if-ge v12, v11, :cond_108

    aget-object v13, v7, v12

    .line 1795
    .local v13, "fileNameInDvb":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6000()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1796
    .local v14, "adapterMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_f9

    .line 1797
    invoke-virtual {v14, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1798
    .local v15, "adapterId":I
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/dev/dvb/"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    .line 1799
    .local v1, "adapterDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    move-object/from16 v17, v1

    const/4 v1, 0x0

    .end local v1  # "adapterDirectory":Ljava/io/File;
    .local v17, "adapterDirectory":Ljava/io/File;
    :goto_b5
    if-ge v1, v10, :cond_f4

    aget-object v18, v8, v1

    move-object/from16 v19, v18

    .line 1800
    .local v19, "fileNameInAdapter":Ljava/lang/String;
    move-object/from16 v18, v4

    .end local v4  # "devDirectory":Ljava/io/File;
    .local v18, "devDirectory":Ljava/io/File;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6100()Ljava/util/regex/Pattern;

    move-result-object v4

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    .end local v19  # "fileNameInAdapter":Ljava/lang/String;
    .local v5, "fileNameInAdapter":Ljava/lang/String;
    .local v20, "dvbDirectory":Ljava/io/File;
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1802
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_e9

    .line 1803
    move-object/from16 v19, v5

    const/4 v5, 0x1

    .end local v5  # "fileNameInAdapter":Ljava/lang/String;
    .restart local v19  # "fileNameInAdapter":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v21, v16

    .line 1804
    .local v21, "deviceId":I
    new-instance v5, Landroid/media/tv/DvbDeviceInfo;

    move-object/from16 v22, v4

    move/from16 v4, v21

    .end local v21  # "deviceId":I
    .local v4, "deviceId":I
    .local v22, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-direct {v5, v15, v4}, Landroid/media/tv/DvbDeviceInfo;-><init>(II)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ed

    .line 1802
    .end local v19  # "fileNameInAdapter":Ljava/lang/String;
    .end local v22  # "frontendMatcher":Ljava/util/regex/Matcher;
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    .restart local v5  # "fileNameInAdapter":Ljava/lang/String;
    :cond_e9
    move-object/from16 v22, v4

    move-object/from16 v19, v5

    .line 1799
    .end local v4  # "frontendMatcher":Ljava/util/regex/Matcher;
    .end local v5  # "fileNameInAdapter":Ljava/lang/String;
    :goto_ed
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    goto :goto_b5

    .end local v18  # "devDirectory":Ljava/io/File;
    .end local v20  # "dvbDirectory":Ljava/io/File;
    .local v4, "devDirectory":Ljava/io/File;
    .local v5, "dvbDirectory":Ljava/io/File;
    :cond_f4
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    .end local v4  # "devDirectory":Ljava/io/File;
    .end local v5  # "dvbDirectory":Ljava/io/File;
    .restart local v18  # "devDirectory":Ljava/io/File;
    .restart local v20  # "dvbDirectory":Ljava/io/File;
    goto :goto_fd

    .line 1796
    .end local v15  # "adapterId":I
    .end local v17  # "adapterDirectory":Ljava/io/File;
    .end local v18  # "devDirectory":Ljava/io/File;
    .end local v20  # "dvbDirectory":Ljava/io/File;
    .restart local v4  # "devDirectory":Ljava/io/File;
    .restart local v5  # "dvbDirectory":Ljava/io/File;
    :cond_f9
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    .line 1794
    .end local v4  # "devDirectory":Ljava/io/File;
    .end local v5  # "dvbDirectory":Ljava/io/File;
    .end local v13  # "fileNameInDvb":Ljava/lang/String;
    .end local v14  # "adapterMatcher":Ljava/util/regex/Matcher;
    .restart local v18  # "devDirectory":Ljava/io/File;
    .restart local v20  # "dvbDirectory":Ljava/io/File;
    :goto_fd
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    const/4 v10, 0x1

    goto/16 :goto_7c

    .line 1810
    .end local v18  # "devDirectory":Ljava/io/File;
    .end local v20  # "dvbDirectory":Ljava/io/File;
    .restart local v4  # "devDirectory":Ljava/io/File;
    .restart local v5  # "dvbDirectory":Ljava/io/File;
    :cond_108
    move-object/from16 v18, v4

    move-object/from16 v20, v5

    .end local v4  # "devDirectory":Ljava/io/File;
    .end local v5  # "dvbDirectory":Ljava/io/File;
    .restart local v18  # "devDirectory":Ljava/io/File;
    .restart local v20  # "dvbDirectory":Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 1811
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_11b

    .line 1812
    :cond_117
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_11b
    .catchall {:try_start_6a .. :try_end_11b} :catchall_11f

    .line 1814
    :goto_11b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    return-object v1

    .line 1814
    .end local v0  # "deviceInfosFromPattern1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v6  # "deviceInfosFromPattern2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/tv/DvbDeviceInfo;>;"
    .end local v9  # "dvbDirectoryFound":Z
    .end local v18  # "devDirectory":Ljava/io/File;
    .end local v20  # "dvbDirectory":Ljava/io/File;
    :catchall_11f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1768
    .end local v2  # "identity":J
    :cond_124
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
    .local v0, "identity":J
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
    .registers 8
    .param p1, "userId"  # I
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

    move-result v0

    .line 945
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 947
    .local v1, "identity":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_3b

    .line 948
    :try_start_29
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 949
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1500(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v5

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 952
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    return-object v5

    .line 950
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "userId":I
    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 952
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "userId":I
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 940
    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have permission to read content rating systems"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 10
    .param p1, "inputId"  # Ljava/lang/String;
    .param p2, "userId"  # I

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

    move-result v0

    .line 873
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 875
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 876
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 877
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 878
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v5, :cond_2f

    const/4 v6, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v6

    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 881
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 878
    return-object v6

    .line 879
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5  # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "inputId":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 881
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "inputId":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"  # I
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

    move-result v0

    .line 854
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 856
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_4f

    .line 857
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 858
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v5, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 860
    .local v7, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1400(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    nop

    .end local v7  # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    goto :goto_32

    .line 862
    :cond_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_4c

    .line 865
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    return-object v5

    .line 863
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5  # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "userId":I
    :try_start_4e
    throw v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 865
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "userId":I
    :catchall_4f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 10
    .param p1, "inputId"  # Ljava/lang/String;
    .param p2, "userId"  # I

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

    move-result v0

    .line 923
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 925
    .local v1, "identity":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 926
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 927
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1200(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 928
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v5, :cond_2f

    const/4 v6, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$4000(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v6

    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_38

    .line 931
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    return v6

    .line 929
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5  # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "inputId":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_3a
    throw v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 931
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "inputId":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 8
    .param p1, "userId"  # I

    .line 1049
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1050
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1049
    const-string/jumbo v3, "isParentalControlsEnabled"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1051
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1053
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_32

    .line 1054
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1055
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z

    move-result v5

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_2f

    .line 1058
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1055
    return v5

    .line 1056
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "userId":I
    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 1058
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "userId":I
    :catchall_32
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "rating"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1080
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1080
    const-string/jumbo v3, "isRatingBlocked"

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v0

    .line 1082
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1084
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_36

    .line 1085
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1086
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1087
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1086
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result v5

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_33

    .line 1090
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1086
    return v5

    .line 1088
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "rating":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_35
    throw v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1090
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "rating":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_36
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSingleSessionActive(I)Z
    .registers 12
    .param p1, "userId"  # I
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
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1949
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "isSingleSessionActive"

    invoke-static {v3, v4, v2, p1, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1952
    .local v3, "resolvedUserId":I
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_6e

    .line 1953
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1954
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 1955
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_6b

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1955
    return v7

    .line 1956
    :cond_35
    :try_start_35
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne v6, v9, :cond_66

    .line 1957
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v9, v9, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v6, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1960
    .local v6, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    aget-object v9, v6, v8

    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_61

    aget-object v9, v6, v7

    .line 1961
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_66

    .line 1962
    :cond_61
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_35 .. :try_end_62} :catchall_6b

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1962
    return v7

    .line 1965
    .end local v6  # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_66
    :try_start_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6b

    .line 1968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1965
    return v8

    .line 1966
    .end local v5  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6b
    move-exception v5

    :try_start_6c
    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    .end local v0  # "identity":J
    .end local v2  # "callingUid":I
    .end local v3  # "resolvedUserId":I
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "userId":I
    :try_start_6d
    throw v5
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 1968
    .restart local v0  # "identity":J
    .restart local v2  # "callingUid":I
    .restart local v3  # "resolvedUserId":I
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "userId":I
    :catchall_6e
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .param p1, "info"  # Landroid/media/tv/DvbDeviceInfo;
    .param p2, "device"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1821
    move/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.DVB_DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_168

    .line 1826
    new-instance v0, Ljava/io/File;

    const-string v3, "/dev"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 1827
    .local v3, "devDirectory":Ljava/io/File;
    const/4 v0, 0x0

    .line 1828
    .local v0, "dvbDeviceFound":Z
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v7, v0

    const/4 v0, 0x0

    .end local v0  # "dvbDeviceFound":Z
    .local v7, "dvbDeviceFound":Z
    :goto_22
    if-ge v0, v5, :cond_ba

    aget-object v8, v4, v0

    .line 1829
    .local v8, "fileName":Ljava/lang/String;
    const-string v9, "dvb"

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 1830
    new-instance v9, Ljava/io/File;

    const-string v10, "/dev/dvb"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v9, "dvbDirectory":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v7

    const/4 v7, 0x0

    .end local v7  # "dvbDeviceFound":Z
    .local v12, "dvbDeviceFound":Z
    :goto_3c
    if-ge v7, v11, :cond_a3

    aget-object v13, v10, v7

    .line 1832
    .local v13, "fileNameInDvb":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6000()Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 1833
    .local v14, "adapterMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_92

    .line 1834
    new-instance v15, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/dev/dvb/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v15

    .line 1835
    .local v2, "adapterDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    move-object/from16 v16, v2

    const/4 v2, 0x0

    .end local v2  # "adapterDirectory":Ljava/io/File;
    .local v16, "adapterDirectory":Ljava/io/File;
    :goto_6d
    if-ge v2, v15, :cond_8d

    move-object/from16 v17, v3

    .end local v3  # "devDirectory":Ljava/io/File;
    .local v17, "devDirectory":Ljava/io/File;
    aget-object v3, v6, v2

    .line 1836
    .local v3, "fileNameInAdapter":Ljava/lang/String;
    move-object/from16 v18, v4

    invoke-static {}, Lcom/android/server/tv/TvInputManagerService;->access$6100()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1838
    .local v4, "frontendMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_86

    .line 1839
    const/4 v2, 0x1

    .line 1840
    .end local v12  # "dvbDeviceFound":Z
    .local v2, "dvbDeviceFound":Z
    move v12, v2

    goto :goto_96

    .line 1835
    .end local v2  # "dvbDeviceFound":Z
    .end local v3  # "fileNameInAdapter":Ljava/lang/String;
    .end local v4  # "frontendMatcher":Ljava/util/regex/Matcher;
    .restart local v12  # "dvbDeviceFound":Z
    :cond_86
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_6d

    .end local v17  # "devDirectory":Ljava/io/File;
    .local v3, "devDirectory":Ljava/io/File;
    :cond_8d
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3  # "devDirectory":Ljava/io/File;
    .restart local v17  # "devDirectory":Ljava/io/File;
    goto :goto_96

    .line 1833
    .end local v16  # "adapterDirectory":Ljava/io/File;
    .end local v17  # "devDirectory":Ljava/io/File;
    .restart local v3  # "devDirectory":Ljava/io/File;
    :cond_92
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1844
    .end local v3  # "devDirectory":Ljava/io/File;
    .restart local v17  # "devDirectory":Ljava/io/File;
    :goto_96
    if-eqz v12, :cond_9a

    .line 1845
    move v7, v12

    goto :goto_ad

    .line 1831
    .end local v13  # "fileNameInDvb":Ljava/lang/String;
    .end local v14  # "adapterMatcher":Ljava/util/regex/Matcher;
    :cond_9a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_3c

    .end local v17  # "devDirectory":Ljava/io/File;
    .restart local v3  # "devDirectory":Ljava/io/File;
    :cond_a3
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3  # "devDirectory":Ljava/io/File;
    .restart local v17  # "devDirectory":Ljava/io/File;
    move v7, v12

    goto :goto_ad

    .line 1829
    .end local v9  # "dvbDirectory":Ljava/io/File;
    .end local v12  # "dvbDeviceFound":Z
    .end local v17  # "devDirectory":Ljava/io/File;
    .restart local v3  # "devDirectory":Ljava/io/File;
    .restart local v7  # "dvbDeviceFound":Z
    :cond_a9
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1849
    .end local v3  # "devDirectory":Ljava/io/File;
    .restart local v17  # "devDirectory":Ljava/io/File;
    :goto_ad
    if-eqz v7, :cond_b0

    .line 1850
    goto :goto_bc

    .line 1828
    .end local v8  # "fileName":Ljava/lang/String;
    :cond_b0
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto/16 :goto_22

    .end local v17  # "devDirectory":Ljava/io/File;
    .restart local v3  # "devDirectory":Ljava/io/File;
    :cond_ba
    move-object/from16 v17, v3

    .line 1854
    .end local v3  # "devDirectory":Ljava/io/File;
    .restart local v17  # "devDirectory":Ljava/io/File;
    :goto_bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1857
    .local v2, "identity":J
    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_127

    if-eq v1, v4, :cond_104

    if-ne v1, v0, :cond_eb

    .line 1869
    if-eqz v7, :cond_cd

    .line 1870
    :try_start_ca
    const-string v5, "/dev/dvb/adapter%d/frontend%d"

    goto :goto_cf

    :cond_cd
    const-string v5, "/dev/dvb%d.frontend%d"

    :goto_cf
    new-array v6, v0, [Ljava/lang/Object;

    .line 1871
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1869
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1872
    .local v4, "deviceFileName":Ljava/lang/String;
    goto :goto_14a

    .line 1874
    .end local v4  # "deviceFileName":Ljava/lang/String;
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid DVB device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "identity":J
    .end local v7  # "dvbDeviceFound":Z
    .end local v17  # "devDirectory":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "info":Landroid/media/tv/DvbDeviceInfo;
    .end local p2  # "device":I
    throw v0

    .line 1888
    .restart local v2  # "identity":J
    .restart local v7  # "dvbDeviceFound":Z
    .restart local v17  # "devDirectory":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "info":Landroid/media/tv/DvbDeviceInfo;
    .restart local p2  # "device":I
    :catchall_102
    move-exception v0

    goto :goto_164

    .line 1864
    :cond_104
    if-eqz v7, :cond_109

    .line 1865
    const-string v5, "/dev/dvb/adapter%d/dvr%d"

    goto :goto_10b

    :cond_109
    const-string v5, "/dev/dvb%d.dvr%d"

    :goto_10b
    new-array v6, v0, [Ljava/lang/Object;

    .line 1866
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1864
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1867
    .restart local v4  # "deviceFileName":Ljava/lang/String;
    goto :goto_14a

    .line 1859
    .end local v4  # "deviceFileName":Ljava/lang/String;
    :cond_127
    if-eqz v7, :cond_12c

    .line 1860
    const-string v5, "/dev/dvb/adapter%d/demux%d"

    goto :goto_12e

    :cond_12c
    const-string v5, "/dev/dvb%d.demux%d"

    :goto_12e
    new-array v6, v0, [Ljava/lang/Object;

    .line 1861
    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getAdapterId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/tv/DvbDeviceInfo;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1859
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_149
    .catchall {:try_start_ca .. :try_end_149} :catchall_102

    .line 1862
    .restart local v4  # "deviceFileName":Ljava/lang/String;
    nop

    .line 1880
    :goto_14a
    :try_start_14a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1881
    if-ne v0, v1, :cond_154

    .line 1882
    const/high16 v0, 0x30000000

    goto :goto_156

    .line 1883
    :cond_154
    const/high16 v0, 0x10000000

    .line 1880
    :goto_156
    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_15a
    .catch Ljava/io/FileNotFoundException; {:try_start_14a .. :try_end_15a} :catch_15e
    .catchall {:try_start_14a .. :try_end_15a} :catchall_102

    .line 1888
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    return-object v0

    .line 1884
    :catch_15e
    move-exception v0

    .line 1885
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 1888
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1885
    return-object v5

    .line 1888
    .end local v0  # "e":Ljava/io/FileNotFoundException;
    .end local v4  # "deviceFileName":Ljava/lang/String;
    :goto_164
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1823
    .end local v2  # "identity":J
    .end local v7  # "dvbDeviceFound":Z
    .end local v17  # "devDirectory":Ljava/io/File;
    :cond_168
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires DVB_DEVICE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 11
    .param p1, "callback"  # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"  # I

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

    move-result v0

    .line 1004
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1006
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_53

    .line 1007
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1008
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    new-instance v6, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v6, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    invoke-static {v5, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4502(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder$DeathRecipient;)Landroid/os/IBinder$DeathRecipient;
    :try_end_33
    .catchall {:try_start_1c .. :try_end_33} :catchall_50

    .line 1021
    :try_start_33
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42
    .catchall {:try_start_33 .. :try_end_41} :catchall_50

    .line 1024
    goto :goto_4a

    .line 1022
    :catch_42
    move-exception v5

    .line 1023
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_43
    const-string v6, "TvInputManagerService"

    const-string v7, "client process has already died"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_50

    .line 1027
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    nop

    .line 1029
    return-void

    .line 1025
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local p2  # "userId":I
    :try_start_52
    throw v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 1027
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .restart local p2  # "userId":I
    :catchall_53
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "frame"  # Landroid/graphics/Rect;
    .param p3, "userId"  # I

    .line 1510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1511
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "relayoutOverlayView"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1513
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1515
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1517
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1518
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1521
    goto :goto_30

    .line 1522
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1519
    :catch_28
    move-exception v5

    .line 1520
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in relayoutOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1522
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1524
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1525
    nop

    .line 1526
    return-void

    .line 1522
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "frame":Landroid/graphics/Rect;
    .end local p3  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1524
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "frame":Landroid/graphics/Rect;
    .restart local p3  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 9
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1224
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "releaseSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1226
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1228
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_2a

    .line 1229
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    .line 1230
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_27

    .line 1232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1233
    nop

    .line 1234
    return-void

    .line 1230
    :catchall_27
    move-exception v5

    :try_start_28
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "userId":I
    :try_start_29
    throw v5
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 1232
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "userId":I
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 10
    .param p1, "deviceId"  # I
    .param p2, "hardware"  # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"  # I
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
    .local v0, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1754
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "releaseTvInputHardware"

    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1757
    .local v3, "resolvedUserId":I
    :try_start_24
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5800(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
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
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 10
    .param p1, "rating"  # Ljava/lang/String;
    .param p2, "userId"  # I

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

    move-result v0

    .line 1136
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1138
    .local v1, "identity":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_39

    .line 1139
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1140
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    .line 1141
    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    .line 1140
    invoke-virtual {v5, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 1142
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_36

    .line 1144
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1145
    nop

    .line 1146
    return-void

    .line 1142
    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "rating":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_38
    throw v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 1144
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "rating":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_39
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 1530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1531
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "removeOverlayView"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1533
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1535
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1537
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1538
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1541
    goto :goto_30

    .line 1542
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1539
    :catch_28
    move-exception v5

    .line 1540
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in removeOverlayView"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1542
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1544
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    nop

    .line 1546
    return-void

    .line 1542
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1544
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestChannelBrowsable(Landroid/net/Uri;I)V
    .registers 16
    .param p1, "channelUri"  # Landroid/net/Uri;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1983
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1984
    .local v0, "callingPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1985
    .local v1, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1986
    .local v3, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string/jumbo v6, "requestChannelBrowsable"

    invoke-static {v4, v5, v3, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1989
    .local v4, "resolvedUserId":I
    :try_start_19
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.tv.action.CHANNEL_BROWSABLE_REQUESTED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1990
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    .line 1991
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1992
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_65

    .line 1993
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1994
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1995
    .local v9, "receiverPackageName":Ljava/lang/String;
    const-string v10, "android.media.tv.extra.CHANNEL_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1997
    const-string v10, "android.media.tv.extra.PACKAGE_NAME"

    invoke-virtual {v5, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v10}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v5, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_64
    .catchall {:try_start_19 .. :try_end_64} :catchall_6a

    .line 2000
    .end local v8  # "info":Landroid/content/pm/ResolveInfo;
    .end local v9  # "receiverPackageName":Ljava/lang/String;
    goto :goto_35

    .line 2003
    .end local v5  # "intent":Landroid/content/Intent;
    .end local v6  # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2004
    nop

    .line 2005
    return-void

    .line 2003
    :catchall_6a
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "type"  # I
    .param p3, "trackId"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 1448
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1449
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "selectTrack"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1451
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1453
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1455
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1459
    goto :goto_30

    .line 1460
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1457
    :catch_28
    move-exception v5

    .line 1458
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in selectTrack"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1462
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1463
    nop

    .line 1464
    return-void

    .line 1460
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "type":I
    .end local p3  # "trackId":Ljava/lang/String;
    .end local p4  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1462
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "type":I
    .restart local p3  # "trackId":Ljava/lang/String;
    .restart local p4  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "command"  # Ljava/lang/String;
    .param p3, "data"  # Landroid/os/Bundle;
    .param p4, "userId"  # I

    .line 1469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1470
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "sendAppPrivateCommand"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1472
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1474
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1476
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1477
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1480
    goto :goto_30

    .line 1481
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1478
    :catch_28
    move-exception v5

    .line 1479
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in appPrivateCommand"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1483
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1484
    nop

    .line 1485
    return-void

    .line 1481
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "command":Ljava/lang/String;
    .end local p3  # "data":Landroid/os/Bundle;
    .end local p4  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1483
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "command":Ljava/lang/String;
    .restart local p3  # "data":Landroid/os/Bundle;
    .restart local p4  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    .registers 14
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userId"  # I

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TV input notifying action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_9a
    invoke-virtual {p1, v10, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_a3

    goto :goto_b1

    .line 975
    :cond_a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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

    move-result v0

    .line 992
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 994
    .local v1, "identity":J
    :try_start_c6
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v3}, Lcom/android/server/tv/TvInputManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d4
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_d9

    .line 996
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    nop

    .line 998
    return-void

    .line 996
    :catchall_d9
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 970
    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    :cond_de
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 965
    :cond_e4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify package name to notify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_ec
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The caller: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t have permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "enabled"  # Z
    .param p3, "userId"  # I

    .line 1428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1429
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setCaptionEnabled"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1431
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1433
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1435
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1436
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1439
    goto :goto_30

    .line 1440
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1437
    :catch_28
    move-exception v5

    .line 1438
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in setCaptionEnabled"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1442
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1443
    nop

    .line 1444
    return-void

    .line 1440
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "enabled":Z
    .end local p3  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1442
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "enabled":Z
    .restart local p3  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

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
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setMainSession"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1250
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1252
    .local v2, "identity":J
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

    move-result-object v5

    .line 1254
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_3b

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
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3000(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    .line 1261
    .local v6, "oldMainSessionToken":Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$3002(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1265
    if-eqz p1, :cond_4a

    .line 1266
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    invoke-static {v7, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1268
    :cond_4a
    if-eqz v6, :cond_54

    .line 1269
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-static {v7, v6, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1271
    .end local v5  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v6  # "oldMainSessionToken":Landroid/os/IBinder;
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
    move-exception v5

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "userId":I
    :try_start_5c
    throw v5
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 1273
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "userId":I
    :catchall_5d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1241
    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    :cond_62
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have CHANGE_HDMI_CEC_ACTIVE_SOURCE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 9
    .param p1, "enabled"  # Z
    .param p2, "userId"  # I

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

    move-result v0

    .line 1067
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1069
    .local v1, "identity":J
    :try_start_18
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_35

    .line 1070
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1071
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4600(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V

    .line 1072
    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_32

    .line 1074
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1075
    nop

    .line 1076
    return-void

    .line 1072
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "enabled":Z
    .end local p2  # "userId":I
    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 1074
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "enabled":Z
    .restart local p2  # "userId":I
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 13
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "surface"  # Landroid/view/Surface;
    .param p3, "userId"  # I

    .line 1279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1280
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "setSurface"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1282
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1284
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_59

    .line 1286
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1288
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_32

    .line 1289
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V

    goto :goto_41

    .line 1291
    :cond_32
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    .line 1292
    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_41} :catch_44
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_41} :catch_44
    .catchall {:try_start_1c .. :try_end_41} :catchall_42

    .line 1296
    .end local v5  # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_41
    goto :goto_4c

    .line 1297
    :catchall_42
    move-exception v5

    goto :goto_57

    .line 1294
    :catch_44
    move-exception v5

    .line 1295
    .local v5, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v6, "TvInputManagerService"

    const-string v7, "error in setSurface"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    .line 1299
    if-eqz p2, :cond_52

    .line 1301
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1303
    :cond_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1304
    nop

    .line 1305
    return-void

    .line 1297
    :goto_57
    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_42

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "surface":Landroid/view/Surface;
    .end local p3  # "userId":I
    :try_start_58
    throw v5
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    .line 1299
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "surface":Landroid/view/Surface;
    .restart local p3  # "userId":I
    :catchall_59
    move-exception v4

    if-eqz p2, :cond_5f

    .line 1301
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1303
    :cond_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 15
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "volume"  # F
    .param p3, "userId"  # I

    .line 1336
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1337
    .local v0, "REMOTE_VOLUME_ON":F
    const/4 v1, 0x0

    .line 1338
    .local v1, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1339
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v5, "setVolume"

    invoke-static {v3, v4, v2, p3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v3

    .line 1341
    .local v3, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1343
    .local v4, "identity":J
    :try_start_18
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_5f

    .line 1345
    :try_start_1f
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, p1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .line 1347
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1348
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_4c

    .line 1351
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10, v3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    .line 1352
    const/4 v9, 0x0

    cmpl-float v10, p2, v9

    if-lez v10, :cond_48

    .line 1353
    const/high16 v9, 0x3f800000  # 1.0f

    goto :goto_49

    :cond_48
    nop

    .line 1352
    :goto_49
    invoke-interface {v8, v9}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4c} :catch_4f
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_4c} :catch_4f
    .catchall {:try_start_1f .. :try_end_4c} :catchall_4d

    .line 1357
    .end local v7  # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4c
    goto :goto_57

    .line 1358
    :catchall_4d
    move-exception v7

    goto :goto_5d

    .line 1355
    :catch_4f
    move-exception v7

    .line 1356
    .local v7, "e":Ljava/lang/Exception;
    :try_start_50
    const-string v8, "TvInputManagerService"

    const-string v9, "error in setVolume"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    .end local v7  # "e":Ljava/lang/Exception;
    :goto_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_4d

    .line 1360
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1361
    nop

    .line 1362
    return-void

    .line 1358
    :goto_5d
    :try_start_5d
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_4d

    .end local v0  # "REMOTE_VOLUME_ON":F
    .end local v1  # "REMOTE_VOLUME_OFF":F
    .end local v2  # "callingUid":I
    .end local v3  # "resolvedUserId":I
    .end local v4  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "volume":F
    .end local p3  # "userId":I
    :try_start_5e
    throw v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 1360
    .restart local v0  # "REMOTE_VOLUME_ON":F
    .restart local v1  # "REMOTE_VOLUME_OFF":F
    .restart local v2  # "callingUid":I
    .restart local v3  # "resolvedUserId":I
    .restart local v4  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "volume":F
    .restart local p3  # "userId":I
    :catchall_5f
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public startRecording(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "programUri"  # Landroid/net/Uri;
    .param p3, "userId"  # I

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1672
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "startRecording"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1674
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1676
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1678
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->startRecording(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1682
    goto :goto_30

    .line 1683
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1680
    :catch_28
    move-exception v5

    .line 1681
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in startRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1685
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    nop

    .line 1687
    return-void

    .line 1683
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "programUri":Landroid/net/Uri;
    .end local p3  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1685
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "programUri":Landroid/net/Uri;
    .restart local p3  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public stopRecording(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 1691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1692
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "stopRecording"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1694
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1696
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1698
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->stopRecording()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1701
    goto :goto_30

    .line 1702
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1699
    :catch_28
    move-exception v5

    .line 1700
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in stopRecording"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1704
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1705
    nop

    .line 1706
    return-void

    .line 1702
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1704
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftEnablePositionTracking(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "enable"  # Z
    .param p3, "userId"  # I

    .line 1651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1652
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftEnablePositionTracking"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1654
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1656
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1658
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1659
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftEnablePositionTracking(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1662
    goto :goto_30

    .line 1663
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1660
    :catch_28
    move-exception v5

    .line 1661
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftEnablePositionTracking"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1663
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1666
    nop

    .line 1667
    return-void

    .line 1663
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "enable":Z
    .end local p3  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1665
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "enable":Z
    .restart local p3  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftPause(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1571
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPause"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1573
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1575
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1577
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftPause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1580
    goto :goto_30

    .line 1581
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1578
    :catch_28
    move-exception v5

    .line 1579
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftPause"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1581
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1583
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1584
    nop

    .line 1585
    return-void

    .line 1581
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1583
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftPlay(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "recordedProgramUri"  # Landroid/net/Uri;
    .param p3, "userId"  # I

    .line 1550
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1551
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftPlay"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1553
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1555
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1557
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftPlay(Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1561
    goto :goto_30

    .line 1562
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1559
    :catch_28
    move-exception v5

    .line 1560
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftPlay"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1562
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1565
    nop

    .line 1566
    return-void

    .line 1562
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "recordedProgramUri":Landroid/net/Uri;
    .end local p3  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1564
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "recordedProgramUri":Landroid/net/Uri;
    .restart local p3  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftResume(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1590
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftResume"

    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1592
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1594
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1596
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1597
    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->timeShiftResume()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1600
    goto :goto_30

    .line 1601
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1598
    :catch_28
    move-exception v5

    .line 1599
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftResume"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1601
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1603
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1604
    nop

    .line 1605
    return-void

    .line 1601
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1603
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftSeekTo(Landroid/os/IBinder;JI)V
    .registers 13
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "timeMs"  # J
    .param p4, "userId"  # I

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1610
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSeekTo"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1612
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1614
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1616
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1617
    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->timeShiftSeekTo(J)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1620
    goto :goto_30

    .line 1621
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1618
    :catch_28
    move-exception v5

    .line 1619
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftSeekTo"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1624
    nop

    .line 1625
    return-void

    .line 1621
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "timeMs":J
    .end local p4  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1623
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "timeMs":J
    .restart local p4  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public timeShiftSetPlaybackParams(Landroid/os/IBinder;Landroid/media/PlaybackParams;I)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "params"  # Landroid/media/PlaybackParams;
    .param p3, "userId"  # I

    .line 1630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1631
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "timeShiftSetPlaybackParams"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1633
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1635
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_38

    .line 1637
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1638
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_28
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_25} :catch_28
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    .line 1641
    goto :goto_30

    .line 1642
    :catchall_26
    move-exception v5

    goto :goto_36

    .line 1639
    :catch_28
    move-exception v5

    .line 1640
    .local v5, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v6, "TvInputManagerService"

    const-string v7, "error in timeShiftSetPlaybackParams"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1642
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_26

    .line 1644
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1645
    nop

    .line 1646
    return-void

    .line 1642
    :goto_36
    :try_start_36
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_26

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "params":Landroid/media/PlaybackParams;
    .end local p3  # "userId":I
    :try_start_37
    throw v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 1644
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "params":Landroid/media/PlaybackParams;
    .restart local p3  # "userId":I
    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 15
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "channelUri"  # Landroid/net/Uri;
    .param p3, "params"  # Landroid/os/Bundle;
    .param p4, "userId"  # I

    .line 1366
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1367
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "tune"

    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1369
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1371
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_92

    .line 1373
    :try_start_1c
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1375
    invoke-static {p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z

    move-result v5
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_29} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1c .. :try_end_29} :catch_82
    .catchall {:try_start_1c .. :try_end_29} :catchall_80

    if-eqz v5, :cond_30

    .line 1377
    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_80

    .line 1400
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1377
    return-void

    .line 1380
    :cond_30
    :try_start_30
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1381
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1600(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1382
    .local v6, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z

    move-result v7
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_44} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_30 .. :try_end_44} :catch_82
    .catchall {:try_start_30 .. :try_end_44} :catchall_80

    if-eqz v7, :cond_4b

    .line 1383
    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_80

    .line 1400
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1383
    return-void

    .line 1387
    :cond_4b
    :try_start_4b
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    .line 1388
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1390
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1391
    iput-object p3, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1392
    iput-object p1, v7, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1393
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->access$5700(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v7}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1394
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_7f} :catch_82
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_4b .. :try_end_7f} :catch_82
    .catchall {:try_start_4b .. :try_end_7f} :catchall_80

    .line 1397
    .end local v5  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    .end local v6  # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v7  # "args":Lcom/android/internal/os/SomeArgs;
    goto :goto_8a

    .line 1398
    :catchall_80
    move-exception v5

    goto :goto_90

    .line 1395
    :catch_82
    move-exception v5

    .line 1396
    .local v5, "e":Ljava/lang/Exception;
    :try_start_83
    const-string v6, "TvInputManagerService"

    const-string v7, "error in tune"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1398
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_8a
    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_80

    .line 1400
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1401
    nop

    .line 1402
    return-void

    .line 1398
    :goto_90
    :try_start_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_80

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "channelUri":Landroid/net/Uri;
    .end local p3  # "params":Landroid/os/Bundle;
    .end local p4  # "userId":I
    :try_start_91
    throw v5
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 1400
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "channelUri":Landroid/net/Uri;
    .restart local p3  # "params":Landroid/os/Bundle;
    .restart local p4  # "userId":I
    :catchall_92
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sessionToken"  # Landroid/os/IBinder;
    .param p2, "unblockedRating"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1407
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 1408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1409
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "unblockContent"

    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1411
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1413
    .local v2, "identity":J
    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3b

    .line 1415
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    .line 1416
    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->unblockContent(Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2b
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1f .. :try_end_28} :catch_2b
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    .line 1419
    goto :goto_33

    .line 1420
    :catchall_29
    move-exception v5

    goto :goto_39

    .line 1417
    :catch_2b
    move-exception v5

    .line 1418
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2c
    const-string v6, "TvInputManagerService"

    const-string v7, "error in unblockContent"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1420
    .end local v5  # "e":Ljava/lang/Exception;
    :goto_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 1422
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    nop

    .line 1424
    return-void

    .line 1420
    :goto_39
    :try_start_39
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_29

    .end local v0  # "callingUid":I
    .end local v1  # "resolvedUserId":I
    .end local v2  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "sessionToken":Landroid/os/IBinder;
    .end local p2  # "unblockedRating":Ljava/lang/String;
    .end local p3  # "userId":I
    :try_start_3a
    throw v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 1422
    .restart local v0  # "callingUid":I
    .restart local v1  # "resolvedUserId":I
    .restart local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "sessionToken":Landroid/os/IBinder;
    .restart local p2  # "unblockedRating":Ljava/lang/String;
    .restart local p3  # "userId":I
    :catchall_3b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 11
    .param p1, "callback"  # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"  # I

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

    move-result v0

    .line 1035
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1037
    .local v1, "identity":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_41

    .line 1038
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v4, v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 1039
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2900(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1040
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1041
    nop

    .end local v4  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_3e

    .line 1043
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    nop

    .line 1045
    return-void

    .line 1041
    :catchall_3e
    move-exception v4

    :try_start_3f
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local v0  # "resolvedUserId":I
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .end local p2  # "userId":I
    :try_start_40
    throw v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 1043
    .restart local v0  # "resolvedUserId":I
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "callback":Landroid/media/tv/ITvInputManagerCallback;
    .restart local p2  # "userId":I
    :catchall_41
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    .registers 11
    .param p1, "inputInfo"  # Landroid/media/tv/TvInputInfo;
    .param p2, "userId"  # I

    .line 886
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 887
    .local v0, "inputInfoPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "callingPackageName":Ljava/lang/String;
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
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to change TvInputInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_3e
    :goto_3e
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 897
    const-string/jumbo v5, "updateTvInputInfo"

    invoke-static {v2, v3, v4, p2, v5}, Lcom/android/server/tv/TvInputManagerService;->access$4100(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 899
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 901
    .local v3, "identity":J
    :try_start_53
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_6e

    .line 902
    :try_start_5a
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v6, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 903
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v7, v6, p1}, Lcom/android/server/tv/TvInputManagerService;->access$4400(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V

    .line 904
    .end local v6  # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    monitor-exit v5
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_6b

    .line 906
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    nop

    .line 908
    return-void

    .line 904
    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    .end local v0  # "inputInfoPackageName":Ljava/lang/String;
    .end local v1  # "callingPackageName":Ljava/lang/String;
    .end local v2  # "resolvedUserId":I
    .end local v3  # "identity":J
    .end local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .end local p1  # "inputInfo":Landroid/media/tv/TvInputInfo;
    .end local p2  # "userId":I
    :try_start_6d
    throw v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 906
    .restart local v0  # "inputInfoPackageName":Ljava/lang/String;
    .restart local v1  # "callingPackageName":Ljava/lang/String;
    .restart local v2  # "resolvedUserId":I
    .restart local v3  # "identity":J
    .restart local p0  # "this":Lcom/android/server/tv/TvInputManagerService$BinderService;
    .restart local p1  # "inputInfo":Landroid/media/tv/TvInputInfo;
    .restart local p2  # "userId":I
    :catchall_6e
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
