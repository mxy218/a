.class Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFICATION_REGION_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .registers 3

    .line 981
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 982
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 983
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 987
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_66

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5c

    const/4 v2, 0x4

    if-eq v0, v2, :cond_50

    const/4 p1, 0x5

    if-eq v0, p1, :cond_13

    goto/16 :goto_94

    .line 1015
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1016
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result p1

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 1017
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isForceShowingMagnifiableBoundsLocked()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1018
    :cond_33
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1700(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 1019
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1000(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1021
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_94

    :catchall_4a
    move-exception p1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 1010
    :cond_50
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1011
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRotationChanged(I)V

    .line 1012
    goto :goto_94

    .line 1006
    :cond_5c
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    .line 1007
    goto :goto_94

    .line 996
    :cond_66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 997
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 998
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 999
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1000
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 1001
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    .line 1002
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1003
    goto :goto_94

    .line 989
    :cond_7f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 990
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Region;

    .line 991
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 992
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 993
    nop

    .line 1024
    :goto_94
    return-void
.end method
