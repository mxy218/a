.class public Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final KEEP_SOURCE_EVENT_TYPES:I = 0x43b9bf


# instance fields
.field public mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field private mHasWatchOutsideTouchWindow:Z

.field private mTouchInteractionInProgress:Z

.field public mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3151
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 3173
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    .line 3175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3176
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3177
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3178
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 3151
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 3151
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"  # I

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"  # I

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"  # I

    .line 3151
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowInfoById(I)Landroid/view/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method private box(I)Ljava/util/function/IntSupplier;
    .registers 3
    .param p1, "value"  # I

    .line 3603
    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v0

    return-object v0
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 3184
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3185
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_12

    .line 3212
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result v1

    return v1

    .line 3205
    :sswitch_10
    const/4 v1, 0x1

    return v1

    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
        0x400000 -> :sswitch_10
        0x1000000 -> :sswitch_10
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "function"  # Ljava/lang/String;

    .line 3827
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 3828
    return-void

    .line 3830
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3835
    return-void

    .line 3831
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findWindowInfoById(I)Landroid/view/WindowInfo;
    .registers 3
    .param p1, "windowId"  # I

    .line 3794
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    return-object v0
.end method

.method private getFocusedWindowId()I
    .registers 4

    .line 3842
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3843
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3844
    :try_start_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 3845
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 3814
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 3815
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3816
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 3817
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3818
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3819
    return-object v2

    .line 3816
    .end local v2  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3823
    .end local v0  # "windowCount":I
    .end local v1  # "i":I
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .registers 8
    .param p1, "targetWindowId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3798
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    .line 3799
    .local v0, "targetWindow":Landroid/view/WindowInfo;
    if-eqz v0, :cond_41

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    if-eqz v1, :cond_41

    .line 3800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3801
    .local v1, "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 3802
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 3803
    .local v3, "window":Landroid/view/WindowInfo;
    if-eqz v3, :cond_3d

    iget v4, v3, Landroid/view/WindowInfo;->layer:I

    iget v5, v0, Landroid/view/WindowInfo;->layer:I

    if-ge v4, v5, :cond_3d

    iget-boolean v4, v3, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v4, :cond_3d

    .line 3805
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3801
    .end local v3  # "window":Landroid/view/WindowInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3808
    .end local v2  # "i":I
    :cond_40
    return-object v1

    .line 3810
    .end local v1  # "outsideWindowsId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"  # Ljava/lang/String;

    .line 3838
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isRetrievalAllowingWindowLocked(I)Z
    .registers 6
    .param p1, "windowId"  # I

    .line 3757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 3758
    return v1

    .line 3760
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    .line 3761
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isShellAllowedToRetrieveWindowLocked(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3762
    return v3

    .line 3765
    :cond_1a
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne p1, v0, :cond_1f

    .line 3766
    return v1

    .line 3768
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1
.end method

.method private isShellAllowedToRetrieveWindowLocked(I)Z
    .registers 9
    .param p1, "windowId"  # I

    .line 3772
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3774
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3c

    .line 3775
    .local v2, "windowToken":Landroid/os/IBinder;
    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 3776
    nop

    .line 3785
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3776
    return v3

    .line 3778
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v4
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_3c

    .line 3779
    .local v4, "userId":I
    const/16 v5, -0x2710

    if-ne v4, v5, :cond_25

    .line 3780
    nop

    .line 3785
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3780
    return v3

    .line 3782
    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v5, "no_debugging_features"

    .line 3783
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 3782
    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3c

    .line 3785
    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    return v3

    .line 3785
    .end local v2  # "windowToken":Landroid/os/IBinder;
    .end local v4  # "userId":I
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isValidPackageForUid(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3220
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3221
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3220
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_13} :catch_1f
    .catchall {:try_start_5 .. :try_end_13} :catchall_1a

    if-ne p2, v3, :cond_16

    const/4 v2, 0x1

    .line 3225
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3220
    return v2

    .line 3225
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3222
    :catch_1f
    move-exception v3

    .line 3223
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 3225
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3223
    return v2
.end method

.method private resolveProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"  # I

    .line 3698
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 3699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3701
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3702
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_24

    .line 3703
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3703
    return v3

    .line 3706
    .end local v2  # "parent":Landroid/content/pm/UserInfo;
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3707
    goto :goto_2d

    .line 3706
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3709
    .end local v0  # "identity":J
    :cond_2d
    :goto_2d
    return p1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 3421
    .local p1, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local p2, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3423
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3424
    .local v1, "oldWindowsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2e

    .line 3425
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3426
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 3427
    nop

    .line 3428
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v5, 0x2

    .line 3427
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3424
    .end local v3  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3433
    .end local v2  # "i":I
    :cond_2e
    const/4 v2, 0x0

    .line 3434
    .local v2, "oldWindowIndex":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3435
    .local v3, "newWindowCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_36
    if-ge v4, v3, :cond_6f

    .line 3436
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3437
    .local v5, "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3438
    .local v6, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v6, :cond_5a

    .line 3439
    nop

    .line 3440
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    .line 3439
    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 3442
    :cond_5a
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v7

    .line 3443
    .local v7, "changes":I
    if-eqz v7, :cond_6c

    .line 3444
    nop

    .line 3445
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v8

    .line 3444
    invoke-static {v8, v7}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3435
    .end local v5  # "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6  # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7  # "changes":I
    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 3450
    .end local v4  # "i":I
    :cond_6f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 3451
    .local v4, "numEvents":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_74
    if-ge v5, v4, :cond_8a

    .line 3452
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3451
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    .line 3454
    .end local v5  # "i":I
    :cond_8a
    return-void
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 9
    .param p1, "windowId"  # I

    .line 3640
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_4b

    .line 3641
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3642
    const/16 v2, 0x80

    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3645
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3641
    invoke-static {v1, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3647
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3648
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 3649
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3650
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_4b

    .line 3651
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3652
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_44

    .line 3653
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3654
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3655
    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3657
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    .line 3654
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_48

    .line 3660
    :cond_44
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3650
    .end local v3  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3665
    .end local v0  # "windowCount":I
    .end local v1  # "i":I
    :cond_4b
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 9
    .param p1, "windowId"  # I

    .line 3614
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, p1, :cond_4b

    .line 3615
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3616
    const/16 v2, 0x20

    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3618
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3615
    invoke-static {v1, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3620
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3621
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 3622
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3623
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_4b

    .line 3624
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3625
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_44

    .line 3626
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3627
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3628
    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3630
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    .line 3627
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_48

    .line 3632
    :cond_44
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3623
    .end local v3  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3637
    .end local v0  # "windowCount":I
    .end local v1  # "i":I
    :cond_4b
    return-void
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3693
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3683
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .registers 4
    .param p1, "service"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p2, "windowId"  # I

    .line 3669
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3670
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 3669
    :goto_f
    return v0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"  # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3688
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 4
    .param p1, "service"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3678
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3674
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 12
    .param p1, "service"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3849
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3850
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3852
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 3854
    return v2

    .line 3857
    :cond_14
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3858
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3861
    .local v4, "identityToken":J
    :try_start_1e
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_4f

    const/4 v8, 0x0

    const-string v9, "android:access_accessibility"

    if-ne v6, v7, :cond_3d

    .line 3862
    :try_start_2b
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/app/AppOpsManager;

    move-result-object v6

    invoke-virtual {v6, v9, v3, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_4f

    if-nez v6, :cond_38

    goto :goto_39

    :cond_38
    move v2, v8

    .line 3869
    :goto_39
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3862
    return v2

    .line 3866
    :cond_3d
    :try_start_3d
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/app/AppOpsManager;

    move-result-object v6

    invoke-virtual {v6, v9, v3, v0}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4f

    if-nez v6, :cond_4a

    goto :goto_4b

    :cond_4a
    move v2, v8

    .line 3869
    :goto_4b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3866
    return v2

    .line 3869
    :catchall_4f
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearWindowsLocked()V
    .registers 4

    .line 3297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3298
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3299
    .local v1, "activeWindowId":I
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 3300
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3301
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3302
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 10
    .param p1, "windowId"  # I
    .param p2, "outRegion"  # Landroid/graphics/Region;

    .line 3458
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v0, :cond_6

    .line 3459
    const/4 v0, 0x0

    return v0

    .line 3466
    :cond_6
    const/4 v1, 0x0

    .line 3467
    .local v1, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v2, 0x0

    .line 3469
    .local v2, "windowInteractiveRegionChanged":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3470
    .local v0, "windowCount":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_4a

    .line 3471
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3472
    .local v4, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v1, :cond_2e

    .line 3473
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_47

    .line 3474
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3475
    .local v5, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3476
    invoke-virtual {p2, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3477
    move-object v1, p2

    .line 3478
    goto :goto_47

    .line 3480
    .end local v5  # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_2e
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_47

    .line 3482
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3483
    .restart local v5  # "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3484
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 3485
    const/4 v2, 0x1

    .line 3470
    .end local v4  # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5  # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 3490
    .end local v3  # "i":I
    :cond_4a
    return v2
.end method

.method computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 10
    .param p1, "targetPackage"  # Ljava/lang/String;
    .param p2, "targetUid"  # I

    .line 3272
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 3274
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 3277
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3279
    .local v0, "uidPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 3280
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v2

    .line 3281
    invoke-virtual {v2, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 3282
    .local v2, "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 3283
    array-length v3, v0

    .line 3284
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 3285
    .local v3, "validPackages":[Ljava/lang/String;
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3286
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 3287
    .local v1, "widgetPackageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    if-ge v4, v1, :cond_4b

    .line 3288
    array-length v5, v0

    add-int/2addr v5, v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5

    .line 3287
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 3290
    .end local v4  # "i":I
    :cond_4b
    return-object v3

    .line 3293
    .end local v1  # "widgetPackageCount":I
    .end local v2  # "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3  # "validPackages":[Ljava/lang/String;
    :cond_4c
    return-object v0
.end method

.method public findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "windowId"  # I

    .line 3790
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method public getActiveWindowId()I
    .registers 3

    .line 3607
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 3608
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3610
    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 3748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3749
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1b

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1b

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1b

    const/4 v1, -0x3

    if-ne p1, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    return v1
.end method

.method public onAccessibilityClientRemovedLocked(I)V
    .registers 3
    .param p1, "windowId"  # I

    .line 3310
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v0

    if-nez v0, :cond_11

    if-ltz p1, :cond_11

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v0, p1, :cond_11

    .line 3312
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3314
    :cond_11
    return-void
.end method

.method public onTouchInteractionEnd()V
    .registers 7

    .line 3575
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3576
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 3585
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3586
    .local v1, "oldActiveWindow":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 3592
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, v2, :cond_44

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_44

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3594
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    if-eqz v2, :cond_44

    .line 3595
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v2

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3597
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v5

    .line 3595
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3599
    .end local v1  # "oldActiveWindow":I
    :cond_44
    monitor-exit v0

    .line 3600
    return-void

    .line 3599
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .line 3569
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3570
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 3571
    monitor-exit v0

    .line 3572
    return-void

    .line 3571
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 8
    .param p1, "userId"  # I

    .line 3713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3714
    .local v0, "callingUid":I
    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz v0, :cond_7c

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_7c

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_11

    goto :goto_7c

    .line 3723
    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3724
    .local v3, "callingUserId":I
    if-ne v3, p1, :cond_1c

    .line 3725
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    return v1

    .line 3727
    :cond_1c
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v4

    .line 3728
    .local v4, "callingUserParentId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v5

    if-ne v4, v5, :cond_33

    if-eq p1, v2, :cond_2c

    if-ne p1, v1, :cond_33

    .line 3731
    :cond_2c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1

    .line 3733
    :cond_33
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 3734
    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_68

    .line 3735
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call from user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3739
    :cond_68
    :goto_68
    if-eq p1, v2, :cond_75

    if-ne p1, v1, :cond_6d

    goto :goto_75

    .line 3743
    :cond_6d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3741
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1

    .line 3717
    .end local v3  # "callingUserId":I
    .end local v4  # "callingUserParentId":I
    :cond_7c
    :goto_7c
    if-eq p1, v2, :cond_86

    if-ne p1, v1, :cond_81

    goto :goto_86

    .line 3721
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    return v1

    .line 3719
    :cond_86
    :goto_86
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1
.end method

.method resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 9
    .param p1, "packageName"  # Ljava/lang/CharSequence;
    .param p2, "appId"  # I
    .param p3, "userId"  # I

    .line 3231
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3232
    return-object v0

    .line 3235
    :cond_4
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_d

    .line 3236
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3239
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3240
    .local v1, "packageNameStr":Ljava/lang/String;
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 3241
    .local v2, "resolvedUid":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3242
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3245
    :cond_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v3

    .line 3246
    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 3245
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3247
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3250
    :cond_3d
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 3251
    .local v3, "packageNames":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 3252
    return-object v0

    .line 3261
    :cond_4e
    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .registers 12
    .param p1, "windowId"  # I
    .param p2, "nodeId"  # J
    .param p4, "eventType"  # I
    .param p5, "eventAction"  # I

    .line 3509
    const/16 v0, 0x20

    if-eq p4, v0, :cond_84

    const/16 v0, 0x80

    if-eq p4, v0, :cond_6d

    const v0, 0x8000

    if-eq p4, v0, :cond_3b

    const/high16 v0, 0x10000

    if-eq p4, v0, :cond_13

    goto/16 :goto_a1

    .line 3551
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3552
    :try_start_1a
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v1, v1, p2

    const-wide/32 v2, 0x7fffffff

    if-nez v1, :cond_25

    .line 3553
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3557
    :cond_25
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_36

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v1, p1, :cond_36

    const/16 v1, 0x40

    if-eq p5, v1, :cond_36

    .line 3561
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3563
    :cond_36
    monitor-exit v0

    goto :goto_a1

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v1

    .line 3538
    :cond_3b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3539
    :try_start_42
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v1, p1, :cond_68

    .line 3540
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3543
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v4

    .line 3540
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3544
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    .line 3545
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3547
    :cond_68
    monitor-exit v0

    .line 3548
    goto :goto_a1

    .line 3547
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_6a

    throw v1

    .line 3530
    :cond_6d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3531
    :try_start_74
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v1, :cond_7f

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, p1, :cond_7f

    .line 3532
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 3534
    :cond_7f
    monitor-exit v0

    .line 3535
    goto :goto_a1

    .line 3534
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_81

    throw v1

    .line 3517
    :cond_84
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3518
    :try_start_8b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v1

    if-nez v1, :cond_9f

    .line 3519
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3520
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    if-ne p1, v1, :cond_9f

    .line 3521
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3524
    :cond_9f
    monitor-exit v0

    .line 3525
    nop

    .line 3566
    :goto_a1
    return-void

    .line 3524
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_8b .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 3494
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x43b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 3495
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3497
    :cond_10
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 3317
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v0, :cond_b

    .line 3318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3321
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3322
    .local v0, "oldWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 3324
    .local v1, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3325
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3327
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 3328
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    invoke-virtual {v3}, Landroid/view/WindowInfo;->recycle()V

    .line 3327
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 3330
    .end local v2  # "i":I
    :cond_39
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3331
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    .line 3333
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3334
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v4, :cond_4a

    .line 3335
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3343
    :cond_4a
    const/4 v4, 0x1

    .line 3345
    .local v4, "activeWindowGone":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 3349
    .local v5, "windowCount":I
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    const/4 v7, 0x1

    if-eq v6, v3, :cond_55

    move v2, v7

    .line 3351
    .local v2, "shouldClearAccessibilityFocus":Z
    :cond_55
    if-lez v5, :cond_f0

    .line 3352
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_58
    if-ge v3, v5, :cond_bb

    .line 3353
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    .line 3355
    .local v6, "windowInfo":Landroid/view/WindowInfo;
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v8

    if-eqz v8, :cond_73

    .line 3356
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v8

    .line 3357
    invoke-static {v8, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v8

    .local v8, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_74

    .line 3359
    .end local v8  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_73
    const/4 v8, 0x0

    .line 3361
    .restart local v8  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_74
    if-eqz v8, :cond_b8

    .line 3364
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 3366
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    .line 3367
    .local v9, "windowId":I
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 3368
    iput v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3369
    iget-boolean v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v10, :cond_96

    .line 3370
    iput v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3371
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_9b

    .line 3372
    :cond_96
    iget v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v9, v10, :cond_9b

    .line 3373
    const/4 v4, 0x0

    .line 3376
    :cond_9b
    :goto_9b
    iget-boolean v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    if-nez v10, :cond_a5

    iget-boolean v10, v6, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v10, :cond_a5

    .line 3377
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    .line 3379
    :cond_a5
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3380
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3381
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v6}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3352
    .end local v6  # "windowInfo":Landroid/view/WindowInfo;
    .end local v8  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v9  # "windowId":I
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 3385
    .end local v3  # "i":I
    :cond_bb
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v3, :cond_c5

    if-eqz v4, :cond_c5

    .line 3386
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3391
    :cond_c5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3392
    .local v3, "accessibilityWindowCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_cc
    if-ge v6, v3, :cond_f0

    .line 3393
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3394
    .restart local v8  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    iget v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v9, v10, :cond_e1

    .line 3395
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3397
    :cond_e1
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    iget v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v9, v10, :cond_ed

    .line 3398
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3399
    const/4 v2, 0x0

    .line 3392
    .end local v8  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_ed
    add-int/lit8 v6, v6, 0x1

    goto :goto_cc

    .line 3404
    .end local v3  # "accessibilityWindowCount":I
    .end local v6  # "i":I
    :cond_f0
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 3406
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3407
    .local v3, "oldWindowCount":I
    add-int/lit8 v6, v3, -0x1

    .restart local v6  # "i":I
    :goto_f9
    if-ltz v6, :cond_107

    .line 3408
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 3407
    add-int/lit8 v6, v6, -0x1

    goto :goto_f9

    .line 3411
    .end local v6  # "i":I
    :cond_107
    if-eqz v2, :cond_120

    .line 3412
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v6

    sget-object v7, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3415
    invoke-direct {p0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v9

    .line 3412
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3417
    :cond_120
    return-void
.end method
