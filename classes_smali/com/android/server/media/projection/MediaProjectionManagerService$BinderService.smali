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

    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5

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
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 352
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;
    .registers 17

    .line 276
    move-object v0, p0

    move-object v5, p2

    iget-object v1, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_MEDIA_PROJECTION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7a

    .line 281
    if-eqz v5, :cond_71

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 292
    :try_start_20
    iget-object v2, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$600(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, p2, v10, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_2b} :catch_55
    .catchall {:try_start_20 .. :try_end_2b} :catchall_53

    .line 295
    nop

    .line 297
    :try_start_2c
    new-instance v11, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v2, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 298
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v7

    move-object v1, v11

    move v3, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V

    .line 299
    if-eqz p4, :cond_4e

    .line 300
    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x2e

    iget v2, v11, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    iget-object v3, v11, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_53

    .line 304
    :cond_4e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    nop

    .line 306
    return-object v11

    .line 304
    :catchall_53
    move-exception v0

    goto :goto_6d

    .line 293
    :catch_55
    move-exception v0

    .line 294
    :try_start_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package matching :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6d
    .catchall {:try_start_56 .. :try_end_6d} :catchall_53

    .line 304
    :goto_6d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 282
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "package name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_7a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to grant projection permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 380
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "MediaProjectionManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 381
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    :try_start_13
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {p1, p2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
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
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
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
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasProjectionPermission(ILjava/lang/String;)Z
    .registers 8

    .line 259
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 260
    nop

    .line 262
    :try_start_5
    const-string v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-direct {p0, p2, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 264
    invoke-static {v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_26

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    move p1, v3

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    or-int/2addr p1, v3

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    return p1

    .line 268
    :catchall_26
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 312
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 311
    invoke-static {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result p1

    return p1
.end method

.method public removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5

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
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 367
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires MANAGE_MEDIA_PROJECTION in order to remove projection callbacks"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
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
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_MEDIA_PROJECTION in order to add projection callbacks"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
