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

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field mTransferTouchFromToken:Landroid/os/IBinder;

.field mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "controller"  # Lcom/android/server/wm/DragDropController;
    .param p3, "token"  # Landroid/os/IBinder;
    .param p4, "surface"  # Landroid/view/SurfaceControl;
    .param p5, "flags"  # I
    .param p6, "localWin"  # Landroid/os/IBinder;

    .line 135
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

    .line 136
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 137
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 138
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 139
    iput-object p4, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 140
    iput p5, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 141
    iput-object p6, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 143
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragState;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DragState;

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method private createCancelAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 8

    .line 670
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

    .line 671
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

    .line 673
    const-string v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_74

    .line 675
    const-string v3, "scale"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    aput v2, v1, v5

    const/4 v2, 0x0

    aput v2, v1, v4

    .line 676
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 670
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 677
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 678
    .local v1, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 679
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 681
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 683
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$DragState$WVn6-eGpkutjNAUr_QLMbFLA5qw;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-object v0

    :array_74
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private createReturnAnimationLocked()Landroid/animation/ValueAnimator;
    .registers 13

    .line 640
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

    .line 641
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

    .line 644
    const-string v3, "y"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_b0

    .line 647
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

    .line 648
    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 640
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 651
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget v1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    sub-float/2addr v1, v2

    .line 652
    .local v1, "translateX":F
    iget v2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    sub-float/2addr v2, v3

    .line 654
    .local v2, "translateY":F
    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 655
    .local v3, "travelDistance":D
    iget-object v5, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    .line 656
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 657
    .local v5, "displayDiagonal":D
    div-double v7, v3, v5

    const-wide v9, 0x4066800000000000L  # 180.0

    mul-double/2addr v7, v9

    double-to-long v7, v7

    const-wide/16 v9, 0xc3

    add-long/2addr v7, v9

    .line 659
    .local v7, "duration":J
    new-instance v9, Lcom/android/server/wm/DragState$AnimationListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;Lcom/android/server/wm/DragState$1;)V

    .line 660
    .local v9, "listener":Lcom/android/server/wm/DragState$AnimationListener;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 661
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 662
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 665
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;

    invoke-direct {v11, v0}, Lcom/android/server/wm/-$$Lambda$DragState$4E4tzlfJ9AKYEiVk7F8SFlBLwPc;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    return-object v0

    :array_b0
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private hideInputSurface()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    .line 152
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 154
    :cond_d
    return-void
.end method

.method private isFromSource(I)Z
    .registers 3
    .param p1, "source"  # I

    .line 688
    iget v0, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isValidDropTarget(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "targetWin"  # Lcom/android/server/wm/WindowState;

    .line 419
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 420
    return v0

    .line 422
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v1

    if-nez v1, :cond_b

    .line 423
    return v0

    .line 425
    :cond_b
    iget v1, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 427
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_22

    .line 428
    return v0

    .line 432
    :cond_22
    iget-boolean v1, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    if-nez v1, :cond_32

    iget v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 433
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_33

    :cond_32
    const/4 v0, 0x1

    .line 432
    :cond_33
    return v0
.end method

.method private isWindowNotified(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "newWin"  # Lcom/android/server/wm/WindowState;

    .line 461
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

    .line 462
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_16

    .line 463
    const/4 v0, 0x1

    return v0

    .line 465
    .end local v1  # "ws":Lcom/android/server/wm/WindowState;
    :cond_16
    goto :goto_6

    .line 466
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$createCancelAnimationLocked$2(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "animator"  # Landroid/animation/ValueAnimator;

    .line 683
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$createReturnAnimationLocked$1(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "animator"  # Landroid/animation/ValueAnimator;

    .line 665
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;
    .registers 22
    .param p0, "win"  # Lcom/android/server/wm/WindowState;
    .param p1, "action"  # I
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "localState"  # Ljava/lang/Object;
    .param p5, "description"  # Landroid/content/ClipDescription;
    .param p6, "data"  # Landroid/content/ClipData;
    .param p7, "dragAndDropPermissions"  # Lcom/android/internal/view/IDragAndDropPermissions;
    .param p8, "result"  # Z

    .line 633
    move-object v0, p0

    move v1, p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->translateToWindowX(F)F

    move-result v10

    .line 634
    .local v10, "winX":F
    move/from16 v11, p3

    invoke-virtual {p0, v11}, Lcom/android/server/wm/WindowState;->translateToWindowY(F)F

    move-result v12

    .line 635
    .local v12, "winY":F
    move v2, p1

    move v3, v10

    move v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v2 .. v9}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .registers 15
    .param p1, "newWin"  # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"  # F
    .param p3, "touchY"  # F
    .param p4, "desc"  # Landroid/content/ClipDescription;

    .line 400
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_62

    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isValidDropTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 401
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

    move-result-object v0

    .line 404
    .local v0, "event":Landroid/view/DragEvent;
    :try_start_17
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, v0}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_31
    .catchall {:try_start_17 .. :try_end_21} :catchall_2f

    .line 411
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_62

    .line 412
    :goto_2b
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    goto :goto_62

    .line 411
    :catchall_2f
    move-exception v1

    goto :goto_54

    .line 407
    :catch_31
    move-exception v1

    .line 408
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_32
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to drag-start window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_2f

    .line 411
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_62

    .line 412
    goto :goto_2b

    .line 411
    :goto_54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    if-eq v2, v3, :cond_61

    .line 412
    invoke-virtual {v0}, Landroid/view/DragEvent;->recycle()V

    :cond_61
    throw v1

    .line 416
    .end local v0  # "event":Landroid/view/DragEvent;
    :cond_62
    :goto_62
    return-void
.end method

.method private showInputSurface()V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2a

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 159
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 161
    const-string v1, "Drag and Drop Input Consumer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    .line 163
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 164
    .local v0, "h":Landroid/view/InputWindowHandle;
    if-nez v0, :cond_38

    .line 165
    const-string v1, "WindowManager"

    const-string v2, "Drag is in progress but there is no drag window handle."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 176
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mTransferTouchFromToken:Landroid/os/IBinder;

    iget-object v3, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DragState;->mTransferTouchFromToken:Landroid/os/IBinder;

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 182
    return-void
.end method

.method private targetWindowSupportsGlobalDrag(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "targetWin"  # Lcom/android/server/wm/WindowState;

    .line 439
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method


# virtual methods
.method broadcastDragStartedLocked(FF)V
    .registers 7
    .param p1, "touchX"  # F
    .param p2, "touchY"  # F

    .line 366
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iput p1, p0, Lcom/android/server/wm/DragState;->mOriginalX:F

    .line 367
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iput p2, p0, Lcom/android/server/wm/DragState;->mOriginalY:F

    .line 371
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 375
    iget v1, p0, Lcom/android/server/wm/DragState;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    .line 377
    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    .line 378
    .local v1, "userManager":Landroid/os/UserManagerInternal;
    iget v2, p0, Lcom/android/server/wm/DragState;->mSourceUserId:I

    const-string v3, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mCrossProfileCopyAllowed:Z

    .line 381
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_5e

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasting DRAG_STARTED at ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DragState$-yUFIMrhYYccZ0gwd6eVcpAE93o;-><init>(Lcom/android/server/wm/DragState;FF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 388
    return-void
.end method

.method cancelDragLocked(Z)V
    .registers 3
    .param p1, "skipAnimation"  # Z

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 482
    return-void

    .line 484
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_13

    if-eqz p1, :cond_c

    goto :goto_13

    .line 493
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createCancelAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 494
    return-void

    .line 490
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 491
    return-void
.end method

.method closeLocked()V
    .registers 19

    .line 189
    move-object/from16 v1, p0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/DragState;->mIsClosing:Z

    .line 191
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    .line 192
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v2, :cond_15

    .line 193
    const-string v2, "unregistering drag input channel"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_15
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/DragDropController;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 198
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 201
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DragState;->hideInputSurface()V

    .line 204
    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9b

    .line 205
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 207
    .local v5, "myPid":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_33

    .line 208
    const-string v0, "broadcasting DRAG_ENDED"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_33
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 211
    .local v7, "ws":Lcom/android/server/wm/WindowState;
    const/4 v0, 0x0

    .line 212
    .local v0, "x":F
    const/4 v8, 0x0

    .line 213
    .local v8, "y":F
    iget-boolean v9, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v9, :cond_5c

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v9, v9, Lcom/android/server/wm/Session;->mPid:I

    iget v10, v1, Lcom/android/server/wm/DragState;->mPid:I

    if-ne v9, v10, :cond_5c

    .line 215
    iget v0, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 216
    iget v8, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    move/from16 v17, v8

    move v8, v0

    goto :goto_5f

    .line 218
    :cond_5c
    move/from16 v17, v8

    move v8, v0

    .end local v0  # "x":F
    .local v8, "x":F
    .local v17, "y":F
    :goto_5f
    const/4 v9, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v10, v8

    move/from16 v11, v17

    move/from16 v16, v0

    invoke-static/range {v9 .. v16}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 221
    .local v9, "evt":Landroid/view/DragEvent;
    :try_start_6f
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_74} :catch_75

    .line 224
    goto :goto_8a

    .line 222
    :catch_75
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to drag-end window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_8a
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v5, v0, :cond_93

    .line 228
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 230
    .end local v7  # "ws":Lcom/android/server/wm/WindowState;
    .end local v8  # "x":F
    .end local v9  # "evt":Landroid/view/DragEvent;
    .end local v17  # "y":F
    :cond_93
    goto :goto_39

    .line 231
    :cond_94
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 236
    .end local v5  # "myPid":I
    :cond_9b
    const/16 v0, 0x2002

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 237
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v7, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 238
    iput v2, v1, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 242
    :cond_b0
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_bf

    .line 243
    iget-object v5, v1, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v0, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 244
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 246
    :cond_bf
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_cc

    iget-boolean v0, v1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    if-nez v0, :cond_cc

    .line 247
    const-string v0, "Unexpectedly destroying mSurfaceControl while animation is running"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_cc
    iput v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    .line 251
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 252
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 253
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 254
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, v1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 255
    iput-object v4, v1, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 258
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DragDropController;->onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V

    .line 259
    return-void
.end method

.method endDragLocked()V
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 471
    return-void

    .line 473
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    if-nez v0, :cond_10

    .line 474
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->createReturnAnimationLocked()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    .line 475
    return-void

    .line 477
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 478
    return-void
.end method

.method getDragLayerLocked()I
    .registers 3

    .line 358
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

    .line 336
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

    .line 340
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

    .line 147
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mIsClosing:Z

    return v0
.end method

.method isInProgress()Z
    .registers 2

    .line 625
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    return v0
.end method

.method public synthetic lambda$broadcastDragStartedLocked$0$DragState(FFLcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "touchX"  # F
    .param p2, "touchY"  # F
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 387
    return-void
.end method

.method notifyDropLocked(FF)V
    .registers 23
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 562
    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    .line 563
    return-void

    .line 565
    :cond_b
    iput v11, v1, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 566
    iput v12, v1, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 568
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v11, v12}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v13

    .line 570
    .local v13, "touchedWin":Lcom/android/server/wm/WindowState;
    invoke-direct {v1, v13}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_22

    .line 573
    iput-boolean v14, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 575
    return-void

    .line 578
    :cond_22
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v15, "WindowManager"

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending DROP to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_3c
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 583
    .local v10, "targetUserId":I
    iget v0, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_68

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_68

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_68

    .line 585
    new-instance v0, Lcom/android/server/wm/DragAndDropPermissionsHandler;

    iget v4, v1, Lcom/android/server/wm/DragState;->mUid:I

    .line 588
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v5

    iget v2, v1, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit16 v6, v2, 0xc3

    iget v7, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    move-object v2, v0

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/DragAndDropPermissionsHandler;-><init>(Landroid/content/ClipData;ILjava/lang/String;III)V

    move-object/from16 v16, v0

    .local v0, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    goto :goto_6b

    .line 593
    .end local v0  # "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :cond_68
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 595
    .local v16, "dragAndDropPermissions":Lcom/android/server/wm/DragAndDropPermissionsHandler;
    :goto_6b
    iget v0, v1, Lcom/android/server/wm/DragState;->mSourceUserId:I

    if-eq v0, v10, :cond_76

    .line 596
    iget-object v2, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v2, :cond_76

    .line 597
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->fixUris(I)V

    .line 600
    :cond_76
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    .line 601
    .local v9, "myPid":I
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 602
    .local v8, "token":Landroid/os/IBinder;
    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/16 v17, 0x0

    move-object v2, v13

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v14, v8

    .end local v8  # "token":Landroid/os/IBinder;
    .local v14, "token":Landroid/os/IBinder;
    move-object v8, v0

    move/from16 v18, v9

    .end local v9  # "myPid":I
    .local v18, "myPid":I
    move-object/from16 v9, v16

    move/from16 v19, v10

    .end local v10  # "targetUserId":I
    .local v19, "targetUserId":I
    move/from16 v10, v17

    invoke-static/range {v2 .. v10}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v2

    .line 605
    .local v2, "evt":Landroid/view/DragEvent;
    :try_start_9a
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v2}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 608
    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/DragDropController;->sendTimeoutMessage(ILjava/lang/Object;)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a5} :catch_b5
    .catchall {:try_start_9a .. :try_end_a5} :catchall_b1

    .line 613
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v3, v18

    .end local v18  # "myPid":I
    .local v3, "myPid":I
    if-eq v3, v0, :cond_d6

    .line 614
    :goto_ad
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    goto :goto_d6

    .line 613
    .end local v3  # "myPid":I
    .restart local v18  # "myPid":I
    :catchall_b1
    move-exception v0

    move/from16 v3, v18

    .end local v18  # "myPid":I
    .restart local v3  # "myPid":I
    goto :goto_da

    .line 609
    .end local v3  # "myPid":I
    .restart local v18  # "myPid":I
    :catch_b5
    move-exception v0

    move/from16 v3, v18

    .line 610
    .end local v18  # "myPid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3  # "myPid":I
    :try_start_b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t send drop notification to win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragState;->endDragLocked()V
    :try_end_cf
    .catchall {:try_start_b8 .. :try_end_cf} :catchall_d9

    .line 613
    .end local v0  # "e":Landroid/os/RemoteException;
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-eq v3, v0, :cond_d6

    .line 614
    goto :goto_ad

    .line 617
    :cond_d6
    :goto_d6
    iput-object v14, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 618
    return-void

    .line 613
    :catchall_d9
    move-exception v0

    :goto_da
    iget-object v4, v13, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v3, v4, :cond_e3

    .line 614
    invoke-virtual {v2}, Landroid/view/DragEvent;->recycle()V

    :cond_e3
    throw v0
.end method

.method notifyLocationLocked(FF)V
    .registers 27
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 517
    move-object/from16 v1, p0

    const-string v2, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wm/DisplayContent;->getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 518
    .local v0, "touchedWin":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_19

    invoke-direct {v1, v0}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 521
    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_1a

    .line 525
    :cond_19
    move-object v14, v0

    .end local v0  # "touchedWin":Lcom/android/server/wm/WindowState;
    .local v14, "touchedWin":Lcom/android/server/wm/WindowState;
    :goto_1a
    :try_start_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 528
    .local v0, "myPid":I
    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v14, v3, :cond_68

    iget-object v3, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_68

    .line 529
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v3, :cond_40

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending DRAG_EXITED to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_40
    iget-object v15, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v3

    .line 535
    .local v3, "evt":Landroid/view/DragEvent;
    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, v3}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 536
    iget-object v4, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v4, :cond_68

    .line 537
    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 540
    .end local v3  # "evt":Landroid/view/DragEvent;
    :cond_68
    if-eqz v14, :cond_87

    .line 544
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v14

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v3 .. v11}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Lcom/android/internal/view/IDragAndDropPermissions;Z)Landroid/view/DragEvent;

    move-result-object v3

    .line 546
    .restart local v3  # "evt":Landroid/view/DragEvent;
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, v3}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 547
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v4, :cond_87

    .line 548
    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_87} :catch_88

    .line 553
    .end local v0  # "myPid":I
    .end local v3  # "evt":Landroid/view/DragEvent;
    :cond_87
    goto :goto_8e

    .line 551
    :catch_88
    move-exception v0

    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "can\'t send drag notification to windows"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_8e
    iput-object v14, v1, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    .line 555
    return-void
.end method

.method notifyMoveLocked(FF)V
    .registers 8
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 498
    return-void

    .line 500
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 501
    iput p2, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 504
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_14

    .line 505
    const-string v0, ">>> OPEN TRANSACTION notifyMoveLocked"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v3, p1, v3

    iget v4, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v4, p2, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 508
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_60

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  DRAG "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": pos=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v2, p1, v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_60
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V

    .line 513
    return-void
.end method

.method overridePointerIconLocked(I)V
    .registers 4
    .param p1, "touchSource"  # I

    .line 692
    iput p1, p0, Lcom/android/server/wm/DragState;->mTouchSource:I

    .line 693
    const/16 v0, 0x2002

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragState;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 694
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 696
    :cond_13
    return-void
.end method

.method register(Landroid/view/Display;)V
    .registers 4
    .param p1, "display"  # Landroid/view/Display;

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 348
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_10

    const-string v0, "registering drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    if-eqz v0, :cond_1a

    .line 350
    const-string v0, "Duplicate register of drag input channel"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 352
    :cond_1a
    new-instance v0, Lcom/android/server/wm/DragState$InputInterceptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DragState$InputInterceptor;-><init>(Lcom/android/server/wm/DragState;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mInputInterceptor:Lcom/android/server/wm/DragState$InputInterceptor;

    .line 353
    invoke-direct {p0}, Lcom/android/server/wm/DragState;->showInputSurface()V

    .line 355
    :goto_24
    return-void
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "newWin"  # Lcom/android/server/wm/WindowState;

    .line 448
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_2e

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/wm/DragState;->isWindowNotified(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 451
    return-void

    .line 453
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_25

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to send DRAG_STARTED to new window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_25
    iget v0, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v1, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DragState;->sendDragStartedLocked(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 458
    :cond_2e
    return-void
.end method
