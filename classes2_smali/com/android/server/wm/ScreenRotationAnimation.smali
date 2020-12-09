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

.field static final TWO_PHASE_ANIMATION:Z = false

.field static final USE_CUSTOM_BLACK_FRAME:Z = false


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
    .registers 10

    .line 225
    const-string v0, "WindowManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    .line 86
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    .line 88
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    .line 95
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    .line 97
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    .line 99
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    .line 105
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 107
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 109
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 114
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateExitTransformation:Landroid/view/animation/Transformation;

    .line 116
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateEnterTransformation:Landroid/view/animation/Transformation;

    .line 118
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mLastRotateFrameTransformation:Landroid/view/animation/Transformation;

    .line 121
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    .line 122
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    .line 123
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 133
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    .line 134
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    .line 135
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 136
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    .line 226
    iput-object p5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    .line 228
    iput-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 229
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p5

    .line 236
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 237
    const/4 v2, 0x1

    if-eqz p3, :cond_c6

    .line 239
    iput-boolean v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    .line 240
    iget p3, p2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 241
    iget v1, p2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_ca

    .line 244
    :cond_c6
    iget p3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 245
    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 247
    :goto_ca
    if-eq p5, v2, :cond_d5

    const/4 v3, 0x3

    if-ne p5, v3, :cond_d0

    goto :goto_d5

    .line 252
    :cond_d0
    iput p3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 253
    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    goto :goto_d9

    .line 249
    :cond_d5
    :goto_d5
    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    .line 250
    iput p3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 256
    :goto_d9
    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    .line 257
    iput p3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    .line 258
    iput v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    .line 260
    iget-object p3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {p3}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object p3

    .line 262
    :try_start_e7
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v1, "ScreenshotSurface"

    .line 263
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    .line 264
    invoke-virtual {p2, v1, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 265
    invoke-virtual {p2, p4}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 266
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 270
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {p2}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    .line 271
    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p4, v2}, Landroid/view/SurfaceControl$Transaction;->setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 272
    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 275
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 276
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Lcom/android/server/wm/SurfaceFactory;

    invoke-interface {p2}, Lcom/android/server/wm/SurfaceFactory;->make()Landroid/view/Surface;

    move-result-object p2

    .line 277
    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 278
    iget-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 279
    invoke-virtual {p4, p1}, Landroid/hardware/display/DisplayManagerInternal;->screenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p4
    :try_end_12c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e7 .. :try_end_12c} :catch_18a

    .line 280
    if-eqz p4, :cond_172

    .line 282
    :try_start_12e
    invoke-virtual {p4}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p1

    .line 283
    invoke-virtual {p4}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 282
    invoke-virtual {p2, p1, v1}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V
    :try_end_139
    .catch Ljava/lang/RuntimeException; {:try_start_12e .. :try_end_139} :catch_13a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12e .. :try_end_139} :catch_18a

    .line 286
    goto :goto_153

    .line 284
    :catch_13a
    move-exception p1

    .line 285
    :try_start_13b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to attach screenshot - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_153
    invoke-virtual {p4}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result p1

    if-eqz p1, :cond_15e

    .line 291
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 293
    :cond_15e
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const p4, 0x1eab91

    invoke-virtual {p3, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 294
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 295
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_186

    .line 297
    :cond_172
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to take screenshot of display "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_186
    invoke-virtual {p2}, Landroid/view/Surface;->destroy()V
    :try_end_189
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_13b .. :try_end_189} :catch_18a

    .line 302
    goto :goto_190

    .line 300
    :catch_18a
    move-exception p1

    .line 301
    const-string p2, "Unable to allocate freeze surface"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :goto_190
    invoke-direct {p0, p3, p5}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 307
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 308
    return-void
.end method

.method public static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6

    .line 343
    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 p2, 0x3

    if-eq p0, p2, :cond_d

    goto :goto_30

    .line 356
    :cond_d
    const/high16 p0, 0x43870000  # 270.0f

    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 357
    int-to-float p0, p1

    invoke-virtual {p3, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_30

    .line 352
    :cond_17
    const/high16 p0, 0x43340000  # 180.0f

    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 353
    int-to-float p0, p1

    int-to-float p1, p2

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 354
    goto :goto_30

    .line 348
    :cond_22
    const/high16 p0, 0x42b40000  # 90.0f

    invoke-virtual {p3, p0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 349
    int-to-float p0, p2

    invoke-virtual {p3, p0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 350
    goto :goto_30

    .line 345
    :cond_2c
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 346
    nop

    .line 360
    :goto_30
    return-void
.end method

.method private hasAnimations()Z
    .registers 2

    .line 709
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
    .registers 6

    .line 363
    iput p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    .line 368
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result p2

    .line 369
    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 372
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 373
    return-void
.end method

.method private setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V
    .registers 12

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_46

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 317
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v0, 0x2

    aget v0, p2, v0

    .line 318
    const/4 v1, 0x5

    aget p2, p2, v1

    .line 319
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v1, :cond_28

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 321
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 324
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 325
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mTmpFloats:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    const/4 v0, 0x3

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 328
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 339
    :cond_46
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;JFIIZII)Z
    .registers 30

    .line 393
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move/from16 v0, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    iget-object v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v9, 0x0

    if-nez v8, :cond_14

    .line 395
    return v9

    .line 397
    :cond_14
    iget-boolean v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const/4 v10, 0x1

    if-eqz v8, :cond_1a

    .line 398
    return v10

    .line 401
    :cond_1a
    iput-boolean v10, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    .line 403
    nop

    .line 406
    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-static {v8, v11}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v8

    .line 435
    const/4 v11, 0x2

    if-eqz v6, :cond_3d

    if-eqz v7, :cond_3d

    .line 436
    nop

    .line 437
    iget-object v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 438
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    move v6, v10

    goto :goto_a5

    .line 440
    :cond_3d
    nop

    .line 441
    if-eqz v8, :cond_8d

    if-eq v8, v10, :cond_76

    if-eq v8, v11, :cond_5f

    const/4 v6, 0x3

    if-eq v8, v6, :cond_48

    goto :goto_a4

    .line 473
    :cond_48
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0090

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 475
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a008f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    goto :goto_a4

    .line 463
    :cond_5f
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a008a

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 465
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0089

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 471
    goto :goto_a4

    .line 453
    :cond_76
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0093

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 455
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0092

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 461
    goto :goto_a4

    .line 443
    :cond_8d
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0087

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 445
    iget-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;

    const v7, 0x10a0086

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 451
    nop

    .line 512
    :goto_a4
    move v6, v9

    :goto_a5
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v7, v4, v5, v12, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 513
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {v7, v4, v5, v12, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 518
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 519
    iput-boolean v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 520
    const-wide/16 v12, -0x1

    iput-wide v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 538
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 539
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 540
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 541
    iget-object v2, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 547
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    .line 569
    const-string v2, "Unable to allocate black surface"

    const-string v3, "WindowManager"

    if-nez v6, :cond_146

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_146

    .line 577
    :try_start_e6
    iget v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    iget-object v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v8, v0, v7, v12}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 581
    iget-boolean v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_fb

    .line 585
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    .line 586
    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    move-object v15, v0

    move-object/from16 v16, v7

    goto :goto_11a

    .line 588
    :cond_fb
    new-instance v0, Landroid/graphics/Rect;

    iget v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    neg-int v7, v7

    mul-int/2addr v7, v10

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    neg-int v8, v8

    mul-int/2addr v8, v10

    iget v12, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    mul-int/2addr v12, v11

    iget v13, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    mul-int/2addr v13, v11

    invoke-direct {v0, v7, v8, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 590
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    iget v11, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-direct {v7, v9, v9, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v15, v0

    move-object/from16 v16, v7

    .line 592
    :goto_11a
    new-instance v0, Lcom/android/server/wm/BlackFrame;

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v7, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    const v17, 0x1eab92

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v8, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    move-object v12, v0

    move-object/from16 v14, p1

    move-object/from16 v18, v7

    move/from16 v19, v8

    invoke-direct/range {v12 .. v19}, Lcom/android/server/wm/BlackFrame;-><init>(Lcom/android/server/wm/TransactionFactory;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 594
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v7, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;
    :try_end_137
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e6 .. :try_end_137} :catch_13f

    move-object/from16 v8, p1

    :try_start_139
    invoke-virtual {v0, v8, v7}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    :try_end_13c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_139 .. :try_end_13c} :catch_13d

    .line 597
    goto :goto_148

    .line 595
    :catch_13d
    move-exception v0

    goto :goto_142

    :catch_13f
    move-exception v0

    move-object/from16 v8, p1

    .line 596
    :goto_142
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_148

    .line 569
    :cond_146
    move-object/from16 v8, p1

    .line 600
    :goto_148
    if-eqz v6, :cond_186

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-nez v0, :cond_186

    .line 602
    :try_start_14e
    new-instance v0, Landroid/graphics/Rect;

    neg-int v6, v4

    mul-int/2addr v6, v10

    neg-int v7, v5

    mul-int/2addr v7, v10

    mul-int/lit8 v11, v4, 0x2

    mul-int/lit8 v12, v5, 0x2

    invoke-direct {v0, v6, v7, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9, v9, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 605
    new-instance v4, Lcom/android/server/wm/BlackFrame;

    iget-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    const v7, 0x1eab90

    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v11, 0x0

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, p1

    move-object/from16 p5, v0

    move-object/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v9

    move/from16 p9, v11

    invoke-direct/range {p2 .. p9}, Lcom/android/server/wm/BlackFrame;-><init>(Lcom/android/server/wm/TransactionFactory;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;Z)V

    iput-object v4, v1, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    :try_end_181
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_14e .. :try_end_181} :catch_182

    .line 609
    goto :goto_186

    .line 607
    :catch_182
    move-exception v0

    .line 608
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    :cond_186
    :goto_186
    return v10
.end method

.method private stepAnimation(J)Z
    .registers 7

    .line 719
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 720
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 722
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 724
    iput-wide p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 748
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-eqz v0, :cond_21

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    .line 772
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_30

    .line 774
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    .line 778
    :cond_30
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_3e

    .line 780
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    .line 792
    :cond_3e
    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    const/4 p2, 0x0

    if-nez p1, :cond_51

    .line 807
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_51

    .line 809
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 810
    iput-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 811
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->clear()V

    .line 815
    :cond_51
    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez p1, :cond_63

    .line 830
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_63

    .line 832
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 833
    iput-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 834
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->clear()V

    .line 859
    :cond_63
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 860
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 883
    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez p1, :cond_7d

    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez p1, :cond_7d

    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    if-nez p1, :cond_7e

    :cond_7d
    const/4 v0, 0x1

    .line 890
    :cond_7e
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 894
    return v0
.end method


# virtual methods
.method public dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
    .registers 21

    .line 621
    move-object v10, p0

    iget-object v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v11, 0x0

    if-nez v0, :cond_7

    .line 623
    return v11

    .line 625
    :cond_7
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_1c

    .line 626
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

    .line 629
    :cond_1c
    iget-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_21

    .line 630
    return v11

    .line 633
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 634
    return v0
.end method

.method public getEnterTransformation()Landroid/view/animation/Transformation;
    .registers 2

    .line 992
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method hasScreenshot()Z
    .registers 2

    .line 311
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

    .line 701
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

    .line 705
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

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 644
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 646
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_21

    .line 647
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 648
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 650
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_2a

    .line 651
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 652
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 654
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_33

    .line 655
    invoke-virtual {v0}, Lcom/android/server/wm/BlackFrame;->kill()V

    .line 656
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    .line 690
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3c

    .line 691
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 692
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    .line 694
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_45

    .line 695
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 696
    iput-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    .line 698
    :cond_45
    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 151
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 152
    const-string v0, " mWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 153
    const-string v0, " mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitingBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    const-string v1, "  "

    if-eqz v0, :cond_46

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 164
    :cond_46
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnteringBlackFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_69

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/BlackFrame;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 168
    :cond_69
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 169
    const-string v0, " mOriginalRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 170
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOriginalWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 171
    const-string v0, " mOriginalHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 172
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 173
    const-string v0, " mAnimRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 174
    const-string v0, " mFinishAnimReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    const-string v0, " mFinishAnimStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimStartTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 176
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStartExitAnimation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 177
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 178
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 180
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStartFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStartFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishExitAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 186
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mFinishFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateExitAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 190
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateEnterAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRotateFrameAnimation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 196
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 198
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameTransformation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p2}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrameInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 202
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSnapshotInitialMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 205
    const-string v0, " mSnapshotFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 206
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 207
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mExitFrameFinalMatrix="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 209
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 210
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mForceDefaultOrientation="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 211
    iget-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz p1, :cond_233

    .line 212
    const-string p1, " mOriginalDisplayRect="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mOriginalDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    const-string p1, " mCurrentDisplayRect="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    :cond_233
    return-void
.end method

.method public setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z
    .registers 8

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;I)V

    .line 384
    const/4 p1, 0x0

    return p1
.end method

.method public stepAnimationLocked(J)Z
    .registers 7

    .line 945
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation;->hasAnimations()Z

    move-result v0

    if-nez v0, :cond_a

    .line 947
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFinishAnimReady:Z

    .line 948
    return p1

    .line 951
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    if-nez v0, :cond_2b

    .line 978
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_15

    .line 979
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 981
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1c

    .line 982
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 984
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mHalfwayPoint:J

    .line 988
    :cond_2b
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimation(J)Z

    move-result p1

    return p1
.end method

.method updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 898
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    if-nez v0, :cond_5

    .line 899
    return-void

    .line 902
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    .line 903
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v1, :cond_18

    .line 905
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 909
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_37

    .line 910
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartFrame:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishFrame:Z

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateFrame:Z

    if-nez v1, :cond_2c

    .line 912
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_37

    .line 914
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mCustomBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 918
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_6e

    .line 919
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartExit:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishExit:Z

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateExit:Z

    if-nez v1, :cond_4b

    .line 921
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_6e

    .line 923
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mFrameInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 924
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitFrameFinalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 925
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_6e

    .line 926
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitingBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 931
    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    if-eqz v0, :cond_8d

    .line 932
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreStartEnter:Z

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreFinishEnter:Z

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mMoreRotateEnter:Z

    if-nez v1, :cond_82

    .line 934
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackFrame;->hide(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_8d

    .line 936
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mEnterTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/BlackFrame;->setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V

    .line 940
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mSnapshotFinalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mExitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ScreenRotationAnimation;->setSnapshotTransform(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;F)V

    .line 942
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 218
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 219
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mStarted:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 220
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mAnimRunning:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 221
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 222
    return-void
.end method
