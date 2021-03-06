.class public Lcom/android/systemui/shared/system/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "WindowManagerWrapper.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/system/WindowManagerWrapper;


# instance fields
.field private mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Lcom/android/systemui/shared/system/WindowManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;
    .registers 1

    .line 93
    sget-object v0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public addPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->addListener(Landroid/view/IPinnedStackListener;)V

    .line 217
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V

    return-void
.end method

.method public getNavBarPosition(I)I
    .registers 2

    .line 192
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->getNavBarPosition(I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const-string p0, "WindowManagerWrapper"

    const-string p1, "Failed to get nav bar position"

    .line 194
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getStableInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 101
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/view/IWindowManager;->getStableInsets(ILandroid/graphics/Rect;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string p1, "WindowManagerWrapper"

    const-string v0, "Failed to get stable insets"

    .line 104
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public hasSoftNavigationBar(I)Z
    .registers 2

    .line 177
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public removePinnedStackListener(Landroid/view/IPinnedStackListener;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/systemui/shared/system/WindowManagerWrapper;->mPinnedStackListenerForwarder:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/PinnedStackListenerForwarder;->removeListener(Landroid/view/IPinnedStackListener;)V

    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    .registers 3

    .line 139
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 140
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "WindowManagerWrapper"

    const-string v0, "Failed to enable or disable navigation bar button haptics: "

    .line 142
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public setPipVisibility(Z)V
    .registers 3

    .line 164
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setPipVisibility(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "WindowManagerWrapper"

    const-string v0, "Unable to reach window manager"

    .line 166
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method
