.class Lcom/android/server/vr/Vr2dDisplay;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ACTION_SET_MODE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_MODE"

.field private static final DEBUG_ACTION_SET_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.SET_SURFACE"

.field private static final DEBUG_EXTRA_MODE_ON:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_MODE_ON"

.field private static final DEBUG_EXTRA_SURFACE:Ljava/lang/String; = "com.android.server.vr.Vr2dDisplay.EXTRA_SURFACE"

.field public static final DEFAULT_VIRTUAL_DISPLAY_DPI:I = 0x140

.field public static final DEFAULT_VIRTUAL_DISPLAY_HEIGHT:I = 0x708

.field public static final DEFAULT_VIRTUAL_DISPLAY_WIDTH:I = 0x578

.field private static final DISPLAY_NAME:Ljava/lang/String; = "VR 2D Display"

.field public static final MIN_VR_DISPLAY_DPI:I = 0x1

.field public static final MIN_VR_DISPLAY_HEIGHT:I = 0x1

.field public static final MIN_VR_DISPLAY_WIDTH:I = 0x1

.field private static final STOP_VIRTUAL_DISPLAY_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Vr2dDisplay"

.field private static final UNIQUE_DISPLAY_ID:Ljava/lang/String; = "277f1a09-b88d-4d1e-8716-796f114d080b"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBootsToVr:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mImageReader:Landroid/media/ImageReader;

.field private mIsPersistentVrModeEnabled:Z

.field private mIsVirtualDisplayAllowed:Z

.field private mIsVrModeOverrideEnabled:Z

.field private mStopVDRunnable:Ljava/lang/Runnable;

.field private mSurface:Landroid/view/Surface;

.field private final mVdLock:Ljava/lang/Object;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private mVirtualDisplayDpi:I

.field private mVirtualDisplayHeight:I

.field private mVirtualDisplayWidth:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V
    .registers 6

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$1;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 105
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 106
    iput-object p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 107
    iput-object p3, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 108
    iput-object p4, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    .line 109
    const/16 p1, 0x578

    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 110
    const/16 p1, 0x708

    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 111
    const/16 p1, 0x140

    iput p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/vr/Vr2dDisplay;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/Vr2dDisplay;)Z
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/vr/Vr2dDisplay;I)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/vr/Vr2dDisplay;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopImageReader()V

    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;)V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_3c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 364
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting the new surface from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_33

    .line 366
    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 368
    :cond_33
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3a

    .line 369
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 371
    :cond_3a
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mSurface:Landroid/view/Surface;

    .line 373
    :cond_3c
    return-void
.end method

.method private shouldRunVirtualDisplay()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVrModeOverrideEnabled:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V
    .registers 2

    .line 181
    return-void
.end method

.method private startImageReader()V
    .registers 5

    .line 381
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_3c

    .line 382
    iget v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VD startImageReader: res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dpi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_3c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method private startVirtualDisplay()V
    .registers 14

    .line 280
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_c

    .line 281
    const-string v0, "Vr2dDisplay"

    const-string v1, "Cannot create virtual display because mDisplayManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_c
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_f
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_1c

    .line 287
    const-string v1, "Vr2dDisplay"

    const-string v2, "VD already exists, ignoring request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-void

    .line 291
    :cond_1c
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    nop

    .line 295
    nop

    .line 296
    const/16 v9, 0x1cd

    .line 298
    iget-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    const-string v4, "VR 2D Display"

    iget v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v6, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v7, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "277f1a09-b88d-4d1e-8716-796f114d080b"

    invoke-virtual/range {v2 .. v12}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 303
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_67

    .line 304
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 312
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_74

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VD created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vr2dDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 308
    :cond_67
    :try_start_67
    const-string v1, "Vr2dDisplay"

    const-string v2, "Virtual display id is null after createVirtualDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_74

    throw v1
.end method

.method private startVrModeListener()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_12

    .line 189
    :try_start_4
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVrStateCallbacks:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 192
    goto :goto_12

    .line 190
    :catch_a
    move-exception v0

    .line 191
    const-string v1, "Vr2dDisplay"

    const-string v2, "Could not register VR State listener."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_12
    :goto_12
    return-void
.end method

.method private stopImageReader()V
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_a

    .line 397
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 400
    :cond_a
    return-void
.end method

.method private stopVirtualDisplay()V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 329
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay$3;

    invoke-direct {v0, p0}, Lcom/android/server/vr/Vr2dDisplay$3;-><init>(Lcom/android/server/vr/Vr2dDisplay;)V

    iput-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    .line 350
    :cond_b
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 351
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mStopVDRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    return-void
.end method

.method private updateDisplayId(I)V
    .registers 3

    .line 318
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setVr2dDisplayId(I)V

    .line 319
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setVr2dDisplayId(I)V

    .line 320
    return-void
.end method

.method private updateVirtualDisplay()V
    .registers 3

    .line 138
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->shouldRunVirtualDisplay()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 139
    const-string v0, "Vr2dDisplay"

    const-string v1, "Attempting to start virtual display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVirtualDisplay()V

    goto :goto_14

    .line 145
    :cond_11
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V

    .line 147
    :goto_14
    return-void
.end method


# virtual methods
.method public getVirtualDisplayId()I
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_13

    .line 262
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 266
    monitor-exit v0

    return v1

    .line 268
    :cond_13
    monitor-exit v0

    .line 269
    const/4 v0, -0x1

    return v0

    .line 268
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 3

    .line 118
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startVrModeListener()V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/vr/Vr2dDisplay;->startDebugOnlyBroadcastReceiver(Landroid/content/Context;)V

    .line 120
    iput-boolean p2, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 121
    iget-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    if-eqz p1, :cond_f

    .line 124
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 126
    :cond_f
    return-void
.end method

.method public setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 11

    .line 206
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v1

    .line 213
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    .line 214
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    .line 215
    nop

    .line 217
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v1, v5, :cond_47

    if-lt v2, v5, :cond_47

    if-ge v3, v5, :cond_19

    goto :goto_47

    .line 222
    :cond_19
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting width/height/dpi to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    .line 224
    iput v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    .line 225
    iput v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    .line 226
    move v1, v5

    goto :goto_6e

    .line 219
    :cond_47
    :goto_47
    const-string v6, "Vr2dDisplay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring Width/Height/Dpi values of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 229
    :goto_6e
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_78

    .line 232
    iput-boolean v5, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    goto :goto_81

    .line 233
    :cond_78
    invoke-virtual {p1}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result p1

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_81

    .line 236
    iput-boolean v4, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 239
    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_a1

    if-eqz v1, :cond_a1

    iget-boolean p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    if-eqz p1, :cond_a1

    .line 240
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayWidth:I

    iget v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayHeight:I

    iget v3, p0, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplayDpi:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    .line 242
    iget-object p1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 243
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 244
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->startImageReader()V

    .line 245
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 249
    :cond_a1
    invoke-direct {p0}, Lcom/android/server/vr/Vr2dDisplay;->updateVirtualDisplay()V

    .line 250
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_a6
    move-exception p1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_3 .. :try_end_a8} :catchall_a6

    throw p1
.end method
