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
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 133
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 134
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    .line 138
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    .line 140
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 149
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 150
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 163
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 207
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 208
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 214
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 222
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 224
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 228
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 233
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 235
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    .line 238
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 240
    .local v0, "service":Lcom/android/server/wm/WindowManagerService;
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 241
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 242
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 243
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    .line 245
    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 246
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    .line 247
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 248
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    .line 249
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 250
    return-void
.end method

.method private applyCrop(Landroid/graphics/Rect;Z)V
    .registers 5
    .param p1, "clipRect"  # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"  # Z

    .line 836
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyCrop: win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clipRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_24
    if-eqz p1, :cond_39

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->setCropInTransaction(Landroid/graphics/Rect;Z)V

    goto :goto_3e

    .line 844
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowSurfaceController;->clearCropInTransaction(Z)V

    .line 846
    :cond_3e
    :goto_3e
    return-void
.end method

.method private calculateCrop(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "clipRect"  # Landroid/graphics/Rect;

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 784
    .local v0, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 785
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 787
    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 788
    return v2

    .line 791
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 792
    return v2

    .line 798
    :cond_18
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v3, :cond_1d

    .line 799
    return v2

    .line 804
    :cond_1d
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_26

    .line 805
    return v2

    .line 808
    :cond_26
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating crop win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mLastCrop="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_4a
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->calculatePolicyCrop(Landroid/graphics/Rect;)V

    .line 813
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying decor to crop win="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDecorFrame="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDecorFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mSystemDecorRect="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_7d
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    const-string v4, "win="

    if-eqz v2, :cond_a2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Initial clip rect: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_a2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->expandForSurfaceInsets(Landroid/graphics/Rect;)V

    .line 825
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 827
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    if-eqz v2, :cond_d2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Clip rect after stack adjustment="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_d2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V

    .line 832
    const/4 v2, 0x1

    return v2
.end method

.method private calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "w"  # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p3, "outSize"  # Landroid/graphics/Rect;

    .line 546
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 548
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_2a

    .line 549
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 550
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_2a

    .line 551
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 552
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 553
    return-void

    .line 557
    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2a
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_39

    .line 559
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 560
    iget v0, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_4f

    .line 565
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 566
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 567
    .restart local v0  # "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 568
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 569
    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_4f

    .line 570
    :cond_4c
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowState;->getCompatFrameSize(Landroid/graphics/Rect;)V

    .line 577
    :goto_4f
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_58

    .line 578
    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 580
    :cond_58
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v0, v1, :cond_60

    .line 581
    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 585
    :cond_60
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 587
    return-void
.end method

.method private getLayerStack()I
    .registers 2

    .line 408
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
    .registers 5

    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->windowsAreScaleable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 1295
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1298
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    move-result v0

    .line 1299
    .local v0, "shown":Z
    if-nez v0, :cond_1c

    .line 1300
    const/4 v1, 0x0

    return v1

    .line 1304
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_30

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v3, :cond_30

    .line 1305
    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->hide()V

    .line 1306
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V

    .line 1309
    :cond_30
    return v1
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .registers 18
    .param p1, "transit"  # I
    .param p2, "isEntrance"  # Z

    .line 1349
    move-object v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v1, v8, :cond_13

    .line 1352
    return v2

    .line 1355
    :cond_13
    const/16 v9, 0x7db

    if-eqz v8, :cond_34

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v9, :cond_34

    .line 1356
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1357
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1358
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1365
    :cond_34
    const-wide/16 v10, 0x20

    const-string v1, "WSA#applyAnimationLocked"

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1366
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 1367
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3, v7}, Lcom/android/server/wm/DisplayPolicy;->selectAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result v12

    .line 1368
    .local v12, "anim":I
    const/4 v1, -0x1

    .line 1369
    .local v1, "attr":I
    const/4 v3, 0x0

    .line 1370
    .local v3, "a":Landroid/view/animation/Animation;
    const/4 v4, 0x3

    if-eqz v12, :cond_68

    .line 1371
    const/4 v2, -0x1

    if-eq v12, v2, :cond_64

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_65

    :cond_64
    const/4 v2, 0x0

    :goto_65
    move v13, v1

    move-object v14, v2

    .end local v3  # "a":Landroid/view/animation/Animation;
    .local v2, "a":Landroid/view/animation/Animation;
    goto :goto_93

    .line 1373
    .end local v2  # "a":Landroid/view/animation/Animation;
    .restart local v3  # "a":Landroid/view/animation/Animation;
    :cond_68
    if-eq v7, v2, :cond_79

    const/4 v2, 0x2

    if-eq v7, v2, :cond_77

    if-eq v7, v4, :cond_75

    const/4 v2, 0x4

    if-eq v7, v2, :cond_73

    goto :goto_7b

    .line 1384
    :cond_73
    const/4 v1, 0x3

    goto :goto_7b

    .line 1381
    :cond_75
    const/4 v1, 0x2

    .line 1382
    goto :goto_7b

    .line 1378
    :cond_77
    const/4 v1, 0x1

    .line 1379
    goto :goto_7b

    .line 1375
    :cond_79
    const/4 v1, 0x0

    .line 1376
    nop

    .line 1387
    :goto_7b
    if-ltz v1, :cond_91

    .line 1388
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v1, v6}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    move v13, v1

    move-object v14, v2

    .end local v3  # "a":Landroid/view/animation/Animation;
    .restart local v2  # "a":Landroid/view/animation/Animation;
    goto :goto_93

    .line 1387
    .end local v2  # "a":Landroid/view/animation/Animation;
    .restart local v3  # "a":Landroid/view/animation/Animation;
    :cond_91
    move v13, v1

    move-object v14, v3

    .line 1392
    .end local v1  # "attr":I
    .end local v3  # "a":Landroid/view/animation/Animation;
    .local v13, "attr":I
    .local v14, "a":Landroid/view/animation/Animation;
    :goto_93
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: win="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " anim="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attr=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_ef
    if-eqz v14, :cond_128

    .line 1400
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_111

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded animation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_111
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object v3, v14

    move/from16 v4, p1

    move/from16 v5, p2

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/FlymeWindowManagerInternal;->applyAnimation(Lcom/android/server/wm/WindowState;Landroid/view/animation/Animation;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1402
    .end local v14  # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1403
    iput-boolean v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1405
    .end local v1  # "a":Landroid/view/animation/Animation;
    .end local v12  # "anim":I
    .end local v13  # "attr":I
    :cond_128
    goto :goto_12e

    .line 1406
    :cond_129
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 1409
    :goto_12e
    if-nez v8, :cond_141

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v9, :cond_141

    .line 1410
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 1413
    :cond_141
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1414
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    return v1
.end method

.method applyEnterAnimationLocked()V
    .registers 4

    .line 1316
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    if-eqz v0, :cond_7

    .line 1317
    return-void

    .line 1321
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v0, :cond_10

    .line 1322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1323
    const/4 v0, 0x1

    .local v0, "transit":I
    goto :goto_11

    .line 1325
    .end local v0  # "transit":I
    :cond_10
    const/4 v0, 0x3

    .line 1330
    .restart local v0  # "transit":I
    :goto_11
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_19

    .line 1331
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1334
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_28

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1337
    :cond_28
    return-void
.end method

.method commitFinishDrawingLocked()Z
    .registers 5

    .line 331
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v1, "WindowManager"

    const/4 v2, 0x3

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v2, :cond_31

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cur mDrawState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_31
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3a

    if-eq v0, v2, :cond_3a

    .line 337
    const/4 v0, 0x0

    return v0

    .line 339
    :cond_3a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_54

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commitFinishDrawingLocked: mDrawState=READY_TO_SHOW "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_54
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 345
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v3

    if-nez v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v2, :cond_71

    .line 347
    :cond_6b
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v0

    .line 349
    :cond_71
    return v0
.end method

.method computeShownFrameLocked()V
    .registers 18

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 677
    .local v1, "displayId":I
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 678
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    .line 679
    .local v2, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 681
    .local v3, "windowParticipatesInScreenRotationAnimation":Z
    if-eqz v2, :cond_20

    .line 682
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_20

    if-eqz v3, :cond_20

    move v6, v4

    goto :goto_21

    :cond_20
    const/4 v6, 0x0

    .line 685
    .local v6, "screenAnimation":Z
    :goto_21
    const-string v7, "WindowManager"

    if-eqz v6, :cond_122

    .line 687
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    .line 688
    .local v8, "frame":Landroid/graphics/Rect;
    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 689
    .local v9, "tmpFloats":[F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 692
    .local v10, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 700
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 701
    .local v11, "w":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    .line 702
    .local v12, "h":F
    const/high16 v13, 0x3f800000  # 1.0f

    cmpl-float v14, v11, v13

    if-ltz v14, :cond_5e

    cmpl-float v14, v12, v13

    if-ltz v14, :cond_5e

    .line 703
    const/high16 v14, 0x40000000  # 2.0f

    div-float v15, v14, v11

    add-float/2addr v15, v13

    div-float v16, v14, v12

    add-float v13, v16, v13

    div-float v5, v11, v14

    div-float v14, v12, v14

    invoke-virtual {v10, v15, v13, v5, v14}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_61

    .line 705
    :cond_5e
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 707
    .end local v11  # "w":F
    .end local v12  # "h":F
    :goto_61
    goto :goto_65

    .line 708
    :cond_62
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 711
    :goto_65
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v11, v11, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 715
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v11, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 725
    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 726
    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 727
    const/4 v5, 0x0

    aget v5, v9, v5

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 728
    const/4 v5, 0x3

    aget v5, v9, v5

    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 729
    aget v4, v9, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 730
    const/4 v4, 0x4

    aget v4, v9, v4

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 737
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 738
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    if-eqz v4, :cond_c3

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 739
    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_c3

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 740
    invoke-virtual {v4, v5, v11, v12, v13}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 742
    :cond_c3
    if-eqz v6, :cond_d2

    .line 743
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 749
    :cond_d2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v4, :cond_da

    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v4, :cond_121

    :cond_da
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    float-to-double v11, v4

    const-wide/high16 v13, 0x3ff0000000000000L  # 1.0

    cmpl-double v5, v11, v13

    if-eqz v5, :cond_ea

    float-to-double v4, v4

    const-wide/16 v11, 0x0

    cmpl-double v4, v4, v11

    if-nez v4, :cond_121

    .line 750
    :cond_ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeShownFrameLocked: Animating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " screen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    if-eqz v6, :cond_115

    .line 753
    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_117

    :cond_115
    const-string v5, "null"

    :goto_117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_121
    return-void

    .line 755
    .end local v8  # "frame":Landroid/graphics/Rect;
    .end local v9  # "tmpFloats":[F
    .end local v10  # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_122
    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v4, :cond_12f

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-boolean v4, v4, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    if-eqz v4, :cond_12f

    .line 756
    return-void

    .line 757
    :cond_12f
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v4

    if-eqz v4, :cond_138

    .line 763
    return-void

    .line 766
    :cond_138
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v4, :cond_15a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeShownFrameLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not attached, mAlpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_15a
    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 771
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    .line 772
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    .line 773
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    .line 774
    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    .line 775
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    .line 776
    return-void
.end method

.method createSurfaceLocked(II)Lcom/android/server/wm/WindowSurfaceController;
    .registers 26
    .param p1, "windowType"  # I
    .param p2, "ownerUid"  # I

    .line 428
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 430
    .local v12, "w":Lcom/android/server/wm/WindowState;
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_9

    .line 431
    return-object v0

    .line 433
    :cond_9
    const/4 v13, 0x0

    iput-boolean v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 435
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1c

    .line 436
    const v0, 0x6bd83

    move v14, v0

    .end local p1  # "windowType":I
    .local v0, "windowType":I
    goto :goto_1e

    .line 435
    .end local v0  # "windowType":I
    .restart local p1  # "windowType":I
    :cond_1c
    move/from16 v14, p1

    .line 439
    .end local p1  # "windowType":I
    .local v14, "windowType":I
    :goto_1e
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 441
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v15, "WindowManager"

    if-nez v0, :cond_2b

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_44

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSurface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": mDrawState=DRAW_PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 446
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 448
    const/4 v0, 0x4

    .line 449
    .local v0, "flags":I
    iget-object v10, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 451
    .local v10, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 452
    or-int/lit16 v0, v0, 0x80

    .line 456
    :cond_59
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerService;->isSkipInScreenshotAndScreenrecord(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 457
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    .line 460
    :cond_64
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/WindowManagerService;->isSkipDeviceColorMatrix(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 461
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_72

    .line 460
    :cond_71
    move v1, v0

    .line 465
    .end local v0  # "flags":I
    .local v1, "flags":I
    :goto_72
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v11, v12, v10, v0}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 466
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 467
    .local v9, "width":I
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 469
    .local v8, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v7, " format="

    if-eqz v0, :cond_e1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating surface in session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_e1
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 483
    const/16 v16, 0x0

    const/4 v6, 0x1

    :try_start_e9
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v17, 0x1000000

    and-int v0, v0, v17

    if-eqz v0, :cond_f3

    move v0, v6

    goto :goto_f4

    :cond_f3
    move v0, v13

    .line 484
    .local v0, "isHwAccelerated":Z
    :goto_f4
    if-eqz v0, :cond_f8

    const/4 v2, -0x3

    goto :goto_fa

    :cond_f8
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_fa
    move v5, v2

    .line 485
    .local v5, "format":I
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v2
    :try_end_101
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e9 .. :try_end_101} :catch_2c1
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_101} :catch_2b1

    if-nez v2, :cond_138

    :try_start_103
    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_138

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_138

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_138

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_138

    .line 494
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2
    :try_end_11f
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_103 .. :try_end_11f} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_11f} :catch_126

    if-nez v2, :cond_138

    .line 495
    or-int/lit16 v1, v1, 0x400

    move/from16 v18, v1

    goto :goto_13a

    .line 523
    .end local v0  # "isHwAccelerated":Z
    .end local v5  # "format":I
    :catch_126
    move-exception v0

    move/from16 v18, v1

    move v4, v8

    move v2, v9

    move-object v3, v15

    move-object v15, v10

    goto/16 :goto_2b8

    .line 518
    :catch_12f
    move-exception v0

    move/from16 v18, v1

    move v4, v8

    move v2, v9

    move-object v3, v15

    move-object v15, v10

    goto/16 :goto_2c8

    .line 498
    .restart local v0  # "isHwAccelerated":Z
    .restart local v5  # "format":I
    :cond_138
    move/from16 v18, v1

    .end local v1  # "flags":I
    .local v18, "flags":I
    :goto_13a
    :try_start_13a
    new-instance v4, Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 499
    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_148
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_13a .. :try_end_148} :catch_2ab
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_148} :catch_2a5

    move-object v1, v4

    move-object v13, v4

    move v4, v9

    move/from16 p1, v5

    .end local v5  # "format":I
    .local p1, "format":I
    move v5, v8

    move-object/from16 v19, v15

    move v15, v6

    move/from16 v6, p1

    move-object/from16 v20, v7

    move/from16 v7, v18

    move/from16 v21, v8

    .end local v8  # "height":I
    .local v21, "height":I
    move-object/from16 v8, p0

    move/from16 v22, v9

    .end local v9  # "width":I
    .local v22, "width":I
    move v9, v14

    move-object v15, v10

    .end local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v15, "attrs":Landroid/view/WindowManager$LayoutParams;
    move/from16 v10, p2

    :try_start_161
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/WindowSurfaceController;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V

    iput-object v13, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 501
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v2, v2, v17

    if-eqz v2, :cond_170

    const/4 v2, 0x1

    goto :goto_171

    :cond_170
    const/4 v2, 0x0

    :goto_171
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 505
    move/from16 v1, p1

    .end local p1  # "format":I
    .local v1, "format":I
    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    .line 507
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 509
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z
    :try_end_182
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_161 .. :try_end_182} :catch_29d
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_182} :catch_295

    if-nez v2, :cond_19e

    :try_start_184
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z
    :try_end_186
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_184 .. :try_end_186} :catch_195
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_186} :catch_18c

    if-eqz v2, :cond_189

    goto :goto_19e

    :cond_189
    move-object/from16 v3, v19

    goto :goto_1ec

    .line 523
    .end local v0  # "isHwAccelerated":Z
    .end local v1  # "format":I
    :catch_18c
    move-exception v0

    move-object/from16 v3, v19

    move/from16 v4, v21

    move/from16 v2, v22

    goto/16 :goto_2b8

    .line 518
    :catch_195
    move-exception v0

    move-object/from16 v3, v19

    move/from16 v4, v21

    move/from16 v2, v22

    goto/16 :goto_2c8

    .line 510
    .restart local v0  # "isHwAccelerated":Z
    .restart local v1  # "format":I
    :cond_19e
    :goto_19e
    :try_start_19e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  CREATE SURFACE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IN SESSION "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1e7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19e .. :try_end_1e7} :catch_29d
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1e7} :catch_295

    .line 510
    move-object/from16 v3, v19

    :try_start_1e9
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1e9 .. :try_end_1ec} :catch_293
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1ec} :catch_291

    .line 527
    .end local v0  # "isHwAccelerated":Z
    .end local v1  # "format":I
    :goto_1ec
    nop

    .line 529
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_223

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", set left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_223
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_26f

    .line 533
    const-string v0, ">>> OPEN TRANSACTION createSurfaceLocked"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE pos=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v22

    .end local v22  # "width":I
    .local v2, "width":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v21

    .end local v21  # "height":I
    .local v4, "height":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    goto :goto_273

    .line 532
    .end local v2  # "width":I
    .end local v4  # "height":I
    .restart local v21  # "height":I
    .restart local v22  # "width":I
    :cond_26f
    move/from16 v4, v21

    move/from16 v2, v22

    .line 539
    .end local v21  # "height":I
    .end local v22  # "width":I
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    :goto_273
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 541
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_28e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_28e
    iget-object v0, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    return-object v0

    .line 523
    .end local v2  # "width":I
    .end local v4  # "height":I
    .restart local v21  # "height":I
    .restart local v22  # "width":I
    :catch_291
    move-exception v0

    goto :goto_298

    .line 518
    :catch_293
    move-exception v0

    goto :goto_2a0

    .line 523
    :catch_295
    move-exception v0

    move-object/from16 v3, v19

    :goto_298
    move/from16 v4, v21

    move/from16 v2, v22

    .end local v21  # "height":I
    .end local v22  # "width":I
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    goto :goto_2b8

    .line 518
    .end local v2  # "width":I
    .end local v4  # "height":I
    .restart local v21  # "height":I
    .restart local v22  # "width":I
    :catch_29d
    move-exception v0

    move-object/from16 v3, v19

    :goto_2a0
    move/from16 v4, v21

    move/from16 v2, v22

    .end local v21  # "height":I
    .end local v22  # "width":I
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    goto :goto_2c8

    .line 523
    .end local v2  # "width":I
    .end local v4  # "height":I
    .end local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v8  # "height":I
    .restart local v9  # "width":I
    .restart local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2a5
    move-exception v0

    move v4, v8

    move v2, v9

    move-object v3, v15

    move-object v15, v10

    .end local v8  # "height":I
    .end local v9  # "width":I
    .end local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    .restart local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_2b8

    .line 518
    .end local v2  # "width":I
    .end local v4  # "height":I
    .end local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v8  # "height":I
    .restart local v9  # "width":I
    .restart local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2ab
    move-exception v0

    move v4, v8

    move v2, v9

    move-object v3, v15

    move-object v15, v10

    .end local v8  # "height":I
    .end local v9  # "width":I
    .end local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    .restart local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_2c8

    .line 523
    .end local v2  # "width":I
    .end local v4  # "height":I
    .end local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v18  # "flags":I
    .local v1, "flags":I
    .restart local v8  # "height":I
    .restart local v9  # "width":I
    .restart local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2b1
    move-exception v0

    move v4, v8

    move v2, v9

    move-object v3, v15

    move-object v15, v10

    move/from16 v18, v1

    .line 524
    .end local v1  # "flags":I
    .end local v8  # "height":I
    .end local v9  # "width":I
    .end local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    .restart local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v18  # "flags":I
    :goto_2b8
    const-string v1, "Exception creating surface (parent dead?)"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 526
    return-object v16

    .line 518
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v2  # "width":I
    .end local v4  # "height":I
    .end local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v18  # "flags":I
    .restart local v1  # "flags":I
    .restart local v8  # "height":I
    .restart local v9  # "width":I
    .restart local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catch_2c1
    move-exception v0

    move v4, v8

    move v2, v9

    move-object v3, v15

    move-object v15, v10

    move/from16 v18, v1

    .line 519
    .end local v1  # "flags":I
    .end local v8  # "height":I
    .end local v9  # "width":I
    .end local v10  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v2  # "width":I
    .restart local v4  # "height":I
    .restart local v15  # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v18  # "flags":I
    :goto_2c8
    const-string v1, "OutOfResourcesException creating surface"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string v3, "create"

    const/4 v5, 0x1

    invoke-virtual {v1, v11, v3, v5}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 521
    const/4 v1, 0x0

    iput v1, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 522
    return-object v16
.end method

.method destroyDeferredSurfaceLocked()V
    .registers 4

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_24

    .line 656
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_14

    .line 657
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v1, "DESTROY PENDING"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 659
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 662
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_24

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_24} :catch_25

    .line 670
    :cond_24
    goto :goto_5c

    .line 666
    :catch_25
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/RuntimeException;
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

    .line 669
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_5c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    .line 673
    return-void
.end method

.method destroyPreservedSurfaceLocked()V
    .registers 4

    .line 379
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v0, :cond_5

    .line 380
    return-void

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_32

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_32

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_32

    .line 389
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mReparentTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 390
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparentChildren(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 396
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 398
    return-void
.end method

.method destroySurface()V
    .registers 7

    .line 1492
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_b

    .line 1493
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_18
    .catchall {:try_start_2 .. :try_end_b} :catchall_16

    .line 1499
    :cond_b
    nop

    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1500
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1501
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1502
    goto :goto_4d

    .line 1499
    :catchall_16
    move-exception v2

    goto :goto_4e

    .line 1495
    :catch_18
    move-exception v2

    .line 1496
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_19
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

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_19 .. :try_end_4b} :catchall_16

    .line 1499
    nop

    .end local v2  # "e":Ljava/lang/RuntimeException;
    goto :goto_c

    .line 1503
    :goto_4d
    return-void

    .line 1499
    :goto_4e
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 1500
    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1501
    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    throw v2
.end method

.method destroySurfaceLocked()V
    .registers 7

    .line 594
    const-string v0, "WindowManager"

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 595
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 596
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_11

    .line 597
    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 601
    :cond_11
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v3, :cond_16

    .line 602
    return-void

    .line 609
    :cond_16
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1f

    .line 610
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 614
    :cond_1f
    :try_start_1f
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " destroying surface "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_4b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_76

    .line 617
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_88

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eq v3, v5, :cond_88

    .line 618
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v3, :cond_71

    .line 619
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_65

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_6c

    .line 620
    :cond_65
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v5, "DESTROY PENDING"

    invoke-static {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 622
    :cond_6c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 624
    :cond_71
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_88

    .line 627
    :cond_76
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v3, :cond_7e

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v3, :cond_85

    .line 628
    :cond_7e
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v5, "DESTROY"

    invoke-static {v3, v5, v4}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 630
    :cond_85
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 634
    :cond_88
    :goto_88
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-nez v3, :cond_93

    .line 635
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_93} :catch_94

    .line 640
    :cond_93
    goto :goto_c9

    .line 637
    :catch_94
    move-exception v3

    .line 638
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

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

    .line 639
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .end local v3  # "e":Ljava/lang/RuntimeException;
    :goto_c9
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->setHasSurface(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_d5

    .line 647
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 649
    :cond_d5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 650
    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 651
    return-void
.end method

.method detachChildren()V
    .registers 2

    .line 1518
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_7

    .line 1519
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->detachChildren()V

    .line 1521
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mChildrenDetached:Z

    .line 1522
    return-void
.end method

.method drawStateToString()Ljava/lang/String;
    .registers 3

    .line 184
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

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_15
    const-string v0, "HAS_DRAWN"

    return-object v0

    .line 188
    :cond_18
    const-string v0, "READY_TO_SHOW"

    return-object v0

    .line 187
    :cond_1b
    const-string v0, "COMMIT_DRAW_PENDING"

    return-object v0

    .line 186
    :cond_1e
    const-string v0, "DRAW_PENDING"

    return-object v0

    .line 185
    :cond_21
    const-string v0, "NO_SURFACE"

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v0, :cond_11

    .line 1430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1432
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_18

    .line 1433
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1435
    :cond_18
    if-eqz p3, :cond_62

    .line 1436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1438
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystemDecorRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1439
    const-string v0, " mLastClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1442
    const-string v0, " mLastFinalClipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastFinalClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1444
    :cond_5f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1447
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_73

    .line 1448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1451
    :cond_73
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_92

    .line 1452
    :cond_7b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1453
    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1455
    :cond_92
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a6

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a6

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c7

    .line 1456
    :cond_a6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1457
    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1458
    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1460
    :cond_c7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_d3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10a

    .line 1461
    :cond_d3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1462
    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1463
    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1464
    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1465
    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1467
    :cond_10a
    return-void
.end method

.method finishDrawingLocked()Z
    .registers 6

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 308
    .local v0, "startingWindow":Z
    :goto_d
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_37

    if-eqz v0, :cond_37

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing drawing window "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": mDrawState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_37
    const/4 v2, 0x0

    .line 315
    .local v2, "layoutNeeded":Z
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v1, :cond_88

    .line 316
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v1, :cond_48

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v1, :cond_48

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_68

    .line 317
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishDrawingLocked: mDrawState=COMMIT_DRAW_PENDING "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_68
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_84

    if-eqz v0, :cond_84

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw state now committed in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_84
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 323
    const/4 v2, 0x1

    .line 326
    :cond_88
    return v2
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"  # Landroid/graphics/Rect;

    .line 1082
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1083
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_c

    .line 1084
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_15

    .line 1086
    :cond_c
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1088
    :goto_15
    return-void
.end method

.method getShown()Z
    .registers 2

    .line 1484
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_9

    .line 1485
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v0

    return v0

    .line 1487
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method hasSurface()Z
    .registers 2

    .line 590
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
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "reason"  # Ljava/lang/String;

    .line 285
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_11

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_11

    .line 295
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowSurfaceController;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 298
    :cond_11
    return-void
.end method

.method hide(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 303
    return-void
.end method

.method isForceScaled()Z
    .registers 3

    .line 1510
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1511
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isForceScaled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1512
    const/4 v1, 0x1

    return v1

    .line 1514
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    return v1
.end method

.method markPreservedSurfaceForDestroy()V
    .registers 3

    .line 401
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 402
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroyPreservedSurface:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_19
    return-void
.end method

.method onAnimationFinished()V
    .registers 7

    .line 254
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation done in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": exiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->checkPolicyVisibilityChange()V

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 261
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_5a

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 264
    if-eqz v0, :cond_5a

    .line 265
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 268
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 269
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 270
    .local v1, "displayId":I
    const/16 v2, 0x8

    .line 271
    .local v2, "pendingLayoutChanges":I
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 272
    or-int/lit8 v2, v2, 0x4

    .line 274
    :cond_73
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 275
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v3, :cond_8b

    .line 276
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 277
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 276
    const-string v5, "WindowStateAnimator"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 279
    :cond_8b
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_98

    .line 280
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 282
    :cond_98
    return-void
.end method

.method prepareSurfaceLocked(Z)V
    .registers 18
    .param p1, "recoveringMemory"  # Z

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1092
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    const-string v3, "Orientation change skips hidden "

    const-string v4, "WindowManager"

    const/4 v5, 0x0

    if-nez v2, :cond_35

    .line 1096
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1097
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_31

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_31
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1102
    :cond_34
    return-void

    .line 1105
    :cond_35
    const/4 v2, 0x0

    .line 1107
    .local v2, "displayed":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 1109
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 1111
    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const-string v7, "prepareSurfaceLocked"

    const/4 v8, 0x1

    if-eqz v6, :cond_4c

    iget-boolean v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v6, :cond_4c

    .line 1113
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    goto/16 :goto_20f

    .line 1114
    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    if-nez v6, :cond_1e2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    if-nez v6, :cond_5a

    goto/16 :goto_1e2

    .line 1127
    :cond_5a
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget v3, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_ba

    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v3, :cond_97

    goto :goto_ba

    .line 1189
    :cond_97
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_b7

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 1190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareSurface: No changes in animation for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_b7
    const/4 v2, 0x1

    goto/16 :goto_20f

    .line 1135
    :cond_ba
    :goto_ba
    const/4 v2, 0x1

    .line 1136
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1137
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    .line 1138
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    .line 1139
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    .line 1140
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    .line 1141
    iget v3, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 1142
    iget v3, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v3, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 1143
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_148

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "controller="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "alpha="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " matrix=["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "]["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 1151
    :cond_148
    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v11, v3, v6

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v12, v3, v6

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float v13, v3, v6

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v6

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v14, v3, v6

    .line 1152
    move/from16 v15, p1

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wm/WindowSurfaceController;->prepareToShowInTransaction(FFFFFZ)Z

    move-result v3

    .line 1159
    .local v3, "prepared":Z
    if-eqz v3, :cond_1d7

    iget v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1d7

    .line 1160
    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v6, :cond_1d7

    .line 1161
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v6

    if-eqz v6, :cond_1d4

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->markPreservedSurfaceForDestroy()V

    .line 1163
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowAnimator;->requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V

    .line 1164
    iput-boolean v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1165
    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v6, :cond_198

    .line 1166
    invoke-virtual {v1, v8}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 1168
    :cond_198
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v6

    if-nez v6, :cond_1d7

    .line 1172
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    const/16 v9, 0x8

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1174
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_1d7

    .line 1175
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showSurfaceRobustlyLocked "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1177
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v9

    .line 1175
    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_1d7

    .line 1181
    :cond_1d4
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1185
    :cond_1d7
    :goto_1d7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v6

    if-eqz v6, :cond_1e1

    .line 1186
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v8, v6, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1188
    .end local v3  # "prepared":Z
    :cond_1e1
    goto :goto_20f

    .line 1115
    :cond_1e2
    :goto_1e2
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1116
    iget-object v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 1122
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v6

    if-eqz v6, :cond_20f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v6

    if-eqz v6, :cond_20f

    .line 1123
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1124
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_20f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_20f
    :goto_20f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-eqz v3, :cond_25b

    .line 1196
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    if-nez v3, :cond_240

    .line 1197
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1198
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v1, v3, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1199
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_25b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation continue waiting for draw in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25b

    .line 1202
    :cond_240
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1203
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_25b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orientation change complete in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_25b
    :goto_25b
    if-eqz v2, :cond_261

    .line 1208
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v8, v3, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 1210
    :cond_261
    return-void
.end method

.method preserveSurfaceLocked()V
    .registers 5

    .line 353
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 361
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 363
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 364
    return-void

    .line 366
    :cond_e
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "SET FREEZE LAYER"

    invoke-static {v0, v3, v1}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 367
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_22

    .line 371
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 373
    :cond_22
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mDestroyPreservedSurfaceUponRedraw:Z

    .line 374
    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    .line 375
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 376
    return-void
.end method

.method reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "operation"  # Ljava/lang/String;
    .param p2, "secure"  # Z

    .line 1480
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    .line 1481
    return-void
.end method

.method resetDrawState()V
    .registers 3

    .line 412
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_a

    .line 415
    return-void

    .line 418
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    goto :goto_22

    .line 423
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 425
    :goto_22
    return-void
.end method

.method setColorSpaceAgnosticLocked(Z)V
    .registers 3
    .param p1, "agnostic"  # Z

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1280
    return-void

    .line 1282
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setColorSpaceAgnostic(Z)V

    .line 1283
    return-void
.end method

.method setOffsetPositionForStackResize(Z)V
    .registers 2
    .param p1, "offsetPositionForStackResize"  # Z

    .line 1525
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    .line 1526
    return-void
.end method

.method setOpaqueLocked(Z)V
    .registers 3
    .param p1, "isOpaque"  # Z

    .line 1265
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1266
    return-void

    .line 1268
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setOpaque(Z)V

    .line 1269
    return-void
.end method

.method setSecureLocked(Z)V
    .registers 3
    .param p1, "isSecure"  # Z

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_5

    .line 1273
    return-void

    .line 1275
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setSecure(Z)V

    .line 1276
    return-void
.end method

.method setSurfaceBoundariesLocked(Z)V
    .registers 30
    .param p1, "recoveringMemory"  # Z

    .line 849
    move-object/from16 v0, p0

    move/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_9

    .line 850
    return-void

    .line 853
    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 854
    .local v8, "w":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 855
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 857
    .local v10, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/wm/WindowStateAnimator;->calculateSurfaceBounds(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 859
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 860
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 862
    iget-boolean v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 871
    .local v11, "wasForceScaled":Z
    iget-boolean v2, v8, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2e

    iget-boolean v2, v8, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    if-eqz v2, :cond_2c

    goto :goto_2e

    :cond_2c
    move v2, v3

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v2, 0x1

    :goto_2f
    move v13, v2

    .line 872
    .local v13, "relayout":Z
    if-eqz v13, :cond_47

    .line 873
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    .line 874
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 873
    invoke-virtual {v2, v4, v5, v7}, Lcom/android/server/wm/WindowSurfaceController;->setBufferSizeInTransaction(IIZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    goto :goto_49

    .line 876
    :cond_47
    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 878
    :goto_49
    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-eqz v2, :cond_53

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v2, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    move v2, v3

    :goto_54
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 883
    const/4 v2, 0x0

    .line 884
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->calculateCrop(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 885
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 888
    :cond_61
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()I

    move-result v4

    int-to-float v14, v4

    .line 889
    .local v14, "surfaceWidth":F
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()I

    move-result v4

    int-to-float v15, v4

    .line 891
    .local v15, "surfaceHeight":F
    iget-object v6, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 893
    .local v6, "insets":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowStateAnimator;->isForceScaled()Z

    move-result v4

    if-eqz v4, :cond_23b

    .line 894
    iget v4, v6, Landroid/graphics/Rect;->left:I

    iget v5, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 895
    .local v4, "hInsets":I
    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    .line 896
    .local v5, "vInsets":I
    int-to-float v3, v4

    sub-float v3, v14, v3

    .line 897
    .local v3, "surfaceContentWidth":F
    int-to-float v1, v5

    sub-float v1, v15, v1

    .line 898
    .local v1, "surfaceContentHeight":F
    iget-boolean v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v12, :cond_94

    .line 899
    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    move/from16 v16, v4

    const/4 v4, 0x1

    .end local v4  # "hInsets":I
    .local v16, "hInsets":I
    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    goto :goto_96

    .line 898
    .end local v16  # "hInsets":I
    .restart local v4  # "hInsets":I
    :cond_94
    move/from16 v16, v4

    .line 902
    .end local v4  # "hInsets":I
    .restart local v16  # "hInsets":I
    :goto_96
    const/4 v4, 0x0

    .line 903
    .local v4, "posX":I
    const/4 v12, 0x0

    .line 904
    .local v12, "posY":I
    move/from16 v17, v5

    .end local v5  # "vInsets":I
    .local v17, "vInsets":I
    iget-object v5, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v18, v11

    .end local v11  # "wasForceScaled":Z
    .local v18, "wasForceScaled":Z
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 906
    const/4 v5, 0x0

    .line 907
    .local v5, "allowStretching":Z
    iget-object v11, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    move/from16 v19, v5

    .end local v5  # "allowStretching":Z
    .local v19, "allowStretching":Z
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Lcom/android/server/wm/TaskStack;->getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V

    .line 915
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e5

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gtz v5, :cond_c9

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 916
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_e5

    :cond_c9
    iget-object v5, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 917
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v5

    if-nez v5, :cond_e5

    .line 918
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v11, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v11, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 919
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v11, v11, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 920
    const/4 v5, 0x1

    .end local v19  # "allowStretching":Z
    .restart local v5  # "allowStretching":Z
    goto :goto_e7

    .line 925
    .end local v5  # "allowStretching":Z
    .restart local v19  # "allowStretching":Z
    :cond_e5
    move/from16 v5, v19

    .end local v19  # "allowStretching":Z
    .restart local v5  # "allowStretching":Z
    :goto_e7
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v2

    .end local v2  # "clipRect":Landroid/graphics/Rect;
    .local v19, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 926
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 927
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 929
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d8

    .line 932
    iget-object v2, v10, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 936
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 937
    .local v2, "finalWidth":F
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    .line 938
    .local v11, "initialWidth":F
    move-object/from16 v20, v10

    .end local v10  # "task":Lcom/android/server/wm/Task;
    .local v20, "task":Lcom/android/server/wm/Task;
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v3, v10

    move/from16 v21, v13

    .end local v13  # "relayout":Z
    .local v21, "relayout":Z
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 939
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v3, v13

    div-float/2addr v10, v13

    .line 940
    .local v10, "tw":F
    move v13, v10

    .line 941
    .local v13, "th":F
    sub-float v22, v2, v11

    mul-float v22, v22, v10

    add-float v22, v11, v22

    move/from16 v23, v2

    .end local v2  # "finalWidth":F
    .local v23, "finalWidth":F
    div-float v2, v22, v11

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 942
    if-eqz v5, :cond_179

    .line 943
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 944
    .local v2, "finalHeight":F
    move/from16 v22, v5

    .end local v5  # "allowStretching":Z
    .local v22, "allowStretching":Z
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 945
    .local v5, "initialHeight":F
    move/from16 v24, v11

    .end local v11  # "initialWidth":F
    .local v24, "initialWidth":F
    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v1, v11

    move/from16 v25, v13

    .end local v13  # "th":F
    .local v25, "th":F
    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpAnimatingBounds:Landroid/graphics/Rect;

    .line 946
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    sub-float v13, v1, v13

    div-float v13, v11, v13

    .line 947
    .end local v25  # "th":F
    .restart local v13  # "th":F
    sub-float v11, v2, v5

    mul-float/2addr v11, v10

    add-float/2addr v11, v5

    div-float/2addr v11, v5

    iput v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 949
    .end local v2  # "finalHeight":F
    .end local v5  # "initialHeight":F
    move/from16 v25, v13

    goto :goto_183

    .line 950
    .end local v22  # "allowStretching":Z
    .end local v24  # "initialWidth":F
    .local v5, "allowStretching":Z
    .restart local v11  # "initialWidth":F
    :cond_179
    move/from16 v22, v5

    move/from16 v24, v11

    move/from16 v25, v13

    .end local v5  # "allowStretching":Z
    .end local v11  # "initialWidth":F
    .end local v13  # "th":F
    .restart local v22  # "allowStretching":Z
    .restart local v24  # "initialWidth":F
    .restart local v25  # "th":F
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 954
    :goto_183
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v10

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v4, v2

    .line 955
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float v2, v2, v25

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v12, v2

    .line 963
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpClipRect:Landroid/graphics/Rect;

    .line 964
    .end local v19  # "clipRect":Landroid/graphics/Rect;
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget-object v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v11

    int-to-float v5, v5

    mul-float/2addr v5, v10

    float-to-int v5, v5

    iget v11, v6, Landroid/graphics/Rect;->top:I

    iget-object v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v13

    int-to-float v11, v11

    mul-float v11, v11, v25

    float-to-int v11, v11

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move/from16 v26, v4

    .end local v4  # "posX":I
    .local v26, "posX":I
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float v4, v14, v4

    mul-float/2addr v4, v10

    sub-float v4, v14, v4

    float-to-int v4, v4

    add-int/2addr v13, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    move/from16 v27, v10

    .end local v10  # "tw":F
    .local v27, "tw":F
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpSourceBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float v10, v15, v10

    mul-float v10, v10, v25

    sub-float v10, v15, v10

    float-to-int v10, v10

    add-int/2addr v4, v10

    invoke-virtual {v2, v5, v11, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 970
    .end local v23  # "finalWidth":F
    .end local v24  # "initialWidth":F
    .end local v25  # "th":F
    .end local v27  # "tw":F
    move/from16 v4, v26

    goto :goto_1f3

    .line 973
    .end local v2  # "clipRect":Landroid/graphics/Rect;
    .end local v20  # "task":Lcom/android/server/wm/Task;
    .end local v21  # "relayout":Z
    .end local v22  # "allowStretching":Z
    .end local v26  # "posX":I
    .restart local v4  # "posX":I
    .restart local v5  # "allowStretching":Z
    .local v10, "task":Lcom/android/server/wm/Task;
    .local v13, "relayout":Z
    .restart local v19  # "clipRect":Landroid/graphics/Rect;
    :cond_1d8
    move/from16 v22, v5

    move-object/from16 v20, v10

    move/from16 v21, v13

    .end local v5  # "allowStretching":Z
    .end local v10  # "task":Lcom/android/server/wm/Task;
    .end local v13  # "relayout":Z
    .restart local v20  # "task":Lcom/android/server/wm/Task;
    .restart local v21  # "relayout":Z
    .restart local v22  # "allowStretching":Z
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    .line 974
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    .line 979
    const/4 v2, 0x0

    .line 985
    .end local v19  # "clipRect":Landroid/graphics/Rect;
    .restart local v2  # "clipRect":Landroid/graphics/Rect;
    :goto_1f3
    iget v5, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v5, v5

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    const/high16 v11, 0x3f800000  # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 986
    iget v5, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v5, v5

    iget v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float v10, v11, v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int/2addr v12, v5

    .line 995
    int-to-float v5, v4

    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    sub-float v13, v11, v13

    mul-float/2addr v10, v13

    add-float/2addr v5, v10

    float-to-int v4, v5

    .line 996
    int-to-float v5, v12

    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    sub-float/2addr v11, v13

    mul-float/2addr v10, v11

    add-float/2addr v5, v10

    float-to-int v5, v5

    .line 998
    .end local v12  # "posY":I
    .local v5, "posY":I
    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v11, v11

    int-to-double v12, v5

    .line 999
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 998
    invoke-virtual {v10, v11, v12, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1007
    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    if-nez v10, :cond_238

    .line 1008
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    .line 1009
    iput-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1011
    .end local v1  # "surfaceContentHeight":F
    .end local v3  # "surfaceContentWidth":F
    .end local v4  # "posX":I
    .end local v5  # "posY":I
    .end local v16  # "hInsets":I
    .end local v17  # "vInsets":I
    .end local v22  # "allowStretching":Z
    :cond_238
    move-object v10, v2

    goto/16 :goto_2ad

    .line 1012
    .end local v18  # "wasForceScaled":Z
    .end local v20  # "task":Lcom/android/server/wm/Task;
    .end local v21  # "relayout":Z
    .restart local v10  # "task":Lcom/android/server/wm/Task;
    .local v11, "wasForceScaled":Z
    .restart local v13  # "relayout":Z
    :cond_23b
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v18, v11

    move/from16 v21, v13

    .end local v2  # "clipRect":Landroid/graphics/Rect;
    .end local v10  # "task":Lcom/android/server/wm/Task;
    .end local v11  # "wasForceScaled":Z
    .end local v13  # "relayout":Z
    .restart local v18  # "wasForceScaled":Z
    .restart local v19  # "clipRect":Landroid/graphics/Rect;
    .restart local v20  # "task":Lcom/android/server/wm/Task;
    .restart local v21  # "relayout":Z
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPipAnimationStarted:Z

    .line 1014
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_2aa

    .line 1016
    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1017
    .local v1, "xOffset":I
    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1018
    .local v2, "yOffset":I
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mOffsetPositionForStackResize:Z

    if-eqz v3, :cond_2a0

    .line 1019
    if-eqz v21, :cond_26a

    .line 1024
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 1025
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1026
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v10

    .line 1025
    invoke-virtual {v3, v4, v10, v11}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    move-object/from16 v4, v19

    goto :goto_2a2

    .line 1028
    :cond_26a
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1029
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 1030
    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 1031
    if-eqz v3, :cond_27c

    .line 1032
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 1035
    :cond_27c
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v1, v4

    .line 1036
    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v2, v4

    .line 1040
    if-eqz v19, :cond_29d

    .line 1041
    move-object/from16 v4, v19

    .end local v19  # "clipRect":Landroid/graphics/Rect;
    .local v4, "clipRect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1042
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mTmpPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2a2

    .line 1040
    .end local v4  # "clipRect":Landroid/graphics/Rect;
    .restart local v19  # "clipRect":Landroid/graphics/Rect;
    :cond_29d
    move-object/from16 v4, v19

    .end local v19  # "clipRect":Landroid/graphics/Rect;
    .restart local v4  # "clipRect":Landroid/graphics/Rect;
    goto :goto_2a2

    .line 1018
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4  # "clipRect":Landroid/graphics/Rect;
    .restart local v19  # "clipRect":Landroid/graphics/Rect;
    :cond_2a0
    move-object/from16 v4, v19

    .line 1046
    .end local v19  # "clipRect":Landroid/graphics/Rect;
    .restart local v4  # "clipRect":Landroid/graphics/Rect;
    :goto_2a2
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v5, v1

    int-to-float v10, v2

    invoke-virtual {v3, v5, v10, v7}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    goto :goto_2ac

    .line 1014
    .end local v1  # "xOffset":I
    .end local v2  # "yOffset":I
    .end local v4  # "clipRect":Landroid/graphics/Rect;
    .restart local v19  # "clipRect":Landroid/graphics/Rect;
    :cond_2aa
    move-object/from16 v4, v19

    .line 1055
    .end local v19  # "clipRect":Landroid/graphics/Rect;
    .restart local v4  # "clipRect":Landroid/graphics/Rect;
    :goto_2ac
    move-object v10, v4

    .end local v4  # "clipRect":Landroid/graphics/Rect;
    .local v10, "clipRect":Landroid/graphics/Rect;
    :goto_2ad
    if-eqz v18, :cond_2c8

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mForceScaleUntilResize:Z

    if-nez v1, :cond_2c8

    .line 1056
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1057
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 1056
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 1058
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1062
    :cond_2c8
    iget-boolean v1, v8, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v1, :cond_2f8

    .line 1063
    invoke-direct {v0, v10, v7}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V

    .line 1064
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v3, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v4, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v5, v8, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraHScale:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v11, v8, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v11

    iget v11, v0, Lcom/android/server/wm/WindowStateAnimator;->mExtraVScale:F

    mul-float/2addr v5, v11

    move-object v11, v6

    .end local v6  # "insets":Landroid/graphics/Rect;
    .local v11, "insets":Landroid/graphics/Rect;
    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrixInTransaction(FFFFZ)V

    goto :goto_2f9

    .line 1062
    .end local v11  # "insets":Landroid/graphics/Rect;
    .restart local v6  # "insets":Landroid/graphics/Rect;
    :cond_2f8
    move-object v11, v6

    .line 1070
    .end local v6  # "insets":Landroid/graphics/Rect;
    .restart local v11  # "insets":Landroid/graphics/Rect;
    :goto_2f9
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-eqz v1, :cond_30a

    .line 1071
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mReportSurfaceResized:Z

    .line 1072
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 1075
    :cond_30a
    return-void
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "region"  # Landroid/graphics/Region;

    .line 1213
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_c

    .line 1214
    const-string v0, "WindowManager"

    const-string v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void

    .line 1217
    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 1218
    return-void
.end method

.method setWallpaperOffset(II)Z
    .registers 11
    .param p1, "dx"  # I
    .param p2, "dy"  # I

    .line 1221
    const-string v0, "<<< CLOSE TRANSACTION setWallpaperOffset"

    const-string v1, "setWallpaperOffset"

    const-string v2, "WindowManager"

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_10

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    if-ne v3, p2, :cond_10

    .line 1222
    return v4

    .line 1224
    :cond_10
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mXOffset:I

    .line 1225
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mYOffset:I

    .line 1228
    const/4 v3, 0x1

    :try_start_15
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v5, :cond_1e

    const-string v5, ">>> OPEN TRANSACTION setWallpaperOffset"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_1e
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1230
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    int-to-float v6, p1

    int-to-float v7, p2

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/wm/WindowSurfaceController;->setPositionInTransaction(FFZ)V

    .line 1231
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/WindowStateAnimator;->applyCrop(Landroid/graphics/Rect;Z)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_2e} :catch_3d
    .catchall {:try_start_15 .. :try_end_2e} :catchall_3b

    .line 1236
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1237
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3a

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_3a
    return v3

    .line 1236
    :catchall_3b
    move-exception v4

    goto :goto_77

    .line 1232
    :catch_3d
    move-exception v4

    .line 1233
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pos=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_3b

    .line 1236
    nop

    .end local v4  # "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1237
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_76

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_76
    return v3

    .line 1236
    :goto_77
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1237
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_83

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_83
    return v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1471
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1474
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1475
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method tryChangeFormatInPlaceLocked()Z
    .registers 7

    .line 1251
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1252
    return v1

    .line 1254
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1255
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v1

    .line 1256
    .local v2, "isHwAccelerated":Z
    :goto_17
    if-eqz v2, :cond_1b

    const/4 v4, -0x3

    goto :goto_1d

    :cond_1b
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1257
    .local v4, "format":I
    :goto_1d
    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceFormat:I

    if-ne v4, v5, :cond_2c

    .line 1258
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 1259
    return v3

    .line 1261
    :cond_2c
    return v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 1418
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1419
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1420
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_1a

    .line 1421
    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1423
    :cond_1a
    const-wide v2, 0x10e00000003L

    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1424
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1425
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1426
    return-void
.end method
