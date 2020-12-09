.class public Lcom/android/server/wm/TaskStack;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/BoundsAnimationTarget;
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Lcom/android/server/wm/BoundsAnimationTarget;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field mActivityStack:Lcom/android/server/wm/ActivityStack;

.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field private final mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field private mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

.field private mAnimationBackgroundSurfaceIsShown:Z

.field private mAnimationType:I
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation
.end field

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimatingToFullscreen:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private mCancelCurrentBoundsAnimation:Z

.field mDeferRemoval:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mDockedStackMinimizeThickness:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mMinimizeAmount:F

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field final mStackId:I

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field final mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpFromBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;

.field private mTmpToBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/ActivityStack;)V
    .registers 6

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 121
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 122
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 140
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 152
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 163
    new-instance v0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 168
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 169
    iput-object p3, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    .line 170
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityStack;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 171
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10500fa

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 173
    const/16 p1, 0x791c

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 174
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .registers 9

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1177
    return v1

    .line 1180
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1181
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1a

    goto :goto_1c

    :cond_1a
    move v4, v1

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v4, v2

    .line 1182
    :goto_1d
    if-eqz p1, :cond_105

    if-nez v4, :cond_23

    goto/16 :goto_105

    .line 1186
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 1187
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 1190
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1191
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1192
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1194
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p1

    .line 1195
    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    if-le p1, v5, :cond_4a

    .line 1196
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1199
    :cond_4a
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    .line 1201
    nop

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 1203
    nop

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v5

    .line 1206
    if-ne v0, v3, :cond_a8

    .line 1210
    nop

    .line 1211
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v0

    .line 1212
    nop

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    add-int/2addr v1, v4

    sub-int/2addr v1, v5

    .line 1212
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1216
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, v1

    .line 1217
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1218
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1219
    goto :goto_104

    .line 1221
    :cond_a8
    sub-int v0, v5, v4

    .line 1228
    nop

    .line 1229
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v5

    .line 1230
    nop

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    .line 1231
    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v1

    .line 1233
    nop

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p1

    add-int/2addr v1, v5

    .line 1233
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1236
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1240
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    sub-int v3, p1, v3

    int-to-float v3, v3

    mul-float/2addr v5, v3

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    int-to-float v0, v0

    mul-float/2addr v3, v0

    add-float/2addr v5, v3

    float-to-int v0, v5

    add-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 1243
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 1245
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1247
    :goto_104
    return v2

    .line 1183
    :cond_105
    :goto_105
    return v1
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .registers 7

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1252
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1253
    return v1

    .line 1256
    :cond_11
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    if-ne v0, v2, :cond_3d

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1259
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1260
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr v4, p1

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr v4, p1

    add-float/2addr v0, v4

    float-to-int p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 1262
    goto :goto_93

    :cond_3d
    if-ne v0, v3, :cond_6b

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1265
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v4, p1

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    float-to-int p1, v2

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 1268
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_92

    .line 1269
    :cond_6b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_92

    .line 1270
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v4, p1

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float/2addr v4, p1

    add-float/2addr v1, v4

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_93

    .line 1269
    :cond_92
    :goto_92
    nop

    .line 1275
    :goto_93
    return v3
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 220
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    return-void

    .line 224
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 227
    :goto_16
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1d
    if-ltz v2, :cond_2d

    .line 228
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 229
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 227
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 231
    :cond_2d
    return-void
.end method

.method private canSpecifyOrientation()Z
    .registers 4

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v1

    .line 1916
    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v0, 0x2

    if-eq v1, v0, :cond_16

    const/4 v0, 0x3

    if-eq v1, v0, :cond_16

    const/4 v0, 0x4

    if-ne v1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method private computeMaxPosition(I)I
    .registers 4

    .line 690
    :goto_0
    if-lez p1, :cond_25

    .line 691
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 692
    nop

    .line 693
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 694
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 695
    :goto_1f
    if-nez v0, :cond_22

    .line 696
    goto :goto_25

    .line 698
    :cond_22
    add-int/lit8 p1, p1, -0x1

    .line 699
    goto :goto_0

    .line 700
    :cond_25
    :goto_25
    return p1
.end method

.method private computeMinPosition(II)I
    .registers 5

    .line 671
    :goto_0
    if-ge p1, p2, :cond_25

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 673
    nop

    .line 674
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 675
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 676
    :goto_1f
    if-eqz v0, :cond_22

    .line 677
    goto :goto_25

    .line 679
    :cond_22
    add-int/lit8 p1, p1, 0x1

    .line 680
    goto :goto_0

    .line 681
    :cond_25
    :goto_25
    return p1
.end method

.method private findPositionForTask(Lcom/android/server/wm/Task;IZZ)I
    .registers 7

    .line 640
    const/4 v0, 0x0

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 641
    invoke-virtual {p3, p1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    move p1, v0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    .line 643
    :goto_11
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowList;->size()I

    move-result p3

    .line 644
    nop

    .line 645
    if-eqz p4, :cond_1c

    move v1, p3

    goto :goto_1e

    :cond_1c
    add-int/lit8 v1, p3, -0x1

    .line 647
    :goto_1e
    if-eqz p1, :cond_25

    .line 648
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v0

    goto :goto_29

    .line 650
    :cond_25
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v1

    .line 654
    :goto_29
    const/high16 p1, -0x80000000

    if-ne p2, p1, :cond_30

    if-nez v0, :cond_30

    .line 655
    return p1

    .line 656
    :cond_30
    const p1, 0x7fffffff

    if-ne p2, p1, :cond_3d

    .line 657
    if-eqz p4, :cond_38

    goto :goto_3a

    :cond_38
    add-int/lit8 p3, p3, -0x1

    :goto_3a
    if-ne v1, p3, :cond_3d

    .line 658
    return p1

    .line 661
    :cond_3d
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I
    .registers 6

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object p1

    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1457
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1458
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    .line 1456
    invoke-virtual {p1, p3, v0, v1, p2}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result p1

    return p1
.end method

.method private getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 24

    .line 913
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 914
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_1c

    move v10, v8

    goto :goto_1d

    :cond_1c
    move v10, v7

    .line 916
    :goto_1d
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 917
    if-eqz p2, :cond_93

    .line 918
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_30

    .line 919
    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 920
    return-void

    .line 926
    :cond_30
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v15, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 927
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v11

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 928
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 929
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 927
    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 930
    new-instance v11, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 931
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 932
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v8, :cond_6a

    goto :goto_6b

    :cond_6a
    move v8, v7

    :goto_6b
    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v3, v11

    move-object v4, v5

    move v5, v6

    move v6, v9

    move/from16 v7, p5

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 935
    invoke-virtual {v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 937
    if-eqz p6, :cond_87

    .line 938
    if-eqz v10, :cond_84

    .line 939
    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_92

    .line 941
    :cond_84
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_92

    .line 944
    :cond_87
    if-eqz v10, :cond_8e

    .line 945
    add-int v0, v0, p5

    iput v0, v2, Landroid/graphics/Rect;->left:I

    goto :goto_92

    .line 947
    :cond_8e
    add-int v0, v0, p5

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 950
    :goto_92
    return-void

    .line 954
    :cond_93
    if-nez p6, :cond_a5

    .line 955
    if-eqz v10, :cond_9e

    .line 956
    iget v0, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v0, p5

    iput v0, v2, Landroid/graphics/Rect;->right:I

    goto :goto_b4

    .line 958
    :cond_9e
    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v0, p5

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_b4

    .line 961
    :cond_a5
    if-eqz v10, :cond_ae

    .line 962
    iget v0, v3, Landroid/graphics/Rect;->right:I

    add-int v0, v0, p5

    iput v0, v2, Landroid/graphics/Rect;->left:I

    goto :goto_b4

    .line 964
    :cond_ae
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, p5

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 967
    :goto_b4
    xor-int/lit8 v0, p6, 0x1

    invoke-static {v2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 968
    return-void
.end method

.method private hideAnimationSurface()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 248
    return-void

    .line 250
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 253
    return-void
.end method

.method private isMinimizedDockAndHomeStackResizable()Z
    .registers 2

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1279
    :goto_17
    return v0
.end method

.method static synthetic lambda$onAnimationStart$2(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 1601
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$1(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 752
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 753
    return-void
.end method

.method private positionChildAt(ILcom/android/server/wm/Task;ZZ)V
    .registers 8

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/android/server/wm/TaskStack;->findPositionForTask(Lcom/android/server/wm/Task;IZZ)I

    move-result p1

    .line 611
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 617
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowList;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    if-ne p1, p3, :cond_14

    move p3, p4

    goto :goto_15

    :cond_14
    move p3, v0

    .line 618
    :goto_15
    const/16 v1, 0x791a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p4

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 619
    return-void
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v0

    if-nez v0, :cond_f

    .line 198
    return-void

    .line 201
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 202
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    .line 203
    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    .line 204
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3b

    .line 206
    :cond_2a
    if-eqz p1, :cond_3b

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_3b

    .line 207
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_39

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3b

    .line 210
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 213
    :cond_3b
    :goto_3b
    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_44

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    :goto_44
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 214
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 216
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 217
    return-void
.end method

.method private setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 5

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 325
    iput-boolean p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 326
    if-eqz p2, :cond_d

    .line 327
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_12

    .line 329
    :cond_d
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 331
    :goto_12
    if-eqz p1, :cond_1a

    .line 332
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_23

    .line 333
    :cond_1a
    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez p1, :cond_23

    .line 338
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 341
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 342
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 272
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 273
    const/4 p1, 0x0

    return p1

    .line 276
    :cond_8
    invoke-super {p0, p2}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 279
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAnimationBackgroundBounds()V

    .line 282
    :cond_15
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 285
    return p1
.end method

.method private showAnimationSurface(F)V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 257
    return-void

    .line 259
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 260
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 262
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 264
    return-void
.end method

.method private updateAdjustedBounds()V
    .registers 5

    .line 1307
    nop

    .line 1308
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1309
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    goto :goto_1a

    .line 1310
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_19

    .line 1311
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_1a

    .line 1310
    :cond_19
    move v0, v2

    .line 1313
    :goto_1a
    if-nez v0, :cond_21

    .line 1314
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1316
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1318
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    const/4 v3, 0x1

    if-ne v1, p0, :cond_30

    move v2, v3

    .line 1319
    :cond_30
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    if-nez v2, :cond_4c

    .line 1320
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3e800000  # 0.25f

    mul-float/2addr v0, v1

    .line 1322
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 1324
    :cond_4c
    return-void
.end method

.method private updateAnimationBackgroundBounds()V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 235
    return-void

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 241
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 244
    return-void
.end method

.method private updateSurfaceBounds()V
    .registers 2

    .line 759
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 761
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 762
    return-void
.end method

.method private updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 791
    return-void

    .line 794
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 796
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 798
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v2

    .line 799
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 800
    add-int/2addr v0, v2

    .line 802
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_26

    .line 803
    return-void

    .line 805
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 807
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3c

    .line 809
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 811
    :goto_3c
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 812
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;I)V
    .registers 5

    .line 525
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 526
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;IZZ)V
    .registers 7

    .line 537
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 540
    if-eqz v0, :cond_3a

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v1, :cond_b

    goto :goto_3a

    .line 541
    :cond_b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to add taskId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " to stackId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", but it is already attached to stackId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget p1, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 547
    :cond_3a
    :goto_3a
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 551
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 552
    return-void
.end method

.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 16

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1704
    return-void

    .line 1707
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1708
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1711
    nop

    .line 1713
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_16

    move v9, v0

    goto :goto_17

    :cond_16
    move v9, v1

    .line 1714
    :goto_17
    if-eqz v9, :cond_4c

    .line 1715
    if-nez p4, :cond_44

    .line 1719
    nop

    .line 1721
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 1723
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 1725
    new-instance p1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v5, p1

    move v7, v0

    goto :goto_54

    .line 1728
    :cond_35
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    move-object v5, p1

    move v7, v0

    goto :goto_54

    .line 1716
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1731
    :cond_4c
    if-eqz p4, :cond_52

    .line 1732
    const/4 v2, 0x2

    move-object v5, p1

    move v7, v2

    goto :goto_54

    .line 1731
    :cond_52
    move-object v5, p1

    move v7, v1

    .line 1735
    :goto_54
    invoke-direct {p0, p2, v5, v9}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1737
    nop

    .line 1738
    nop

    .line 1740
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1741
    iget-object p1, v3, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 1742
    invoke-virtual {p1}, Lcom/android/server/wm/BoundsAnimationController;->getAnimationType()I

    move-result p1

    .line 1743
    if-ne p1, v0, :cond_8b

    .line 1744
    if-eqz p4, :cond_6b

    .line 1745
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskStack;->setPinnedStackAlpha(F)Z

    .line 1747
    :cond_6b
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p2, v0, :cond_81

    .line 1748
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne p2, v0, :cond_81

    .line 1749
    move v10, v1

    goto :goto_8c

    .line 1750
    :cond_81
    if-nez p4, :cond_8b

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8b

    .line 1754
    move v10, v1

    goto :goto_8c

    .line 1758
    :cond_8b
    move v10, p1

    :goto_8c
    nop

    .line 1759
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 1760
    iget-object p1, v3, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {p1}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;

    move-object v1, p2

    move-object v2, p0

    move v6, p3

    move v8, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;-><init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1765
    return-void
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 1327
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_34

    .line 1331
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 1332
    :goto_1f
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1333
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1334
    return-void

    .line 1328
    :cond_34
    :goto_34
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 5

    .line 1148
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_21

    .line 1149
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1150
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1151
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1152
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setWaitingForDrawnIfResizingChanged()V

    .line 1148
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1155
    :cond_21
    return-void
.end method

.method calculateDockedBoundsForConfigChange(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 7

    .line 430
    nop

    .line 431
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRequestedOverrideWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 432
    :goto_d
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskStack;->repositionSplitScreenStackAfterRotation(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V

    .line 433
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 434
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/content/res/Configuration;Landroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 435
    if-eqz v0, :cond_39

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result p1

    .line 439
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 440
    if-eq p1, v2, :cond_2b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_29

    goto :goto_2b

    .line 442
    :cond_29
    move v1, v2

    goto :goto_2c

    .line 441
    :cond_2b
    :goto_2b
    nop

    .line 442
    :goto_2c
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p2, v1, v0}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 444
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    .line 446
    :cond_39
    return-void
.end method

.method calculatePinnedBoundsForConfigChange(Landroid/graphics/Rect;)Z
    .registers 7

    .line 388
    nop

    .line 389
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_1a

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 390
    nop

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    move v0, v1

    goto :goto_20

    .line 393
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 395
    :goto_20
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    .line 397
    if-eqz v2, :cond_5b

    .line 398
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 404
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/-$$Lambda$TaskStack$LbFVWgYTv7giS6WqQc5168AJCDQ;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskStack$LbFVWgYTv7giS6WqQc5168AJCDQ;-><init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    :cond_4f
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 411
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 412
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 414
    :cond_5b
    return v2
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1899
    const/4 v0, 0x1

    return v0

    .line 1901
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-eqz v0, :cond_f

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1905
    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    .line 1867
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1868
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1

    .line 1870
    :cond_11
    return v1
.end method

.method dim(F)V
    .registers 4

    .line 1960
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1961
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1962
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mStackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeferRemoval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_71

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinimizeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    :cond_71
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_bb

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedForIme=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustImeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustDividerAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    :cond_bb
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    :cond_e0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e8
    if-ltz v0, :cond_109

    .line 1399
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1398
    add-int/lit8 v0, v0, -0x1

    goto :goto_e8

    .line 1401
    :cond_109
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    if-eqz v0, :cond_121

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWindowAnimationBackgroundSurface is shown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    :cond_121
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_160

    .line 1405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1406
    const-string v0, "  Exiting application tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_139
    if-ltz v0, :cond_160

    .line 1408
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 1409
    const-string v2, "  Exiting App #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1410
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1411
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 1412
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1407
    add-int/lit8 v0, v0, -0x1

    goto :goto_139

    .line 1415
    :cond_160
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    const-string v0, "AnimatingApps:"

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    return-void
.end method

.method endImeAdjustAnimation()V
    .registers 5

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_19

    .line 1162
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1161
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1164
    :cond_19
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_20

    .line 180
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0

    .line 178
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V
    .registers 10

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1474
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1475
    return-void

    .line 1478
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_15
    if-ltz v0, :cond_51

    .line 1479
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1480
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-ne v3, v1, :cond_28

    .line 1481
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1482
    return-void

    .line 1490
    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1491
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v4, p3

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 1492
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1493
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 1495
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1497
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 1498
    iput-object v2, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 1499
    return-void

    .line 1503
    :cond_4d
    return-void

    .line 1478
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1506
    :cond_51
    return-void
.end method

.method getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
    .registers 2

    .line 1970
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 363
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 365
    return-void

    .line 367
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 368
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    return-object v0

    .line 314
    :cond_b
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 373
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 1924
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1956
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .registers 3

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I
    .registers 4

    .line 1449
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_6

    .line 1450
    const/4 p1, -0x1

    return p1

    .line 1452
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I
    .registers 4

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 356
    return-void
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .registers 4

    .line 1167
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const p2, 0x3e99999a  # 0.3f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method getMinimizeDistance()I
    .registers 4

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1288
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1289
    return v1

    .line 1292
    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    .line 1293
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1294
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    return v1

    .line 1296
    :cond_1f
    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-ne v0, v2, :cond_26

    goto :goto_27

    .line 1299
    :cond_26
    return v1

    .line 1297
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .registers 2

    .line 1910
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 1670
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1671
    return-object v1

    .line 1674
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1675
    if-nez v0, :cond_f

    .line 1676
    return-object v1

    .line 1679
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1680
    return-object v1

    .line 1683
    :cond_16
    nop

    .line 1684
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 1685
    if-nez p2, :cond_21

    .line 1687
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->getDefaultOrLastSavedBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 1690
    :cond_21
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1691
    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    .line 1694
    :cond_2d
    return-object p2
.end method

.method getRawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 297
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 294
    return-void
.end method

.method getRelativeDisplayedPosition(Landroid/graphics/Point;)V
    .registers 4

    .line 783
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v0

    .line 785
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 786
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 787
    return-void
.end method

.method getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16

    .line 849
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 851
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6d

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6d

    .line 860
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v2

    .line 863
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 864
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 865
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 869
    invoke-virtual {p2, p1, v2, p4}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V

    goto :goto_31

    .line 873
    :cond_2e
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 876
    :goto_31
    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 877
    return-void

    .line 882
    :cond_35
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result p5

    if-eqz p5, :cond_41

    if-eqz p3, :cond_41

    .line 883
    invoke-virtual {p4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 884
    return-void

    .line 887
    :cond_41
    const/4 p3, -0x1

    if-ne v2, p3, :cond_53

    .line 889
    const-string p1, "WindowManager"

    const-string p2, "Failed to get valid docked side for docked stack"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 891
    return-void

    .line 894
    :cond_53
    const/4 p3, 0x2

    if-eq v2, p3, :cond_5b

    if-ne v2, v1, :cond_59

    goto :goto_5b

    :cond_59
    move v9, v0

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v9, v1

    .line 895
    :goto_5c
    const/4 v5, 0x0

    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 897
    invoke-virtual {p3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v8

    .line 895
    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 898
    return-void

    .line 853
    :cond_6d
    :goto_6d
    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget p3, p3, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez p3, :cond_75

    move v8, v1

    goto :goto_76

    :cond_75
    move v8, v0

    .line 855
    :goto_76
    const/4 v4, 0x1

    iget-object p3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 857
    invoke-virtual {p3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v7

    .line 855
    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 858
    return-void
.end method

.method getStackOutset()I
    .registers 3

    .line 769
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 770
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 771
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 778
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method hasTaskForUser(I)Z
    .registers 5

    .line 1462
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1463
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1464
    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v2, p1, :cond_17

    .line 1465
    return v1

    .line 1462
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1468
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method isAdjustedForIme()Z
    .registers 2

    .line 1072
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .registers 3

    .line 1338
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isAnimatingBounds()Z
    .registers 2

    .line 1878
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 2

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isAnimatingForIme()Z
    .registers 2

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isAttached()Z
    .registers 3

    .line 1814
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1815
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1816
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isForceScaled()Z
    .registers 2

    .line 1874
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method isTaskAnimating()Z
    .registers 4

    .line 1346
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1347
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1348
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1349
    return v1

    .line 1346
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1352
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$animateResizePinnedStack$3$TaskStack(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V
    .registers 18

    .line 1761
    move-object v0, p1

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    .line 1764
    return-void
.end method

.method public synthetic lambda$calculatePinnedBoundsForConfigChange$0$TaskStack(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 405
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/BoundsAnimationController;->cancel(Lcom/android/server/wm/BoundsAnimationTarget;)V

    return-void
.end method

.method public lastAnimatingBoundsWasToFullscreen()Z
    .registers 2

    .line 1882
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method onAllWindowsDrawn()V
    .registers 2

    .line 1577
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_9

    .line 1578
    return-void

    .line 1581
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->onAllWindowsDrawn()V

    .line 1582
    return-void
.end method

.method public onAnimationEnd(ZLandroid/graphics/Rect;Z)V
    .registers 6

    .line 1629
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1633
    if-eqz p1, :cond_10

    .line 1636
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1640
    :cond_10
    iget p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    .line 1641
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setPinnedStackAlpha(F)Z

    .line 1642
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyPinnedStackAnimationEnded()V

    .line 1643
    return-void

    .line 1646
    :cond_22
    if-eqz p2, :cond_2d

    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-nez p1, :cond_2d

    .line 1647
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/TaskStack;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_30

    .line 1651
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1654
    :goto_30
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyPinnedStackAnimationEnded()V

    .line 1655
    if-eqz p3, :cond_46

    .line 1656
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_46

    .line 1660
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1662
    :cond_46
    :goto_46
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAnimationStart(ZZI)Z
    .registers 8
    .param p3  # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 1588
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1591
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1594
    :cond_14
    :try_start_14
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 1595
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1596
    iput p3, p0, Lcom/android/server/wm/TaskStack;->mAnimationType:I

    .line 1600
    if-eqz p1, :cond_22

    .line 1601
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1604
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1608
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->notifyPinnedStackAnimationStarted()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 1611
    goto :goto_35

    .line 1609
    :catch_34
    move-exception v0

    .line 1613
    :goto_35
    if-nez p1, :cond_39

    if-ne p3, v1, :cond_41

    :cond_39
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    if-eqz p1, :cond_41

    .line 1619
    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/android/server/wm/ActivityStack;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1623
    :cond_41
    return v1

    .line 1604
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 732
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 733
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 737
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result p1

    .line 739
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    .line 741
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_1a

    .line 742
    return-void

    .line 745
    :cond_1a
    if-eq v0, p1, :cond_2d

    .line 746
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 748
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 751
    sget-object p1, Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 756
    :cond_2d
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 821
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 822
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onDisplayChanged: Already attached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 825
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 827
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 828
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez p1, :cond_41

    .line 829
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animation background stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 831
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 833
    :cond_41
    return-void
.end method

.method onParentChanged()V
    .registers 4

    .line 1006
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_e

    goto :goto_37

    .line 1012
    :cond_e
    const/16 v0, 0x791e

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1016
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 1019
    :cond_2d
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1021
    return-void

    .line 1009
    :cond_37
    :goto_37
    return-void
.end method

.method public onPipAnimationEndResize()V
    .registers 4

    .line 1823
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1824
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1825
    nop

    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1826
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1827
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->clearPreserveNonFloatingState()V

    .line 1825
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1829
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1830
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1831
    return-void

    .line 1830
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 2

    .line 1890
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v0, :cond_a

    .line 1891
    const/4 v0, 0x1

    return v0

    .line 1893
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/Task;Z)V
    .registers 5

    .line 599
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 600
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 84
    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/Task;I)V
    .registers 3

    .line 558
    if-nez p1, :cond_3

    .line 562
    return-void

    .line 564
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->positionAt(I)V

    .line 565
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 566
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4

    .line 584
    if-nez p1, :cond_3

    .line 586
    return-void

    .line 589
    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 591
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 592
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 594
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 595
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;Z)V
    .registers 4

    .line 569
    if-nez p1, :cond_3

    .line 571
    return-void

    .line 574
    :cond_3
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 577
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 580
    :cond_19
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 581
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 186
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 184
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 188
    :cond_18
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 1929
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 1930
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1931
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1934
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1935
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1936
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1938
    :cond_24
    return-void
.end method

.method removeChild(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 712
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 717
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 719
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 721
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_29
    if-ltz v0, :cond_43

    .line 722
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 723
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v3, p1, :cond_40

    .line 724
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 725
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 721
    :cond_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 728
    :cond_43
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 84
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->removeChild(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 989
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    .line 991
    return-void

    .line 993
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 994
    return-void
.end method

.method removeImmediately()V
    .registers 2

    .line 998
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    .line 999
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1001
    :cond_7
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 1002
    return-void
.end method

.method reparent(ILandroid/graphics/Rect;Z)V
    .registers 5

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_1b

    .line 628
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/DisplayContent;->moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 630
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1a

    .line 632
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 634
    :goto_1a
    return-void

    .line 624
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to move stackId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to unknown displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method repositionSplitScreenStackAfterRotation(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V
    .registers 8

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    .line 459
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    .line 460
    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    .line 461
    :goto_e
    iget-object p2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object p2

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 463
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 464
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 462
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 465
    return-void

    .line 467
    :cond_27
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 468
    const/4 p2, 0x1

    if-eq v1, p2, :cond_67

    const/4 p2, 0x2

    if-eq v1, p2, :cond_5a

    const/4 p2, 0x3

    if-eq v1, p2, :cond_4a

    const/4 p2, 0x4

    if-eq v1, p2, :cond_3a

    goto :goto_74

    .line 485
    :cond_3a
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    .line 486
    iget p2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 487
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_74

    .line 475
    :cond_4a
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    .line 476
    iget p2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 477
    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 478
    goto :goto_74

    .line 480
    :cond_5a
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 481
    iget p2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 482
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 483
    goto :goto_74

    .line 470
    :cond_67
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 471
    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->left:I

    .line 472
    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 473
    nop

    .line 490
    :goto_74
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .registers 5

    .line 1106
    if-eqz p1, :cond_23

    .line 1107
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1108
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1110
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1111
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-nez v0, :cond_12

    .line 1112
    return-void

    .line 1114
    :cond_12
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1115
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1116
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_2a

    .line 1118
    :cond_23
    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1120
    :goto_2a
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    .line 1024
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1025
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->hideAnimationSurface()V

    .line 1026
    return-void
.end method

.method resetDockedStackToMiddle()V
    .registers 9

    .line 971
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-nez v0, :cond_37

    .line 975
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 977
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 978
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 979
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 981
    if-eqz v2, :cond_24

    if-ne v2, p0, :cond_20

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_24
    :goto_24
    move-object v4, v1

    .line 982
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 984
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->requestResize(Landroid/graphics/Rect;)V

    .line 985
    return-void

    .line 972
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .registers 6

    .line 1060
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1061
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1062
    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz p1, :cond_b

    if-eqz p2, :cond_22

    .line 1063
    :cond_b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1065
    const/4 v1, 0x0

    if-eqz p2, :cond_1a

    iget v2, v0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    goto :goto_1b

    :cond_1a
    move v2, v1

    .line 1066
    :goto_1b
    if-eqz p2, :cond_1f

    iget v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 1067
    :cond_1f
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 1069
    :cond_22
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .registers 3

    .line 1129
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    .line 1130
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 1131
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p1

    return p1

    .line 1134
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .registers 4

    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_11

    .line 1030
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1031
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 p2, 0x437f0000  # 255.0f

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->showAnimationSurface(F)V

    .line 1033
    :cond_11
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_7

    .line 1802
    return-void

    .line 1805
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1806
    return-void

    .line 1809
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    .line 1810
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 7

    .line 1771
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_7

    .line 1772
    return-void

    .line 1775
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1776
    return-void

    .line 1779
    :cond_e
    nop

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 1782
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_22

    .line 1783
    return-void

    .line 1785
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 1786
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1787
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskStack;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1788
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1789
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/TaskStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 1792
    :cond_45
    nop

    .line 1793
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1794
    goto :goto_4f

    :cond_4d
    const/high16 p1, -0x40800000  # -1.0f

    .line 1792
    :goto_4f
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    .line 1795
    return-void
.end method

.method public setPinnedStackAlpha(F)Z
    .registers 7

    .line 1943
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1944
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1945
    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_30

    .line 1949
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v4, :cond_20

    const/high16 p1, 0x3f800000  # 1.0f

    :cond_20
    invoke-virtual {v3, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1951
    iget-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-nez p1, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1947
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1952
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5

    .line 1562
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1563
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v1, :cond_12

    .line 1564
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1566
    :cond_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1569
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1572
    goto :goto_1f

    .line 1570
    :catch_1e
    move-exception p1

    .line 1573
    :goto_1f
    const/4 p1, 0x1

    return p1

    .line 1566
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    .line 1510
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_5e

    .line 1511
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1512
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1513
    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1514
    goto :goto_5b

    .line 1530
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1531
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_38

    .line 1533
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1536
    :goto_38
    if-ne v1, p1, :cond_3f

    .line 1539
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1542
    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    .line 1543
    if-ne v1, p1, :cond_47

    if-eqz v2, :cond_5b

    .line 1544
    :cond_47
    if-eqz v2, :cond_54

    .line 1547
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v2, p2

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1553
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1555
    :cond_54
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1510
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1558
    :cond_5e
    return-void
.end method

.method public shouldDeferStartOnMoveToFullscreen()Z
    .registers 6

    .line 1835
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1838
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1846
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1847
    const/4 v3, 0x1

    if-nez v1, :cond_22

    .line 1848
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1850
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1851
    if-nez v1, :cond_2f

    .line 1852
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1854
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v4

    .line 1855
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_46

    if-nez v4, :cond_3c

    goto :goto_46

    .line 1858
    :cond_3c
    iget-boolean v1, v4, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v1, :cond_41

    move v2, v3

    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1856
    :cond_46
    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1859
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldIgnoreInput()Z
    .registers 2

    .line 1139
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1139
    :goto_16
    return v0
.end method

.method snapDockedStackAfterRotation(Landroid/content/res/Configuration;Landroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 20

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v10

    .line 500
    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v11

    .line 501
    invoke-static {v9, v11, v10}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v12

    .line 503
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 504
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 507
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 508
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 509
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    move v3, v13

    move v4, v14

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 511
    new-instance v15, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 512
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v7, v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    move v5, v2

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v8

    move-object v0, v15

    move v2, v13

    move v3, v14

    move v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    .line 515
    invoke-virtual {v15, v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 518
    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v1, v11

    move-object/from16 v2, p3

    move v3, v13

    move v4, v14

    move v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 521
    return-void
.end method

.method stopDimming()V
    .registers 3

    .line 1965
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1967
    return-void
.end method

.method switchUser()V
    .registers 6

    .line 1038
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1040
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_33

    .line 1041
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1042
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1043
    :cond_24
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1044
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 1045
    add-int/lit8 v0, v0, -0x1

    .line 1040
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1048
    :cond_33
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .registers 5

    .line 1088
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_11

    if-eqz p3, :cond_f

    goto :goto_11

    .line 1095
    :cond_f
    const/4 p1, 0x0

    return p1

    .line 1090
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1091
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1092
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result p1

    return p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 1359
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1360
    return-void

    .line 1363
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1364
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1365
    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1366
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_3d

    .line 1367
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/Task;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1366
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 1369
    :cond_3d
    const-wide v0, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object p4

    const-wide v0, 0x10b00000005L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1371
    const-wide v0, 0x10800000006L

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1372
    const-wide v0, 0x10800000007L

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1373
    const-wide v0, 0x10200000008L

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1374
    const-wide v0, 0x10800000009L

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1375
    const-wide v0, 0x1020000000aL

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1376
    const-wide v0, 0x1020000000bL

    iget p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1377
    iget-object p4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1378
    const-wide v0, 0x1080000000dL

    iget-boolean p4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1379
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1380
    return-void
.end method
