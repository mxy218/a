.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_NONE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_REAL:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mFullSnapshotScale:F

.field private final mHandler:Landroid/os/Handler;

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 119
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 120
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 121
    new-instance v0, Lcom/android/server/wm/TaskSnapshotLoader;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 122
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    .line 131
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 27
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 384
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 385
    .local v1, "topChild":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 386
    return-object v2

    .line 388
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 389
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_13

    .line 390
    return-object v2

    .line 393
    :cond_13
    const/4 v4, -0x1

    const/16 v5, 0xff

    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 396
    .local v4, "color":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 397
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v12, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v10

    iget v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;F)V

    .line 400
    .local v6, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 401
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 403
    .local v8, "height":I
    const-string v9, "TaskSnapshotController"

    invoke-static {v9, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v9

    .line 404
    .local v9, "node":Landroid/graphics/RenderNode;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v7, v8}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 405
    invoke-virtual {v9, v10}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 406
    invoke-virtual {v9, v7, v8}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v10

    .line 407
    .local v10, "c":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v10, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 408
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 412
    invoke-virtual {v9, v10}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 413
    invoke-static {v9, v7, v8}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 414
    .local v11, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v11, :cond_73

    .line 415
    return-object v2

    .line 420
    :cond_73
    new-instance v2, Landroid/app/ActivityManager$TaskSnapshot;

    iget-object v13, v1, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 421
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v15

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    .line 422
    invoke-direct {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v18

    move-object/from16 v24, v1

    .end local v1  # "topChild":Lcom/android/server/wm/AppWindowToken;
    .local v24, "topChild":Lcom/android/server/wm/AppWindowToken;
    iget v1, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    const/16 v20, 0x0

    .line 423
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v21

    .line 424
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v16, v12

    move-object v12, v2

    move/from16 v19, v1

    invoke-direct/range {v12 .. v23}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 420
    return-object v2
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/AppWindowToken;
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 238
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_29

    .line 239
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 240
    .local v2, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isSurfaceShowing()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 241
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 242
    goto :goto_26

    .line 244
    :cond_1d
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    .line 250
    .local v3, "hasVisibleChild":Z
    if-eqz v3, :cond_26

    .line 251
    return-object v2

    .line 238
    .end local v2  # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v3  # "hasVisibleChild":Z
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 254
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "state"  # Lcom/android/server/wm/WindowState;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 338
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 339
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 494
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 495
    .local v0, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b

    .line 496
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    .line 497
    :cond_b
    const/4 v1, 0x0

    :goto_c
    nop

    .line 498
    .local v1, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_14

    .line 499
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    return v2

    .line 501
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    return-void

    .line 157
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 162
    return-void
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "ws"  # Lcom/android/server/wm/WindowState;

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "rect1"  # Landroid/graphics/Rect;
    .param p2, "rect2"  # Landroid/graphics/Rect;

    .line 343
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 345
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 346
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 343
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 172
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 4
    .param p1, "token"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"  # F

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 261
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_21

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_21
    return-object v1

    .line 266
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 268
    nop

    .line 270
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 269
    invoke-static {v0, v2, p2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    .line 271
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    goto :goto_44

    .line 272
    :cond_43
    move-object v2, v1

    :goto_44
    nop

    .line 273
    .local v2, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v2, :cond_56

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_56

    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    if-gt v3, v4, :cond_55

    goto :goto_56

    .line 276
    :cond_55
    return-object v0

    .line 274
    :cond_56
    :goto_56
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFullSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 355
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2b

    .line 356
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 357
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 361
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_28

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 362
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v1  # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 365
    .end local v0  # "i":I
    :cond_2b
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7
    .param p1, "taskId"  # I
    .param p2, "userId"  # I
    .param p3, "restoreFromDisk"  # Z
    .param p4, "reducedResolution"  # Z

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-nez p4, :cond_b

    sget-boolean v1, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 369
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 370
    .local v0, "topChild":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_14

    .line 371
    const/4 v1, 0x2

    return v1

    .line 372
    :cond_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 373
    const/4 v1, 0x1

    return v1

    .line 375
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$screenTurningOff$1$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 477
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_b
    return-void
.end method

.method public synthetic lambda$screenTurningOff$2$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5
    .param p1, "listener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2d

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 476
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 481
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 482
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_27

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    .line 484
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 485
    nop

    .line 486
    return-void

    .line 482
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/TaskSnapshotController;
    .end local p1  # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    throw v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .line 484
    .restart local p0  # "this":Lcom/android/server/wm/TaskSnapshotController;
    .restart local p1  # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    :catchall_2d
    move-exception v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 5
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "visible"  # Z

    .line 145
    if-nez p2, :cond_f

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 148
    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4
    .param p1, "taskId"  # I
    .param p2, "userId"  # I

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 444
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 439
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 432
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 138
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 139
    return-void
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .param p2, "runningUserIds"  # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 450
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 451
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4
    .param p1, "listener"  # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 466
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 467
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 468
    return-void

    .line 472
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3
    .param p1, "paused"  # Z

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 460
    return-void
.end method

.method snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 25
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-nez v2, :cond_1b

    .line 281
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_1a

    .line 282
    const-string v2, "Attempted to take screenshot while display was off."

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1a
    return-object v4

    .line 287
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 288
    .local v2, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v2, :cond_3a

    .line 289
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_39

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_39
    return-object v4

    .line 294
    :cond_3a
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 295
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v5, :cond_58

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take screenshot. App is animating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_58
    return-object v4

    .line 301
    :cond_59
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    .line 302
    .local v5, "isLowRamDevice":Z
    if-eqz v5, :cond_66

    .line 303
    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedScale()F

    move-result v6

    goto :goto_68

    .line 304
    :cond_66
    iget v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    :goto_68
    move v15, v6

    .line 306
    .local v15, "scaleFraction":F
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 307
    .local v14, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v14, :cond_84

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to take screenshot. No main window for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v4

    .line 311
    :cond_84
    nop

    .line 312
    invoke-virtual {v0, v1, v15}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v18

    .line 314
    .local v18, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v18, :cond_a4

    .line 315
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v6, :cond_a3

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to take screenshot for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_a3
    return-object v4

    .line 320
    :cond_a4
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_b1

    move v3, v6

    goto :goto_b2

    :cond_b1
    move v3, v7

    .line 321
    .local v3, "isWindowTranslucent":Z
    :goto_b2
    new-instance v4, Landroid/app/ActivityManager$TaskSnapshot;

    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    .line 322
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v9

    .line 323
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    .line 324
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    .line 325
    invoke-direct {v0, v14}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v12

    const/16 v16, 0x1

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v19

    .line 327
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v13

    if-eqz v13, :cond_e2

    if-eqz v3, :cond_df

    goto :goto_e2

    :cond_df
    move/from16 v20, v7

    goto :goto_e4

    :cond_e2
    :goto_e2
    move/from16 v20, v6

    :goto_e4
    move-object v6, v4

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v5

    move v13, v15

    move-object/from16 v21, v14

    .end local v14  # "mainWindow":Lcom/android/server/wm/WindowState;
    .local v21, "mainWindow":Lcom/android/server/wm/WindowState;
    move/from16 v14, v16

    move/from16 v22, v15

    .end local v15  # "scaleFraction":F
    .local v22, "scaleFraction":F
    move/from16 v15, v17

    move/from16 v16, v19

    move/from16 v17, v20

    invoke-direct/range {v6 .. v17}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 321
    return-object v4
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_80

    .line 176
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 178
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isMzWindowMode()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 179
    return-void

    .line 183
    :cond_17
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v3

    .line 185
    .local v3, "mode":I
    if-eqz v3, :cond_2a

    if-eq v3, v1, :cond_25

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    .line 195
    const/4 v4, 0x0

    .local v4, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_2f

    .line 187
    .end local v4  # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_24
    goto :goto_7d

    .line 189
    :cond_25
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 190
    .restart local v4  # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_2f

    .line 192
    .end local v4  # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :cond_2a
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v4

    .line 193
    .restart local v4  # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    nop

    .line 198
    :goto_2f
    if-eqz v4, :cond_7d

    .line 199
    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 200
    .local v5, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-nez v6, :cond_42

    goto :goto_54

    .line 205
    :cond_42
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 206
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v8, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 207
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_7d

    .line 201
    :cond_54
    :goto_54
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v2  # "task":Lcom/android/server/wm/Task;
    .end local v3  # "mode":I
    .end local v4  # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v5  # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 211
    .end local v0  # "i":I
    :cond_80
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 135
    return-void
.end method
