.class Lcom/android/server/wm/WindowManagerService$MousePositionTracker;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MousePositionTracker"
.end annotation


# instance fields
.field private mLatestEventWasMouse:Z

.field private mLatestMouseX:F

.field private mLatestMouseY:F


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 6711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 2

    .line 6711
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)Z
    .registers 1

    .line 6711
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 1

    .line 6711
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/WindowManagerService$MousePositionTracker;)F
    .registers 1

    .line 6711
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    return p0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 3

    .line 6726
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->updatePosition(FF)V

    goto :goto_19

    .line 6729
    :cond_14
    monitor-enter p0

    .line 6730
    const/4 p1, 0x0

    :try_start_16
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 6731
    monitor-exit p0

    .line 6733
    :goto_19
    return-void

    .line 6731
    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method updatePosition(FF)V
    .registers 4

    .line 6717
    monitor-enter p0

    .line 6718
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestEventWasMouse:Z

    .line 6719
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseX:F

    .line 6720
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$MousePositionTracker;->mLatestMouseY:F

    .line 6721
    monitor-exit p0

    .line 6722
    return-void

    .line 6721
    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw p1
.end method
