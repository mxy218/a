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
.field private isMoveWindowMode:Z

.field private isMovingFinished:Z

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

.field private mClipForMoveWindow:Z

.field mDeferBack:Z

.field final mDeferHideDimTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mDeferRemoval:Z

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mDockedStackMinimizeThickness:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private mLastClipForMoveWindow:Z

.field private mLastCornerRadius:F

.field private mLastOffsetX:I

.field private mLastOffsetY:I

.field private mLastScale:F

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mMinimizeAmount:F

.field private mMoveOffsetY:I

.field private mOffsetX:I

.field private mOffsetY:I

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

.field private mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/ActivityStack;)V
    .registers 6
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"  # I
    .param p3, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 123
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 124
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 142
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 154
    new-instance v1, Lcom/android/server/wm/Dimmer;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 163
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 165
    new-instance v1, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-direct {v1}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 1993
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mLastCornerRadius:F

    .line 1995
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mLastScale:F

    .line 1996
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 1997
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    .line 1998
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mOffsetX:I

    .line 1999
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    .line 2000
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mLastOffsetX:I

    .line 2001
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mLastOffsetY:I

    .line 2002
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    .line 2003
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    .line 2004
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->isMovingFinished:Z

    .line 2005
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mClipForMoveWindow:Z

    .line 2006
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mLastClipForMoveWindow:Z

    .line 170
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 171
    iput-object p3, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    .line 172
    invoke-virtual {p3, p0}, Lcom/android/server/wm/ActivityStack;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 173
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 175
    const/16 v0, 0x791c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 176
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .registers 20
    .param p1, "imeWin"  # Lcom/android/server/wm/WindowState;

    .line 1200
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 1201
    return v2

    .line 1204
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 1205
    .local v1, "dockedSide":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1d

    const/4 v5, 0x4

    if-ne v1, v5, :cond_1b

    goto :goto_1d

    :cond_1b
    move v5, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v5, 0x1

    .line 1206
    .local v5, "dockedTopOrBottom":Z
    :goto_1e
    if-eqz p1, :cond_112

    if-nez v5, :cond_26

    move/from16 v16, v1

    goto/16 :goto_114

    .line 1210
    :cond_26
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 1211
    .local v2, "displayStableRect":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 1214
    .local v6, "contentBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1215
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1216
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1218
    .local v7, "imeTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    .line 1219
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    if-le v8, v7, :cond_4d

    .line 1220
    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1223
    :cond_4d
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 1225
    .local v8, "yOffset":I
    nop

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v9}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v9

    .line 1227
    .local v9, "dividerWidth":I
    nop

    .line 1228
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v10}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v10

    .line 1230
    .local v10, "dividerWidthInactive":I
    if-ne v1, v4, :cond_af

    .line 1234
    nop

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v4

    .line 1236
    .local v4, "minTopStackBottom":I
    nop

    .line 1237
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v8

    add-int/2addr v11, v9

    sub-int/2addr v11, v10

    .line 1236
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1239
    .local v11, "bottom":I
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1240
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float v14, v11

    mul-float/2addr v14, v13

    const/high16 v15, 0x3f800000  # 1.0f

    sub-float/2addr v15, v13

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    mul-float/2addr v15, v13

    add-float/2addr v14, v15

    float-to-int v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 1242
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1243
    .end local v4  # "minTopStackBottom":I
    .end local v11  # "bottom":I
    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_110

    .line 1245
    :cond_af
    sub-int v4, v10, v9

    .line 1252
    .local v4, "dividerWidthDelta":I
    nop

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v9

    add-int/2addr v11, v10

    .line 1254
    .local v11, "topBeforeImeAdjust":I
    nop

    .line 1256
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v9

    .line 1255
    invoke-virtual {v0, v2, v12}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v12

    .line 1257
    .local v12, "minTopStackBottom":I
    nop

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int v14, v12, v10

    .line 1257
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1260
    .local v13, "top":I
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1264
    iget-object v14, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v16, v1

    .end local v1  # "dockedSide":I
    .local v16, "dockedSide":I
    sub-int v1, v13, v11

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    move-object/from16 v17, v2

    .end local v2  # "displayStableRect":Landroid/graphics/Rect;
    .local v17, "displayStableRect":Landroid/graphics/Rect;
    int-to-float v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    add-int/2addr v15, v1

    iput v15, v14, Landroid/graphics/Rect;->top:I

    .line 1267
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1268
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput v13, v1, Landroid/graphics/Rect;->top:I

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v13

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1271
    .end local v4  # "dividerWidthDelta":I
    .end local v11  # "topBeforeImeAdjust":I
    .end local v12  # "minTopStackBottom":I
    .end local v13  # "top":I
    :goto_110
    const/4 v1, 0x1

    return v1

    .line 1206
    .end local v6  # "contentBounds":Landroid/graphics/Rect;
    .end local v7  # "imeTop":I
    .end local v8  # "yOffset":I
    .end local v9  # "dividerWidth":I
    .end local v10  # "dividerWidthInactive":I
    .end local v16  # "dockedSide":I
    .end local v17  # "displayStableRect":Landroid/graphics/Rect;
    .restart local v1  # "dockedSide":I
    :cond_112
    move/from16 v16, v1

    .line 1207
    .end local v1  # "dockedSide":I
    .restart local v16  # "dockedSide":I
    :goto_114
    return v2
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .registers 9
    .param p1, "minimizeAmount"  # F

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1276
    .local v0, "dockSide":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1277
    return v1

    .line 1280
    :cond_11
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    if-ne v0, v2, :cond_3d

    .line 1281
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1282
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1283
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1284
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v4, p1

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 1286
    .end local v1  # "topInset":I
    goto :goto_93

    :cond_3d
    if-ne v0, v3, :cond_6b

    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1289
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, p1

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1292
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .end local v1  # "width":I
    goto :goto_92

    .line 1293
    :cond_6b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_92

    .line 1294
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1295
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v4, p1

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_93

    .line 1293
    :cond_92
    :goto_92
    nop

    .line 1299
    :goto_93
    return v3
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "adjustedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"  # Landroid/graphics/Rect;

    .line 222
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 223
    return-void

    .line 226
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

    .line 229
    .local v0, "alignBottom":Z
    :goto_16
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "taskNdx":I
    :goto_1d
    if-ltz v2, :cond_2d

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 231
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 229
    .end local v1  # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 233
    .end local v2  # "taskNdx":I
    :cond_2d
    return-void
.end method

.method private canSpecifyOrientation()Z
    .registers 5

    .line 1933
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 1934
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v1

    .line 1935
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_16

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method private computeMaxPosition(I)I
    .registers 5
    .param p1, "maxPosition"  # I

    .line 692
    :goto_0
    if-lez p1, :cond_26

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 694
    .local v0, "tmpTask":Lcom/android/server/wm/Task;
    nop

    .line 695
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 696
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 697
    .local v1, "canShowTmpTask":Z
    :goto_1f
    if-nez v1, :cond_22

    .line 698
    goto :goto_26

    .line 700
    :cond_22
    nop

    .end local v0  # "tmpTask":Lcom/android/server/wm/Task;
    .end local v1  # "canShowTmpTask":Z
    add-int/lit8 p1, p1, -0x1

    .line 701
    goto :goto_0

    .line 702
    :cond_26
    :goto_26
    return p1
.end method

.method private computeMinPosition(II)I
    .registers 6
    .param p1, "minPosition"  # I
    .param p2, "size"  # I

    .line 673
    :goto_0
    if-ge p1, p2, :cond_26

    .line 674
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 675
    .local v0, "tmpTask":Lcom/android/server/wm/Task;
    nop

    .line 676
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 677
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 678
    .local v1, "canShowTmpTask":Z
    :goto_1f
    if-eqz v1, :cond_22

    .line 679
    goto :goto_26

    .line 681
    :cond_22
    nop

    .end local v0  # "tmpTask":Lcom/android/server/wm/Task;
    .end local v1  # "canShowTmpTask":Z
    add-int/lit8 p1, p1, 0x1

    .line 682
    goto :goto_0

    .line 683
    :cond_26
    :goto_26
    return p1
.end method

.method private findPositionForTask(Lcom/android/server/wm/Task;IZZ)I
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "targetPosition"  # I
    .param p3, "showForAllUsers"  # Z
    .param p4, "addingNew"  # Z

    .line 642
    if-nez p3, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 643
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 645
    .local v0, "canShowTask":Z
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 646
    .local v1, "stackSize":I
    const/4 v2, 0x0

    .line 647
    .local v2, "minPosition":I
    if-eqz p4, :cond_1b

    move v3, v1

    goto :goto_1d

    :cond_1b
    add-int/lit8 v3, v1, -0x1

    .line 649
    .local v3, "maxPosition":I
    :goto_1d
    if-eqz v0, :cond_24

    .line 650
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v2

    goto :goto_28

    .line 652
    :cond_24
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v3

    .line 656
    :goto_28
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_2f

    if-nez v2, :cond_2f

    .line 657
    return v4

    .line 658
    :cond_2f
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_3d

    .line 659
    if-eqz p4, :cond_38

    move v5, v1

    goto :goto_3a

    :cond_38
    add-int/lit8 v5, v1, -0x1

    :goto_3a
    if-ne v3, v5, :cond_3d

    .line 660
    return v4

    .line 663
    :cond_3d
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I
    .registers 8
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;
    .param p3, "bounds"  # Landroid/graphics/Rect;

    .line 1480
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1481
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1482
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 1480
    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method private getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 26
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "primary"  # Z
    .param p3, "outBounds"  # Landroid/graphics/Rect;
    .param p4, "dockedBounds"  # Landroid/graphics/Rect;
    .param p5, "dockDividerWidth"  # I
    .param p6, "dockOnTopOrLeft"  # Z

    .line 934
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 935
    .local v11, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v4, v5, :cond_1c

    move v4, v7

    goto :goto_1d

    :cond_1c
    move v4, v6

    :goto_1d
    move v12, v4

    .line 937
    .local v12, "splitHorizontally":Z
    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 938
    if-eqz p2, :cond_98

    .line 939
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_31

    .line 940
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 941
    return-void

    .line 947
    :cond_31
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v10, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 948
    .local v10, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 949
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v14

    .line 950
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v16

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 948
    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 951
    new-instance v13, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 952
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 953
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_6e

    move v14, v7

    goto :goto_6f

    :cond_6e
    move v14, v6

    :goto_6f
    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v4, v13

    move v6, v8

    move v7, v9

    move/from16 v8, p5

    move v9, v14

    move-object v14, v10

    .end local v10  # "displayCutout":Landroid/view/DisplayCutout;
    .local v14, "displayCutout":Landroid/view/DisplayCutout;
    move-object v10, v15

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 956
    invoke-virtual {v13}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 958
    .local v4, "position":I
    if-eqz p6, :cond_8c

    .line 959
    if-eqz v12, :cond_89

    .line 960
    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_97

    .line 962
    :cond_89
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_97

    .line 965
    :cond_8c
    if-eqz v12, :cond_93

    .line 966
    add-int v5, v4, p5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    goto :goto_97

    .line 968
    :cond_93
    add-int v5, v4, p5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 971
    :goto_97
    return-void

    .line 975
    .end local v4  # "position":I
    .end local v14  # "displayCutout":Landroid/view/DisplayCutout;
    :cond_98
    if-nez p6, :cond_aa

    .line 976
    if-eqz v12, :cond_a3

    .line 977
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_b9

    .line 979
    :cond_a3
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_b9

    .line 982
    :cond_aa
    if-eqz v12, :cond_b3

    .line 983
    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    goto :goto_b9

    .line 985
    :cond_b3
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, p5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 988
    :goto_b9
    xor-int/lit8 v4, p6, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 989
    return-void
.end method

.method private hideAnimationSurface()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 250
    return-void

    .line 252
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 255
    return-void
.end method

.method private isMinimizedDockAndHomeStackResizable()Z
    .registers 2

    .line 1303
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1304
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1303
    :goto_17
    return v0
.end method

.method static synthetic lambda$onAnimationStart$2(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 1625
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$1(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 754
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 755
    return-void
.end method

.method private positionChildAt(ILcom/android/server/wm/Task;ZZ)V
    .registers 12
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/Task;
    .param p3, "includingParents"  # Z
    .param p4, "showForAllUsers"  # Z

    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/android/server/wm/TaskStack;->findPositionForTask(Lcom/android/server/wm/Task;IZZ)I

    move-result v1

    .line 613
    .local v1, "targetPosition":I
    invoke-super {p0, v1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 616
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_2a

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionTask: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_36

    move v2, v3

    goto :goto_37

    :cond_36
    move v2, v0

    .line 620
    .local v2, "toTop":I
    :goto_37
    const/16 v4, 0x791a

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 621
    return-void
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v0

    if-nez v0, :cond_f

    .line 200
    return-void

    .line 203
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 205
    .local v0, "adjusted":Z
    const/4 v1, 0x0

    .line 206
    .local v1, "insetBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3b

    .line 208
    :cond_2a
    if-eqz v0, :cond_3b

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_3b

    .line 209
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v2, :cond_39

    .line 210
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3b

    .line 212
    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 215
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_44

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_44
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 218
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 219
    return-void
.end method

.method private setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "sourceHintBounds"  # Landroid/graphics/Rect;
    .param p2, "destBounds"  # Landroid/graphics/Rect;
    .param p3, "toFullscreen"  # Z

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 327
    iput-boolean p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 328
    if-eqz p2, :cond_d

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_12

    .line 331
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 333
    :goto_12
    if-eqz p1, :cond_1a

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_23

    .line 335
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_23

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 343
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "existing"  # Landroid/graphics/Rect;
    .param p2, "bounds"  # Landroid/graphics/Rect;

    .line 274
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 275
    const/4 v0, 0x0

    return v0

    .line 278
    :cond_8
    invoke-super {p0, p2}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 280
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 281
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAnimationBackgroundBounds()V

    .line 284
    :cond_15
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 286
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 287
    return v0
.end method

.method private setWindowCropForCornerRadius(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 2076
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mLastCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    if-eqz v0, :cond_14

    .line 2077
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 2078
    .local v0, "crop":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2080
    .end local v0  # "crop":Landroid/graphics/Rect;
    :cond_14
    return-void
.end method

.method private showAnimationSurface(F)V
    .registers 5
    .param p1, "alpha"  # F

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 259
    return-void

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 262
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 266
    return-void
.end method

.method private updateAdjustedBounds()V
    .registers 7

    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, "adjust":Z
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_d

    .line 1333
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    goto :goto_17

    .line 1334
    :cond_d
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_17

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 1337
    :cond_17
    :goto_17
    if-nez v0, :cond_1e

    .line 1338
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1340
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1342
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_2e

    move v1, v2

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 1343
    .local v1, "isImeTarget":Z
    :goto_2f
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_4b

    if-eqz v0, :cond_4b

    if-nez v1, :cond_4b

    .line 1344
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3e800000  # 0.25f

    mul-float/2addr v3, v4

    .line 1346
    .local v3, "alpha":F
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 1348
    .end local v3  # "alpha":F
    :cond_4b
    return-void
.end method

.method private updateAnimationBackgroundBounds()V
    .registers 7

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 237
    return-void

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 241
    .local v0, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 242
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

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 243
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 246
    return-void
.end method

.method private updateSurfaceBounds()V
    .registers 2

    .line 761
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 763
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 764
    return-void
.end method

.method private updateSurfacePositionIfNeed(Z)V
    .registers 5
    .param p1, "end"  # Z

    .line 2036
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mLastOffsetX:I

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mOffsetX:I

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mLastOffsetY:I

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    if-eq v0, v1, :cond_f

    .line 2037
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 2039
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    if-nez v0, :cond_15

    if-eqz p1, :cond_4d

    .line 2040
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mLastClipForMoveWindow:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mClipForMoveWindow:Z

    if-eq v0, v1, :cond_4d

    .line 2041
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mLastClipForMoveWindow:Z

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2043
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mLastClipForMoveWindow:Z

    if-eqz v1, :cond_47

    .line 2044
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2045
    .local v1, "clip":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2047
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2048
    .end local v1  # "clip":Landroid/graphics/Rect;
    goto :goto_4d

    .line 2049
    :cond_47
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2053
    .end local v0  # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_4d
    :goto_4d
    return-void
.end method

.method private updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 804
    return-void

    .line 807
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 808
    .local v0, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 809
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 811
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v3

    .line 812
    .local v3, "outset":I
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v1, v4

    .line 813
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 815
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v1, v4, :cond_28

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_28

    .line 816
    return-void

    .line 818
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 820
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3e

    .line 822
    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 824
    :goto_3e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 826
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mLastCornerRadius:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_51

    .line 827
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setWindowCropForCornerRadius(Landroid/view/SurfaceControl$Transaction;)V

    .line 830
    :cond_51
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;I)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "position"  # I

    .line 527
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 528
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;IZZ)V
    .registers 9
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "position"  # I
    .param p3, "showForAllUsers"  # Z
    .param p4, "moveParents"  # Z

    .line 539
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 542
    .local v0, "currentStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3a

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, v2, :cond_b

    goto :goto_3a

    .line 543
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but it is already attached to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_3a
    :goto_3a
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 550
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 553
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 554
    return-void
.end method

.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 24
    .param p1, "toBounds"  # Landroid/graphics/Rect;
    .param p2, "sourceHintBounds"  # Landroid/graphics/Rect;
    .param p3, "animationDuration"  # I
    .param p4, "fromFullscreen"  # Z

    .line 1727
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1728
    return-void

    .line 1731
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 1732
    .local v11, "fromBounds":Landroid/graphics/Rect;
    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1735
    const/4 v0, 0x0

    .line 1737
    .local v0, "schedulePipModeChangedState":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    :goto_1a
    move v12, v3

    .line 1738
    .local v12, "toFullscreen":Z
    if-eqz v12, :cond_50

    .line 1739
    if-nez p4, :cond_48

    .line 1743
    const/4 v0, 0x1

    .line 1745
    iget-object v3, v10, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v10, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v2, v4}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 1747
    iget-object v3, v10, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 1749
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v10, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move v14, v0

    move-object v13, v3

    .end local p1  # "toBounds":Landroid/graphics/Rect;
    .local v3, "toBounds":Landroid/graphics/Rect;
    goto :goto_5a

    .line 1752
    .end local v3  # "toBounds":Landroid/graphics/Rect;
    .restart local p1  # "toBounds":Landroid/graphics/Rect;
    :cond_39
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1753
    .end local p1  # "toBounds":Landroid/graphics/Rect;
    .restart local v3  # "toBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    move v14, v0

    move-object v13, v3

    goto :goto_5a

    .line 1740
    .end local v3  # "toBounds":Landroid/graphics/Rect;
    .restart local p1  # "toBounds":Landroid/graphics/Rect;
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Should not defer scheduling PiP mode change on animation to fullscreen."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1755
    :cond_50
    if-eqz p4, :cond_57

    .line 1756
    const/4 v0, 0x2

    move-object/from16 v13, p1

    move v14, v0

    goto :goto_5a

    .line 1755
    :cond_57
    move-object/from16 v13, p1

    move v14, v0

    .line 1759
    .end local v0  # "schedulePipModeChangedState":I
    .end local p1  # "toBounds":Landroid/graphics/Rect;
    .local v13, "toBounds":Landroid/graphics/Rect;
    .local v14, "schedulePipModeChangedState":I
    :goto_5a
    move-object/from16 v15, p2

    invoke-direct {v10, v15, v13, v12}, Lcom/android/server/wm/TaskStack;->setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1761
    move-object v4, v13

    .line 1762
    .local v4, "finalToBounds":Landroid/graphics/Rect;
    move v6, v14

    .line 1764
    .local v6, "finalSchedulePipModeChangedState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1765
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 1766
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getAnimationType()I

    move-result v0

    .line 1767
    .local v0, "intendedAnimationType":I
    if-ne v0, v2, :cond_8b

    .line 1768
    if-eqz p4, :cond_73

    .line 1769
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/android/server/wm/TaskStack;->setPinnedStackAlpha(F)Z

    .line 1771
    :cond_73
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_8b

    .line 1772
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_8b

    .line 1773
    const/4 v0, 0x0

    move/from16 v16, v0

    goto :goto_8d

    .line 1777
    :cond_8b
    move/from16 v16, v0

    .end local v0  # "intendedAnimationType":I
    .local v16, "intendedAnimationType":I
    :goto_8d
    move/from16 v9, v16

    .line 1778
    .local v9, "animationType":I
    iput-boolean v1, v10, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 1779
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v5, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v11

    move-object v10, v5

    move/from16 v5, p3

    move-object/from16 v17, v11

    move-object v11, v7

    .end local v11  # "fromBounds":Landroid/graphics/Rect;
    .local v17, "fromBounds":Landroid/graphics/Rect;
    move/from16 v7, p4

    move-object/from16 v18, v8

    .end local v8  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v18, "displayContent":Lcom/android/server/wm/DisplayContent;
    move v8, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/-$$Lambda$TaskStack$Vzix6ElfYqr96C0Kgjxo_MdVpAg;-><init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    invoke-virtual {v11, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1784
    return-void
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 1351
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

    .line 1355
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 1356
    .local v0, "insetBounds":Landroid/graphics/Rect;
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

    .line 1357
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1358
    return-void

    .line 1352
    .end local v0  # "insetBounds":Landroid/graphics/Rect;
    :cond_34
    :goto_34
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 5

    .line 1172
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_21

    .line 1173
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1174
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1175
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1176
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setWaitingForDrawnIfResizingChanged()V

    .line 1172
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1179
    .end local v0  # "j":I
    :cond_21
    return-void
.end method

.method calculateDockedBoundsForConfigChange(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "inOutBounds"  # Landroid/graphics/Rect;

    .line 432
    nop

    .line 433
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

    .line 434
    .local v0, "primary":Z
    :goto_d
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskStack;->repositionSplitScreenStackAfterRotation(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V

    .line 435
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 436
    .local v3, "cutout":Landroid/view/DisplayCutout;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/content/res/Configuration;Landroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 437
    if-eqz v0, :cond_39

    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v4

    .line 441
    .local v4, "newDockSide":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 442
    if-eq v4, v2, :cond_2b

    const/4 v6, 0x2

    if-ne v4, v6, :cond_29

    goto :goto_2b

    .line 444
    :cond_29
    move v1, v2

    goto :goto_2c

    .line 443
    :cond_2b
    :goto_2b
    nop

    .line 444
    :goto_2c
    const/4 v2, 0x0

    .line 441
    invoke-virtual {v5, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    .line 448
    .end local v4  # "newDockSide":I
    :cond_39
    return-void
.end method

.method calculatePinnedBoundsForConfigChange(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "inOutBounds"  # Landroid/graphics/Rect;

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "animating":Z
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v1, :cond_18

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 392
    const/4 v0, 0x1

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 395
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 397
    :goto_1d
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 399
    .local v1, "updated":Z
    if-eqz v1, :cond_59

    .line 400
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 404
    if-eqz v0, :cond_4c

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 405
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 406
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v3}, Lcom/android/server/wm/BoundsAnimationController;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/-$$Lambda$TaskStack$LbFVWgYTv7giS6WqQc5168AJCDQ;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/-$$Lambda$TaskStack$LbFVWgYTv7giS6WqQc5168AJCDQ;-><init>(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 413
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 414
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 416
    :cond_59
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1918
    const/4 v0, 0x1

    return v0

    .line 1920
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-eqz v0, :cond_f

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1924
    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 86
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    .line 1886
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1887
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1

    .line 1889
    :cond_11
    return v1
.end method

.method dim(F)V
    .registers 4
    .param p1, "alpha"  # F

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1980
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1981
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 1408
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

    .line 1409
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

    .line 1410
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

    .line 1411
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_71

    .line 1412
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

    .line 1414
    :cond_71
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_bb

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAdjustedForIme=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
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

    .line 1417
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

    .line 1419
    :cond_bb
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e0

    .line 1420
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

    .line 1422
    :cond_e0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_e8
    if-ltz v0, :cond_109

    .line 1423
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

    .line 1422
    add-int/lit8 v0, v0, -0x1

    goto :goto_e8

    .line 1425
    .end local v0  # "taskNdx":I
    :cond_109
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    if-eqz v0, :cond_121

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWindowAnimationBackgroundSurface is shown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    :cond_121
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_160

    .line 1429
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1430
    const-string v0, "  Exiting application tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_139
    if-ltz v0, :cond_160

    .line 1432
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 1433
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const-string v2, "  Exiting App #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1434
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1435
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 1436
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1431
    .end local v1  # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_139

    .line 1439
    .end local v0  # "i":I
    :cond_160
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method endImeAdjustAnimation()V
    .registers 5

    .line 1185
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_19

    .line 1186
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1185
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1188
    .end local v0  # "j":I
    :cond_19
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    return v0
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_20

    .line 182
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

    .line 180
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V
    .registers 11
    .param p1, "x"  # I
    .param p2, "y"  # I
    .param p3, "delta"  # I
    .param p4, "results"  # Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 1497
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1498
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1499
    return-void

    .line 1502
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_52

    .line 1503
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1504
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-ne v3, v1, :cond_28

    .line 1505
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1506
    return-void

    .line 1514
    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1515
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v4, p3

    neg-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1516
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1517
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 1519
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1521
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1522
    iput-object v2, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 1523
    return-void

    .line 1527
    :cond_4e
    return-void

    .line 1502
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1530
    .end local v0  # "i":I
    :cond_52
    return-void
.end method

.method getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
    .registers 2

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"  # Landroid/graphics/Rect;

    .line 365
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 367
    return-void

    .line 369
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    return-object v0

    .line 316
    :cond_b
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 304
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 305
    return-void
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 375
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 1943
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1975
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .registers 3

    .line 1465
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
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "bounds"  # Landroid/graphics/Rect;

    .line 1473
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_6

    .line 1474
    const/4 v0, -0x1

    return v0

    .line 1476
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I
    .registers 4
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 1469
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"  # Landroid/graphics/Rect;

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"  # Landroid/graphics/Rect;

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 358
    return-void
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .registers 6
    .param p1, "displayContentRect"  # Landroid/graphics/Rect;
    .param p2, "originalStackBottom"  # I

    .line 1191
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3e99999a  # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMinimizeDistance()I
    .registers 5

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1312
    .local v0, "dockSide":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1313
    return v1

    .line 1316
    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    .line 1317
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1318
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1319
    .local v1, "topInset":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    return v2

    .line 1320
    .end local v1  # "topInset":I
    :cond_1f
    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-ne v0, v2, :cond_26

    goto :goto_27

    .line 1323
    :cond_26
    return v1

    .line 1321
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v1, v2

    return v1
.end method

.method getMoveWindowOffset()I
    .registers 2

    .line 2015
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1453
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .registers 2

    .line 1929
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

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "aspectRatio"  # F
    .param p2, "stackBounds"  # Landroid/graphics/Rect;

    .line 1694
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1695
    return-object v1

    .line 1698
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1699
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_f

    .line 1700
    return-object v1

    .line 1703
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1704
    return-object v1

    .line 1707
    :cond_16
    nop

    .line 1708
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    .line 1709
    .local v1, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    if-nez p2, :cond_21

    .line 1711
    invoke-virtual {v1}, Lcom/android/server/wm/PinnedStackController;->getDefaultOrLastSavedBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 1714
    :cond_21
    invoke-virtual {v1, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1715
    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    .line 1718
    :cond_2d
    return-object p2
.end method

.method getRawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 299
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 296
    return-void
.end method

.method getRelativeDisplayedPosition(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "outPos"  # Landroid/graphics/Point;

    .line 785
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 786
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v0

    .line 787
    .local v0, "outset":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 788
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 790
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mOffsetX:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->offset(II)V

    .line 791
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mOffsetX:I

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mLastOffsetX:I

    .line 792
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mLastOffsetY:I

    .line 795
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    if-eqz v1, :cond_35

    .line 796
    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v1

    .line 797
    .local v1, "bound":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 800
    .end local v1  # "bound":Landroid/graphics/Rect;
    :cond_35
    return-void
.end method

.method getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "dockedBounds"  # Landroid/graphics/Rect;
    .param p3, "currentTempTaskBounds"  # Landroid/graphics/Rect;
    .param p4, "outStackBounds"  # Landroid/graphics/Rect;
    .param p5, "outTempTaskBounds"  # Landroid/graphics/Rect;

    .line 867
    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 869
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_91

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v12, p1

    move-object/from16 v13, p5

    goto/16 :goto_94

    .line 878
    :cond_17
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v10

    .line 882
    .local v10, "dockedSide":I
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v11

    .line 883
    .local v11, "isCtsRunning":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_68

    if-nez v11, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_68

    .line 903
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v2

    if-eqz v2, :cond_3a

    if-eqz v8, :cond_3a

    .line 904
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 905
    return-void

    .line 908
    :cond_3a
    const/4 v2, -0x1

    if-ne v10, v2, :cond_4c

    .line 910
    const-string v0, "WindowManager"

    const-string v1, "Failed to get valid docked side for docked stack"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 912
    return-void

    .line 915
    :cond_4c
    const/4 v2, 0x2

    if-eq v10, v2, :cond_54

    if-ne v10, v1, :cond_52

    goto :goto_54

    :cond_52
    move v6, v0

    goto :goto_55

    :cond_54
    :goto_54
    move v6, v1

    .line 916
    .local v6, "dockedOnTopOrLeft":Z
    :goto_55
    const/4 v2, 0x0

    iget-object v0, v7, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 918
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 916
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 919
    return-void

    .line 884
    .end local v6  # "dockedOnTopOrLeft":Z
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 885
    .local v0, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_7c

    :cond_74
    if-nez v11, :cond_87

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 889
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 890
    move-object v12, p1

    invoke-virtual {v1, p1, v10, v9}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V

    goto :goto_8b

    .line 885
    :cond_87
    move-object v12, p1

    .line 894
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 897
    :goto_8b
    move-object/from16 v13, p5

    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 898
    return-void

    .line 869
    .end local v0  # "homeTask":Lcom/android/server/wm/Task;
    .end local v10  # "dockedSide":I
    .end local v11  # "isCtsRunning":Z
    :cond_91
    move-object v12, p1

    move-object/from16 v13, p5

    .line 871
    :goto_94
    iget-object v2, v7, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v2, :cond_9c

    move v6, v1

    goto :goto_9d

    :cond_9c
    move v6, v0

    .line 873
    .restart local v6  # "dockedOnTopOrLeft":Z
    :goto_9d
    const/4 v2, 0x1

    iget-object v0, v7, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 875
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    .line 873
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 876
    return-void
.end method

.method getStackOutset()I
    .registers 5

    .line 771
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 772
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 773
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 777
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 780
    .end local v1  # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method getWindowModeFrame()Lcom/android/server/wm/FlymeWindowModeFrame;
    .registers 2

    .line 2087
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    return-object v0
.end method

.method hasTaskForUser(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 1486
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1487
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1488
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p1, :cond_17

    .line 1489
    return v1

    .line 1486
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1492
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method isAdjustedForIme()Z
    .registers 2

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .registers 3

    .line 1362
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

    .line 1897
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 2

    .line 1905
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

    .line 1100
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

    .line 1833
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1834
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

    .line 1835
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

    .line 1893
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method isMoveWindowMode()Z
    .registers 2

    .line 2028
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    return v0
.end method

.method isMovingFinished()Z
    .registers 2

    .line 2032
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMovingFinished:Z

    return v0
.end method

.method isTaskAnimating()Z
    .registers 5

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1371
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1372
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1373
    return v1

    .line 1370
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1376
    .end local v0  # "j":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$animateResizePinnedStack$3$TaskStack(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V
    .registers 19
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "fromBounds"  # Landroid/graphics/Rect;
    .param p3, "finalToBounds"  # Landroid/graphics/Rect;
    .param p4, "animationDuration"  # I
    .param p5, "finalSchedulePipModeChangedState"  # I
    .param p6, "fromFullscreen"  # Z
    .param p7, "toFullscreen"  # Z
    .param p8, "animationType"  # I

    .line 1780
    move-object v0, p1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/BoundsAnimationController;->animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V

    .line 1783
    return-void
.end method

.method public synthetic lambda$calculatePinnedBoundsForConfigChange$0$TaskStack(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 407
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BoundsAnimationController;->cancel(Lcom/android/server/wm/BoundsAnimationTarget;)V

    return-void
.end method

.method public lastAnimatingBoundsWasToFullscreen()Z
    .registers 2

    .line 1901
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 86
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method onAllWindowsDrawn()V
    .registers 2

    .line 1601
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_9

    .line 1602
    return-void

    .line 1605
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->onAllWindowsDrawn()V

    .line 1606
    return-void
.end method

.method public onAnimationEnd(ZLandroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "schedulePipModeChangedCallback"  # Z
    .param p2, "finalStackSize"  # Landroid/graphics/Rect;
    .param p3, "moveToFullscreen"  # Z

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1657
    if-eqz p1, :cond_10

    .line 1660
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStack;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1664
    :cond_10
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 1665
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setPinnedStackAlpha(F)Z

    .line 1666
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyPinnedStackAnimationEnded()V

    .line 1667
    return-void

    .line 1670
    :cond_22
    if-eqz p2, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-nez v0, :cond_2d

    .line 1671
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/TaskStack;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_30

    .line 1675
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1678
    :goto_30
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyPinnedStackAnimationEnded()V

    .line 1679
    if-eqz p3, :cond_46

    .line 1680
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_46

    .line 1684
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1686
    :cond_46
    :goto_46
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"  # Landroid/view/SurfaceControl;

    .line 2056
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mOffsetX:I

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    .line 2057
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfacePositionIfNeed(Z)V

    .line 2058
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2059
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMovingFinished:Z

    .line 2060
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onTaskStackAnimationLeashCreated(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2061
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 2065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMovingFinished:Z

    .line 2066
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2068
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_24

    .line 2069
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    .line 2070
    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfacePositionIfNeed(Z)V

    .line 2071
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onTaskStackAnimationLeashLost(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;)V

    .line 2073
    :cond_24
    return-void
.end method

.method public onAnimationStart(ZZI)Z
    .registers 8
    .param p1, "schedulePipModeChangedCallback"  # Z
    .param p2, "forceUpdate"  # Z
    .param p3, "animationType"  # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 1612
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1615
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1618
    :cond_14
    :try_start_14
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 1619
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1620
    iput p3, p0, Lcom/android/server/wm/TaskStack;->mAnimationType:I

    .line 1624
    if-eqz p1, :cond_22

    .line 1625
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1628
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1632
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->notifyPinnedStackAnimationStarted()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_34

    .line 1635
    goto :goto_35

    .line 1633
    :catch_34
    move-exception v0

    .line 1637
    :goto_35
    if-nez p1, :cond_39

    if-ne p3, v1, :cond_41

    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_41

    .line 1643
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/ActivityStack;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1647
    :cond_41
    return v1

    .line 1628
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 734
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 735
    .local v0, "prevWindowingMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 739
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 740
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v1

    .line 741
    .local v1, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAlwaysOnTop()Z

    move-result v2

    .line 743
    .local v2, "isAlwaysOnTop":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_1b

    .line 744
    return-void

    .line 747
    :cond_1b
    if-eq v0, v1, :cond_2e

    .line 748
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 753
    sget-object v3, Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$PVMhxGhbT6eBbe3ARm5uodEqxDE;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 758
    :cond_2e
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 840
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onDisplayChanged: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_11
    :goto_11
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 845
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 846
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_41

    .line 847
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation background stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 848
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 851
    :cond_41
    return-void
.end method

.method onParentChanged()V
    .registers 3

    .line 1030
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_e

    goto :goto_29

    .line 1036
    :cond_e
    const/16 v0, 0x791e

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 1039
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 1040
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 1043
    :cond_1f
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1044
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1045
    return-void

    .line 1033
    :cond_29
    :goto_29
    return-void
.end method

.method public onPipAnimationEndResize()V
    .registers 4

    .line 1842
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1843
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1844
    nop

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1845
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1846
    .local v2, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->clearPreserveNonFloatingState()V

    .line 1844
    .end local v2  # "t":Lcom/android/server/wm/Task;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1848
    .end local v1  # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1849
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1850
    return-void

    .line 1849
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

    .line 86
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 2

    .line 1909
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v0, :cond_a

    .line 1910
    const/4 v0, 0x1

    return v0

    .line 1912
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/Task;Z)V
    .registers 5
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/Task;
    .param p3, "includingParents"  # Z

    .line 601
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 602
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 86
    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/Task;I)V
    .registers 6
    .param p1, "child"  # Lcom/android/server/wm/Task;
    .param p2, "position"  # I

    .line 557
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_22

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: positioning task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_22
    if-nez p1, :cond_3d

    .line 561
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_3c

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: could not find task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_3c
    return-void

    .line 566
    :cond_3d
    invoke-virtual {p1, p2}, Lcom/android/server/wm/Task;->positionAt(I)V

    .line 567
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 568
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/Task;
    .param p2, "includingParents"  # Z

    .line 586
    if-nez p1, :cond_3

    .line 588
    return-void

    .line 591
    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 593
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 596
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 597
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;Z)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/Task;
    .param p2, "includingParents"  # Z

    .line 571
    if-nez p1, :cond_3

    .line 573
    return-void

    .line 576
    :cond_3
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    .line 578
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 579
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 580
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setSendingToBottom(Z)V

    .line 582
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 583
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 188
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 186
    .end local v1  # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 190
    .end local v0  # "taskNdx":I
    :cond_18
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 1948
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 1949
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1950
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1953
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1957
    :cond_24
    return-void
.end method

.method removeChild(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 712
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1a
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 715
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 719
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 721
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 723
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "appNdx":I
    :goto_43
    if-ltz v0, :cond_5d

    .line 724
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 725
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v3, p1, :cond_5a

    .line 726
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 727
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 723
    .end local v2  # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 730
    .end local v0  # "appNdx":I
    :cond_5d
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 86
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->removeChild(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    .line 1012
    return-void

    .line 1014
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1015
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_7

    .line 1020
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStack;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1022
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1023
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "WindowManager"

    const-string v2, "not lock mWmService.mGlobalLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    :cond_1d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 1026
    return-void
.end method

.method reparent(ILandroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "outStackBounds"  # Landroid/graphics/Rect;
    .param p3, "onTop"  # Z

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 625
    .local v0, "targetDc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1b

    .line 630
    invoke-virtual {v0, p0, p3}, Lcom/android/server/wm/DisplayContent;->moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    .line 631
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 632
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1a

    .line 634
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 636
    :goto_1a
    return-void

    .line 626
    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method repositionSplitScreenStackAfterRotation(Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V
    .registers 10
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "primary"  # Z
    .param p3, "inOutBounds"  # Landroid/graphics/Rect;

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v0

    .line 461
    .local v0, "dockSide":I
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    .line 462
    .local v1, "otherDockSide":I
    if-eqz p2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    .line 463
    .local v2, "primaryDockSide":I
    :goto_f
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 465
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 466
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 464
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 467
    return-void

    .line 469
    :cond_28
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 470
    .local v3, "parentBounds":Landroid/graphics/Rect;
    const/4 v4, 0x1

    if-eq v1, v4, :cond_68

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4b

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3b

    goto :goto_75

    .line 487
    :cond_3b
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 488
    .local v4, "movement":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 489
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_75

    .line 477
    .end local v4  # "movement":I
    :cond_4b
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 478
    .restart local v4  # "movement":I
    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->left:I

    .line 479
    iget v5, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->right:I

    .line 480
    goto :goto_75

    .line 482
    .end local v4  # "movement":I
    :cond_5b
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 483
    .restart local v4  # "movement":I
    iget v5, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 484
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    .line 485
    goto :goto_75

    .line 472
    .end local v4  # "movement":I
    :cond_68
    iget v4, p3, Landroid/graphics/Rect;->left:I

    .line 473
    .restart local v4  # "movement":I
    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->left:I

    .line 474
    iget v5, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v4

    iput v5, p3, Landroid/graphics/Rect;->right:I

    .line 475
    nop

    .line 492
    .end local v4  # "movement":I
    :goto_75
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .registers 6
    .param p1, "adjustBoundsNow"  # Z

    .line 1130
    if-eqz p1, :cond_23

    .line 1131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1133
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1134
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1135
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-nez v1, :cond_12

    .line 1136
    return-void

    .line 1138
    :cond_12
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1139
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1140
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_2a

    .line 1142
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1144
    :goto_2a
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1049
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->hideAnimationSurface()V

    .line 1050
    return-void
.end method

.method resetDockedStackToMiddle()V
    .registers 10

    .line 992
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-nez v0, :cond_37

    .line 996
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 998
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 999
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1000
    .local v7, "tempBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    .line 1002
    .local v8, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v8, :cond_24

    if-ne v8, p0, :cond_20

    goto :goto_24

    :cond_20
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_24
    :goto_24
    move-object v4, v1

    .line 1003
    .local v4, "dockedBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1005
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->requestResize(Landroid/graphics/Rect;)V

    .line 1006
    return-void

    .line 993
    .end local v0  # "bounds":Landroid/graphics/Rect;
    .end local v4  # "dockedBounds":Landroid/graphics/Rect;
    .end local v7  # "tempBounds":Landroid/graphics/Rect;
    .end local v8  # "dockedStack":Lcom/android/server/wm/TaskStack;
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
    .registers 7
    .param p1, "imeWin"  # Lcom/android/server/wm/WindowState;
    .param p2, "keepLastAmount"  # Z

    .line 1084
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1086
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_b

    if-eqz p2, :cond_22

    .line 1087
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1089
    .local v1, "controller":Lcom/android/server/wm/DockedStackDividerController;
    const/4 v2, 0x0

    if-eqz p2, :cond_1a

    iget v3, v1, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    goto :goto_1b

    :cond_1a
    move v3, v2

    .line 1090
    .local v3, "adjustImeAmount":F
    :goto_1b
    if-eqz p2, :cond_1f

    iget v2, v1, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 1091
    .local v2, "adjustDividerAmount":F
    :cond_1f
    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 1093
    .end local v1  # "controller":Lcom/android/server/wm/DockedStackDividerController;
    .end local v2  # "adjustDividerAmount":F
    .end local v3  # "adjustImeAmount":F
    :cond_22
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .registers 3
    .param p1, "minimizeAmount"  # F

    .line 1153
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    .line 1154
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 1155
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0

    .line 1158
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .registers 5
    .param p1, "winAnimator"  # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"  # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v0, :cond_11

    .line 1054
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1055
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->showAnimationSurface(F)V

    .line 1057
    :cond_11
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method setMoveWindowMode(ZZ)V
    .registers 5
    .param p1, "moveWindowMode"  # Z
    .param p2, "clip"  # Z

    .line 2009
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    .line 2010
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mClipForMoveWindow:Z

    .line 2011
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->isMoveWindowMode:Z

    if-eqz v0, :cond_14

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    :cond_14
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    .line 2012
    return-void
.end method

.method setMoveWindowOffset(IZ)V
    .registers 5
    .param p1, "offsetY"  # I
    .param p2, "anim"  # Z

    .line 2019
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    .line 2020
    if-nez p2, :cond_13

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMoveOffsetY:I

    if-eq v0, v1, :cond_13

    .line 2021
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mOffsetY:I

    .line 2022
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mOffsetX:I

    .line 2023
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfacePositionIfNeed(Z)V

    .line 2025
    :cond_13
    return-void
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

    .line 1820
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_7

    .line 1821
    return-void

    .line 1824
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1825
    return-void

    .line 1828
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->setActions(Ljava/util/List;)V

    .line 1829
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 7
    .param p1, "aspectRatio"  # F

    .line 1790
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsPictureInPicture:Z

    if-nez v0, :cond_7

    .line 1791
    return-void

    .line 1794
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1795
    return-void

    .line 1798
    :cond_e
    nop

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v0

    .line 1801
    .local v0, "pinnedStackController":Lcom/android/server/wm/PinnedStackController;
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->getAspectRatio()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_22

    .line 1802
    return-void

    .line 1804
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 1805
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1806
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskStack;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 1807
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1808
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpToBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/wm/TaskStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 1811
    :cond_45
    nop

    .line 1812
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1813
    move v1, p1

    goto :goto_50

    :cond_4e
    const/high16 v1, -0x40800000  # -1.0f

    .line 1811
    :goto_50
    invoke-virtual {v0, v1}, Lcom/android/server/wm/PinnedStackController;->setAspectRatio(F)V

    .line 1814
    return-void
.end method

.method public setPinnedStackAlpha(F)Z
    .registers 7
    .param p1, "alpha"  # F

    .line 1962
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1964
    .local v1, "sc":Landroid/view/SurfaceControl;
    const/4 v2, 0x0

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_32

    .line 1968
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v4, :cond_21

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_22

    :cond_21
    move v4, p1

    :goto_22
    invoke-virtual {v3, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1970
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-nez v3, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1966
    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1971
    .end local v1  # "sc":Landroid/view/SurfaceControl;
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "stackBounds"  # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"  # Landroid/graphics/Rect;

    .line 1586
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1587
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v1, :cond_12

    .line 1588
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1590
    :cond_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1593
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1596
    goto :goto_1f

    .line 1594
    :catch_1e
    move-exception v0

    .line 1597
    :goto_1f
    const/4 v0, 0x1

    return v0

    .line 1590
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "focusedTask"  # Lcom/android/server/wm/Task;
    .param p2, "delta"  # I
    .param p3, "touchExcludeRegion"  # Landroid/graphics/Region;
    .param p4, "contentRect"  # Landroid/graphics/Rect;
    .param p5, "postExclude"  # Landroid/graphics/Rect;

    .line 1534
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_5f

    .line 1535
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1536
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1537
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1538
    goto :goto_5c

    .line 1554
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1555
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_38

    .line 1557
    :cond_33
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1560
    :goto_38
    if-ne v1, p1, :cond_3f

    .line 1563
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1566
    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    .line 1567
    .local v3, "isFreeformed":Z
    if-ne v1, p1, :cond_47

    if-eqz v3, :cond_5c

    .line 1568
    :cond_47
    if-eqz v3, :cond_55

    .line 1571
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v5, p2

    neg-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 1577
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1579
    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1534
    .end local v1  # "task":Lcom/android/server/wm/Task;
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3  # "isFreeformed":Z
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1582
    .end local v0  # "i":I
    :cond_5f
    return-void
.end method

.method setWindowModeFrame(Lcom/android/server/wm/FlymeWindowModeFrame;)V
    .registers 2
    .param p1, "windowModeFrame"  # Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 2083
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 2084
    return-void
.end method

.method public shouldDeferStartOnMoveToFullscreen()Z
    .registers 8

    .line 1854
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1857
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1865
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1866
    .local v1, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v3, 0x1

    if-nez v1, :cond_22

    .line 1867
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1869
    :cond_22
    :try_start_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1870
    .local v4, "homeTask":Lcom/android/server/wm/Task;
    if-nez v4, :cond_2f

    .line 1871
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1873
    :cond_2f
    :try_start_2f
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    .line 1874
    .local v5, "homeApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_46

    if-nez v5, :cond_3c

    goto :goto_46

    .line 1877
    :cond_3c
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_41

    move v2, v3

    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1875
    :cond_46
    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1878
    .end local v1  # "homeStack":Lcom/android/server/wm/TaskStack;
    .end local v4  # "homeTask":Lcom/android/server/wm/Task;
    .end local v5  # "homeApp":Lcom/android/server/wm/AppWindowToken;
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

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1164
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

    .line 1163
    :goto_16
    return v0
.end method

.method snapDockedStackAfterRotation(Landroid/content/res/Configuration;Landroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 25
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "displayCutout"  # Landroid/view/DisplayCutout;
    .param p3, "outBounds"  # Landroid/graphics/Rect;

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p3

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v12

    .line 502
    .local v12, "dividerSize":I
    invoke-virtual {v0, v1, v11}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/content/res/Configuration;Landroid/graphics/Rect;)I

    move-result v13

    .line 503
    .local v13, "dockSide":I
    invoke-static {v11, v13, v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    .line 505
    .local v14, "dividerPosition":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 506
    .local v15, "displayWidth":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 509
    .local v16, "displayHeight":I
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v17

    .line 510
    .local v17, "rotation":I
    iget v10, v1, Landroid/content/res/Configuration;->orientation:I

    .line 511
    .local v10, "orientation":I
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    move/from16 v3, v17

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 513
    new-instance v18, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v2, 0x1

    if-ne v10, v2, :cond_54

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    move v7, v2

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v19

    move-object/from16 v2, v18

    move v4, v15

    move/from16 v5, v16

    move v6, v12

    move-object/from16 v8, p3

    move/from16 v20, v10

    .end local v10  # "orientation":I
    .local v20, "orientation":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    move-object/from16 v8, v18

    .line 517
    .local v8, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v8, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v9

    .line 520
    .local v9, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v2, v9, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v3, v13

    move-object/from16 v4, p3

    move v5, v15

    move/from16 v6, v16

    move v7, v12

    invoke-static/range {v2 .. v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 523
    return-void
.end method

.method stopDimming()V
    .registers 3

    .line 1984
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 1985
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1986
    return-void
.end method

.method switchUser()V
    .registers 6

    .line 1062
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 1063
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1064
    .local v0, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_a
    if-ge v1, v0, :cond_33

    .line 1065
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1066
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1067
    :cond_24
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1068
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 1069
    add-int/lit8 v0, v0, -0x1

    .line 1064
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1072
    .end local v1  # "taskNdx":I
    :cond_33
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1457
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

    .line 1449
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
    .param p1, "adjustAmount"  # F
    .param p2, "adjustDividerAmount"  # F
    .param p3, "force"  # Z

    .line 1112
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_11

    if-eqz p3, :cond_f

    goto :goto_11

    .line 1119
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 1114
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1115
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1116
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0
.end method

.method updateSurfacePosition()V
    .registers 10

    .line 2092
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    .line 2093
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4d

    .line 2094
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getCornerRadius()F

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2095
    .local v0, "cornerRadius":F
    :goto_11
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v1

    goto :goto_1c

    :cond_1a
    const/high16 v1, 0x3f800000  # 1.0f

    .line 2096
    .local v1, "scale":F
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    .line 2097
    .local v8, "t":Landroid/view/SurfaceControl$Transaction;
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLastCornerRadius:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_38

    .line 2098
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mLastCornerRadius:F

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getLastSurfaceSize()Landroid/graphics/Point;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 2100
    invoke-direct {p0, v8}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2101
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2103
    :cond_38
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLastScale:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4d

    .line 2104
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mLastScale:F

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v1

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 2108
    .end local v0  # "cornerRadius":F
    .end local v1  # "scale":F
    .end local v8  # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_4d
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 1383
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1384
    return-void

    .line 1387
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1388
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1389
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1390
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_28
    if-ltz v2, :cond_3d

    .line 1391
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/Task;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1390
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 1393
    .end local v2  # "taskNdx":I
    :cond_3d
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1395
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1396
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1397
    const-wide v2, 0x10200000008L

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1398
    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1399
    const-wide v2, 0x1020000000aL

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1400
    const-wide v2, 0x1020000000bL

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1401
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1402
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1403
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1404
    return-void
.end method
