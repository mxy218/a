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
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

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
    .registers 5
    .param p1, "wallpaperWindowState"  # Lcom/android/server/wm/WindowState;

    .line 707
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 708
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 709
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_16
    return v2

    .line 714
    :cond_17
    if-nez p1, :cond_23

    .line 715
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_22

    .line 716
    const-string v0, "No visible wallpaper to screenshot"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_22
    return v2

    .line 720
    :cond_23
    const/4 v0, 0x1

    return v0
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

    .local v0, "curTokenNdx":I
    :goto_b
    if-ltz v0, :cond_20

    .line 752
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 753
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    new-instance v3, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 751
    .end local v2  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 763
    .end local v0  # "curTokenNdx":I
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"  # Landroid/view/WindowManager$LayoutParams;

    .line 480
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "wallpaperTarget"  # Lcom/android/server/wm/WindowState;

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 223
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 224
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 225
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 226
    .local v3, "isAnimatingWithRecentsComponent":Z
    :goto_13
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper vis: target "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", obscured="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    if-eqz p1, :cond_32

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_34

    :cond_32
    const-string v5, "??"

    :goto_34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " animating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    if-eqz p1, :cond_4d

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_4d

    .line 229
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " recentsAnimationWallpaperVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_6c
    if-eqz p1, :cond_80

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v4, :cond_84

    if-nez v3, :cond_84

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_80

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 236
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    if-nez v4, :cond_84

    :cond_80
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_85

    :cond_84
    goto :goto_86

    :cond_85
    move v1, v2

    .line 232
    :goto_86
    return v1
.end method

.method static synthetic lambda$updateWallpaperWindowsTarget$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "prevWallpaperTarget"  # Lcom/android/server/wm/WindowState;
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 528
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .registers 10
    .param p1, "changingTarget"  # Lcom/android/server/wm/WindowState;
    .param p2, "sync"  # Z

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 402
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 403
    .local v1, "dw":I
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 405
    .local v2, "dh":I
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 406
    .local v3, "target":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_87

    .line 407
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1a

    .line 408
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_24

    .line 409
    :cond_1a
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_24

    .line 410
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 412
    :cond_24
    :goto_24
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2f

    .line 413
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_39

    .line 414
    :cond_2f
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_39

    .line 415
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 417
    :cond_39
    :goto_39
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_44

    .line 418
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_4c

    .line 419
    :cond_44
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v4, v6, :cond_4c

    .line 420
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 422
    :cond_4c
    :goto_4c
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v6, :cond_55

    .line 423
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_5d

    .line 424
    :cond_55
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v6, :cond_5d

    .line 425
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 427
    :cond_5d
    :goto_5d
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_68

    .line 428
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_72

    .line 429
    :cond_68
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_72

    .line 430
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 432
    :cond_72
    :goto_72
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7d

    .line 433
    iget v4, v3, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_87

    .line 434
    :cond_7d
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_87

    .line 435
    iget v4, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v4, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 439
    :cond_87
    :goto_87
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "curTokenNdx":I
    :goto_8f
    if-ltz v4, :cond_9f

    .line 440
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v5, v1, v2, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(IIZ)V

    .line 439
    add-int/lit8 v4, v4, -0x1

    goto :goto_8f

    .line 442
    .end local v4  # "curTokenNdx":I
    :cond_9f
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .registers 6
    .param p1, "visible"  # Z

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_8
    if-ltz v0, :cond_20

    .line 563
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 564
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    .line 565
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 562
    .end local v1  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 567
    .end local v0  # "curTokenNdx":I
    :cond_20
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .registers 12
    .param p1, "result"  # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 487
    iget-object v0, p1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 489
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-eq v1, v0, :cond_104

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_11

    if-ne v1, v0, :cond_11

    goto/16 :goto_104

    .line 505
    :cond_11
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New wallpaper target: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prevTarget: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_33
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 511
    .local v1, "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 513
    if-eqz v0, :cond_103

    if-nez v1, :cond_3f

    goto/16 :goto_103

    .line 519
    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 520
    .local v2, "oldAnim":Z
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    .line 521
    .local v4, "foundAnim":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v5, :cond_67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New animation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " old animation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_67
    if-eqz v4, :cond_102

    if-nez v2, :cond_6d

    goto/16 :goto_102

    .line 528
    :cond_6d
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$WallpaperController$Gy7houdzET4VmpY0QJ2v-NX1b7k;

    invoke-direct {v6, v1}, Lcom/android/server/wm/-$$Lambda$WallpaperController$Gy7houdzET4VmpY0QJ2v-NX1b7k;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_7b

    .line 529
    return-void

    .line 532
    :cond_7b
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_89

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v5, :cond_89

    move v5, v6

    goto :goto_8a

    :cond_89
    move v5, v7

    .line 534
    .local v5, "newTargetHidden":Z
    :goto_8a
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_95

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v8, :cond_95

    goto :goto_96

    :cond_95
    move v6, v7

    .line 537
    .local v6, "oldTargetHidden":Z
    :goto_96
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_c4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animating wallpapers: old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hidden="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " new: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_c4
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 543
    if-eqz v5, :cond_d6

    if-nez v6, :cond_d6

    .line 544
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_d3

    const-string v7, "Old wallpaper still the target."

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_d3
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_fe

    .line 548
    :cond_d6
    if-ne v5, v6, :cond_fe

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 549
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 550
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 551
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 555
    :cond_fc
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 558
    :cond_fe
    :goto_fe
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 559
    return-void

    .line 525
    .end local v5  # "newTargetHidden":Z
    .end local v6  # "oldTargetHidden":Z
    :cond_102
    :goto_102
    return-void

    .line 514
    .end local v2  # "oldAnim":Z
    .end local v4  # "foundAnim":Z
    :cond_103
    :goto_103
    return-void

    .line 492
    .end local v1  # "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_104
    :goto_104
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_109

    .line 493
    return-void

    .line 497
    :cond_109
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_11c

    .line 498
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_118

    const-string v1, "No longer animating wallpaper targets!"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_118
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 500
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 502
    :cond_11c
    return-void
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3
    .param p1, "token"  # Lcom/android/server/wm/WallpaperWindowToken;

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method adjustWallpaperWindows()V
    .registers 5

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

    :cond_18
    move v0, v1

    .line 580
    .local v0, "visible":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_41

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper visibility: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " at display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 582
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_41
    if-eqz v0, :cond_86

    .line 586
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_58

    .line 587
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 588
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 590
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_6c

    .line 591
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 592
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 594
    :cond_6c
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_7a

    .line 595
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 597
    :cond_7a
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_86

    .line 598
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 602
    :cond_86
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    .line 604
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New wallpaper: target="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " prev="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_ad
    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 7
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
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "changingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v0, 0x0

    .line 666
    .local v0, "adjust":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 667
    const/4 v0, 0x1

    goto :goto_3f

    .line 669
    :cond_b
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    if-ltz v1, :cond_24

    .line 670
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 671
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 672
    const/4 v0, 0x1

    .line 673
    goto :goto_24

    .line 669
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 676
    .end local v1  # "i":I
    :cond_24
    :goto_24
    if-nez v0, :cond_3f

    .line 677
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_2c
    if-ltz v1, :cond_3f

    .line 678
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 679
    .restart local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 680
    const/4 v0, 0x1

    .line 681
    goto :goto_3f

    .line 677
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    .line 687
    .end local v1  # "i":I
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    .line 688
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 690
    :cond_44
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
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

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
    const-string v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 778
    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

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
    .registers 8
    .param p1, "winGoingAway"  # Lcom/android/server/wm/WindowState;

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

    move v0, v1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 276
    .local v0, "wasDeferred":Z
    :goto_26
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_8a

    .line 277
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 278
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    const-string v3, "hideWallpapers"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/WallpaperWindowToken;->hideWallpaperToken(ZLjava/lang/String;)V

    .line 279
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v3, :cond_87

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->isHidden()Z

    move-result v3

    if-nez v3, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hiding wallpaper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 281
    const-string v5, "  "

    invoke-static {v4, v5}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_87
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 283
    .end local v2  # "i":I
    :cond_8a
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
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
    .registers 5
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 754
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 755
    .local v0, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    .line 756
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 757
    const/4 v1, 0x1

    return v1

    .line 759
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$new$0$WallpaperController(Lcom/android/server/wm/WindowState;)Z
    .registers 14
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 114
    .local v0, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_23

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v1, :cond_22

    .line 116
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 119
    :cond_22
    return v2

    .line 122
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 123
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const-string v4, "WindowManager"

    if-eqz v1, :cond_57

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_57

    .line 126
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping hidden and not animating token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_56
    return v2

    .line 129
    :cond_57
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v5, "Win "

    if-eqz v1, :cond_87

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": isOnScreen="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_87
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_9a

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v1, :cond_9a

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 140
    :cond_9a
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_be

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 141
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-eqz v1, :cond_be

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTransit()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v1

    if-eqz v1, :cond_be

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 143
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTransitFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_be

    move v1, v3

    goto :goto_bf

    :cond_be
    move v1, v2

    .line 146
    .local v1, "keyguardGoingAwayWithWallpaper":Z
    :goto_bf
    const/4 v6, 0x0

    .line 147
    .local v6, "needsShowWhenLockedWallpaper":Z
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_f6

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 148
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_f6

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 149
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 152
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v7

    if-eqz v7, :cond_f4

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_f2

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 153
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v7

    if-nez v7, :cond_f2

    goto :goto_f4

    :cond_f2
    move v7, v2

    goto :goto_f5

    :cond_f4
    :goto_f4
    move v7, v3

    :goto_f5
    move v6, v7

    .line 156
    :cond_f6
    if-nez v1, :cond_fa

    if-eqz v6, :cond_ff

    .line 159
    :cond_fa
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 162
    :cond_ff
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 163
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v7

    .line 164
    .local v7, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_11f

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v8

    if-eqz v8, :cond_11f

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 165
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v8

    if-eqz v8, :cond_11f

    move v8, v3

    goto :goto_120

    :cond_11f
    move v8, v2

    .line 166
    .local v8, "animationWallpaper":Z
    :goto_120
    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x100000

    and-int/2addr v9, v10

    if-nez v9, :cond_12e

    if-eqz v8, :cond_12c

    goto :goto_12e

    :cond_12c
    move v9, v2

    goto :goto_12f

    :cond_12e
    :goto_12e
    move v9, v3

    .line 168
    .local v9, "hasWallpaper":Z
    :goto_12f
    if-eqz v7, :cond_139

    .line 169
    invoke-virtual {v7, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-eqz v10, :cond_139

    move v10, v3

    goto :goto_13a

    :cond_139
    move v10, v2

    .line 170
    .local v10, "isRecentsTransitionTarget":Z
    :goto_13a
    if-eqz v10, :cond_15a

    .line 171
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_154

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found recents animation wallpaper target: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_154
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 173
    return v3

    .line 174
    :cond_15a
    if-eqz v9, :cond_1af

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v11

    if-eqz v11, :cond_1af

    iget-object v11, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v11, p1, :cond_16c

    .line 175
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v11

    if-eqz v11, :cond_1af

    .line 176
    :cond_16c
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_184

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found wallpaper target: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_184
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_1ae

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 181
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_1ae

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": token animating, looking behind."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1ae
    return v3

    .line 187
    :cond_1af
    return v2
.end method

.method processWallpaperDrawPendingTimeout()Z
    .registers 4

    .line 609
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 610
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 611
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_17

    :cond_10
    const-string v0, "WindowManager"

    const-string v2, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 619
    :cond_28
    return v1

    .line 621
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .registers 3
    .param p1, "token"  # Lcom/android/server/wm/WallpaperWindowToken;

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 698
    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .registers 7

    .line 729
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 730
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
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
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 737
    nop

    .line 738
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v3

    const/high16 v4, 0x3f800000  # 1.0f

    .line 737
    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    .line 740
    .local v3, "wallpaperBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-nez v3, :cond_2d

    .line 741
    const-string v4, "WindowManager"

    const-string v5, "Failed to screenshot wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-object v2

    .line 744
    :cond_2d
    nop

    .line 745
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 744
    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 20
    .param p1, "window"  # Lcom/android/server/wm/WindowState;
    .param p2, "action"  # Ljava/lang/String;
    .param p3, "x"  # I
    .param p4, "y"  # I
    .param p5, "z"  # I
    .param p6, "extras"  # Landroid/os/Bundle;
    .param p7, "sync"  # Z

    .line 385
    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v1, v2, :cond_a

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_30

    .line 386
    :cond_a
    move/from16 v2, p7

    .line 387
    .local v2, "doWait":Z
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "curTokenNdx":I
    :goto_14
    if-ltz v3, :cond_2f

    .line 388
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 389
    .local v4, "token":Lcom/android/server/wm/WallpaperWindowToken;
    move-object v5, v4

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 387
    .end local v4  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 392
    .end local v3  # "curTokenNdx":I
    :cond_2f
    nop

    .line 397
    .end local v2  # "doWait":Z
    :cond_30
    const/4 v2, 0x0

    return-object v2
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .registers 5
    .param p1, "window"  # Lcom/android/server/wm/WindowState;
    .param p2, "x"  # I
    .param p3, "y"  # I

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
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 381
    :cond_10
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .registers 7
    .param p1, "window"  # Lcom/android/server/wm/WindowState;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "xStep"  # F
    .param p5, "yStep"  # F

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
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 373
    :cond_18
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "a"  # Landroid/view/animation/Animation;

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 216
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 217
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    .end local v1  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 219
    .end local v0  # "curTokenNdx":I
    :cond_18
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .registers 27
    .param p1, "wallpaperWin"  # Lcom/android/server/wm/WindowState;
    .param p2, "dw"  # I
    .param p3, "dh"  # I
    .param p4, "sync"  # Z

    .line 286
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 287
    .local v0, "xOffset":I
    const/4 v3, 0x0

    .line 288
    .local v3, "yOffset":I
    const/4 v4, 0x0

    .line 291
    .local v4, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_11

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_12

    :cond_11
    move v5, v6

    :goto_12
    move v9, v5

    .line 292
    .local v9, "defaultWallpaperX":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v7, v5, v6

    if-ltz v7, :cond_1a

    goto :goto_1b

    :cond_1a
    move v5, v9

    :goto_1b
    move v10, v5

    .line 293
    .local v10, "wpx":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v7, v5, v6

    const/high16 v8, -0x40800000  # -1.0f

    if-ltz v7, :cond_25

    goto :goto_26

    :cond_25
    move v5, v8

    :goto_26
    move v11, v5

    .line 294
    .local v11, "wpxs":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    sub-int v12, v5, p2

    .line 295
    .local v12, "availw":I
    const/4 v5, 0x0

    const/high16 v7, 0x3f000000  # 0.5f

    if-lez v12, :cond_41

    int-to-float v13, v12

    mul-float/2addr v13, v10

    add-float/2addr v13, v7

    float-to-int v13, v13

    neg-int v13, v13

    goto :goto_42

    :cond_41
    move v13, v5

    .line 296
    .local v13, "offset":I
    :goto_42
    iget v14, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v15, -0x80000000

    if-eq v14, v15, :cond_49

    .line 297
    add-int/2addr v13, v14

    .line 299
    :cond_49
    move v14, v13

    .line 301
    .end local v0  # "xOffset":I
    .local v14, "xOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_56

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_5b

    .line 302
    :cond_56
    iput v10, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 303
    iput v11, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 304
    const/4 v4, 0x1

    .line 307
    :cond_5b
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v16, v0, v6

    if-ltz v16, :cond_62

    goto :goto_63

    :cond_62
    move v0, v7

    :goto_63
    move/from16 v16, v0

    .line 308
    .local v16, "wpy":F
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v8

    :goto_6d
    move v8, v0

    .line 309
    .local v8, "wpys":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v6

    sub-int v6, v0, p3

    .line 310
    .local v6, "availh":I
    if-lez v6, :cond_88

    int-to-float v0, v6

    move/from16 v5, v16

    .end local v16  # "wpy":F
    .local v5, "wpy":F
    mul-float/2addr v0, v5

    add-float/2addr v0, v7

    float-to-int v0, v0

    neg-int v0, v0

    move v7, v5

    goto :goto_8b

    .end local v5  # "wpy":F
    .restart local v16  # "wpy":F
    :cond_88
    move/from16 v7, v16

    .end local v16  # "wpy":F
    .local v7, "wpy":F
    move v0, v5

    .line 311
    .end local v13  # "offset":I
    .local v0, "offset":I
    :goto_8b
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v5, v15, :cond_92

    .line 312
    add-int/2addr v0, v5

    move v13, v0

    goto :goto_93

    .line 311
    :cond_92
    move v13, v0

    .line 314
    .end local v0  # "offset":I
    .restart local v13  # "offset":I
    :goto_93
    move v15, v13

    .line 316
    .end local v3  # "yOffset":I
    .local v15, "yOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_a4

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_a1

    goto :goto_a4

    :cond_a1
    move/from16 v16, v4

    goto :goto_ab

    .line 317
    :cond_a4
    :goto_a4
    iput v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 318
    iput v8, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 319
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 322
    .end local v4  # "rawChanged":Z
    .local v16, "rawChanged":Z
    :goto_ab
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(II)Z

    move-result v17

    .line 324
    .local v17, "changed":Z
    if-eqz v16, :cond_17f

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_17f

    .line 327
    :try_start_bb
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_bd} :catch_175

    const-string v5, "WindowManager"

    if-eqz v0, :cond_e9

    :try_start_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report new wp offset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " x="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_e9
    if-eqz p4, :cond_f9

    .line 331
    iput-object v2, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_ed} :catch_ee

    goto :goto_f9

    .line 357
    :catch_ee
    move-exception v0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v21, v8

    move/from16 v20, v9

    goto/16 :goto_187

    .line 333
    :cond_f9
    :goto_f9
    :try_start_f9
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_ff} :catch_175

    move/from16 v18, v6

    .end local v6  # "availh":I
    .local v18, "availh":I
    :try_start_101
    iget v6, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F
    :try_end_103
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_103} :catch_16d

    move/from16 v19, v7

    .end local v7  # "wpy":F
    .local v19, "wpy":F
    :try_start_105
    iget v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_107} :catch_167

    move/from16 v20, v9

    move-object v9, v5

    .end local v9  # "defaultWallpaperX":F
    .local v20, "defaultWallpaperX":F
    move v5, v0

    move/from16 v21, v8

    .end local v8  # "wpys":F
    .local v21, "wpys":F
    move/from16 v8, p4

    :try_start_10f
    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 336
    if-eqz p4, :cond_164

    .line 337
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_164

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 339
    .local v3, "start":J
    iget-wide v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_11e} :catch_165

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_161

    .line 342
    const-wide/16 v5, 0x96

    :try_start_127
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_130

    const-string v0, "Waiting for offset complete..."

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_130
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_137
    .catch Ljava/lang/InterruptedException; {:try_start_127 .. :try_end_137} :catch_138
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_137} :catch_165

    .line 346
    goto :goto_139

    .line 345
    :catch_138
    move-exception v0

    .line 347
    :goto_139
    :try_start_139
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_142

    const-string v0, "Offset complete!"

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_142
    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_161

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-wide v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 354
    :cond_161
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_164
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_164} :catch_165

    .line 358
    .end local v3  # "start":J
    :cond_164
    goto :goto_187

    .line 357
    :catch_165
    move-exception v0

    goto :goto_187

    .end local v20  # "defaultWallpaperX":F
    .end local v21  # "wpys":F
    .restart local v8  # "wpys":F
    .restart local v9  # "defaultWallpaperX":F
    :catch_167
    move-exception v0

    move/from16 v21, v8

    move/from16 v20, v9

    .end local v8  # "wpys":F
    .end local v9  # "defaultWallpaperX":F
    .restart local v20  # "defaultWallpaperX":F
    .restart local v21  # "wpys":F
    goto :goto_187

    .end local v19  # "wpy":F
    .end local v20  # "defaultWallpaperX":F
    .end local v21  # "wpys":F
    .restart local v7  # "wpy":F
    .restart local v8  # "wpys":F
    .restart local v9  # "defaultWallpaperX":F
    :catch_16d
    move-exception v0

    move/from16 v19, v7

    move/from16 v21, v8

    move/from16 v20, v9

    .end local v7  # "wpy":F
    .end local v8  # "wpys":F
    .end local v9  # "defaultWallpaperX":F
    .restart local v19  # "wpy":F
    .restart local v20  # "defaultWallpaperX":F
    .restart local v21  # "wpys":F
    goto :goto_187

    .end local v18  # "availh":I
    .end local v19  # "wpy":F
    .end local v20  # "defaultWallpaperX":F
    .end local v21  # "wpys":F
    .restart local v6  # "availh":I
    .restart local v7  # "wpy":F
    .restart local v8  # "wpys":F
    .restart local v9  # "defaultWallpaperX":F
    :catch_175
    move-exception v0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v21, v8

    move/from16 v20, v9

    .end local v6  # "availh":I
    .end local v7  # "wpy":F
    .end local v8  # "wpys":F
    .end local v9  # "defaultWallpaperX":F
    .restart local v18  # "availh":I
    .restart local v19  # "wpy":F
    .restart local v20  # "defaultWallpaperX":F
    .restart local v21  # "wpys":F
    goto :goto_187

    .line 324
    .end local v18  # "availh":I
    .end local v19  # "wpy":F
    .end local v20  # "defaultWallpaperX":F
    .end local v21  # "wpys":F
    .restart local v6  # "availh":I
    .restart local v7  # "wpy":F
    .restart local v8  # "wpys":F
    .restart local v9  # "defaultWallpaperX":F
    :cond_17f
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v21, v8

    move/from16 v20, v9

    .line 361
    .end local v6  # "availh":I
    .end local v7  # "wpy":F
    .end local v8  # "wpys":F
    .end local v9  # "defaultWallpaperX":F
    .restart local v18  # "availh":I
    .restart local v19  # "wpy":F
    .restart local v20  # "defaultWallpaperX":F
    .restart local v21  # "wpys":F
    :goto_187
    return v17
.end method

.method updateWallpaperVisibility()V
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 249
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_e
    if-ltz v1, :cond_1e

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 251
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperVisibility(Z)V

    .line 249
    .end local v2  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 253
    .end local v1  # "curTokenNdx":I
    :cond_1e
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "window"  # Landroid/os/IBinder;

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 450
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 454
    :cond_16
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "window"  # Landroid/os/IBinder;

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 458
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_16

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 462
    :cond_16
    return-void
.end method

.method wallpaperTransitionReady()Z
    .registers 10

    .line 625
    const/4 v0, 0x1

    .line 626
    .local v0, "transitionReady":Z
    const/4 v1, 0x1

    .line 627
    .local v1, "wallpaperReady":Z
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 628
    .local v2, "curTokenIndex":I
    :goto_a
    const/16 v4, 0x27

    if-ltz v2, :cond_67

    if-eqz v1, :cond_67

    .line 629
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 630
    .local v5, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 632
    const/4 v1, 0x0

    .line 633
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_25

    .line 635
    const/4 v0, 0x0

    .line 637
    :cond_25
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_43

    .line 638
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 639
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 640
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 641
    invoke-virtual {v6, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    .line 640
    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    :cond_43
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v3, :cond_4b

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_67

    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "WindowManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 628
    .end local v5  # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_64
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 651
    .end local v2  # "curTokenIndex":I
    :cond_67
    :goto_67
    if-eqz v1, :cond_73

    .line 652
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 653
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, p0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 656
    :cond_73
    return v0
.end method
