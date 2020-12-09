.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 71
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 73
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 74
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 75
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 76
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 77
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 78
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 95
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 110
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$1;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 112
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 191
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 192
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 193
    return-void
.end method

.method private canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 711
    return v1

    .line 714
    :cond_c
    if-nez p1, :cond_f

    .line 718
    return v1

    .line 720
    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method private findWallpaperTarget()V
    .registers 4

    .line 465
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 472
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_2e

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 477
    :cond_2e
    return-void
.end method

.method private getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .registers 5

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_20

    .line 752
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 753
    new-instance v3, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 751
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 763
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4

    .line 480
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p1, v1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method private final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 223
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 224
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 225
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 232
    :goto_13
    if-eqz p1, :cond_27

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v3, :cond_2b

    if-nez v0, :cond_2b

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_27

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 236
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result p1

    if-nez p1, :cond_2b

    :cond_27
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_2c

    :cond_2b
    goto :goto_2d

    :cond_2c
    move v1, v2

    .line 232
    :goto_2d
    return v1
.end method

.method static synthetic lambda$updateWallpaperWindowsTarget$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 528
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 9

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 402
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 403
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 405
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 406
    if-eqz v2, :cond_87

    .line 407
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1a

    .line 408
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_24

    .line 409
    :cond_1a
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_24

    .line 410
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 412
    :cond_24
    :goto_24
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2f

    .line 413
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_39

    .line 414
    :cond_2f
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_39

    .line 415
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 417
    :cond_39
    :goto_39
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_44

    .line 418
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_4c

    .line 419
    :cond_44
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v3, v5, :cond_4c

    .line 420
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 422
    :cond_4c
    :goto_4c
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v3, v5, :cond_55

    .line 423
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_5d

    .line 424
    :cond_55
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v3, v5, :cond_5d

    .line 425
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 427
    :cond_5d
    :goto_5d
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_68

    .line 428
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_72

    .line 429
    :cond_68
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_72

    .line 430
    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 432
    :cond_72
    :goto_72
    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7d

    .line 433
    iget p1, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_87

    .line 434
    :cond_7d
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_87

    .line 435
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 439
    :cond_87
    :goto_87
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8f
    if-ltz p1, :cond_9f

    .line 440
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2, v1, v0, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(IIZ)V

    .line 439
    add-int/lit8 p1, p1, -0x1

    goto :goto_8f

    .line 442
    :cond_9f
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .registers 5

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 563
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 564
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    .line 565
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 562
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 567
    :cond_20
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 8

    .line 487
    iget-object v0, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 489
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_88

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_f

    if-ne v1, v0, :cond_f

    goto/16 :goto_88

    .line 508
    :cond_f
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 511
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 513
    if-eqz v0, :cond_87

    if-nez v1, :cond_1b

    goto/16 :goto_87

    .line 519
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 520
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    .line 524
    if-eqz v3, :cond_86

    if-nez v2, :cond_28

    goto :goto_86

    .line 528
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$WallpaperController$Gy7houdzET4VmpY0QJ2v-NX1b7k;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$WallpaperController$Gy7houdzET4VmpY0QJ2v-NX1b7k;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_36

    .line 529
    return-void

    .line 532
    :cond_36
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_44

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v2, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    move v2, v4

    .line 534
    :goto_45
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_50

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v5, :cond_50

    goto :goto_51

    :cond_50
    move v3, v4

    .line 541
    :goto_51
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 543
    if-eqz v2, :cond_5a

    if-nez v3, :cond_5a

    .line 547
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_82

    .line 548
    :cond_5a
    if-ne v2, v3, :cond_82

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 549
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 550
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 551
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 555
    :cond_80
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 558
    :cond_82
    :goto_82
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 559
    return-void

    .line 525
    :cond_86
    :goto_86
    return-void

    .line 514
    :cond_87
    :goto_87
    return-void

    .line 492
    :cond_88
    :goto_88
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez p1, :cond_8d

    .line 493
    return-void

    .line 497
    :cond_8d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result p1

    if-nez p1, :cond_97

    .line 499
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 500
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 502
    :cond_97
    return-void
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method adjustWallpaperWindows()V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 574
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_18

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    .line 585
    :cond_18
    if-eqz v1, :cond_5d

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2f

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 590
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_43

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 594
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_51

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 597
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, v2, :cond_5d

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 602
    :cond_5d
    invoke-direct {p0, v1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    .line 606
    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 665
    nop

    .line 666
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 667
    goto :goto_40

    .line 669
    :cond_b
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_24

    .line 670
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 671
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 672
    nop

    .line 673
    move p1, v1

    goto :goto_25

    .line 669
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_24
    const/4 p1, 0x0

    .line 676
    :goto_25
    if-nez p1, :cond_3f

    .line 677
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2c
    if-ltz v0, :cond_3f

    .line 678
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 679
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 680
    nop

    .line 681
    goto :goto_40

    .line 677
    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 687
    :cond_3f
    move v1, p1

    :goto_40
    if-eqz v1, :cond_45

    .line 688
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 690
    :cond_45
    return-void
.end method

.method canScreenshotWallpaper()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 703
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method clearLastWallpaperTimeoutTime()V
    .registers 3

    .line 445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 446
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 767
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2f

    .line 770
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 772
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 773
    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 774
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_50

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_67

    .line 776
    :cond_50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    const-string p2, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 778
    const-string p2, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 780
    :cond_67
    return-void
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 260
    :cond_a
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    if-ne v0, p1, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    .line 265
    :cond_a
    return-void

    .line 267
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1e

    .line 268
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 271
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 272
    return-void

    .line 275
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_25

    move p1, v1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    .line 276
    :goto_26
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2d
    if-ltz v0, :cond_3f

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 278
    const-string v2, "hideWallpapers"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->hideWallpaperToken(ZLjava/lang/String;)V

    .line 276
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 283
    :cond_3f
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method isWallpaperTargetAnimating()Z
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 243
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 241
    :goto_1d
    return v0
.end method

.method isWallpaperVisible()Z
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getTopVisibleWallpaper$2$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 754
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 755
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 756
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 757
    const/4 p1, 0x1

    return p1

    .line 759
    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$new$0$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .registers 8

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 114
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_23

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v0, :cond_22

    .line 116
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 117
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v1, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 119
    :cond_22
    return v1

    .line 122
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 123
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 127
    return v1

    .line 132
    :cond_3d
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v0, :cond_50

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 140
    :cond_50
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 142
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTransit()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 143
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTransitFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_74

    move v0, v2

    goto :goto_75

    :cond_74
    move v0, v1

    .line 146
    :goto_75
    nop

    .line 147
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 148
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_ac

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 149
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 152
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_aa

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_a8

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 153
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v3

    if-nez v3, :cond_a8

    goto :goto_aa

    :cond_a8
    move v3, v1

    goto :goto_ad

    :cond_aa
    :goto_aa
    move v3, v2

    goto :goto_ad

    .line 156
    :cond_ac
    move v3, v1

    :goto_ad
    if-nez v0, :cond_b1

    if-eqz v3, :cond_b6

    .line 159
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 162
    :cond_b6
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 164
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_d6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v3

    if-eqz v3, :cond_d6

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 165
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v3

    if-eqz v3, :cond_d6

    move v3, v2

    goto :goto_d7

    :cond_d6
    move v3, v1

    .line 166
    :goto_d7
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-nez v4, :cond_e5

    if-eqz v3, :cond_e3

    goto :goto_e5

    :cond_e3
    move v3, v1

    goto :goto_e6

    :cond_e5
    :goto_e5
    move v3, v2

    .line 168
    :goto_e6
    if-eqz v0, :cond_f0

    .line 169
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_f0

    move v0, v2

    goto :goto_f1

    :cond_f0
    move v0, v1

    .line 170
    :goto_f1
    if-eqz v0, :cond_f9

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 173
    return v2

    .line 174
    :cond_f9
    if-eqz v3, :cond_118

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_10b

    .line 175
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 177
    :cond_10b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_117

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    .line 185
    :cond_117
    return v2

    .line 187
    :cond_118
    return v1
.end method

.method processWallpaperDrawPendingTimeout()Z
    .registers 3

    .line 609
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 610
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 619
    :cond_19
    return v1

    .line 621
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 5

    .line 729
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 730
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 731
    return-object v2

    .line 734
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 735
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 737
    nop

    .line 738
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    const/high16 v3, 0x3f800000  # 1.0f

    .line 737
    invoke-static {v0, v1, v3}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    .line 740
    if-nez v0, :cond_2d

    .line 741
    const-string v0, "WindowManager"

    const-string v1, "Failed to screenshot wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-object v2

    .line 744
    :cond_2d
    nop

    .line 745
    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 744
    invoke-static {v1, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 16

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_29

    .line 386
    :cond_8
    nop

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_11
    if-ltz p1, :cond_28

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 389
    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 387
    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    .line 392
    :cond_28
    nop

    .line 397
    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5

    .line 376
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_8

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_10

    .line 377
    :cond_8
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 378
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 379
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 381
    :cond_10
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7

    .line 366
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_18

    .line 367
    :cond_c
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 368
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 369
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 370
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 371
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 373
    :cond_18
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 217
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 219
    :cond_18
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 14

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 291
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_e

    :cond_d
    move v0, v1

    .line 292
    :goto_e
    iget v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_15

    move v0, v2

    .line 293
    :cond_15
    iget v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v3, v2, v1

    const/high16 v4, -0x40800000  # -1.0f

    if-ltz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v4

    .line 294
    :goto_1f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, p2

    .line 295
    const/high16 p2, 0x3f000000  # 0.5f

    const/4 v5, 0x0

    if-lez v3, :cond_38

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, p2

    float-to-int v3, v3

    neg-int v3, v3

    goto :goto_39

    :cond_38
    move v3, v5

    .line 296
    :goto_39
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_40

    .line 297
    add-int/2addr v3, v6

    .line 299
    :cond_40
    nop

    .line 301
    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v0

    const/4 v8, 0x1

    if-nez v6, :cond_51

    iget v6, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_4f

    goto :goto_51

    :cond_4f
    move v0, v5

    goto :goto_56

    .line 302
    :cond_51
    :goto_51
    iput v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 303
    iput v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 304
    move v0, v8

    .line 307
    :goto_56
    iget v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v6, v2, v1

    if-ltz v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v2, p2

    .line 308
    :goto_5e
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v1, v6, v1

    if-ltz v1, :cond_65

    move v4, v6

    .line 309
    :cond_65
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, p3

    .line 310
    if-lez v1, :cond_7a

    int-to-float p3, v1

    mul-float/2addr p3, v2

    add-float/2addr p3, p2

    float-to-int p2, p3

    neg-int v5, p2

    .line 311
    :cond_7a
    iget p2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq p2, v7, :cond_7f

    .line 312
    add-int/2addr v5, p2

    .line 314
    :cond_7f
    nop

    .line 316
    iget p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float p2, p2, v2

    if-nez p2, :cond_8c

    iget p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_91

    .line 317
    :cond_8c
    iput v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 318
    iput v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 319
    move v0, v8

    .line 322
    :cond_91
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2, v3, v5}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(II)Z

    move-result p2

    .line 324
    if-eqz v0, :cond_f7

    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_f7

    .line 330
    if-eqz p4, :cond_a5

    .line 331
    :try_start_a3
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 333
    :cond_a5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iget v3, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 336
    if-eqz p4, :cond_f5

    .line 337
    iget-object p3, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_f5

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 339
    iget-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_bf} :catch_f6

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-gez v0, :cond_f2

    .line 344
    const-wide/16 v0, 0x96

    :try_start_c8
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_c8 .. :try_end_cf} :catch_d0
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cf} :catch_f6

    .line 346
    goto :goto_d1

    .line 345
    :catch_d0
    move-exception v2

    .line 348
    :goto_d1
    add-long/2addr v0, p3

    :try_start_d2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_f2

    .line 349
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-wide p3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 354
    :cond_f2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_f5
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_f5} :catch_f6

    .line 358
    :cond_f5
    goto :goto_f7

    .line 357
    :catch_f6
    move-exception p1

    .line 361
    :cond_f7
    :goto_f7
    return p2
.end method

.method updateWallpaperVisibility()V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_1e

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 251
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperVisibility(Z)V

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 253
    :cond_1e
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 450
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    .line 451
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 452
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 454
    :cond_16
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 458
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    .line 459
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 460
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 462
    :cond_16
    return-void
.end method

.method wallpaperTransitionReady()Z
    .registers 8

    .line 625
    nop

    .line 626
    nop

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 628
    :goto_a
    const/16 v2, 0x27

    const/4 v3, 0x0

    if-ltz v0, :cond_49

    .line 629
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 630
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 632
    nop

    .line 633
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_25

    .line 635
    move v0, v3

    goto :goto_26

    .line 633
    :cond_25
    move v0, v1

    .line 637
    :goto_26
    iget v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v4, :cond_44

    .line 638
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 639
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 641
    invoke-virtual {v4, v2, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    .line 640
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    :cond_44
    move v1, v3

    goto :goto_4a

    .line 628
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 651
    :cond_49
    move v0, v1

    :goto_4a
    if-eqz v1, :cond_55

    .line 652
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 653
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 656
    :cond_55
    return v0
.end method
