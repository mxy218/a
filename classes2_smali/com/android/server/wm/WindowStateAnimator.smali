.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final NO_SURFACE:I = 0x0

.field static final PRESERVED_SURFACE_LAYER:I = 0x1

.field static final READY_TO_SHOW:I = 0x3

.field static final STACK_CLIP_AFTER_ANIM:I = 0x0

.field static final STACK_CLIP_BEFORE_ANIM:I = 0x1

.field static final STACK_CLIP_NONE:I = 0x2

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final WINDOW_FREEZE_LAYER:I = 0x1e8480


# instance fields
.field mAlpha:F

.field mAnimationIsEntrance:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAttrType:I

.field mChildrenDetached:Z

.field final mContext:Landroid/content/Context;

.field private mDestroyPreservedSurfaceUponRedraw:Z

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mEnteringAnimation:Z

.field mExtraHScale:F

.field mExtraVScale:F

.field mForceScaleUntilResize:Z

.field mHaveMatrix:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field mLastClipRect:Landroid/graphics/Rect;

.field private mLastDsDx:F

.field private mLastDsDy:F

.field private mLastDtDx:F

.field private mLastDtDy:F

.field mLastFinalClipRect:Landroid/graphics/Rect;

.field mLastHidden:Z

.field private mOffsetPositionForStackResize:Z

.field private mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

.field mPipAnimationStarted:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

.field mReportSurfaceResized:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceFormat:I

.field mSurfaceResized:Z

.field private final mSystemDecorRect:Landroid/graphics/Rect;

.field private mTmpAnimatingBounds:Landroid/graphics/Rect;

.field mTmpClipRect:Landroid/graphics/Rect;

.field private final mTmpPos:Landroid/graphics/Point;

.field private final mTmpSize:Landroid/graphics/Rect;

.field private mTmpSourceBounds:Landroid/graphics/Rect;

.field mTmpStackBounds:Landroid/graphics/Rect;

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field final mWin:Lcom/android/server/wm/WindowState;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 132
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 133
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    .line 138
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 148
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 149
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 162
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 206
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 207
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 213
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 221
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 223
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 227
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 232
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 234
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    .line 237
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 239
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 240
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 241
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 242
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 244
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 245
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 246
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 247
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 248
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 249
    return-void
.end method

.method private applyCrop(Landroid/graphics/Rect;Z)V
    .registers 4

    .line 817
    if-eqz p1, :cond_15

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_1a

    .line 823
    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    .line 825
    :cond_1a
    :goto_1a
    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .registers 6

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 763
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 766
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 767
    return v2

    .line 770
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 771
    return v2

    .line 777
    :cond_18
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v1, :cond_1d

    .line 778
    return v2

    .line 783
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_26

    .line 784
    return v2

    .line 790
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    .line 797
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 800
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    .line 804
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 809
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    .line 811
    const/4 p1, 0x1

    return p1
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 6

    .line 535
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 536
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 538
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 539
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_28

    .line 544
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 545
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 546
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 547
    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 548
    goto :goto_28

    .line 549
    :cond_25
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->getCompatFrameSize(Landroid/graphics/Rect;)V

    .line 556
    :goto_28
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_31

    .line 557
    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 559
    :cond_31
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge p1, v0, :cond_39

    .line 560
    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 564
    :cond_39
    iget-object p1, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    neg-int v1, v1

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    neg-int p2, p2

    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/graphics/Rect;->inset(IIII)V

    .line 566
    return-void
.end method

.method private getLayerStack()I
    .registers 2

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v0

    return v0
.end method

.method private showSurfaceRobustlyLocked()Z
    .registers 4

    .line 1273
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 1274
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1277
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    .line 1278
    if-nez v0, :cond_1c

    .line 1279
    const/4 v0, 0x0

    return v0

    .line 1283
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_30

    iget-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v2, :cond_30

    .line 1284
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 1285
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowSurfaceController;->reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    .line 1288
    :cond_30
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .registers 12

    .line 1328
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v0, p2, :cond_e

    .line 1331
    return v1

    .line 1334
    :cond_e
    const/16 v0, 0x7db

    if-eqz p2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v0, :cond_2f

    .line 1335
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1336
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1337
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1344
    :cond_2f
    const-wide/16 v2, 0x20

    const-string v4, "WSA#applyAnimationLocked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1345
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 1346
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5, p1}, Lcom/android/server/wm/DisplayPolicy;->selectAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result v4

    .line 1347
    nop

    .line 1348
    nop

    .line 1349
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_60

    .line 1350
    if-eq v4, v6, :cond_89

    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    move-object v5, p1

    goto :goto_89

    .line 1352
    :cond_60
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq p1, v1, :cond_75

    if-eq p1, v8, :cond_73

    if-eq p1, v7, :cond_70

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6e

    move v1, v6

    goto :goto_77

    .line 1363
    :cond_6e
    move v1, v7

    goto :goto_77

    .line 1360
    :cond_70
    nop

    .line 1361
    move v1, v8

    goto :goto_77

    .line 1357
    :cond_73
    nop

    .line 1358
    goto :goto_77

    .line 1354
    :cond_75
    nop

    .line 1355
    move v1, v4

    .line 1366
    :goto_77
    if-ltz v1, :cond_89

    .line 1367
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v5, v1, v4}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v5

    .line 1378
    :cond_89
    :goto_89
    if-eqz v5, :cond_92

    .line 1380
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1381
    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1383
    :cond_92
    goto :goto_98

    .line 1384
    :cond_93
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1387
    :goto_98
    if-nez p2, :cond_ab

    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p1, v0, :cond_ab

    .line 1388
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1391
    :cond_ab
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1392
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result p1

    return p1
.end method

.method applyEnterAnimationLocked()V
    .registers 4

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_7

    .line 1296
    return-void

    .line 1300
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 1301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1302
    move v0, v1

    goto :goto_12

    .line 1304
    :cond_11
    const/4 v0, 0x3

    .line 1309
    :goto_12
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    if-eq v2, v1, :cond_19

    .line 1310
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1313
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_28

    .line 1314
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1316
    :cond_28
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .registers 5

    .line 335
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_a

    .line 336
    return v1

    .line 341
    :cond_a
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 342
    nop

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 344
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_27

    .line 346
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v1

    .line 348
    :cond_27
    return v1
.end method

.method computeShownFrameLocked()V
    .registers 13

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 656
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 657
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 660
    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    .line 661
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_1f

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    .line 664
    :goto_20
    if-eqz v1, :cond_cc

    .line 666
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    .line 667
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 668
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 671
    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 679
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 680
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 681
    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v9, v7, v8

    if-ltz v9, :cond_58

    cmpl-float v9, v4, v8

    if-ltz v9, :cond_58

    .line 682
    const/high16 v9, 0x40000000  # 2.0f

    div-float v10, v9, v7

    add-float/2addr v10, v8

    div-float v11, v9, v4

    add-float/2addr v11, v8

    div-float/2addr v7, v9

    div-float/2addr v4, v9

    invoke-virtual {v6, v10, v11, v7, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_5b

    .line 684
    :cond_58
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 686
    :goto_5b
    goto :goto_5f

    .line 687
    :cond_5c
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 690
    :goto_5f
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v7, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 694
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 704
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 705
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 706
    aget v3, v5, v3

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 707
    const/4 v3, 0x3

    aget v3, v5, v3

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 708
    aget v2, v5, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 709
    const/4 v2, 0x4

    aget v2, v5, v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 716
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 718
    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 719
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 721
    :cond_bc
    if-eqz v1, :cond_cb

    .line 722
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 733
    :cond_cb
    return-void

    .line 734
    :cond_cc
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v0, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v0, :cond_d9

    .line 735
    return-void

    .line 736
    :cond_d9
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 742
    return-void

    .line 749
    :cond_e2
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 750
    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 753
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 755
    return-void
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .registers 21

    .line 427
    move-object/from16 v11, p0

    const-string v12, "WindowManager"

    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 429
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_b

    .line 430
    return-object v1

    .line 432
    :cond_b
    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 434
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 435
    const v1, 0x6bd83

    move v9, v1

    goto :goto_1e

    .line 434
    :cond_1c
    move/from16 v9, p1

    .line 438
    :goto_1e
    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 445
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 447
    const/4 v1, 0x4

    .line 448
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 450
    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 451
    const/16 v1, 0x84

    .line 454
    :cond_36
    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v11, v0, v14, v2}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 455
    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 456
    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 467
    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 472
    const/4 v10, 0x1

    :try_start_4d
    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x1000000

    and-int v2, v2, v16

    if-eqz v2, :cond_57

    move v2, v10

    goto :goto_58

    :cond_57
    move v2, v13

    .line 473
    :goto_58
    if-eqz v2, :cond_5c

    const/4 v2, -0x3

    goto :goto_5e

    :cond_5c
    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_5e
    move v8, v2

    .line 474
    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, v14, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_89

    iget-object v2, v14, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_89

    iget-object v2, v14, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_89

    iget-object v2, v14, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_89

    .line 483
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    if-nez v2, :cond_89

    .line 484
    or-int/lit16 v1, v1, 0x400

    move v7, v1

    goto :goto_8a

    .line 487
    :cond_89
    move v7, v1

    :goto_8a
    new-instance v6, Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 488
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_98
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_4d .. :try_end_98} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_98} :catch_ca

    move-object v1, v6

    move-object v15, v6

    move v6, v8

    move/from16 v17, v8

    move-object/from16 v8, p0

    move/from16 v10, p2

    :try_start_a1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    iput-object v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 490
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v2, v2, v16

    if-eqz v2, :cond_b0

    const/4 v2, 0x1

    goto :goto_b1

    :cond_b0
    move v2, v13

    :goto_b1
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 493
    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 494
    move/from16 v2, v17

    iput v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I
    :try_end_bb
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a1 .. :try_end_bb} :catch_c7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_bb} :catch_ca

    .line 496
    const/4 v1, 0x1

    :try_start_bc
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V
    :try_end_bf
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_bc .. :try_end_bf} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_ca

    .line 516
    nop

    .line 528
    iput-boolean v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 531
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 507
    :catch_c5
    move-exception v0

    goto :goto_d6

    :catch_c7
    move-exception v0

    const/4 v1, 0x1

    goto :goto_d6

    .line 512
    :catch_ca
    move-exception v0

    .line 513
    const-string v1, "Exception creating surface (parent dead?)"

    invoke-static {v12, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    iput v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 515
    const/4 v1, 0x0

    return-object v1

    .line 507
    :catch_d4
    move-exception v0

    move v1, v10

    .line 508
    :goto_d6
    const-string v0, "OutOfResourcesException creating surface"

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v2, "create"

    invoke-virtual {v0, v11, v2, v1}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 510
    iput v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 511
    const/4 v1, 0x0

    return-object v1
.end method

.method destroyDeferredSurfaceLocked()V
    .registers 4

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_14

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 641
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_14

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_15

    .line 649
    :cond_14
    goto :goto_4c

    .line 645
    :catch_15
    move-exception v0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown when destroying Window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_4c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 652
    return-void
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 4

    .line 378
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_5

    .line 379
    return-void

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_32

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_32

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_32

    .line 388
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 389
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 395
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 397
    return-void
.end method

.method destroySurface()V
    .registers 7

    .line 1470
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_b

    .line 1471
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_17
    .catchall {:try_start_2 .. :try_end_b} :catchall_15

    .line 1477
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1478
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1479
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1480
    goto :goto_4b

    .line 1477
    :catchall_15
    move-exception v2

    goto :goto_4c

    .line 1473
    :catch_17
    move-exception v2

    .line 1474
    :try_start_18
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_15

    goto :goto_b

    .line 1481
    :goto_4b
    return-void

    .line 1477
    :goto_4c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1478
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1479
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    throw v2
.end method

.method destroySurfaceLocked()V
    .registers 5

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 574
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 575
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_f

    .line 576
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 580
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_14

    .line 581
    return-void

    .line 588
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_1d

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 595
    :cond_1d
    :try_start_1d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_39

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v0, v2, :cond_3c

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_34

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 603
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_3c

    .line 609
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 613
    :cond_3c
    :goto_3c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_47

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_47} :catch_48

    .line 619
    :cond_47
    goto :goto_7f

    .line 616
    :catch_48
    move-exception v0

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :goto_7f
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_8b

    .line 626
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 628
    :cond_8b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 629
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 630
    return-void
.end method

.method detachChildren()V
    .registers 3

    .line 1499
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 1500
    return-void

    .line 1502
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_11

    .line 1503
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    .line 1505
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 1506
    return-void
.end method

.method drawStateToString()Ljava/lang/String;
    .registers 3

    .line 183
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_15
    const-string v0, "HAS_DRAWN"

    return-object v0

    .line 187
    :cond_18
    const-string v0, "READY_TO_SHOW"

    return-object v0

    .line 186
    :cond_1b
    const-string v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 185
    :cond_1e
    const-string v0, "DRAW_PENDING"

    return-object v0

    .line 184
    :cond_21
    const-string v0, "NO_SURFACE"

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5

    .line 1407
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_11

    .line 1408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1410
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_18

    .line 1411
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1413
    :cond_18
    if-eqz p3, :cond_62

    .line 1414
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mDrawState="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mLastHidden="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1416
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSystemDecorRect="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1417
    const-string p3, " mLastClipRect="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1419
    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5f

    .line 1420
    const-string p3, " mLastFinalClipRect="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1422
    :cond_5f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1425
    :cond_62
    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz p3, :cond_73

    .line 1426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mPendingDestroySurface="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1427
    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1429
    :cond_73
    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez p3, :cond_7b

    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz p3, :cond_92

    .line 1430
    :cond_7b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSurfaceResized="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1431
    const-string p3, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1433
    :cond_92
    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_a6

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_a6

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_c7

    .line 1434
    :cond_a6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mShownAlpha="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    .line 1435
    const-string p3, " mAlpha="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    .line 1436
    const-string p3, " mLastAlpha="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(F)V

    .line 1438
    :cond_c7
    iget-boolean p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez p3, :cond_d3

    iget-object p3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget p3, p3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_10a

    .line 1439
    :cond_d3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mGlobalScale="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget p2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 1440
    const-string p2, " mDsDx="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 1441
    const-string p2, " mDtDx="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 1442
    const-string p2, " mDtDy="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 1443
    const-string p2, " mDsDy="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(F)V

    .line 1445
    :cond_10a
    return-void
.end method

.method finishDrawingLocked()Z
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    .line 312
    const/4 v0, 0x0

    .line 314
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 321
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 322
    move v0, v2

    .line 325
    :cond_11
    return v0
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_c

    .line 1063
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 1065
    :cond_c
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1067
    :goto_15
    return-void
.end method

.method getShown()Z
    .registers 2

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_9

    .line 1463
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    .line 1465
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .registers 2

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 4

    .line 284
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_11

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_11

    .line 294
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 297
    :cond_11
    return-void
.end method

.method hide(Ljava/lang/String;)V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 302
    return-void
.end method

.method isForceScaled()Z
    .registers 2

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isForceScaled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1490
    const/4 v0, 0x1

    return v0

    .line 1492
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v0
.end method

.method markPreservedSurfaceForDestroy()V
    .registers 3

    .line 400
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_19
    return-void
.end method

.method onAnimationFinished()V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 260
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 263
    if-eqz v0, :cond_1e

    .line 264
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 267
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 268
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 269
    const/16 v2, 0x8

    .line 270
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 271
    const/16 v2, 0xc

    .line 273
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_49

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 281
    :cond_49
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .registers 14

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1071
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 1075
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1079
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1081
    :cond_18
    return-void

    .line 1084
    :cond_19
    nop

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1090
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const-string v3, "prepareSurfaceLocked"

    const/4 v4, 0x1

    if-eqz v1, :cond_30

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v1, :cond_30

    .line 1092
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    goto/16 :goto_126

    .line 1093
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_10f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-nez v1, :cond_3e

    goto/16 :goto_10f

    .line 1106
    :cond_3e
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget v1, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget v1, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v1, :cond_7b

    goto :goto_7e

    .line 1171
    :cond_7b
    move p1, v4

    goto/16 :goto_127

    .line 1114
    :cond_7e
    :goto_7e
    nop

    .line 1115
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1116
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1117
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1118
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1119
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1120
    iget v1, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1121
    iget v1, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1130
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v7, v1, v3

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v8, v1, v3

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v9, v1, v3

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v3, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v10, v1, v3

    .line 1131
    move v11, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result p1

    .line 1138
    if-eqz p1, :cond_103

    iget p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_103

    .line 1139
    iget-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz p1, :cond_103

    .line 1140
    invoke-direct {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 1141
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 1142
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 1143
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1144
    iget-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz p1, :cond_ea

    .line 1145
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 1147
    :cond_ea
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result p1

    if-nez p1, :cond_103

    .line 1151
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    goto :goto_103

    .line 1160
    :cond_100
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1164
    :cond_103
    :goto_103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 1165
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, p1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1167
    :cond_10d
    move p1, v4

    goto :goto_127

    .line 1094
    :cond_10f
    :goto_10f
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1095
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 1101
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result p1

    if-eqz p1, :cond_126

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result p1

    if-eqz p1, :cond_126

    .line 1102
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1174
    :cond_126
    :goto_126
    move p1, v2

    :goto_127
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1175
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-nez v1, :cond_140

    .line 1176
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1177
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    goto :goto_143

    .line 1181
    :cond_140
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1186
    :cond_143
    :goto_143
    if-eqz p1, :cond_149

    .line 1187
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, p1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1189
    :cond_149
    return-void
.end method

.method preserveSurfaceLocked()V
    .registers 3

    .line 352
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 361
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 362
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 363
    return-void

    .line 366
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_17

    .line 370
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 372
    :cond_17
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 373
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 375
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .registers 4

    .line 1458
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1459
    return-void
.end method

.method resetDrawState()V
    .registers 3

    .line 411
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 413
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_a

    .line 414
    return-void

    .line 417
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    goto :goto_22

    .line 422
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 424
    :goto_22
    return-void
.end method

.method setColorSpaceAgnosticLocked(Z)V
    .registers 3

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1259
    return-void

    .line 1261
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 1262
    return-void
.end method

.method setOffsetPositionForStackResize(Z)V
    .registers 2

    .line 1509
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    .line 1510
    return-void
.end method

.method setOpaqueLocked(Z)V
    .registers 3

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1245
    return-void

    .line 1247
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    .line 1248
    return-void
.end method

.method setSecureLocked(Z)V
    .registers 3

    .line 1251
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1252
    return-void

    .line 1254
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 1255
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .registers 19

    .line 828
    move-object/from16 v0, p0

    move/from16 v6, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_9

    .line 829
    return-void

    .line 832
    :cond_9
    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 833
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 834
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 836
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v1, v3}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 838
    const/high16 v3, 0x3f800000  # 1.0f

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 839
    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 841
    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 850
    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2d

    iget-boolean v5, v7, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v5, :cond_2b

    goto :goto_2d

    :cond_2b
    move v5, v9

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v5, v8

    .line 851
    :goto_2e
    if-eqz v5, :cond_45

    .line 852
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 853
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 852
    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/wm/WindowSurfaceController;->setBufferSizeInTransaction(IIZ)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto :goto_47

    .line 855
    :cond_45
    iput-boolean v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 857
    :goto_47
    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v10, :cond_51

    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v10, :cond_51

    move v10, v8

    goto :goto_52

    :cond_51
    move v10, v9

    :goto_52
    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 862
    nop

    .line 863
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 864
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    goto :goto_61

    .line 863
    :cond_60
    const/4 v10, 0x0

    .line 867
    :goto_61
    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v12

    int-to-float v12, v12

    .line 868
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v13

    int-to-float v13, v13

    .line 870
    iget-object v14, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 872
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v15

    if-eqz v15, :cond_208

    .line 873
    iget v5, v14, Landroid/graphics/Rect;->left:I

    iget v10, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v10

    .line 874
    iget v10, v14, Landroid/graphics/Rect;->top:I

    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v15

    .line 875
    int-to-float v5, v5

    sub-float v5, v12, v5

    .line 876
    int-to-float v10, v10

    sub-float v10, v13, v10

    .line 877
    iget-boolean v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v15, :cond_90

    .line 878
    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v15, v8}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 881
    :cond_90
    nop

    .line 882
    nop

    .line 883
    iget-object v15, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v11}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 885
    nop

    .line 886
    iget-object v11, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v15}, Lcom/android/server/wm/TaskStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    .line 894
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_d9

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-gtz v11, :cond_bd

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 895
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-lez v11, :cond_d9

    :cond_bd
    iget-object v11, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 896
    invoke-virtual {v11}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v11

    if-nez v11, :cond_d9

    .line 897
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v15, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v15, v15, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 898
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v15, v15, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v11, v15}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 899
    move v11, v8

    goto :goto_da

    .line 904
    :cond_d9
    move v11, v9

    :goto_da
    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 905
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 906
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 908
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1a8

    .line 911
    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 915
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 916
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    .line 917
    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    sub-float v15, v5, v15

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 918
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    div-float/2addr v15, v5

    .line 919
    nop

    .line 920
    sub-float/2addr v2, v8

    mul-float/2addr v2, v15

    add-float/2addr v2, v8

    div-float/2addr v2, v8

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 921
    if-eqz v11, :cond_154

    .line 922
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 923
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 924
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v10, v5

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 925
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v10, v8

    div-float/2addr v5, v10

    .line 926
    sub-float/2addr v2, v3

    mul-float/2addr v2, v15

    add-float/2addr v2, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 928
    goto :goto_159

    .line 929
    :cond_154
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    move v5, v15

    .line 933
    :goto_159
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v15

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x0

    .line 934
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v5

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v3, v8

    float-to-int v3, v3

    rsub-int/lit8 v3, v3, 0x0

    .line 942
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 943
    iget v8, v14, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    mul-float/2addr v8, v15

    float-to-int v8, v8

    iget v10, v14, Landroid/graphics/Rect;->top:I

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v9

    int-to-float v9, v10

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iget v10, v14, Landroid/graphics/Rect;->left:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v2, v12, v2

    mul-float/2addr v15, v2

    sub-float/2addr v12, v15

    float-to-int v2, v12

    add-int/2addr v10, v2

    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float v12, v13, v12

    mul-float/2addr v5, v12

    sub-float/2addr v13, v5

    float-to-int v5, v13

    add-int/2addr v2, v5

    invoke-virtual {v11, v8, v9, v10, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 949
    move-object v10, v11

    goto :goto_1c0

    .line 952
    :cond_1a8
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 953
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 958
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    .line 964
    :goto_1c0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v8, 0x3f800000  # 1.0f

    sub-float v5, v8, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int v2, v16, v2

    .line 965
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v5, v8, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    sub-int/2addr v3, v1

    .line 974
    int-to-float v1, v2

    iget v2, v14, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v5, v8, v5

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 975
    int-to-float v2, v3

    iget v3, v14, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v5, v8, v5

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 977
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v1, v8

    int-to-double v8, v2

    .line 978
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 977
    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 986
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    if-nez v1, :cond_207

    .line 987
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 988
    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 990
    :cond_207
    goto :goto_264

    .line 991
    :cond_208
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 993
    iget-boolean v1, v7, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_264

    .line 995
    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 996
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 997
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    if-eqz v3, :cond_25d

    .line 998
    if-eqz v5, :cond_22d

    .line 1003
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 1004
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1005
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v8

    .line 1004
    invoke-virtual {v3, v5, v8, v9}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    goto :goto_25d

    .line 1007
    :cond_22d
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1008
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1009
    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1010
    if-eqz v1, :cond_23f

    .line 1011
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 1014
    :cond_23f
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    .line 1015
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    .line 1019
    if-eqz v10, :cond_25d

    .line 1020
    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v5

    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 1021
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v5

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 1025
    :cond_25d
    :goto_25d
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1034
    :cond_264
    :goto_264
    if-eqz v4, :cond_27f

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v1, :cond_27f

    .line 1035
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1036
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 1035
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 1037
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1041
    :cond_27f
    iget-boolean v1, v7, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_2ad

    .line 1042
    invoke-direct {v0, v10, v6}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    .line 1043
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v7, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v7, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v5, v7, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v8, v7, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v8

    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v5, v8

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    .line 1049
    :cond_2ad
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v1, :cond_2be

    .line 1050
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 1051
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1054
    :cond_2be
    return-void
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .registers 3

    .line 1192
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_c

    .line 1193
    const-string p1, "WindowManager"

    const-string v0, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return-void

    .line 1196
    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1197
    return-void
.end method

.method setWallpaperOffset(II)Z
    .registers 9

    .line 1200
    const-string v0, "setWallpaperOffset"

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_c

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-ne v1, p2, :cond_c

    .line 1201
    return v2

    .line 1203
    :cond_c
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1204
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1208
    const/4 v1, 0x1

    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1209
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1210
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_21} :catch_29
    .catchall {:try_start_11 .. :try_end_21} :catchall_27

    .line 1215
    :goto_21
    iget-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1218
    return v1

    .line 1215
    :catchall_27
    move-exception p1

    goto :goto_21

    .line 1211
    :catch_29
    move-exception v2

    .line 1212
    :try_start_2a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error positioning surface of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pos=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_2a .. :try_end_57} :catchall_27

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1449
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1450
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1451
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1452
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1453
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1454
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tryChangeFormatInPlaceLocked()Z
    .registers 6

    .line 1230
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1231
    return v1

    .line 1233
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1234
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v1

    .line 1235
    :goto_17
    if-eqz v2, :cond_1b

    const/4 v2, -0x3

    goto :goto_1d

    :cond_1b
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1236
    :goto_1d
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v2, v4, :cond_2c

    .line 1237
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1238
    return v3

    .line 1240
    :cond_2c
    return v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1396
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1397
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1398
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1a

    .line 1399
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1401
    :cond_1a
    const-wide v0, 0x10e00000003L

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1402
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1403
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1404
    return-void
.end method
