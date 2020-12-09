.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 4

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 1044
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1046
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1048
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1050
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1052
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1054
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1056
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1070
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 1071
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1072
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1073
    new-instance p1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1074
    nop

    .line 1075
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1076
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1077
    return-void
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object p0

    .line 1310
    iget-object v0, p0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1311
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Landroid/view/WindowInfo;->layer:I

    .line 1312
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    iget-object p0, p0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1314
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1317
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1318
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    .line 1318
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1321
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1322
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_31

    .line 1323
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .line 1324
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v2}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1326
    :cond_31
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1375
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1376
    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 1377
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    .line 1376
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1379
    :cond_14
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6

    .line 1286
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1287
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1288
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1289
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1292
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1293
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1294
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1297
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1298
    invoke-static {p1, v1}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1299
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1302
    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p2, p1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1304
    return-void
.end method

.method private findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 4

    .line 1427
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 1428
    if-nez p1, :cond_c

    .line 1429
    const/4 p1, 0x0

    return-object p1

    .line 1431
    :cond_c
    move-object v0, p1

    .line 1432
    :goto_d
    if-eqz p1, :cond_1c

    .line 1433
    nop

    .line 1434
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_d

    .line 1436
    :cond_1c
    return-object v0
.end method

.method private isCurrentFocusWindowOnDefaultDisplay()Z
    .registers 4

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1441
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 1442
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 1443
    return v1

    .line 1446
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1447
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz v2, :cond_20

    .line 1449
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1450
    :cond_20
    return v1

    .line 1453
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private static isReportedWindowType(I)Z
    .registers 2

    .line 1382
    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method static synthetic lambda$populateVisibleWindowsOnScreenLocked$0(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 1398
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1399
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_9
    return-void
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1397
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$QYRk0AAI0zjoN_c0XnK_ofCGyDY;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$QYRk0AAI0zjoN_c0XnK_ofCGyDY;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1404
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$bKHWPOU3I5X7rQfrh2lckkzSOfQ;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1421
    nop

    :goto_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_34

    .line 1422
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1424
    :cond_34
    return-void
.end method

.method private updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1252
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_31

    .line 1258
    sget-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1262
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p2, p2, 0x28

    if-nez p2, :cond_31

    .line 1267
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object p2

    sget-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1270
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1271
    if-eqz p1, :cond_2e

    .line 1274
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1278
    :cond_2e
    invoke-virtual {p3}, Landroid/graphics/Region;->setEmpty()V

    .line 1282
    :cond_31
    :goto_31
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 7

    .line 1329
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 1330
    return v0

    .line 1332
    :cond_4
    const/4 v1, 0x1

    if-nez p1, :cond_8

    .line 1333
    return v1

    .line 1335
    :cond_8
    if-nez p2, :cond_b

    .line 1336
    return v1

    .line 1338
    :cond_b
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_12

    .line 1339
    return v1

    .line 1341
    :cond_12
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_19

    .line 1342
    return v1

    .line 1344
    :cond_19
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_22

    .line 1345
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_2d

    .line 1346
    return v1

    .line 1348
    :cond_22
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1349
    return v1

    .line 1351
    :cond_2d
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_36

    .line 1352
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_41

    .line 1353
    return v1

    .line 1355
    :cond_36
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1356
    return v1

    .line 1358
    :cond_41
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1359
    return v1

    .line 1361
    :cond_4c
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_5f

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_5f

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1362
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 1363
    return v1

    .line 1365
    :cond_5f
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 1366
    return v1

    .line 1368
    :cond_6a
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide p1, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long p1, v2, p1

    if-eqz p1, :cond_73

    .line 1369
    return v1

    .line 1371
    :cond_73
    return v0
.end method

.method private windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1219
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1220
    return v1

    .line 1224
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1225
    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1c

    .line 1226
    return v2

    .line 1232
    :cond_1c
    iget-object p4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p4, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_2d

    iget-object p4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p4, p4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7f2

    if-eq p4, v0, :cond_2d

    .line 1234
    return v2

    .line 1238
    :cond_2d
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1239
    return v2

    .line 1243
    :cond_34
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 1244
    return v1

    .line 1247
    :cond_3f
    return v2
.end method


# virtual methods
.method public computeChangedWindows(Z)V
    .registers 15

    .line 1101
    nop

    .line 1102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1109
    invoke-direct {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isCurrentFocusWindowOnDefaultDisplay()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1110
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_10f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1113
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    const-string v3, "window"

    .line 1114
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1115
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1116
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 1117
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 1119
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1120
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 1122
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1123
    invoke-direct {p0, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1124
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1125
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1127
    nop

    .line 1129
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1130
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1133
    const/4 v8, 0x1

    sub-int/2addr v6, v8

    move v9, v5

    :goto_51
    if-ltz v6, :cond_7b

    .line 1134
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 1136
    iget-object v11, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1137
    invoke-direct {p0, v10, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1139
    invoke-direct {p0, v10, v11, v4, v7}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 1141
    invoke-static {v10, v11, v0, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V

    .line 1142
    invoke-direct {p0, v10, v11, v4, v7}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)V

    .line 1144
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v10

    or-int/2addr v9, v10

    .line 1147
    :cond_6f
    invoke-virtual {v4}, Landroid/graphics/Region;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_78

    if-eqz v9, :cond_78

    .line 1148
    goto :goto_7b

    .line 1133
    :cond_78
    add-int/lit8 v6, v6, -0x1

    goto :goto_51

    .line 1153
    :cond_7b
    :goto_7b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1154
    move v6, v5

    :goto_80
    if-ge v6, v4, :cond_b7

    .line 1155
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowInfo;

    .line 1156
    iget-object v9, v7, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_93

    .line 1157
    const/4 v9, 0x0

    iput-object v9, v7, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1159
    :cond_93
    iget-object v9, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v9, :cond_b4

    .line 1160
    iget-object v9, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 1161
    sub-int/2addr v9, v8

    :goto_9e
    if-ltz v9, :cond_b4

    .line 1162
    iget-object v10, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b1

    .line 1163
    iget-object v10, v7, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1161
    :cond_b1
    add-int/lit8 v9, v9, -0x1

    goto :goto_9e

    .line 1154
    :cond_b4
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 1170
    :cond_b7
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1171
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1173
    if-nez p1, :cond_f6

    .line 1175
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_cc

    .line 1177
    goto :goto_f7

    .line 1178
    :cond_cc
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f6

    .line 1182
    :cond_da
    move v2, v5

    :goto_db
    if-ge v2, v4, :cond_f6

    .line 1183
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 1184
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    .line 1188
    invoke-direct {p0, v3, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 1189
    nop

    .line 1190
    goto :goto_f7

    .line 1182
    :cond_f3
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 1196
    :cond_f6
    move v8, v5

    :goto_f7
    if-nez p1, :cond_fb

    if-eqz v8, :cond_fe

    .line 1197
    :cond_fb
    invoke-direct {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V

    .line 1199
    :cond_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_19 .. :try_end_ff} :catchall_10f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1202
    if-nez p1, :cond_106

    if-eqz v8, :cond_10b

    .line 1206
    :cond_106
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {p1, v0}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1214
    :cond_10b
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1215
    return-void

    .line 1199
    :catchall_10f
    move-exception p1

    :try_start_110
    monitor-exit v1
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public synthetic lambda$populateVisibleWindowsOnScreenLocked$1$AccessibilityController$WindowsForAccessibilityObserver(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1405
    invoke-direct {p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1406
    if-nez v0, :cond_7

    .line 1407
    return-void

    .line 1414
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_2b

    .line 1415
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1416
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1417
    nop

    .line 1418
    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1417
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1420
    :cond_2b
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(Z)V
    .registers 4

    .line 1080
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1082
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .registers 5

    .line 1085
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1086
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1089
    :cond_10
    return-void
.end method
