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

    .line 1720
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 4

    .line 2318
    if-eqz p1, :cond_13

    .line 2320
    :try_start_2
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6} :catch_b

    if-eqz p1, :cond_a

    .line 2321
    const/4 p1, 0x1

    return p1

    .line 2325
    :cond_a
    goto :goto_13

    .line 2323
    :catch_b
    move-exception p1

    .line 2324
    const-string v0, "DisplayManagerService"

    const-string v1, "Unable to query projection service for permissions"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2327
    :cond_13
    :goto_13
    const-string p1, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    const-string v0, "canProjectSecureVideo()"

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .registers 6

    .line 2302
    const/4 v0, 0x1

    if-eqz p1, :cond_13

    .line 2304
    :try_start_3
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz v1, :cond_a

    .line 2305
    return v0

    .line 2309
    :cond_a
    goto :goto_13

    .line 2307
    :catch_b
    move-exception v1

    .line 2308
    const-string v2, "DisplayManagerService"

    const-string v3, "Unable to query projection service for permissions"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2311
    :cond_13
    :goto_13
    const-string v1, "android.permission.CAPTURE_VIDEO_OUTPUT"

    const-string v2, "canProjectVideo()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2312
    return v0

    .line 2314
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result p1

    return p1
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 2331
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 2332
    const/4 p1, 0x1

    return p1

    .line 2334
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2335
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2336
    const-string p2, "DisplayManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/4 p1, 0x0

    return p1
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .registers 7

    .line 2288
    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 2289
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 2290
    if-eqz p1, :cond_24

    .line 2291
    array-length v1, p1

    move v2, v0

    :goto_15
    if-ge v2, v1, :cond_24

    aget-object v3, p1, v2

    .line 2292
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2293
    const/4 p1, 0x1

    return p1

    .line 2291
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2298
    :cond_24
    return v0
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 5

    .line 1822
    if-eqz p1, :cond_22

    .line 1825
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to connect to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1830
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2400(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1832
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1833
    nop

    .line 1834
    return-void

    .line 1832
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1823
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I
    .registers 25

    .line 1940
    move-object v0, p0

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1941
    move-object/from16 v4, p3

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 1944
    if-eqz p1, :cond_eb

    .line 1947
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 1950
    if-lez p5, :cond_d9

    if-lez p6, :cond_d9

    if-lez p7, :cond_d9

    .line 1954
    if-eqz p8, :cond_2e

    invoke-virtual/range {p8 .. p8}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_2e

    .line 1955
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Surface can\'t be single-buffered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1958
    :cond_2e
    :goto_2e
    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_41

    .line 1959
    or-int/lit8 v1, p9, 0x10

    .line 1962
    and-int/lit8 v5, v1, 0x20

    if-nez v5, :cond_39

    goto :goto_43

    .line 1963
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1958
    :cond_41
    move/from16 v1, p9

    .line 1967
    :goto_43
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_49

    .line 1968
    and-int/lit8 v1, v1, -0x11

    .line 1971
    :cond_49
    if-eqz v2, :cond_6f

    .line 1973
    :try_start_4b
    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$3200(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1976
    invoke-interface {v2, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    move-result v1

    .line 1979
    move v10, v1

    goto :goto_70

    .line 1974
    :cond_5d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid media projection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_65} :catch_65

    .line 1977
    :catch_65
    move-exception v0

    .line 1978
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "unable to validate media projection or flags"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1971
    :cond_6f
    move v10, v1

    .line 1982
    :goto_70
    const/16 v1, 0x3e8

    if-eq v3, v1, :cond_87

    and-int/lit8 v5, v10, 0x10

    if-eqz v5, :cond_87

    .line 1984
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v5

    if-eqz v5, :cond_7f

    goto :goto_87

    .line 1985
    :cond_7f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1991
    :cond_87
    :goto_87
    if-eq v3, v1, :cond_9c

    and-int/lit8 v5, v10, 0x4

    if-eqz v5, :cond_9c

    .line 1992
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v5

    if-eqz v5, :cond_94

    goto :goto_9c

    .line 1993
    :cond_94
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2004
    :cond_9c
    :goto_9c
    if-eq v3, v1, :cond_b5

    and-int/lit16 v1, v10, 0x200

    if-eqz v1, :cond_b5

    .line 2006
    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v5, "createVirtualDisplay()"

    invoke-direct {p0, v1, v5}, Lcom/android/server/display/DisplayManagerService$BinderService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    goto :goto_b5

    .line 2007
    :cond_ad
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2011
    :cond_b5
    :goto_b5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2013
    :try_start_b9
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/android/server/display/DisplayManagerService;->access$3300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result v0
    :try_end_d0
    .catchall {:try_start_b9 .. :try_end_d0} :catchall_d4

    .line 2016
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2013
    return v0

    .line 2016
    :catchall_d4
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1951
    :cond_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1948
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must be non-null and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1945
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_f3
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnectWifiDisplay()V
    .registers 4

    .line 1843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1845
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2500(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1848
    nop

    .line 1849
    return-void

    .line 1847
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2066
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "DisplayManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2068
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2070
    :try_start_13
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$3800(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 2072
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2073
    nop

    .line 2074
    return-void

    .line 2072
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 5

    .line 1869
    if-eqz p1, :cond_22

    .line 1872
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to forget to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1877
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$2700(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1879
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1880
    nop

    .line 1881
    return-void

    .line 1879
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1870
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 2110
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_AMBIENT_LIGHT_STATS"

    const-string v2, "Permission required to to access ambient light stats."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2114
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2117
    :try_start_19
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_32

    .line 2118
    :try_start_20
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_2f

    .line 2121
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2118
    return-object v0

    .line 2119
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 2121
    :catchall_32
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 6

    .line 2150
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to read the display\'s brightness configuration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_20

    .line 2154
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to read the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2161
    :try_start_24
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$4100(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p1

    .line 2162
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_53

    .line 2163
    :try_start_35
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2164
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$4200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 2165
    if-nez p1, :cond_4b

    .line 2166
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    .line 2168
    :cond_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_50

    .line 2171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2168
    return-object p1

    .line 2169
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

    .line 2171
    :catchall_53
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 7
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

    .line 2078
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BRIGHTNESS_SLIDER_USAGE"

    const-string v2, "Permission to read brightness events."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2083
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 2084
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    .line 2087
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3b

    .line 2090
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_39

    goto :goto_3f

    :cond_39
    move v1, v2

    goto :goto_3f

    .line 2094
    :cond_3b
    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 2097
    :goto_3f
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2100
    :try_start_47
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_60

    .line 2101
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/server/display/DisplayPowerController;->getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_5d

    .line 2104
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2101
    return-object p1

    .line 2102
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 2104
    :catchall_60
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 5

    .line 2177
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to read the display\'s default brightness configuration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2182
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    .line 2183
    :try_start_18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerController;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_27

    .line 2186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2183
    return-object v3

    .line 2184
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2186
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayIds()[I
    .registers 5

    .line 1745
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1748
    :try_start_8
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayManagerService;->access$1700(Lcom/android/server/display/DisplayManagerService;I)[I

    move-result-object v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1750
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    return-object v0

    .line 1750
    :catchall_12
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 6

    .line 1731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1734
    :try_start_8
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 1736
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1734
    return-object p1

    .line 1736
    :catchall_12
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getMinimumBrightnessCurve()Landroid/hardware/display/Curve;
    .registers 4

    .line 2235
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2237
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2239
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    return-object v2

    .line 2239
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPreferredWideGamutColorSpaceId()I
    .registers 4

    .line 2245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2247
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->getPreferredWideGamutColorSpaceIdInternal()I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2247
    return v2

    .line 2249
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 4

    .line 1769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1771
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$1900(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1771
    return-object v2

    .line 1773
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 4

    .line 1914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1916
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$3000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1918
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1916
    return-object v2

    .line 1918
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isUidPresentOnDisplay(II)Z
    .registers 6

    .line 1756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1758
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$1800(Lcom/android/server/display/DisplayManagerService;II)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1760
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1758
    return p1

    .line 1760
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    .line 2224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2226
    :try_start_4
    new-instance v3, Lcom/android/server/display/DisplayManagerShellCommand;

    move-object v0, p0

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerShellCommand;-><init>(Lcom/android/server/display/DisplayManagerService$BinderService;)V

    .line 2227
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/display/DisplayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 2229
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2230
    nop

    .line 2231
    return-void

    .line 2229
    :catchall_1b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public pauseWifiDisplay()V
    .registers 4

    .line 1885
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to pause a wifi display session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1890
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2800(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1892
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1893
    nop

    .line 1894
    return-void

    .line 1892
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .registers 6

    .line 1779
    if-eqz p1, :cond_19

    .line 1783
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1786
    :try_start_a
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, p1, v0}, Lcom/android/server/display/DisplayManagerService;->access$2000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 1788
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1789
    nop

    .line 1790
    return-void

    .line 1788
    :catchall_14
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1780
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 5

    .line 2046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2048
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->access$3600(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
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
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1853
    if-eqz p1, :cond_22

    .line 1856
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to rename to a wifi display"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1861
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$2600(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1863
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1864
    nop

    .line 1865
    return-void

    .line 1863
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1854
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestColorMode(II)V
    .registers 6

    .line 1924
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_COLOR_MODE"

    const-string v2, "Permission required to change the display color mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1929
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$3100(Lcom/android/server/display/DisplayManagerService;II)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1932
    nop

    .line 1933
    return-void

    .line 1931
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method resetBrightnessConfiguration()V
    .registers 5

    .line 2259
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 2260
    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2259
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 2261
    return-void
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 8

    .line 2023
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2025
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->access$3400(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2027
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2028
    nop

    .line 2029
    return-void

    .line 2027
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public resumeWifiDisplay()V
    .registers 4

    .line 1898
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to resume a wifi display session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1903
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$2900(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1906
    nop

    .line 1907
    return-void

    .line 1905
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setAmbientColorTemperatureOverride(F)V
    .registers 4

    .line 2280
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2281
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2282
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAmbientColorTemperatureOverride(F)V

    .line 2283
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw p1

    .line 2285
    :cond_1d
    :goto_1d
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .registers 4

    .line 2264
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2265
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2266
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    .line 2267
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw p1

    .line 2269
    :cond_1d
    :goto_1d
    return-void
.end method

.method setBrightness(I)V
    .registers 5

    .line 2254
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2256
    return-void
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 7

    .line 2128
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to change the display\'s brightness configuration"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_20

    .line 2132
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "Permission required to change the display brightness configuration of another user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :cond_20
    if-eqz p3, :cond_2d

    invoke-static {}, Lcom/android/server/display/DisplayManagerService$BinderService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2138
    const/4 p3, 0x0

    .line 2140
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2142
    :try_start_31
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3b

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 4

    .line 2272
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2273
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 2274
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 2275
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw p1

    .line 2277
    :cond_1d
    :goto_1d
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6

    .line 2207
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to set the display\'s auto brightness adjustment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2212
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    .line 2213
    :try_start_18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 2214
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 2216
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2217
    nop

    .line 2218
    return-void

    .line 2214
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2216
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setTemporaryBrightness(I)V
    .registers 6

    .line 2192
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_BRIGHTNESS"

    const-string v2, "Permission required to set the display\'s brightness"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2197
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_2a

    .line 2198
    :try_start_18
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$3900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerController;->setTemporaryBrightness(I)V

    .line 2199
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 2201
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2202
    nop

    .line 2203
    return-void

    .line 2199
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 2201
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    .registers 6

    .line 2056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2058
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 2060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2061
    nop

    .line 2062
    return-void

    .line 2060
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 6

    .line 2033
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 2034
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Surface can\'t be single-buffered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2036
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2038
    :try_start_15
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$3500(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 2040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    nop

    .line 2042
    return-void

    .line 2040
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startWifiDisplayScan()V
    .registers 5

    .line 1794
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to start wifi display scans"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1798
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1800
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayManagerService;->access$2200(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 1802
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1803
    nop

    .line 1804
    return-void

    .line 1802
    :catchall_1f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public stopWifiDisplayScan()V
    .registers 5

    .line 1808
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    const-string v2, "Permission required to stop wifi display scans"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1814
    :try_start_15
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3, v0}, Lcom/android/server/display/DisplayManagerService;->access$2300(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 1816
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1817
    nop

    .line 1818
    return-void

    .line 1816
    :catchall_1f
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
