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

    .line 3141
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3162
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 3163
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    .line 3165
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3166
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3167
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3168
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 1

    .line 3141
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 3141
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3141
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .registers 2

    .line 3141
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Ljava/util/List;
    .registers 2

    .line 3141
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;
    .registers 2

    .line 3141
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowInfoById(I)Landroid/view/WindowInfo;

    move-result-object p0

    return-object p0
.end method

.method private box(I)Ljava/util/function/IntSupplier;
    .registers 2

    .line 3593
    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object p1

    return-object p1
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 3174
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3175
    sparse-switch v0, :sswitch_data_12

    .line 3202
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result p1

    return p1

    .line 3195
    :sswitch_10
    const/4 p1, 0x1

    return p1

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

    .line 3817
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 3818
    return-void

    .line 3820
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3825
    return-void

    .line 3821
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " required to call "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findWindowInfoById(I)Landroid/view/WindowInfo;
    .registers 3

    .line 3784
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInfo;

    return-object p1
.end method

.method private getFocusedWindowId()I
    .registers 4

    .line 3832
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3833
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3834
    :try_start_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 3835
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 3804
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 3805
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3806
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 3807
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3808
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 3809
    return-object v2

    .line 3806
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3813
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3788
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInfo;

    .line 3789
    if-eqz p1, :cond_41

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    if-eqz v0, :cond_41

    .line 3790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3791
    const/4 v1, 0x0

    :goto_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 3792
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .line 3793
    if-eqz v2, :cond_3d

    iget v3, v2, Landroid/view/WindowInfo;->layer:I

    iget v4, p1, Landroid/view/WindowInfo;->layer:I

    if-ge v3, v4, :cond_3d

    iget-boolean v2, v2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v2, :cond_3d

    .line 3795
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3791
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 3798
    :cond_40
    return-object v0

    .line 3800
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3

    .line 3828
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private isRetrievalAllowingWindowLocked(I)Z
    .registers 6

    .line 3747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 3748
    return v1

    .line 3750
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    .line 3751
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isShellAllowedToRetrieveWindowLocked(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3752
    return v3

    .line 3755
    :cond_1a
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne p1, v0, :cond_1f

    .line 3756
    return v1

    .line 3758
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1
.end method

.method private isShellAllowedToRetrieveWindowLocked(I)Z
    .registers 6

    .line 3762
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3764
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3c

    .line 3765
    const/4 v2, 0x0

    if-nez p1, :cond_12

    .line 3766
    nop

    .line 3775
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3766
    return v2

    .line 3768
    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result p1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_3c

    .line 3769
    const/16 v3, -0x2710

    if-ne p1, v3, :cond_25

    .line 3770
    nop

    .line 3775
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3770
    return v2

    .line 3772
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v2

    const-string/jumbo v3, "no_debugging_features"

    .line 3773
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 3772
    invoke-virtual {v2, v3, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3c

    .line 3775
    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3772
    return p1

    .line 3775
    :catchall_3c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isValidPackageForUid(Ljava/lang/String;I)Z
    .registers 8

    .line 3208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3210
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3211
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3210
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_13} :catch_1f
    .catchall {:try_start_5 .. :try_end_13} :catchall_1a

    if-ne p2, p1, :cond_16

    const/4 v2, 0x1

    .line 3215
    :cond_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3210
    return v2

    .line 3215
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3212
    :catch_1f
    move-exception p1

    .line 3213
    nop

    .line 3215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3213
    return v2
.end method

.method private resolveProfileParentLocked(I)I
    .registers 5

    .line 3688
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 3689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3691
    :try_start_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3692
    if-eqz v2, :cond_24

    .line 3693
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3693
    return p1

    .line 3696
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3697
    goto :goto_2d

    .line 3696
    :catchall_28
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3699
    :cond_2d
    :goto_2d
    return p1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 10
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

    .line 3411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3413
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3414
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2f

    .line 3415
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3416
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2c

    .line 3417
    nop

    .line 3418
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v5, 0x2

    .line 3417
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3414
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3423
    :cond_2f
    nop

    .line 3424
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3425
    move v1, v2

    :goto_37
    if-ge v1, p1, :cond_70

    .line 3426
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3427
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3428
    if-nez v4, :cond_5b

    .line 3429
    nop

    .line 3430
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 3429
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 3432
    :cond_5b
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v4

    .line 3433
    if-eqz v4, :cond_6d

    .line 3434
    nop

    .line 3435
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 3434
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3425
    :cond_6d
    :goto_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 3440
    :cond_70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 3441
    nop

    :goto_75
    if-ge v2, p1, :cond_8b

    .line 3442
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    invoke-static {p2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3441
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 3444
    :cond_8b
    return-void
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 9

    .line 3630
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_4b

    .line 3631
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3632
    const/16 v2, 0x80

    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3635
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3631
    invoke-static {v1, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3637
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3638
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 3639
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3640
    const/4 v1, 0x0

    move v3, v1

    :goto_21
    if-ge v3, v0, :cond_4b

    .line 3641
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3642
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_45

    .line 3643
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3644
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3645
    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3647
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    .line 3644
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_48

    .line 3650
    :cond_45
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3640
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3655
    :cond_4b
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 9

    .line 3604
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, p1, :cond_4b

    .line 3605
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3606
    const/16 v2, 0x20

    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3608
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3605
    invoke-static {v1, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3610
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3611
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4b

    .line 3612
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3613
    const/4 v1, 0x0

    move v3, v1

    :goto_21
    if-ge v3, v0, :cond_4b

    .line 3614
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3615
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_45

    .line 3616
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3617
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3618
    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3620
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    .line 3617
    invoke-static {v4, v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_48

    .line 3622
    :cond_45
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3613
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3627
    :cond_4b
    return-void
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 2

    .line 3683
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 3673
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p1

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .registers 3

    .line 3659
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3660
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 3659
    :goto_f
    return p1
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 2

    .line 3678
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3

    .line 3668
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3

    .line 3664
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 10

    .line 3839
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3840
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 3842
    const/4 v1, 0x1

    if-nez p1, :cond_14

    .line 3844
    return v1

    .line 3847
    :cond_14
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3851
    :try_start_1e
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_4f

    const/4 v6, 0x0

    const-string v7, "android:access_accessibility"

    if-ne v4, v5, :cond_3d

    .line 3852
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/app/AppOpsManager;

    move-result-object v4

    invoke-virtual {v4, v7, p1, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_4f

    if-nez p1, :cond_38

    goto :goto_39

    :cond_38
    move v1, v6

    .line 3859
    :goto_39
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3852
    return v1

    .line 3856
    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/app/AppOpsManager;

    move-result-object v4

    invoke-virtual {v4, v7, p1, v0}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4f

    if-nez p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v6

    .line 3859
    :goto_4b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    return v1

    .line 3859
    :catchall_4f
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public clearWindowsLocked()V
    .registers 3

    .line 3287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3288
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3289
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 3290
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3292
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 10

    .line 3448
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3449
    return v1

    .line 3456
    :cond_6
    const/4 v2, 0x0

    .line 3457
    nop

    .line 3459
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3460
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_e
    if-ltz v0, :cond_4b

    .line 3461
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3462
    if-nez v2, :cond_2f

    .line 3463
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_48

    .line 3464
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v2

    .line 3465
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3466
    invoke-virtual {p2, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3467
    nop

    .line 3468
    move-object v2, p2

    goto :goto_48

    .line 3470
    :cond_2f
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_48

    .line 3472
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3473
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3474
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3475
    move v1, v3

    .line 3460
    :cond_48
    :goto_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 3480
    :cond_4b
    return v1
.end method

.method computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8

    .line 3262
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 3264
    sget-object p1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p1

    .line 3267
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3269
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 3270
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object p1

    .line 3271
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object p1

    .line 3272
    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 3273
    array-length p2, v0

    .line 3274
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr p2, v2

    new-array p2, p2, [Ljava/lang/String;

    .line 3275
    array-length v2, v0

    invoke-static {v0, v1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3276
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3277
    nop

    :goto_3c
    if-ge v1, v2, :cond_4b

    .line 3278
    array-length v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, p2, v3

    .line 3277
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 3280
    :cond_4b
    return-object p2

    .line 3283
    :cond_4c
    return-object v0
.end method

.method public findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3

    .line 3780
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object p1
.end method

.method public getActiveWindowId()I
    .registers 3

    .line 3597
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 3598
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3600
    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 5

    .line 3738
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3739
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1b

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1b

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, -0x3

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public onAccessibilityClientRemovedLocked(I)V
    .registers 3

    .line 3300
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v0

    if-nez v0, :cond_11

    if-ltz p1, :cond_11

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v0, p1, :cond_11

    .line 3302
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3304
    :cond_11
    return-void
.end method

.method public onTouchInteractionEnd()V
    .registers 6

    .line 3565
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3566
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 3575
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3576
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 3582
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, v2, :cond_44

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_44

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3584
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    if-eqz v2, :cond_44

    .line 3585
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v2

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3587
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v1

    .line 3585
    invoke-static {v3, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3589
    :cond_44
    monitor-exit v0

    .line 3590
    return-void

    .line 3589
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .line 3559
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3560
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 3561
    monitor-exit v0

    .line 3562
    return-void

    .line 3561
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 7

    .line 3703
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3704
    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz v0, :cond_7c

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_7c

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_11

    goto :goto_7c

    .line 3713
    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3714
    if-ne v0, p1, :cond_1c

    .line 3715
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p1

    return p1

    .line 3717
    :cond_1c
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v3

    .line 3718
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    if-ne v3, v4, :cond_33

    if-eq p1, v2, :cond_2c

    if-ne p1, v1, :cond_33

    .line 3721
    :cond_2c
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    return p1

    .line 3723
    :cond_33
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 3724
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_68

    .line 3725
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call from user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as user "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3729
    :cond_68
    :goto_68
    if-eq p1, v2, :cond_75

    if-ne p1, v1, :cond_6d

    goto :goto_75

    .line 3733
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3731
    :cond_75
    :goto_75
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    return p1

    .line 3707
    :cond_7c
    :goto_7c
    if-eq p1, v2, :cond_86

    if-ne p1, v1, :cond_81

    goto :goto_86

    .line 3711
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p1

    return p1

    .line 3709
    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result p1

    return p1
.end method

.method resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 6

    .line 3221
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3222
    return-object v0

    .line 3225
    :cond_4
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_d

    .line 3226
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3229
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3230
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 3231
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 3232
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3235
    :cond_20
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object p3

    if-eqz p3, :cond_3d

    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object p3

    .line 3236
    invoke-virtual {p3, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object p3

    .line 3235
    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 3237
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3240
    :cond_3d
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 3241
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 3242
    return-object v0

    .line 3251
    :cond_4e
    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .registers 9

    .line 3499
    const/16 v0, 0x20

    if-eq p4, v0, :cond_84

    const/16 v0, 0x80

    if-eq p4, v0, :cond_6d

    const v0, 0x8000

    if-eq p4, v0, :cond_3b

    const/high16 v0, 0x10000

    if-eq p4, v0, :cond_13

    goto/16 :goto_a1

    .line 3541
    :cond_13
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 3542
    :try_start_1a
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long p2, v0, p2

    const-wide/32 v0, 0x7fffffff

    if-nez p2, :cond_25

    .line 3543
    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3547
    :cond_25
    iget-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_36

    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne p2, p1, :cond_36

    const/16 p1, 0x40

    if-eq p5, p1, :cond_36

    .line 3551
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3553
    :cond_36
    monitor-exit p4

    goto :goto_a1

    :catchall_38
    move-exception p1

    monitor-exit p4
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw p1

    .line 3528
    :cond_3b
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 3529
    :try_start_42
    iget p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq p5, p1, :cond_68

    .line 3530
    iget-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object p5

    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3533
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v2

    .line 3530
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3534
    iget-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object p5

    invoke-direct {p5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    .line 3535
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3537
    :cond_68
    monitor-exit p4

    .line 3538
    goto :goto_a1

    .line 3537
    :catchall_6a
    move-exception p1

    monitor-exit p4
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_6a

    throw p1

    .line 3520
    :cond_6d
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3521
    :try_start_74
    iget-boolean p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz p3, :cond_7f

    iget p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq p3, p1, :cond_7f

    .line 3522
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 3524
    :cond_7f
    monitor-exit p2

    .line 3525
    goto :goto_a1

    .line 3524
    :catchall_81
    move-exception p1

    monitor-exit p2
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_81

    throw p1

    .line 3507
    :cond_84
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3508
    :try_start_8b
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object p3

    if-nez p3, :cond_9f

    .line 3509
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result p3

    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3510
    iget p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    if-ne p1, p3, :cond_9f

    .line 3511
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3514
    :cond_9f
    monitor-exit p2

    .line 3515
    nop

    .line 3556
    :goto_a1
    return-void

    .line 3514
    :catchall_a2
    move-exception p1

    monitor-exit p2
    :try_end_a4
    .catchall {:try_start_8b .. :try_end_a4} :catchall_a2

    throw p1
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 3484
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x43b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 3485
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3487
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

    .line 3307
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v0, :cond_b

    .line 3308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3311
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3312
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 3314
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3315
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3317
    const/4 v2, 0x0

    move v3, v2

    :goto_24
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 3318
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 3317
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 3320
    :cond_3a
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3321
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    .line 3323
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3324
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v4, :cond_4a

    .line 3325
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3333
    :cond_4a
    nop

    .line 3335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 3339
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    const/4 v6, 0x1

    if-eq v5, v3, :cond_56

    move v3, v6

    goto :goto_57

    :cond_56
    move v3, v2

    .line 3341
    :goto_57
    if-lez v4, :cond_f5

    .line 3342
    move v5, v2

    move v7, v6

    :goto_5b
    if-ge v5, v4, :cond_be

    .line 3343
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowInfo;

    .line 3345
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v9

    if-eqz v9, :cond_76

    .line 3346
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v9

    .line 3347
    invoke-static {v9, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v9

    goto :goto_77

    .line 3349
    :cond_76
    const/4 v9, 0x0

    .line 3351
    :goto_77
    if-eqz v9, :cond_bb

    .line 3354
    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 3356
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v10

    .line 3357
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 3358
    iput v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3359
    iget-boolean v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v11, :cond_99

    .line 3360
    iput v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3361
    invoke-virtual {v9, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_9e

    .line 3362
    :cond_99
    iget v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v10, v11, :cond_9e

    .line 3363
    move v7, v2

    .line 3366
    :cond_9e
    :goto_9e
    iget-boolean v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    if-nez v11, :cond_a8

    iget-boolean v11, v8, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v11, :cond_a8

    .line 3367
    iput-boolean v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mHasWatchOutsideTouchWindow:Z

    .line 3369
    :cond_a8
    iget-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3370
    iget-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3371
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v8}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3342
    :cond_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    .line 3375
    :cond_be
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz p1, :cond_c8

    if-eqz v7, :cond_c8

    .line 3376
    iget p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3381
    :cond_c8
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3382
    move v4, v3

    move v3, v2

    :goto_d0
    if-ge v3, p1, :cond_f4

    .line 3383
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3384
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v7, v8, :cond_e5

    .line 3385
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3387
    :cond_e5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v7, v8, :cond_f1

    .line 3388
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3389
    move v4, v2

    .line 3382
    :cond_f1
    add-int/lit8 v3, v3, 0x1

    goto :goto_d0

    :cond_f4
    move v3, v4

    .line 3394
    :cond_f5
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 3396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 3397
    sub-int/2addr p1, v6

    :goto_fd
    if-ltz p1, :cond_10b

    .line 3398
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 3397
    add-int/lit8 p1, p1, -0x1

    goto :goto_fd

    .line 3401
    :cond_10b
    if-eqz v3, :cond_124

    .line 3402
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object p1

    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3405
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v2

    .line 3402
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3407
    :cond_124
    return-void
.end method
