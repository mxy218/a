.class final Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
.super Landroid/media/projection/IMediaProjectionManager$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/media/projection/MediaProjectionManagerService;
    .param p2, "x1"  # Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "permission"  # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"  # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 350
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 357
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1000(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 359
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 352
    .end local v0  # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
    .registers 20
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "type"  # I
    .param p4, "isPermanentGrant"  # Z

    .line 276
    move-object v1, p0

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7f

    .line 281
    if-eqz v9, :cond_76

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 286
    .local v10, "callingUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 292
    .local v11, "callingToken":J
    :try_start_21
    iget-object v0, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$600(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v9, v13, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2c} :catch_5a
    .catchall {:try_start_21 .. :try_end_2c} :catchall_58

    .line 295
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 297
    :try_start_2d
    new-instance v14, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 298
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    move-object v2, v14

    move/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V

    move-object v2, v14

    .line 299
    .local v2, "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    if-eqz p4, :cond_53

    .line 300
    iget-object v3, v1, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2e

    iget v5, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v6, v2, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v13}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_58

    .line 304
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_53
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    nop

    .line 306
    return-object v2

    .line 304
    .end local v2  # "projection":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    :catchall_58
    move-exception v0

    goto :goto_72

    .line 293
    :catch_5a
    move-exception v0

    .line 294
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package matching :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "callingUser":Landroid/os/UserHandle;
    .end local v11  # "callingToken":J
    .end local p0  # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .end local p1  # "uid":I
    .end local p2  # "packageName":Ljava/lang/String;
    .end local p3  # "type":I
    .end local p4  # "isPermanentGrant":Z
    throw v2
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_58

    .line 304
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10  # "callingUser":Landroid/os/UserHandle;
    .restart local v11  # "callingToken":J
    .restart local p0  # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    .restart local p1  # "uid":I
    .restart local p2  # "packageName":Ljava/lang/String;
    .restart local p3  # "type":I
    .restart local p4  # "isPermanentGrant":Z
    :goto_72
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 282
    .end local v10  # "callingUser":Landroid/os/UserHandle;
    .end local v11  # "callingToken":J
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "package name must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_7f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaProjectionManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 381
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 385
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 324
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$800(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1c

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return-object v2

    .line 326
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 319
    .end local v0  # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 260
    .local v0, "token":J
    const/4 v2, 0x0

    .line 262
    .local v2, "hasPermission":Z
    :try_start_5
    const-string v3, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-direct {p0, p2, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 264
    invoke-static {v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_25

    if-nez v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    or-int/2addr v2, v3

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    return v2

    .line 268
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
    .registers 4
    .param p1, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 311
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 312
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5
    .param p1, "callback"  # Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 365
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 372
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 374
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 367
    .end local v0  # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopActiveProjection()V
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 339
    .local v0, "token":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 340
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$900(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_28

    .line 343
    :cond_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 344
    nop

    .line 346
    return-void

    .line 343
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 334
    .end local v0  # "token":J
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
