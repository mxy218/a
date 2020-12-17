.class public Lcom/android/systemui/statusbar/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationBarController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field mNavigationBars:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/NavigationBarFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz p1, :cond_29

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_29
    return-void
.end method

.method private removeNavigationBar(I)V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz v0, :cond_1f

    .line 170
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 171
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v1, v0, v2}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public checkNavBarModes(I)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_d

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :cond_d
    return-void
.end method

.method createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move v2, v0

    .line 121
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 124
    :try_start_11
    invoke-interface {v0, v4}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_32

    if-nez v0, :cond_18

    return-void

    :cond_18
    if-eqz v2, :cond_1d

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    goto :goto_23

    .line 134
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_23
    move-object v7, v0

    .line 135
    new-instance v8, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;

    move-object v0, v8

    move-object v1, p0

    move-object v3, v7

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;-><init>(Lcom/android/systemui/statusbar/NavigationBarController;ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;)V

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;

    return-void

    .line 129
    :catch_32
    sget-object p0, Lcom/android/systemui/statusbar/NavigationBarController;->TAG:Ljava/lang/String;

    const-string p1, "Cannot get WindowManager."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .registers 8

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 100
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    if-nez p1, :cond_14

    .line 101
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_17

    .line 102
    :cond_14
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public disableAnimationsDuringHide(IJ)V
    .registers 4

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_d

    .line 213
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->disableAnimationsDuringHide(J)V

    :cond_d
    return-void
.end method

.method public finishBarAnimations(I)V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_d

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->finishBarAnimations()V

    :cond_d
    return-void
.end method

.method public getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-object p0
.end method

.method public getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_12

    .line 229
    :cond_c
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    :goto_12
    return-object p0
.end method

.method public synthetic lambda$createNavigationBar$0$NavigationBarController(ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V
    .registers 10

    .line 136
    move-object p6, p7

    check-cast p6, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p1, :cond_e

    .line 142
    const-class p7, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {p7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/statusbar/phone/LightBarController;

    goto :goto_23

    .line 143
    :cond_e
    new-instance p7, Lcom/android/systemui/statusbar/phone/LightBarController;

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 144
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 145
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p7, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 146
    :goto_23
    invoke-virtual {p6, p7}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    if-eqz p1, :cond_31

    .line 153
    const-class p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    goto :goto_38

    .line 154
    :cond_31
    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoHideController;

    iget-object p7, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p7}, Lcom/android/systemui/statusbar/phone/AutoHideController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 155
    :goto_38
    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 156
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->restoreSystemUiVisibilityState()V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, p6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    if-eqz p4, :cond_57

    .line 160
    invoke-virtual {p5}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iget-object p2, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    iget p3, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    iget p5, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    iget-boolean p7, p4, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    move-object p0, p6

    move p4, p5

    move p5, p7

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    :cond_57
    return-void
.end method

.method public onDisplayReady(I)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarController;->removeNavigationBar(I)V

    return-void
.end method

.method public touchAutoDim(I)V
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_d

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->touchAutoDim()V

    :cond_d
    return-void
.end method

.method public transitionTo(IIZ)V
    .registers 4

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_d

    .line 205
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->transitionTo(IZ)V

    :cond_d
    return-void
.end method
