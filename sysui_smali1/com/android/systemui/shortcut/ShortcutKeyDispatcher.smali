.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field protected final ALT_MASK:J

.field protected final CTRL_MASK:J

.field protected final META_MASK:J

.field protected final SC_DOCK_LEFT:J

.field protected final SC_DOCK_RIGHT:J

.field protected final SHIFT_MASK:J

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 44
    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    .line 45
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    const-wide/high16 v0, 0x1000000000000L

    .line 47
    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->META_MASK:J

    const-wide v0, 0x200000000L

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->ALT_MASK:J

    const-wide v0, 0x100000000000L

    .line 49
    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->CTRL_MASK:J

    const-wide v0, 0x100000000L

    .line 50
    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SHIFT_MASK:J

    const-wide v0, 0x1000000000047L

    .line 52
    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_LEFT:J

    const-wide v0, 0x1000000000048L

    .line 53
    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_RIGHT:J

    return-void
.end method

.method private handleDockKey(J)V
    .registers 9

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v0

    const-wide v1, 0x1000000000047L

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_23

    .line 87
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/Recents;

    cmp-long p1, p1, v1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v4, v5

    :goto_1e
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/systemui/recents/Recents;->splitPrimaryTask(ILandroid/graphics/Rect;I)Z

    goto :goto_59

    .line 93
    :cond_23
    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    cmp-long p1, p1, v1

    if-nez p1, :cond_44

    .line 99
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    goto :goto_48

    .line 100
    :cond_44
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    .line 101
    :goto_48
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 102
    iget p1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_59

    :catch_52
    const-string p0, "ShortcutKeyDispatcher"

    const-string p1, "handleDockKey() failed."

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    return-void
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-wide v1, 0x1000000000047L

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1e

    const-wide v1, 0x1000000000048L

    cmp-long v1, p1, v1

    if-nez v1, :cond_24

    :cond_1e
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    :cond_24
    return-void
.end method

.method public registerShortcutKey(J)V
    .registers 4

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v0, p1, p2, p0}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public start()V
    .registers 3

    const-wide v0, 0x1000000000047L

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    const-wide v0, 0x1000000000048L

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    return-void
.end method
