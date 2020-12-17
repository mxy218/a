.class final Lcom/android/server/wm/WindowState$WindowId;
.super Landroid/view/IWindowId$Stub;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowId"
.end annotation


# instance fields
.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "outer"  # Lcom/android/server/wm/WindowState;

    .line 4785
    invoke-direct {p0}, Landroid/view/IWindowId$Stub;-><init>()V

    .line 4792
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    .line 4793
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/wm/WindowState;
    .param p2, "x1"  # Lcom/android/server/wm/WindowState$1;

    .line 4782
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .registers 4

    .line 4811
    iget-object v0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 4812
    .local v0, "outer":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_21

    .line 4813
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4814
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4815
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 4817
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 3
    .param p1, "observer"  # Landroid/view/IWindowFocusObserver;

    .line 4797
    iget-object v0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 4798
    .local v0, "outer":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    .line 4799
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V

    .line 4801
    :cond_d
    return-void
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 3
    .param p1, "observer"  # Landroid/view/IWindowFocusObserver;

    .line 4804
    iget-object v0, p0, Lcom/android/server/wm/WindowState$WindowId;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 4805
    .local v0, "outer":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    .line 4806
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V

    .line 4808
    :cond_d
    return-void
.end method
