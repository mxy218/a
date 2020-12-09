.class public Lcom/android/server/wm/RecentsAnimationController;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;,
        Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;,
        Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
    }
.end annotation


# static fields
.field private static final FAILSAFE_DELAY:J = 0x3e8L

.field public static final REORDER_KEEP_IN_PLACE:I = 0x0

.field public static final REORDER_MOVE_TO_ORIGINAL_POSITION:I = 0x2

.field public static final REORDER_MOVE_TO_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

.field private final mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

.field private mCancelDeferredWithScreenshot:Z

.field private mCancelOnNextTransitionStart:Z

.field private mCanceled:Z

.field private final mController:Landroid/view/IRecentsAnimationController;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayId:I

.field private final mFailsafeRunnable:Ljava/lang/Runnable;

.field private mInputConsumerEnabled:Z

.field private mLinkedToDeathOfRunner:Z

.field private mMinimizedHomeBounds:Landroid/graphics/Rect;

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingStart:Z

.field mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mRequestDeferCancelUntilNextTransition:Z

.field private mRunner:Landroid/view/IRecentsAnimationRunner;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSplitScreenMinimized:Z

.field private final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mTargetActivityType:I

.field private mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V
    .registers 6

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 142
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 174
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$2;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    .line 336
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 337
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 338
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    .line 339
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 340
    const-class p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 341
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 1

    .line 75
    iget-boolean p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/RecentsAnimationController;)I
    .registers 1

    .line 75
    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    return p1
.end method

.method private cancelAnimation(IZZLjava/lang/String;)V
    .registers 8
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 515
    iget-object p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 516
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_d

    .line 518
    monitor-exit p4

    return-void

    .line 520
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 523
    const/4 v1, 0x0

    if-eqz p3, :cond_3a

    .line 526
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {p3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object p3

    .line 527
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->screenshotRecentTask(Lcom/android/server/wm/Task;IZ)V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_4f

    .line 529
    :try_start_2b
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {p1, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_4f

    .line 532
    goto :goto_39

    .line 530
    :catch_31
    move-exception p1

    .line 531
    :try_start_32
    sget-object p2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string p3, "Failed to cancel recents animation"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_4f

    .line 533
    :goto_39
    goto :goto_4d

    .line 538
    :cond_3a
    :try_start_3a
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {p3, v1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catchall {:try_start_3a .. :try_end_3f} :catchall_4f

    .line 541
    goto :goto_48

    .line 539
    :catch_40
    move-exception p3

    .line 540
    :try_start_41
    sget-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation"

    invoke-static {v0, v2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    :goto_48
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {p3, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 545
    :goto_4d
    monitor-exit p4

    .line 546
    return-void

    .line 545
    :catchall_4f
    move-exception p1

    monitor-exit p4
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method private isAnimatingApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 7

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2c

    .line 747
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 748
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1b
    if-ltz v3, :cond_29

    .line 749
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 750
    if-ne v4, p1, :cond_26

    .line 751
    return v1

    .line 748
    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 746
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 755
    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method private isTargetOverWallpaper()Z
    .registers 2

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_6

    .line 731
    const/4 v0, 0x0

    return v0

    .line 733
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v0

    return v0
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_11

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 660
    :cond_11
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .registers 3

    .line 663
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_10

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 665
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 667
    :cond_10
    return-void
.end method


# virtual methods
.method addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 421
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 423
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/wm/Task;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 424
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 425
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    return-object v0
.end method

.method public binderDied()V
    .registers 4

    .line 671
    const/4 v0, 0x2

    const-string v1, "binderDied"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 675
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    .line 676
    const-string v2, "recents_animation_input_consumer"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 677
    monitor-exit v0

    .line 678
    return-void

    .line 677
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method cancelAnimation(ILjava/lang/String;)V
    .registers 4
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZZLjava/lang/String;)V

    .line 501
    return-void
.end method

.method cancelAnimationSynchronously(ILjava/lang/String;)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 504
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZZLjava/lang/String;)V

    .line 505
    return-void
.end method

.method cancelAnimationWithScreenshot(Z)V
    .registers 5

    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "stackOrderChanged"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZZLjava/lang/String;)V

    .line 509
    return-void
.end method

.method checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .registers 3

    .line 681
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_25

    .line 682
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 683
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 684
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    .line 685
    :goto_1a
    if-eqz p1, :cond_25

    .line 686
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 689
    :cond_25
    return-void
.end method

.method cleanupAnimation(I)V
    .registers 6
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_23

    .line 610
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 611
    if-eq p1, v1, :cond_16

    if-nez p1, :cond_1d

    .line 612
    :cond_16
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->dontAnimateDimExit()V

    .line 614
    :cond_1d
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 609
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 618
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->unregisterListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 622
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->unlinkToDeathOfRunner()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 624
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 627
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v2, :cond_46

    .line 628
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 629
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 633
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    .line 634
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_62

    .line 639
    if-eq p1, v1, :cond_57

    if-nez p1, :cond_62

    .line 640
    :cond_57
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 646
    :cond_62
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p1, :cond_6a

    .line 647
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 649
    :cond_6a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingStart="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingAnimations="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCanceled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInputConsumerEnabled="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSplitScreenMinimized="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTargetAppToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTargetOverWallpaper="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequestDeferCancelUntilNextTransition="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCancelOnNextTransitionStart="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCancelDeferredWithScreenshot="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;)V
    .registers 10

    .line 350
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityType:I

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 358
    const/4 v1, 0x1

    if-eqz p1, :cond_34

    .line 359
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_20
    if-ltz v3, :cond_34

    .line 360
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 361
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 362
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_31
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 366
    :cond_34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 367
    nop

    :goto_39
    if-ge v2, v3, :cond_60

    .line 368
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 369
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    .line 370
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 371
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_53

    .line 372
    goto :goto_5d

    .line 374
    :cond_53
    iget v5, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;

    .line 367
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 378
    :cond_60
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_6f

    .line 379
    const-string p1, "initialize-noVisibleTasks"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 380
    return-void

    .line 384
    :cond_6f
    :try_start_6f
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->linkToDeathOfRunner()V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_72} :catch_c3

    .line 388
    nop

    .line 391
    nop

    .line 392
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 393
    if-eqz p1, :cond_95

    .line 396
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 397
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result p1

    if-eqz p1, :cond_95

    .line 398
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 399
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 404
    :cond_95
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 405
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 406
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 407
    if-nez p1, :cond_ab

    const/4 p1, -0x1

    goto :goto_af

    :cond_ab
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result p1

    :goto_af
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 405
    invoke-virtual {p2, v0, p1, v2}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V

    .line 410
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 413
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p1, :cond_c2

    .line 414
    invoke-interface {p1, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onRecentsAnimationStateChanged(Z)V

    .line 416
    :cond_c2
    return-void

    .line 385
    :catch_c3
    move-exception p1

    .line 386
    const-string p1, "initialize-failedToLinkToDeath"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 387
    return-void
.end method

.method isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 737
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 738
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne p1, v2, :cond_19

    .line 739
    return v1

    .line 737
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 742
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method isSplitScreenMinimized()Z
    .registers 2

    .line 692
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    return v0
.end method

.method isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_8

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 696
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, p1, :cond_14

    .line 697
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 696
    :goto_15
    return p1
.end method

.method public synthetic lambda$new$0$RecentsAnimationController()V
    .registers 3

    .line 97
    const/4 v0, 0x2

    const-string v1, "failSafeRunnable"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$screenshotRecentTask$1$RecentsAnimationController(IZ)V
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 600
    return-void
.end method

.method removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 433
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 434
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$1100(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    return-void
.end method

.method scheduleFailsafe()V
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 653
    return-void
.end method

.method screenshotRecentTask(Lcom/android/server/wm/Task;IZ)V
    .registers 7
    .param p2  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 590
    invoke-static {p1}, Lcom/android/server/wm/TaskScreenshotAnimatable;->create(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskScreenshotAnimatable;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_1b

    .line 592
    new-instance v1, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$UtmXbQuPny5O24HGUrj6wbS-P2A;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$UtmXbQuPny5O24HGUrj6wbS-P2A;-><init>(Lcom/android/server/wm/RecentsAnimationController;IZ)V

    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v0, v2, p2}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 601
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object p1, p1, Lcom/android/server/wm/Task;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 603
    :cond_1b
    return-void
.end method

.method setCancelOnNextTransitionStart()V
    .registers 2

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelOnNextTransitionStart:Z

    .line 559
    return-void
.end method

.method setDeferredCancel(ZZ)V
    .registers 3

    .line 568
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    .line 569
    iput-boolean p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    .line 570
    return-void
.end method

.method shouldApplyInputConsumer(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3

    .line 707
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v0, p1, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method shouldDeferCancelUntilNextTransition()Z
    .registers 2

    .line 577
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    return v0
.end method

.method shouldDeferCancelWithScreenshot()Z
    .registers 2

    .line 586
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRequestDeferCancelUntilNextTransition:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCancelDeferredWithScreenshot:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method startAnimation()V
    .registers 7

    .line 441
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_a

    goto/16 :goto_aa

    .line 446
    :cond_a
    const/4 v0, 0x1

    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_17
    if-ltz v2, :cond_31

    .line 448
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 449
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationApp()Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    .line 450
    if-eqz v4, :cond_2b

    .line 451
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 453
    :cond_2b
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 447
    :goto_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 458
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 459
    const/4 v1, 0x2

    const-string v2, "startAnimation-noAppWindows"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 460
    return-void

    .line 463
    :cond_3e
    nop

    .line 464
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    .line 463
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    .line 465
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 469
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    .line 472
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenSecondaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 473
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    goto :goto_63

    .line 474
    :cond_62
    const/4 v2, 0x0

    .line 476
    :goto_63
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_7a

    .line 477
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_85

    .line 480
    :cond_7a
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 481
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 483
    :goto_85
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v4, v5, v1, v3, v2}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_8c} :catch_8d

    .line 493
    goto :goto_95

    .line 491
    :catch_8d
    move-exception v1

    .line 492
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recents animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    :goto_95
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 495
    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyAppTransitionStarting(Landroid/util/SparseIntArray;J)V

    .line 497
    return-void

    .line 443
    :cond_aa
    :goto_aa
    return-void
.end method

.method updateInputConsumerForApp(Landroid/view/InputWindowHandle;Z)Z
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    .line 714
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_a

    .line 715
    :cond_9
    const/4 v0, 0x0

    .line 716
    :goto_a
    if-eqz v0, :cond_1c

    .line 717
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 718
    iput-boolean p2, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 719
    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 720
    const/4 p1, 0x1

    return p1

    .line 722
    :cond_1c
    const/4 p1, 0x0

    return p1
.end method
