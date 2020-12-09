.class public Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 8.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadId:J

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .registers 12

    .line 597
    new-instance v7, Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 598
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 600
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    .line 597
    invoke-direct {p0, v7, p3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 608
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    .line 609
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    .line 610
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    .line 611
    new-instance p1, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {p2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    .line 612
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationController;IZ)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/MagnificationController;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/MagnificationController;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public static synthetic lambda$UxSkaR2uzdX0ekJv4Wtodc8tuMY(Lcom/android/server/accessibility/MagnificationController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(Z)V

    return-void
.end method

.method private onScreenTurnedOff()V
    .registers 3

    .line 1090
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;

    .line 1091
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1090
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1093
    return-void
.end method

.method private resetAllIfNeeded(Z)V
    .registers 5

    .line 1096
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1098
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1100
    :cond_18
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private unregisterCallbackLocked(IZ)V
    .registers 4

    .line 1127
    if-eqz p2, :cond_7

    .line 1128
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1131
    :cond_7
    nop

    .line 1132
    const/4 p1, 0x0

    move p2, p1

    :goto_a
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 1133
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1134
    invoke-virtual {p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result p2

    .line 1135
    if-eqz p2, :cond_21

    .line 1136
    goto :goto_24

    .line 1132
    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 1139
    :cond_24
    :goto_24
    if-nez p2, :cond_2b

    .line 1140
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    .line 1142
    :cond_2b
    return-void
.end method

.method private unregisterLocked(IZ)V
    .registers 5

    .line 1104
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1105
    if-nez v0, :cond_b

    .line 1106
    return-void

    .line 1108
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1109
    if-eqz p2, :cond_18

    .line 1110
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1112
    :cond_18
    return-void

    .line 1114
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p1

    if-nez p1, :cond_23

    .line 1115
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_26

    .line 1117
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregisterPending(Z)V

    .line 1119
    :goto_26
    return-void
.end method


# virtual methods
.method public getCenterX(I)F
    .registers 4

    .line 809
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 811
    if-nez p1, :cond_10

    .line 812
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 814
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result p1

    monitor-exit v0

    return p1

    .line 815
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getCenterY(I)F
    .registers 4

    .line 843
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 845
    if-nez p1, :cond_10

    .line 846
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 848
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result p1

    monitor-exit v0

    return p1

    .line 849
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .registers 4

    .line 979
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 981
    if-nez p1, :cond_10

    .line 982
    const/4 p1, -0x1

    monitor-exit v0

    return p1

    .line 984
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result p1

    monitor-exit v0

    return p1

    .line 985
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .registers 5

    .line 740
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 742
    if-nez p1, :cond_f

    .line 743
    monitor-exit v0

    return-void

    .line 745
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 746
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 758
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 760
    if-nez p1, :cond_f

    .line 761
    monitor-exit v0

    return-void

    .line 763
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 764
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getOffsetX(I)F
    .registers 4

    .line 792
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 794
    if-nez p1, :cond_10

    .line 795
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 797
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetX()F

    move-result p1

    monitor-exit v0

    return p1

    .line 798
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getOffsetY(I)F
    .registers 4

    .line 826
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 828
    if-nez p1, :cond_10

    .line 829
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 831
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetY()F

    move-result p1

    monitor-exit v0

    return p1

    .line 832
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public getPersistedScale()F
    .registers 3

    .line 1013
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 777
    if-nez p1, :cond_11

    .line 778
    const/high16 p1, 0x3f800000  # 1.0f

    monitor-exit v0

    return p1

    .line 780
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    monitor-exit v0

    return p1

    .line 781
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public isMagnifying(I)Z
    .registers 4

    .line 701
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 703
    if-nez p1, :cond_10

    .line 704
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 706
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 707
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public isRegistered(I)Z
    .registers 4

    .line 686
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 688
    if-nez p1, :cond_10

    .line 689
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 691
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 692
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public magnificationRegionContains(IFF)Z
    .registers 6

    .line 721
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 723
    if-nez p1, :cond_10

    .line 724
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 726
    :cond_10
    invoke-virtual {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 727
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .registers 7

    .line 963
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 965
    if-nez p1, :cond_f

    .line 966
    monitor-exit v0

    return-void

    .line 968
    :cond_f
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 969
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 671
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public persistScale()V
    .registers 5

    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v1

    .line 994
    iget v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 996
    new-instance v3, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1002
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/MagnificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1003
    return-void
.end method

.method public register(I)V
    .registers 5

    .line 624
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 626
    if-nez v1, :cond_12

    .line 627
    new-instance v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/MagnificationController;I)V

    .line 629
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 630
    monitor-exit v0

    return-void

    .line 632
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 633
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 636
    :cond_2a
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public reset(IZ)Z
    .registers 5

    .line 863
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 865
    if-nez p1, :cond_10

    .line 866
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 868
    :cond_10
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 869
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public resetAllIfNeeded(I)V
    .registers 5

    .line 1035
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 1037
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(II)Z

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1039
    :cond_18
    monitor-exit v0

    .line 1040
    return-void

    .line 1039
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method resetIfNeeded(II)Z
    .registers 5

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1070
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1071
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v1

    if-eq p2, v1, :cond_1a

    goto :goto_20

    .line 1074
    :cond_1a
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1075
    monitor-exit v0

    return p2

    .line 1072
    :cond_20
    :goto_20
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1076
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method resetIfNeeded(IZ)Z
    .registers 5

    .line 1050
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1052
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 1055
    :cond_14
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1056
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1053
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1057
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public setCenter(IFFZI)Z
    .registers 13

    .line 914
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 916
    if-nez v1, :cond_11

    .line 917
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 919
    :cond_11
    const/high16 v2, 0x7fc00000  # Float.NaN

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 920
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method setForceShowMagnifiableBounds(IZ)V
    .registers 5

    .line 1080
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1082
    if-nez p1, :cond_f

    .line 1083
    monitor-exit v0

    return-void

    .line 1085
    :cond_f
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setForceShowMagnifiableBounds(Z)V

    .line 1086
    monitor-exit v0

    .line 1087
    return-void

    .line 1086
    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public setScale(IFFFZI)Z
    .registers 14

    .line 889
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 891
    if-nez v1, :cond_11

    .line 892
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 894
    :cond_11
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScale(FFFZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 895
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .registers 14

    .line 942
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 944
    if-nez v1, :cond_11

    .line 945
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 947
    :cond_11
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 948
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public setUserId(I)V
    .registers 3

    .line 1022
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_5

    .line 1023
    return-void

    .line 1025
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 1026
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(Z)V

    .line 1027
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string v1, "mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(I)V
    .registers 4

    .line 646
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public unregisterAll()V
    .registers 6

    .line 655
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 659
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 660
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 659
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 662
    :cond_1b
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method