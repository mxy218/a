.class Lcom/android/server/wm/ScreenRotationAnimation;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# static fields
.field static final DEBUG_STATE:Z = false

.field static final DEBUG_TRANSFORMS:Z = false

.field static final SCREEN_FREEZE_LAYER_BASE:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_CUSTOM:I = 0x1eab93

.field static final SCREEN_FREEZE_LAYER_ENTER:I = 0x1eab90

.field static final SCREEN_FREEZE_LAYER_EXIT:I = 0x1eab92

.field static final SCREEN_FREEZE_LAYER_SCREENSHOT:I = 0x1eab91

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TWO_PHASE_ANIMATION:Z

.field static final USE_CUSTOM_BLACK_FRAME:Z


# instance fields
.field mAnimRunning:Z

.field final mContext:Landroid/content/Context;

.field mCurRotation:I

.field mCurrentDisplayRect:Landroid/graphics/Rect;

.field mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mEnterTransformation:Landroid/view/animation/Transformation;

.field mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

.field final mExitFrameFinalMatrix:Landroid/graphics/Matrix;

.field final mExitTransformation:Landroid/view/animation/Transformation;

.field mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

.field mFinishAnimReady:Z

.field mFinishAnimStartTime:J

.field mFinishEnterAnimation:Landroid/view/animation/Animation;

.field final mFinishEnterTransformation:Landroid/view/animation/Transformation;

.field mFinishExitAnimation:Landroid/view/animation/Animation;

.field final mFinishExitTransformation:Landroid/view/animation/Transformation;

.field mFinishFrameAnimation:Landroid/view/animation/Animation;

.field final mFinishFrameTransformation:Landroid/view/animation/Transformation;

.field mForceDefaultOrientation:Z

.field final mFrameInitialMatrix:Landroid/graphics/Matrix;

.field final mFrameTransformation:Landroid/view/animation/Transformation;

.field mHalfwayPoint:J

.field mHeight:I

.field private mIsPerfLockAcquired:Z

.field mLastRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mLastRotateExitAnimation:Landroid/view/animation/Animation;

.field final mLastRotateExitTransformation:Landroid/view/animation/Transformation;

.field mLastRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private mMoreFinishEnter:Z

.field private mMoreFinishExit:Z

.field private mMoreFinishFrame:Z

.field private mMoreRotateEnter:Z

.field private mMoreRotateExit:Z

.field private mMoreRotateFrame:Z

.field private mMoreStartEnter:Z

.field private mMoreStartExit:Z

.field private mMoreStartFrame:Z

.field mOriginalDisplayRect:Landroid/graphics/Rect;

.field mOriginalHeight:I

.field mOriginalRotation:I

.field mOriginalWidth:I

.field private mPerf:Landroid/util/BoostFramework;

.field mRotateEnterAnimation:Landroid/view/animation/Animation;

.field final mRotateEnterTransformation:Landroid/view/animation/Transformation;

.field mRotateExitAnimation:Landroid/view/animation/Animation;

.field final mRotateExitTransformation:Landroid/view/animation/Transformation;

.field mRotateFrameAnimation:Landroid/view/animation/Animation;

.field final mRotateFrameTransformation:Landroid/view/animation/Transformation;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSnapshotFinalMatrix:Landroid/graphics/Matrix;

.field final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field mStartEnterAnimation:Landroid/view/animation/Animation;

.field final mStartEnterTransformation:Landroid/view/animation/Transformation;

.field mStartExitAnimation:Landroid/view/animation/Animation;

.field final mStartExitTransformation:Landroid/view/animation/Transformation;

.field mStartFrameAnimation:Landroid/view/animation/Animation;

.field final mStartFrameTransformation:Landroid/view/animation/Transformation;

.field mStarted:Z

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field final mTmpFloats:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V
    .registers 23
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p3, "fixedToUserRotation"  # Z
    .param p4, "isSecure"  # Z
    .param p5, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 231
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "WindowManager"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 92
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 94
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 101
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 103
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 105
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 111
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 113
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 115
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 120
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 122
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 124
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 127
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 128
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 129
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 139
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 140
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 142
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 232
    move-object/from16 v4, p5

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 233
    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 234
    iput-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 235
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 237
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 241
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 244
    .local v7, "originalRotation":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 245
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    const/4 v9, 0x1

    if-eqz p3, :cond_dd

    .line 247
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 248
    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 249
    .local v0, "originalWidth":I
    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v11, v10

    move v10, v0

    .local v10, "originalHeight":I
    goto :goto_e3

    .line 252
    .end local v0  # "originalWidth":I
    .end local v10  # "originalHeight":I
    :cond_dd
    iget v0, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 253
    .restart local v0  # "originalWidth":I
    iget v10, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    move v11, v10

    move v10, v0

    .line 255
    .end local v0  # "originalWidth":I
    .local v10, "originalWidth":I
    .local v11, "originalHeight":I
    :goto_e3
    if-eq v7, v9, :cond_ee

    const/4 v0, 0x3

    if-ne v7, v0, :cond_e9

    goto :goto_ee

    .line 260
    :cond_e9
    iput v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 261
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_f2

    .line 257
    :cond_ee
    :goto_ee
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 258
    iput v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 264
    :goto_f2
    iput v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 265
    iput v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 266
    iput v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 268
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    .line 270
    .local v12, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_100
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v13, "ScreenshotSurface"

    .line 271
    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 272
    invoke-virtual {v0, v13, v14}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0
    :try_end_112
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_100 .. :try_end_112} :catch_1ac

    .line 273
    move/from16 v13, p4

    :try_start_114
    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 278
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    move-object v14, v0

    .line 279
    .local v14, "t2":Landroid/view/SurfaceControl$Transaction;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v14, v0, v9}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 280
    invoke-virtual {v14, v9}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 283
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    move v15, v0

    .line 284
    .local v15, "displayId":I
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFactory;->make()Landroid/view/Surface;

    move-result-object v0

    move-object/from16 v16, v0

    .line 285
    .local v16, "surface":Landroid/view/Surface;
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v9, v16

    .end local v16  # "surface":Landroid/view/Surface;
    .local v9, "surface":Landroid/view/Surface;
    invoke-virtual {v9, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 286
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 287
    invoke-virtual {v0, v15}, Landroid/hardware/display/DisplayManagerInternal;->screenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0
    :try_end_14d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_114 .. :try_end_14d} :catch_1aa

    move-object/from16 v16, v0

    .line 288
    .local v16, "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v16, :cond_192

    .line 290
    :try_start_151
    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    :try_end_158
    .catch Ljava/lang/RuntimeException; {:try_start_151 .. :try_end_158} :catch_159
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_151 .. :try_end_158} :catch_1aa

    .line 293
    goto :goto_172

    .line 291
    :catch_159
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_15a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to attach screenshot - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_172
    invoke-virtual/range {v16 .. v16}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 298
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    invoke-virtual {v12, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 300
    :cond_17e
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x1eab91

    invoke-virtual {v12, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 301
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 302
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1a6

    .line 304
    :cond_192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to take screenshot of display "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_1a6
    invoke-virtual {v9}, Landroid/view/Surface;->destroy()V
    :try_end_1a9
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15a .. :try_end_1a9} :catch_1aa

    .line 309
    .end local v9  # "surface":Landroid/view/Surface;
    .end local v14  # "t2":Landroid/view/SurfaceControl$Transaction;
    .end local v15  # "displayId":I
    .end local v16  # "gb":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    goto :goto_1b4

    .line 307
    :catch_1aa
    move-exception v0

    goto :goto_1af

    :catch_1ac
    move-exception v0

    move/from16 v13, p4

    .line 308
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_1af
    const-string v2, "Unable to allocate freeze surface"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    .end local v0  # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_1b4
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_1bc

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1d7

    :cond_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": CREATE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1d7
    invoke-direct {v1, v12, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 314
    invoke-virtual {v12}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 315
    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p0, "rotation"  # I
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "outMatrix"  # Landroid/graphics/Matrix;

    .line 350
    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    goto :goto_30

    .line 363
    :cond_d
    const/high16 v0, 0x43870000  # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 364
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_30

    .line 359
    :cond_17
    const/high16 v0, 0x43340000  # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 360
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 361
    goto :goto_30

    .line 355
    :cond_22
    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 356
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 357
    goto :goto_30

    .line 352
    :cond_2c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 353
    nop

    .line 367
    :goto_30
    return-void
.end method

.method private hasAnimations()Z
    .registers 2

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private setRotation(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 7
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"  # I

    .line 370
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 375
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    .line 376
    .local v0, "delta":I
    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 380
    return-void
.end method

.method private setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V
    .registers 13
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "matrix"  # Landroid/graphics/Matrix;
    .param p3, "alpha"  # F

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_46

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    .line 325
    .local v1, "x":F
    const/4 v2, 0x5

    aget v0, v0, v2

    .line 326
    .local v0, "y":F
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_28

    .line 327
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 328
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 329
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 331
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 332
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x3

    aget v6, v2, v3

    const/4 v3, 0x1

    aget v7, v2, v3

    const/4 v3, 0x4

    aget v8, v2, v3

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 335
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 346
    .end local v0  # "y":F
    .end local v1  # "x":F
    :cond_46
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z
    .registers 34
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"  # J
    .param p4, "animationScale"  # F
    .param p5, "finalWidth"  # I
    .param p6, "finalHeight"  # I
    .param p7, "dismissing"  # Z
    .param p8, "exitAnim"  # I
    .param p9, "enterAnim"  # I

    .line 400
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-nez v0, :cond_14

    .line 402
    return v9

    .line 404
    :cond_14
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_1a

    .line 405
    return v10

    .line 408
    :cond_1a
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 410
    const/4 v11, 0x0

    .line 413
    .local v11, "firstStart":Z
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v0, v12}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v12

    .line 442
    .local v12, "delta":I
    const/4 v0, 0x2

    if-eqz v7, :cond_3c

    if-eqz v8, :cond_3c

    .line 443
    const/4 v13, 0x1

    .line 444
    .local v13, "customAnim":Z
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 445
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v14, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_a3

    .line 447
    .end local v13  # "customAnim":Z
    :cond_3c
    const/4 v13, 0x0

    .line 448
    .restart local v13  # "customAnim":Z
    if-eqz v12, :cond_8c

    if-eq v12, v10, :cond_75

    if-eq v12, v0, :cond_5e

    const/4 v14, 0x3

    if-eq v12, v14, :cond_47

    goto :goto_a3

    .line 480
    :cond_47
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a011f

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 482
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a011e

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_a3

    .line 470
    :cond_5e
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0119

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 472
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0118

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 478
    goto :goto_a3

    .line 460
    :cond_75
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0122

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 462
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0121

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 468
    goto :goto_a3

    .line 450
    :cond_8c
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0116

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 452
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v15, 0x10a0115

    invoke-static {v14, v15}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 458
    nop

    .line 519
    :goto_a3
    iget-object v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v14, v5, v6, v15, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 520
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v15, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v0, v5, v6, v14, v15}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 525
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 526
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 527
    const-wide/16 v14, -0x1

    iput-wide v14, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 545
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 546
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 547
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 548
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 554
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v14

    .line 576
    .local v14, "layerStack":I
    const-string v15, "Unable to allocate black surface"

    const-string v9, "WindowManager"

    if-nez v13, :cond_146

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_146

    .line 584
    :try_start_e5
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v12, v0, v10, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 588
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_f7

    .line 592
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 593
    .local v0, "outer":Landroid/graphics/Rect;
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .local v2, "inner":Landroid/graphics/Rect;
    goto :goto_119

    .line 595
    .end local v0  # "outer":Landroid/graphics/Rect;
    .end local v2  # "inner":Landroid/graphics/Rect;
    :cond_f7
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v2, v2

    const/4 v3, 0x1

    mul-int/2addr v2, v3

    iget v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v10, v10

    mul-int/2addr v10, v3

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    const/16 v16, 0x2

    mul-int/lit8 v3, v3, 0x2

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v2, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 597
    .restart local v0  # "outer":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    const/4 v10, 0x0

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 599
    .restart local v2  # "inner":Landroid/graphics/Rect;
    :goto_119
    new-instance v3, Lcom/android/server/wm/BlackFrame;

    const v21, 0x1eab92

    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    move-object/from16 v17, v3

    move-object/from16 v18, p1

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v22, v4

    move/from16 v23, v10

    invoke-direct/range {v17 .. v23}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 601
    iget-object v3, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;
    :try_end_137
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e5 .. :try_end_137} :catch_13f

    move-object/from16 v10, p1

    :try_start_139
    invoke-virtual {v3, v10, v4}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    :try_end_13c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_139 .. :try_end_13c} :catch_13d

    .line 604
    .end local v0  # "outer":Landroid/graphics/Rect;
    .end local v2  # "inner":Landroid/graphics/Rect;
    goto :goto_148

    .line 602
    :catch_13d
    move-exception v0

    goto :goto_142

    :catch_13f
    move-exception v0

    move-object/from16 v10, p1

    .line 603
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_142
    invoke-static {v9, v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 576
    .end local v0  # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_146
    move-object/from16 v10, p1

    .line 607
    :goto_148
    if-eqz v13, :cond_17f

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_17f

    .line 609
    :try_start_14e
    new-instance v0, Landroid/graphics/Rect;

    neg-int v2, v5

    const/4 v3, 0x1

    mul-int/2addr v2, v3

    neg-int v4, v6

    mul-int/2addr v4, v3

    mul-int/lit8 v3, v5, 0x2

    mul-int/lit8 v7, v6, 0x2

    invoke-direct {v0, v2, v4, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v19, v0

    .line 611
    .local v19, "outer":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v20, v0

    .line 612
    .local v20, "inner":Landroid/graphics/Rect;
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    const v21, 0x1eab90

    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, p1

    move-object/from16 v22, v2

    invoke-direct/range {v17 .. v23}, Lcom/android/server/wm/BlackFrame;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_17a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_14e .. :try_end_17a} :catch_17b

    .line 616
    .end local v19  # "outer":Landroid/graphics/Rect;
    .end local v20  # "inner":Landroid/graphics/Rect;
    goto :goto_17f

    .line 614
    :catch_17b
    move-exception v0

    .line 615
    .restart local v0  # "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-static {v9, v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    .end local v0  # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_17f
    :goto_17f
    const/4 v2, 0x1

    return v2
.end method

.method private stepAnimation(J)Z
    .registers 9
    .param p1, "now"  # J

    .line 736
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 737
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 739
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    iget-wide v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1b

    .line 741
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 765
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_23

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    sub-long v1, p1, v0

    :cond_23
    move-wide v0, v1

    .line 789
    .local v0, "finishNow":J
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 790
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_33

    .line 791
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 795
    :cond_33
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 796
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_41

    .line 797
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 809
    :cond_41
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    const/4 v4, 0x0

    if-nez v3, :cond_61

    .line 824
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_54

    .line 826
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 827
    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 828
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 830
    :cond_54
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_61

    iget-boolean v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v5, :cond_61

    .line 831
    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 832
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 836
    :cond_61
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_80

    .line 851
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_73

    .line 853
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 854
    iput-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 855
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 857
    :cond_73
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_80

    iget-boolean v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v4, :cond_80

    .line 858
    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 859
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 888
    :cond_80
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 889
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 912
    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v3, :cond_9a

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v3, :cond_9a

    iget-boolean v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez v3, :cond_9b

    :cond_9a
    const/4 v2, 0x1

    .line 919
    .local v2, "more":Z
    :cond_9b
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 923
    return v2
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 21
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "maxAnimationDuration"  # J
    .param p4, "animationScale"  # F
    .param p5, "finalWidth"  # I
    .param p6, "finalHeight"  # I
    .param p7, "exitAnim"  # I
    .param p8, "enterAnim"  # I

    .line 628
    move-object v10, p0

    iget-object v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v11, 0x0

    if-nez v0, :cond_7

    .line 630
    return v11

    .line 633
    :cond_7
    iget-object v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->disableRotationAnimation()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 634
    const-string v0, "WindowManager"

    const-string v1, "disable Rotation Animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v11

    .line 638
    :cond_1b
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_30

    .line 639
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ScreenRotationAnimation;->startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z

    .line 642
    :cond_30
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_35

    .line 643
    return v11

    .line 646
    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 647
    return v0
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 718
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public isRotating()Z
    .registers 3

    .line 722
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public kill()V
    .registers 4

    .line 652
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 653
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_2a

    .line 654
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  FREEZE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": DESTROY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->remove()V

    .line 657
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 659
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_3a

    .line 660
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 661
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 663
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_43

    .line 664
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 665
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 667
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_4c

    .line 668
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 669
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 703
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_55

    .line 704
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 705
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 707
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_5e

    .line 708
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 709
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 711
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_6c

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    if-eqz v1, :cond_6c

    .line 712
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mIsPerfLockAcquired:Z

    .line 715
    :cond_6c
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 157
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 158
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 159
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    const-string v1, "  "

    if-eqz v0, :cond_46

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 170
    :cond_46
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_69

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 174
    :cond_69
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 175
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 176
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 177
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 179
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 180
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 181
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 183
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishExitAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateExitAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 202
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 204
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 208
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 209
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 211
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 212
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 213
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 215
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceDefaultOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 217
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_233

    .line 218
    const-string v0, " mOriginalDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    const-string v0, " mCurrentDisplayRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_233
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z
    .registers 9
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "rotation"  # I
    .param p3, "maxAnimationDuration"  # J
    .param p5, "animationScale"  # F
    .param p6, "finalWidth"  # I
    .param p7, "finalHeight"  # I

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public stepAnimationLocked(J)Z
    .registers 7
    .param p1, "now"  # J

    .line 974
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_a

    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 977
    return v0

    .line 980
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_3c

    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_15

    .line 1008
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1010
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1c

    .line 1011
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1013
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 1017
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v0

    new-instance v1, Landroid/scene/Scene;

    const v2, 0x1000012

    const-string v3, "WindowAnimation"

    invoke-direct {v1, v2, v3}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 1025
    :cond_3c
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 927
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_5

    .line 928
    return-void

    .line 931
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    .line 932
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v1, :cond_18

    .line 934
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 938
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_37

    .line 939
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v1, :cond_2c

    .line 941
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_37

    .line 943
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 947
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_6e

    .line 948
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v1, :cond_4b

    .line 950
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_6e

    .line 952
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 954
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_6e

    .line 955
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 960
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_8d

    .line 961
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v1, :cond_82

    .line 963
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_8d

    .line 965
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 969
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    .line 970
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 971
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 224
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 225
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 226
    iget-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 227
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 228
    return-void
.end method
