.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragState$AnimationListener;,
        Lcom/android/server/wm/DragState$InputInterceptor;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final DRAG_FLAGS_URI_ACCESS:I = 0x3

.field private static final DRAG_FLAGS_URI_PERMISSIONS:I = 0xc3

.field private static final MAX_ANIMATION_DURATION_MS:J = 0x177L

.field private static final MIN_ANIMATION_DURATION_MS:J = 0xc3L


# instance fields
.field volatile mAnimationCompleted:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field mCrossProfileCopyAllowed:Z

.field private final mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplaySize:Landroid/graphics/Point;

.field final mDragDropController:Lcom/android/server/wm/DragDropController;

.field mDragInProgress:Z

.field mDragResult:Z

.field mFlags:I

.field mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

.field mInputSurface:Landroid/view/SurfaceControl;

.field private mIsClosing:Z

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mOriginalAlpha:F

.field mOriginalX:F

.field mOriginalY:F

.field mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceUserId:I

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field mToken:Landroid/os/IBinder;

.field mTouchSource:I

.field final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 9

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    .line 117
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 136
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 137
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 138
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 139
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 140
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 141
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 142
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {p1}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    return-object p0
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 8

    .line 668
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v4, v3, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 669
    const-string v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v6, v3, v6

    aput v6, v2, v5

    aput v3, v2, v4

    .line 671
    const-string v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_74

    .line 673
    const-string v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 674
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 668
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 675
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 676
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 677
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 678
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 679
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 681
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    return-object v0

    :array_74
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 8

    .line 638
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 639
    const-string v3, "x"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget v6, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v3, v6

    aput v3, v2, v5

    iget v3, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    sub-float/2addr v3, v6

    aput v3, v2, v4

    .line 642
    const-string v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_ae

    .line 645
    const-string v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    aput v2, v1, v4

    .line 646
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 638
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 649
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v1, v2

    .line 650
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v2, v3

    .line 652
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 653
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v3, v3

    .line 654
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 655
    div-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L  # 180.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    const-wide/16 v3, 0xc3

    add-long/2addr v1, v3

    .line 657
    new-instance v3, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 659
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 660
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 663
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 664
    return-object v0

    nop

    :array_ae
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private hideInputSurface()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    .line 151
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 153
    :cond_d
    return-void
.end method

.method private isFromSource(I)Z
    .registers 3

    .line 686
    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 417
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 418
    return v0

    .line 420
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v1

    if-nez v1, :cond_b

    .line 421
    return v0

    .line 423
    :cond_b
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 425
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_22

    .line 426
    return v0

    .line 430
    :cond_22
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v1, :cond_32

    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 431
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne v1, p1, :cond_33

    :cond_32
    const/4 v0, 0x1

    .line 430
    :cond_33
    return v0
.end method

.method private isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 460
    if-ne v1, p1, :cond_16

    .line 461
    const/4 p1, 0x1

    return p1

    .line 463
    :cond_16
    goto :goto_6

    .line 464
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$createCancelAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .registers 1

    .line 681
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$createReturnAnimationLocked$1(Landroid/animation/ValueAnimator;)V
    .registers 1

    .line 663
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .registers 17

    .line 631
    move-object v0, p0

    move v1, p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v1

    .line 632
    move v2, p3

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v2

    .line 633
    move v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .registers 15

    .line 398
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_61

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 399
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p2

    .line 402
    :try_start_17
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p3, p2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 404
    iget-object p3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_31
    .catchall {:try_start_17 .. :try_end_21} :catchall_2f

    .line 409
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_61

    .line 410
    :goto_2b
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_61

    .line 409
    :catchall_2f
    move-exception p3

    goto :goto_53

    .line 405
    :catch_31
    move-exception p3

    .line 406
    :try_start_32
    const-string p3, "WindowManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to drag-start window "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    .line 409
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p3, p1, :cond_61

    .line 410
    goto :goto_2b

    .line 409
    :goto_53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p4

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-eq p4, p1, :cond_60

    .line 410
    invoke-virtual {p2}, Landroid/view/DragEvent;->recycle()V

    :cond_60
    throw p3

    .line 414
    :cond_61
    :goto_61
    return-void
.end method

.method private showInputSurface()V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2a

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 158
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 160
    const-string v1, "Drag and Drop Input Consumer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 162
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 163
    if-nez v0, :cond_38

    .line 164
    const-string v0, "WindowManager"

    const-string v1, "Drag is in progress but there is no drag window handle."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 169
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 180
    return-void
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 437
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget p1, p1, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .registers 7

    .line 364
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 365
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 373
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 375
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 376
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;-><init>(Lcom/android/server/wm/DragState;FF)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 386
    return-void
.end method

.method cancelDragLocked(Z)V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 480
    return-void

    .line 482
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_13

    if-eqz p1, :cond_c

    goto :goto_13

    .line 491
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 492
    return-void

    .line 488
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 489
    return-void
.end method

.method closeLocked()V
    .registers 19

    .line 187
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 189
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 194
    iget-object v4, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 196
    iput-object v3, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 199
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DragState;->hideInputSurface()V

    .line 202
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const-string v2, "WindowManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_84

    .line 203
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 208
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 209
    nop

    .line 210
    nop

    .line 211
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_48

    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    iget v9, v1, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v0, v9, :cond_48

    .line 213
    iget v0, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 214
    iget v9, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    move v11, v0

    move v12, v9

    goto :goto_4a

    .line 216
    :cond_48
    move v11, v4

    move v12, v11

    :goto_4a
    const/4 v10, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    move/from16 v17, v0

    invoke-static/range {v10 .. v17}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 219
    :try_start_58
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e

    .line 222
    goto :goto_73

    .line 220
    :catch_5e
    move-exception v0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to drag-end window "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_73
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v6, v0, :cond_7c

    .line 226
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 228
    :cond_7c
    goto :goto_26

    .line 229
    :cond_7d
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 230
    iput-boolean v5, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 234
    :cond_84
    const/16 v0, 0x2002

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 235
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v8, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 236
    iput v5, v1, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 240
    :cond_99
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a8

    .line 241
    iget-object v6, v1, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6, v0, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 242
    iput-object v3, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 244
    :cond_a8
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b5

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_b5

    .line 245
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_b5
    iput v5, v1, Lcom/android/server/wm/DragState;->mFlags:I

    .line 249
    iput-object v3, v1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 250
    iput-object v3, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 251
    iput-object v3, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 252
    iput v4, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v4, v1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 253
    iput-object v3, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 256
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 257
    return-void
.end method

.method endDragLocked()V
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 469
    return-void

    .line 471
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_10

    .line 472
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 473
    return-void

    .line 475
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 476
    return-void
.end method

.method getDragLayerLocked()I
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method getInputChannel()Landroid/view/InputChannel;
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mServerChannel:Landroid/view/InputChannel;

    :goto_8
    return-object v0
.end method

.method getInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/DragState$InputInterceptor;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    :goto_8
    return-object v0
.end method

.method isClosing()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return v0
.end method

.method isInProgress()Z
    .registers 2

    .line 623
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return v0
.end method

.method public synthetic lambda$broadcastDragStartedLocked$0$DragState(FFLcom/android/server/wm/WindowState;)V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 385
    return-void
.end method

.method notifyDropLocked(FF)V
    .registers 16

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 561
    return-void

    .line 563
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 564
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 566
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 568
    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_1c

    .line 571
    iput-boolean v10, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 572
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 573
    return-void

    .line 578
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 581
    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_47

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_47

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_47

    .line 583
    new-instance v9, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget v4, p0, Lcom/android/server/wm/DragState;->mUid:I

    .line 586
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v2, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v6, v2, 0xc3

    iget v7, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v2, v9

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Landroid/content/ClipData;ILjava/lang/String;III)V

    move-object v8, v9

    goto :goto_49

    .line 591
    :cond_47
    const/4 v2, 0x0

    move-object v8, v2

    .line 593
    :goto_49
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v2, v1, :cond_54

    .line 594
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v1, :cond_54

    .line 595
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->fixUris(I)V

    .line 598
    :cond_54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    .line 599
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 600
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v9, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object p1

    .line 603
    :try_start_6b
    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p2, p1}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 606
    iget-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p2, v10, v12}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_75} :catch_81
    .catchall {:try_start_6b .. :try_end_75} :catchall_7f

    .line 611
    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p2, p2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, p2, :cond_a2

    .line 612
    :goto_7b
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    goto :goto_a2

    .line 611
    :catchall_7f
    move-exception p2

    goto :goto_a5

    .line 607
    :catch_81
    move-exception p2

    .line 608
    :try_start_82
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t send drop notification to win "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_9b
    .catchall {:try_start_82 .. :try_end_9b} :catchall_7f

    .line 611
    iget-object p2, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p2, p2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, p2, :cond_a2

    .line 612
    goto :goto_7b

    .line 615
    :cond_a2
    :goto_a2
    iput-object v12, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 616
    return-void

    .line 611
    :goto_a5
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v11, v0, :cond_ae

    .line 612
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    :cond_ae
    throw p2
.end method

.method notifyLocationLocked(FF)V
    .registers 24

    .line 515
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_17

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 519
    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_18

    .line 523
    :cond_17
    move-object v11, v0

    :goto_18
    :try_start_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 526
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v11, v2, :cond_49

    iget-object v2, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_49

    .line 531
    iget-object v12, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    .line 533
    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 534
    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_49

    .line 535
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    .line 538
    :cond_49
    if-eqz v11, :cond_68

    .line 542
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    .line 544
    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 545
    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v3, :cond_68

    .line 546
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_68} :catch_69

    .line 551
    :cond_68
    goto :goto_71

    .line 549
    :catch_69
    move-exception v0

    .line 550
    const-string v0, "WindowManager"

    const-string v2, "can\'t send drag notification to windows"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :goto_71
    iput-object v11, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    .line 553
    return-void
.end method

.method notifyMoveLocked(FF)V
    .registers 7

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 496
    return-void

    .line 498
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 499
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v3, p2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V

    .line 511
    return-void
.end method

.method overridePointerIconLocked(I)V
    .registers 3

    .line 690
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 691
    const/16 p1, 0x2002

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 692
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    const/16 v0, 0x3fd

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 694
    :cond_13
    return-void
.end method

.method register(Landroid/view/Display;)V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_11

    .line 348
    const-string p1, "WindowManager"

    const-string v0, "Duplicate register of drag input channel"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 350
    :cond_11
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 351
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->showInputSurface()V

    .line 353
    :goto_1b
    return-void
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 446
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_14

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 449
    return-void

    .line 454
    :cond_b
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 456
    :cond_14
    return-void
.end method
