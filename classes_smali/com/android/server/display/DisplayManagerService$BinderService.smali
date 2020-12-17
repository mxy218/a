.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayManagerService;

    .line 1743
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 5
    .param p1, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 2341
    if-eqz p1, :cond_13

    .line 2343
    :try_start_2
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_b

    if-eqz v0, :cond_a

    .line 2344
    const/4 v0, 0x1

    return v0

    .line 2348
    :cond_a
    goto :goto_13

    .line 2346
    :catch_b
    move-exception v0

    .line 2347
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplayManagerService"

    const-string v2, "Unable to query projection service for permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const-string v0, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    const-string v1, "canProjectSecureVideo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6
    .param p1, "projection"  # Landroid/media/projection/IMediaProjection;

    .line 2325
    const/4 v0, 0x1

    if-eqz p1, :cond_13

    .line 2327
    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz v1, :cond_a

    .line 2328
    return v0

    .line 2332
    :cond_a
    goto :goto_13

    .line 2330
    :catch_b
    move-exception v1

    .line 2331
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2334
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_13
    :goto_13
    const-string v1, "android.permission.CAPTURE_VIDEO_OUTPUT"

    const-string v2, "canProjectVideo()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2335
    return v0

    .line 2337
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v0

    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "func"  # Ljava/lang/String;

    .line 2354
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 2355
    const/4 v0, 0x1

    return v0

    .line 2357
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v1, 0x0

    return v1
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2311
    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 2312
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2313
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 2314
    array-length v2, v1

    move v3, v0

    :goto_15
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 2315
    .local v4, "n":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2316
    const/4 v0, 0x1

    return v0

    .line 2314
    .end local v4  # "n":Ljava/lang/String;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2321
    .end local v1  # "packageNames":[Ljava/lang/String;
    :cond_24
    return v0
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"  # Ljava/lang/String;

    .line 1845
    if-eqz p1, :cond_22

    .line 1848
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to connect to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1853
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1856
    nop

    .line 1857
    return-void

    .line 1855
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1846
    .end local v0  # "token":J
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 30
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"  # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "name"  # Ljava/lang/String;
    .param p5, "width"  # I
    .param p6, "height"  # I
    .param p7, "densityDpi"  # I
    .param p8, "surface"  # Landroid/view/Surface;
    .param p9, "flags"  # I
    .param p10, "uniqueId"  # Ljava/lang/String;

    .line 1963
    move-object/from16 v1, p0

    move-object/from16 v14, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1964
    .local v15, "callingUid":I
    move-object/from16 v13, p3

    invoke-direct {v1, v15, v13}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 1967
    if-eqz p1, :cond_f7

    .line 1970
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 1973
    if-lez p5, :cond_e5

    if-lez p6, :cond_e5

    if-lez p7, :cond_e5

    .line 1977
    if-eqz p8, :cond_2f

    invoke-virtual/range {p8 .. p8}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2f

    .line 1978
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Surface can\'t be single-buffered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1981
    :cond_2f
    :goto_2f
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_42

    .line 1982
    or-int/lit8 v0, p9, 0x10

    .line 1985
    .end local p9  # "flags":I
    .local v0, "flags":I
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_3a

    goto :goto_44

    .line 1986
    :cond_3a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1981
    .end local v0  # "flags":I
    .restart local p9  # "flags":I
    :cond_42
    move/from16 v0, p9

    .line 1990
    .end local p9  # "flags":I
    .restart local v0  # "flags":I
    :goto_44
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4c

    .line 1991
    and-int/lit8 v0, v0, -0x11

    move v2, v0

    goto :goto_4d

    .line 1990
    :cond_4c
    move v2, v0

    .line 1994
    .end local v0  # "flags":I
    .local v2, "flags":I
    :goto_4d
    if-eqz v14, :cond_73

    .line 1996
    :try_start_4f
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3200(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    invoke-interface {v0, v14}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1999
    invoke-interface {v14, v2}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    move-result v0

    .line 2002
    .end local v2  # "flags":I
    .restart local v0  # "flags":I
    move v12, v0

    goto :goto_74

    .line 1997
    .end local v0  # "flags":I
    .restart local v2  # "flags":I
    :cond_61
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Invalid media projection"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2  # "flags":I
    .end local v15  # "callingUid":I
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .end local p1  # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local p2  # "projection":Landroid/media/projection/IMediaProjection;
    .end local p3  # "packageName":Ljava/lang/String;
    .end local p4  # "name":Ljava/lang/String;
    .end local p5  # "width":I
    .end local p6  # "height":I
    .end local p7  # "densityDpi":I
    .end local p8  # "surface":Landroid/view/Surface;
    .end local p10  # "uniqueId":Ljava/lang/String;
    throw v0
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_69} :catch_69

    .line 2000
    .restart local v2  # "flags":I
    .restart local v15  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .restart local p1  # "callback":Landroid/hardware/display/IVirtualDisplayCallback;
    .restart local p2  # "projection":Landroid/media/projection/IMediaProjection;
    .restart local p3  # "packageName":Ljava/lang/String;
    .restart local p4  # "name":Ljava/lang/String;
    .restart local p5  # "width":I
    .restart local p6  # "height":I
    .restart local p7  # "densityDpi":I
    .restart local p8  # "surface":Landroid/view/Surface;
    .restart local p10  # "uniqueId":Ljava/lang/String;
    :catch_69
    move-exception v0

    .line 2001
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "unable to validate media projection or flags"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1994
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_73
    move v12, v2

    .line 2005
    .end local v2  # "flags":I
    .local v12, "flags":I
    :goto_74
    const/16 v0, 0x3e8

    if-eq v15, v0, :cond_8b

    and-int/lit8 v2, v12, 0x10

    if-eqz v2, :cond_8b

    .line 2007
    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_8b

    .line 2008
    :cond_83
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2014
    :cond_8b
    :goto_8b
    if-eq v15, v0, :cond_a0

    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_a0

    .line 2015
    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_a0

    .line 2016
    :cond_98
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2027
    :cond_a0
    :goto_a0
    if-eq v15, v0, :cond_b9

    and-int/lit16 v0, v12, 0x200

    if-eqz v0, :cond_b9

    .line 2029
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "createVirtualDisplay()"

    invoke-direct {v1, v0, v2}, Lcom/android/server/display/DisplayManagerService$BinderService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    goto :goto_b9

    .line 2030
    :cond_b1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2034
    :cond_b9
    :goto_b9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2036
    .local v16, "token":J
    :try_start_bd
    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;
    :try_end_bf
    .catchall {:try_start_bd .. :try_end_bf} :catchall_de

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v15

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v18, v12

    .end local v12  # "flags":I
    .local v18, "flags":I
    move-object/from16 v13, p10

    :try_start_d4
    invoke-static/range {v2 .. v13}, Lcom/android/server/display/DisplayManagerService;->access$3300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result v0
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_dc

    .line 2039
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2036
    return v0

    .line 2039
    :catchall_dc
    move-exception v0

    goto :goto_e1

    .end local v18  # "flags":I
    .restart local v12  # "flags":I
    :catchall_de
    move-exception v0

    move/from16 v18, v12

    .end local v12  # "flags":I
    .restart local v18  # "flags":I
    :goto_e1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1974
    .end local v16  # "token":J
    .end local v18  # "flags":I
    .restart local p9  # "flags":I
    :cond_e5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1971
    :cond_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name must be non-null and non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1968
    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "appToken must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1965
    :cond_ff
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "packageName must match the calling uid"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnectWifiDisplay()V
    .registers 4

    .line 1866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1868
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1871
    nop

    .line 1872
    return-void

    .line 1870
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2089
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2091
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2093
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p2}, Lcom/android/server/display/DisplayManagerService;->access$3800(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 2095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2096
    nop

    .line 2097
    return-void

    .line 2095
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"  # Ljava/lang/String;

    .line 1892
    if-eqz p1, :cond_22

    .line 1895
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to forget to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1900
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    nop

    .line 1904
    return-void

    .line 1902
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1893
    .end local v0  # "token":J
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 2133
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_AMBIENT_LIGHT_STATS"

    const-string v2, "Permission required to to access ambient light stats."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2137
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2138
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2140
    .local v2, "token":J
    :try_start_19
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v4

    monitor-enter v4
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_32

    .line 2141
    :try_start_20
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2f

    .line 2144
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2141
    return-object v5

    .line 2142
    :catchall_2f
    move-exception v5

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    :try_start_31
    throw v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 2144
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 8
    .param p1, "userId"  # I

    .line 2173
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to read the display\'s brightness configuration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_20

    .line 2177
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to read the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2184
    .local v0, "token":J
    :try_start_24
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v2

    .line 2185
    .local v2, "userSerial":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_54

    .line 2186
    :try_start_35
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2187
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$4200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v4

    .line 2188
    .local v4, "config":Landroid/hardware/display/BrightnessConfiguration;
    if-nez v4, :cond_4c

    .line 2189
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerController;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v5

    move-object v4, v5

    .line 2191
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_51

    .line 2194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2191
    return-object v4

    .line 2192
    .end local v4  # "config":Landroid/hardware/display/BrightnessConfiguration;
    :catchall_51
    move-exception v4

    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .end local p1  # "userId":I
    :try_start_53
    throw v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 2194
    .end local v2  # "userSerial":I
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .restart local p1  # "userId":I
    :catchall_54
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BRIGHTNESS_SLIDER_USAGE"

    const-string v2, "Permission to read brightness events."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2106
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 2107
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 2110
    .local v2, "mode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3b

    .line 2113
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_39

    goto :goto_3a

    :cond_39
    move v3, v4

    .local v3, "hasUsageStats":Z
    :goto_3a
    goto :goto_3f

    .line 2117
    .end local v3  # "hasUsageStats":Z
    :cond_3b
    if-nez v2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v4

    .line 2120
    .restart local v3  # "hasUsageStats":Z
    :goto_3f
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2121
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2123
    .local v5, "token":J
    :try_start_47
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v7

    monitor-enter v7
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_60

    .line 2124
    :try_start_4e
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v8}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v8

    invoke-virtual {v8, v4, v3}, Lcom/android/server/display/DisplayPowerController;->getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v8

    monitor-exit v7
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5d

    .line 2127
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2124
    return-object v8

    .line 2125
    :catchall_5d
    move-exception v8

    :try_start_5e
    monitor-exit v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    .end local v0  # "callingUid":I
    .end local v1  # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v2  # "mode":I
    .end local v3  # "hasUsageStats":Z
    .end local v4  # "userId":I
    .end local v5  # "token":J
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .end local p1  # "callingPackage":Ljava/lang/String;
    :try_start_5f
    throw v8
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 2127
    .restart local v0  # "callingUid":I
    .restart local v1  # "appOpsManager":Landroid/app/AppOpsManager;
    .restart local v2  # "mode":I
    .restart local v3  # "hasUsageStats":Z
    .restart local v4  # "userId":I
    .restart local v5  # "token":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    :catchall_60
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 5

    .line 2200
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to read the display\'s default brightness configuration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2205
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    .line 2206
    :try_start_18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_27

    .line 2209
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    return-object v3

    .line 2207
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2209
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayIds()[I
    .registers 5

    .line 1768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1769
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1771
    .local v1, "token":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;I)[I

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1773
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1771
    return-object v3

    .line 1773
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 6
    .param p1, "displayId"  # I

    .line 1754
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1755
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1757
    .local v1, "token":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1759
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1757
    return-object v3

    .line 1759
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMinimumBrightnessCurve()Landroid/hardware/display/Curve;
    .registers 4

    .line 2258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2260
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2260
    return-object v2

    .line 2262
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPreferredWideGamutColorSpaceId()I
    .registers 4

    .line 2268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2270
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->getPreferredWideGamutColorSpaceIdInternal()I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2270
    return v2

    .line 2272
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 4

    .line 1792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1794
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1796
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1794
    return-object v2

    .line 1796
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 4

    .line 1937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1939
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1939
    return-object v2

    .line 1941
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isUidPresentOnDisplay(II)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "displayId"  # I

    .line 1779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1781
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;II)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1781
    return v2

    .line 1783
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 2247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2249
    .local v1, "token":J
    :try_start_4
    new-instance v3, Lcom/android/server/display/DisplayManagerShellCommand;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_1f

    move-object v11, p0

    :try_start_7
    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerShellCommand;-><init>(Lcom/android/server/display/DisplayManagerService$BinderService;)V

    .line 2250
    .local v3, "command":Lcom/android/server/display/DisplayManagerShellCommand;
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/display/DisplayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 2252
    nop

    .end local v3  # "command":Lcom/android/server/display/DisplayManagerShellCommand;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2253
    nop

    .line 2254
    return-void

    .line 2252
    :catchall_1d
    move-exception v0

    goto :goto_21

    :catchall_1f
    move-exception v0

    move-object v11, p0

    :goto_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pauseWifiDisplay()V
    .registers 4

    .line 1908
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to pause a wifi display session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1913
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2800(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1915
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1916
    nop

    .line 1917
    return-void

    .line 1915
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p2, "tag"  # Ljava/lang/String;

    .line 2366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerBrightnessCallback IBrightnessChangedCallback tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CallingPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :try_start_23
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    .line 2371
    goto :goto_2e

    .line 2369
    :catch_2d
    move-exception v0

    .line 2373
    :goto_2e
    return-void
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 6
    .param p1, "callback"  # Landroid/hardware/display/IDisplayManagerCallback;

    .line 1802
    if-eqz p1, :cond_19

    .line 1806
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1807
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1809
    .local v1, "token":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 1811
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1812
    nop

    .line 1813
    return-void

    .line 1811
    :catchall_14
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1803
    .end local v0  # "callingPid":I
    .end local v1  # "token":J
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 6
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;

    .line 2069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2071
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService;->access$3600(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2073
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2074
    nop

    .line 2075
    return-void

    .line 2073
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "address"  # Ljava/lang/String;
    .param p2, "alias"  # Ljava/lang/String;

    .line 1876
    if-eqz p1, :cond_22

    .line 1879
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to rename to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1884
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$2600(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1887
    nop

    .line 1888
    return-void

    .line 1886
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1877
    .end local v0  # "token":J
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestColorMode(II)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "colorMode"  # I

    .line 1947
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_COLOR_MODE"

    const-string v2, "Permission required to change the display color mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1952
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$3100(Lcom/android/server/display/DisplayManagerService;II)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1954
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1955
    nop

    .line 1956
    return-void

    .line 1954
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method resetBrightnessConfiguration()V
    .registers 5

    .line 2282
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2283
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2282
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 2284
    return-void
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 9
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"  # I
    .param p3, "height"  # I
    .param p4, "densityDpi"  # I

    .line 2046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2048
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2051
    nop

    .line 2052
    return-void

    .line 2050
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeWifiDisplay()V
    .registers 4

    .line 1921
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to resume a wifi display session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1926
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2900(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1928
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1929
    nop

    .line 1930
    return-void

    .line 1928
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setAmbientColorTemperatureOverride(F)V
    .registers 4
    .param p1, "cct"  # F

    .line 2303
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2304
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2305
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAmbientColorTemperatureOverride(F)V

    .line 2306
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1

    .line 2308
    :cond_1d
    :goto_1d
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 2287
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2288
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2289
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    .line 2290
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1

    .line 2292
    :cond_1d
    :goto_1d
    return-void
.end method

.method setBrightness(I)V
    .registers 5
    .param p1, "brightness"  # I

    .line 2277
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2279
    return-void
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 7
    .param p1, "c"  # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 2151
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to change the display\'s brightness configuration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_20

    .line 2155
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to change the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    :cond_20
    if-eqz p3, :cond_2d

    invoke-static {}, Lcom/android/server/display/DisplayManagerService$BinderService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2161
    const/4 p3, 0x0

    .line 2163
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2165
    .local v0, "token":J
    :try_start_31
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 2167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2168
    nop

    .line 2169
    return-void

    .line 2167
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 2295
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2296
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2297
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 2298
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v1

    .line 2300
    :cond_1d
    :goto_1d
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6
    .param p1, "adjustment"  # F

    .line 2230
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to set the display\'s auto brightness adjustment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2235
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    .line 2236
    :try_start_18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 2237
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 2239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2240
    nop

    .line 2241
    return-void

    .line 2237
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .end local p1  # "adjustment":F
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2239
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .restart local p1  # "adjustment":F
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryBrightness(I)V
    .registers 6
    .param p1, "brightness"  # I

    .line 2215
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to set the display\'s brightness"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2220
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    .line 2221
    :try_start_18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController;->setTemporaryBrightness(I)V

    .line 2222
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 2224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2225
    nop

    .line 2226
    return-void

    .line 2222
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .end local p1  # "brightness":I
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2224
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/display/DisplayManagerService$BinderService;
    .restart local p1  # "brightness":I
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    .registers 7
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "isOn"  # Z

    .line 2079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2081
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2084
    nop

    .line 2085
    return-void

    .line 2083
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 7
    .param p1, "callback"  # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"  # Landroid/view/Surface;

    .line 2056
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 2057
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface can\'t be single-buffered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2059
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2061
    .local v0, "token":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 2063
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2064
    nop

    .line 2065
    return-void

    .line 2063
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startWifiDisplayScan()V
    .registers 5

    .line 1817
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to start wifi display scans"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1821
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1823
    .local v1, "token":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 1825
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1826
    nop

    .line 1827
    return-void

    .line 1825
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public stopWifiDisplayScan()V
    .registers 5

    .line 1831
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to stop wifi display scans"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1835
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1837
    .local v1, "token":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayManagerService;->access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 1839
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1840
    nop

    .line 1841
    return-void

    .line 1839
    :catchall_1f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p2, "tag"  # Ljava/lang/String;

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback IBrightnessChangedCallback tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CallingPid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    .line 2379
    return-void
.end method
