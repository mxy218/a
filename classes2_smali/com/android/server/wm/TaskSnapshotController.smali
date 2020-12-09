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
    .registers 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 119
    new-instance p1, Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 120
    new-instance p1, Lcom/android/server/wm/TaskSnapshotLoader;

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p1, v0}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 121
    new-instance p1, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 122
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.leanback"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 124
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 126
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 128
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10500a3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    .line 130
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 19

    .line 375
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 376
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 377
    return-object v2

    .line 379
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 380
    if-nez v3, :cond_13

    .line 381
    return-object v2

    .line 383
    :cond_13
    nop

    .line 384
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 383
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 385
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 386
    new-instance v12, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v10

    iget v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;F)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 392
    const-string v7, "TaskSnapshotController"

    invoke-static {v7, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v7

    .line 393
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v5, v6}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 394
    invoke-virtual {v7, v8}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 395
    invoke-virtual {v7, v5, v6}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v8

    .line 396
    invoke-virtual {v8, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 397
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v12, v4, v9}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 398
    invoke-virtual {v12, v8, v2}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 399
    invoke-virtual {v7, v8}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 400
    invoke-static {v7, v5, v6}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 401
    if-nez v4, :cond_7e

    .line 402
    return-object v2

    .line 407
    :cond_7e
    new-instance v2, Landroid/app/ActivityManager$TaskSnapshot;

    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    .line 408
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    .line 409
    invoke-direct {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v11

    iget v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    const/4 v13, 0x0

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v14

    .line 411
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v15

    const/16 v16, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 407
    return-object v2
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/AppWindowToken;
    .registers 6

    .line 229
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_29

    .line 230
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 231
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isSurfaceShowing()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 232
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_1d

    .line 233
    goto :goto_26

    .line 235
    :cond_1d
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$b7mc92hqzbRpmpc99dYS4wKuL6Y;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    .line 241
    if-eqz v3, :cond_26

    .line 242
    return-object v2

    .line 229
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 245
    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 4

    .line 328
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStableInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 329
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 330
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .registers 2

    .line 481
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 482
    if-eqz p1, :cond_b

    .line 483
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_c

    .line 484
    :cond_b
    const/4 p1, 0x0

    .line 485
    :goto_c
    if-eqz p1, :cond_13

    .line 486
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result p1

    return p1

    .line 488
    :cond_13
    const/4 p1, 0x0

    return p1
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

    .line 150
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    return-void

    .line 156
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 157
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 158
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 159
    return-void
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 335
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 337
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .registers 2

    .line 322
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

.method private snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 20

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 275
    return-object v3

    .line 278
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 279
    if-nez v2, :cond_17

    .line 283
    return-object v3

    .line 285
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 289
    return-object v3

    .line 292
    :cond_1e
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v11

    .line 293
    if-eqz v11, :cond_2c

    .line 294
    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedScale()F

    move-result v4

    move v12, v4

    goto :goto_2f

    .line 295
    :cond_2c
    iget v4, v0, Lcom/android/server/wm/TaskSnapshotController;->mFullSnapshotScale:F

    move v12, v4

    .line 297
    :goto_2f
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 298
    if-nez v4, :cond_4c

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No main window for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v3

    .line 302
    :cond_4c
    nop

    .line 303
    invoke-virtual {v0, v1, v12}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v5

    .line 305
    if-nez v5, :cond_54

    .line 309
    return-object v3

    .line 311
    :cond_54
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v3, v6, :cond_61

    move v3, v7

    goto :goto_62

    :cond_61
    move v3, v8

    .line 312
    :goto_62
    new-instance v17, Landroid/app/ActivityManager$TaskSnapshot;

    iget-object v6, v2, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    .line 313
    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v9

    .line 314
    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v10

    .line 315
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v13, v5, Landroid/content/res/Configuration;->orientation:I

    .line 316
    invoke-direct {v0, v4}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v4

    const/4 v14, 0x1

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 318
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_91

    if-eqz v3, :cond_8e

    goto :goto_91

    :cond_8e
    move/from16 v16, v8

    goto :goto_93

    :cond_91
    :goto_91
    move/from16 v16, v7

    :goto_93
    move-object/from16 v5, v17

    move-object v7, v9

    move-object v8, v10

    move v9, v13

    move-object v10, v4

    move v13, v14

    move v14, v15

    move v15, v0

    invoke-direct/range {v5 .. v16}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 312
    return-object v17
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

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 169
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object p1

    return-object p1
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 6

    .line 251
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 255
    return-object v1

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 259
    nop

    .line 261
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 260
    invoke-static {p1, v0, p2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    .line 262
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p2

    goto :goto_2a

    .line 263
    :cond_29
    move-object p2, v1

    .line 264
    :goto_2a
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3b

    invoke-virtual {p2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p2

    if-gt p2, v2, :cond_3a

    goto :goto_3b

    .line 267
    :cond_3a
    return-object p1

    .line 265
    :cond_3b
    :goto_3b
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 492
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

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6
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

    .line 345
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 346
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2b

    .line 347
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 348
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 353
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 356
    :cond_2b
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-nez p4, :cond_b

    sget-boolean p4, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz p4, :cond_9

    goto :goto_b

    :cond_9
    const/4 p4, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p4, 0x1

    :goto_c
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    return-object p1
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 361
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result p1

    if-nez p1, :cond_14

    .line 362
    const/4 p1, 0x2

    return p1

    .line 363
    :cond_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->shouldUseAppThemeSnapshot()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 364
    const/4 p1, 0x1

    return p1

    .line 366
    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$screenTurningOff$1$TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .registers 3

    .line 464
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_b
    return-void
.end method

.method public synthetic lambda$screenTurningOff$2$TaskSnapshotController(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2d

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 462
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 463
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 468
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 469
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_27

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    .line 471
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 472
    nop

    .line 473
    return-void

    .line 469
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .line 471
    :catchall_2d
    move-exception v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 4

    .line 144
    if-nez p2, :cond_f

    .line 145
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/server/wm/AppWindowToken;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 147
    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 431
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 426
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 419
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 137
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 138
    return-void
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 438
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4

    .line 453
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 454
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 455
    return-void

    .line 459
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3

    .line 446
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 447
    return-void
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_77

    .line 173
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v3

    .line 176
    if-eqz v3, :cond_21

    if-eq v3, v1, :cond_1c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1b

    .line 186
    const/4 v3, 0x0

    goto :goto_26

    .line 178
    :cond_1b
    goto :goto_74

    .line 180
    :cond_1c
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 181
    goto :goto_26

    .line 183
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 184
    nop

    .line 189
    :goto_26
    if-eqz v3, :cond_74

    .line 190
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-nez v5, :cond_39

    goto :goto_4b

    .line 196
    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 197
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v5, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v6, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 198
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    goto :goto_74

    .line 192
    :cond_4b
    :goto_4b
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid task snapshot dimensions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_74
    :goto_74
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 202
    :cond_77
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 134
    return-void
.end method
