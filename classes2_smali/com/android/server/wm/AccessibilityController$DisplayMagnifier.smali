.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayMagnifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    }
.end annotation


# static fields
.field private static final DEBUG_LAYERS:Z = false

.field private static final DEBUG_RECTANGLE_REQUESTED:Z = false

.field private static final DEBUG_ROTATION:Z = false

.field private static final DEBUG_VIEWPORT_WINDOW:Z = false

.field private static final DEBUG_WINDOW_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mForceShowMagnifiableBounds:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempRegion2:Landroid/graphics/Region;

.field private final mTempRegion3:Landroid/graphics/Region;

.field private final mTempRegion4:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V
    .registers 6

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 287
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 289
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    .line 290
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    .line 291
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    .line 292
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    .line 311
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    .line 312
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 313
    iput-object p4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 314
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 315
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    .line 316
    new-instance p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    .line 317
    new-instance p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 318
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    .line 320
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/content/Context;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/Display;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/os/Handler;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion4:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion3:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Rect;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/graphics/Region;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion2:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)J
    .registers 3

    .line 276
    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mLongAnimationDuration:J

    return-wide v0
.end method


# virtual methods
.method public destroyLocked()V
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->destroyWindow()V

    .line 471
    return-void
.end method

.method public drawMagnifiedRegionBorderIfNeededLocked()V
    .registers 2

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->drawWindowIfNeededLocked()V

    .line 482
    return-void
.end method

.method public getMagnificationRegionLocked(Landroid/graphics/Region;)V
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 467
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnificationSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    if-nez v1, :cond_16

    .line 456
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result p1

    if-nez p1, :cond_16

    .line 457
    const/4 p1, 0x0

    return-object p1

    .line 460
    :cond_16
    return-object v0
.end method

.method public isForceShowingMagnifiableBoundsLocked()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    return v0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 3

    .line 384
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result p1

    .line 385
    if-eqz p1, :cond_12

    .line 386
    packed-switch p2, :pswitch_data_14

    :pswitch_b  #0x7, 0x9, 0xb
    goto :goto_12

    .line 393
    :pswitch_c  #0x6, 0x8, 0xa, 0xc, 0xd, 0xe
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 397
    :cond_12
    :goto_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_c  #00000006
        :pswitch_b  #00000007
        :pswitch_c  #00000008
        :pswitch_b  #00000009
        :pswitch_c  #0000000a
        :pswitch_b  #0000000b
        :pswitch_c  #0000000c
        :pswitch_c  #0000000d
        :pswitch_c  #0000000e
    .end packed-switch
.end method

.method public onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V
    .registers 4

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 344
    return-void

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 349
    return-void

    .line 351
    :cond_17
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 352
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 353
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 354
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 355
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 356
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 357
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 358
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 374
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->onRotationChangedLocked()V

    .line 375
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method

.method public onWindowLayersChangedLocked()V
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 366
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v0

    .line 406
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 407
    const/4 v2, 0x1

    if-eq p2, v2, :cond_11

    const/4 v2, 0x3

    if-eq p2, v2, :cond_11

    goto :goto_5e

    .line 410
    :cond_11
    if-nez v0, :cond_14

    .line 411
    goto :goto_5e

    .line 413
    :cond_14
    const/4 p2, 0x2

    if-eq v1, p2, :cond_38

    const/4 p2, 0x4

    if-eq v1, p2, :cond_38

    const/16 p2, 0x3ed

    if-eq v1, p2, :cond_38

    const/16 p2, 0x7e4

    if-eq v1, p2, :cond_38

    const/16 p2, 0x7e8

    if-eq v1, p2, :cond_38

    const/16 p2, 0x7f3

    if-eq v1, p2, :cond_38

    const/16 p2, 0x7f6

    if-eq v1, p2, :cond_38

    packed-switch v1, :pswitch_data_60

    packed-switch v1, :pswitch_data_6c

    packed-switch v1, :pswitch_data_76

    goto :goto_5e

    .line 434
    :cond_38
    :pswitch_38  #0x3e8, 0x3e9, 0x3ea, 0x3eb, 0x7d1, 0x7d2, 0x7d3, 0x7d5, 0x7d6, 0x7d7, 0x7d8, 0x7d9, 0x7da
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect2:Landroid/graphics/Rect;

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRect1:Landroid/graphics/Rect;

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 439
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 440
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_5e

    .line 441
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    .line 451
    :cond_5e
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x3e8
        :pswitch_38  #000003e8
        :pswitch_38  #000003e9
        :pswitch_38  #000003ea
        :pswitch_38  #000003eb
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x7d1
        :pswitch_38  #000007d1
        :pswitch_38  #000007d2
        :pswitch_38  #000007d3
    .end packed-switch

    :pswitch_data_76
    .packed-switch 0x7d5
        :pswitch_38  #000007d5
        :pswitch_38  #000007d6
        :pswitch_38  #000007d7
        :pswitch_38  #000007d8
        :pswitch_38  #000007d9
        :pswitch_38  #000007da
    .end packed-switch
.end method

.method public setForceShowMagnifiableBoundsLocked(Z)V
    .registers 4

    .line 331
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mForceShowMagnifiableBounds:Z

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 333
    return-void
.end method

.method public setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->updateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->recomputeBoundsLocked()V

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 327
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 328
    return-void
.end method

.method public showMagnificationBoundsIfNeeded()V
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    return-void
.end method
