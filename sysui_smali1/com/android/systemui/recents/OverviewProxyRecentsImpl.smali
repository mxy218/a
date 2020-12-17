.class public Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
.super Ljava/lang/Object;
.source "OverviewProxyRecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsImplementation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideRecentApps(ZZ)V
    .registers 3

    .line 83
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 86
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string p2, "Failed to send overview hide event to launcher."

    .line 89
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void
.end method

.method public synthetic lambda$toggleRecentApps$0$OverviewProxyRecentsImpl()V
    .registers 3

    const-string v0, "OverviewProxyRecentsImpl"

    .line 103
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v1}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 104
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V

    goto :goto_20

    :cond_14
    const-string p0, "mOverviewProxyService.getProxy() is null !!!"

    .line 108
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception p0

    const-string v1, "Cannot send toggle recents through proxy service."

    .line 112
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public synthetic lambda$toggleRecentApps$1$OverviewProxyRecentsImpl(Ljava/lang/Runnable;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(Landroid/content/Context;Lcom/android/systemui/SysUiServiceProvider;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    .line 61
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    const-string/jumbo p2, "trust"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 63
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method

.method public showRecentApps(Z)V
    .registers 3

    .line 68
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 71
    :try_start_8
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string v0, "Failed to send overview show event to launcher."

    .line 74
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void
.end method

.method public splitPrimaryTask(ILandroid/graphics/Rect;I)Z
    .registers 9

    .line 140
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_22

    .line 142
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p2

    .line 143
    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 144
    new-instance p2, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v0, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    :cond_22
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    if-eqz p3, :cond_35

    .line 150
    iget-object v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    goto :goto_36

    :cond_35
    move v1, v0

    .line 152
    :goto_36
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_48

    const/4 v3, 0x3

    if-ne v1, v3, :cond_46

    goto :goto_48

    :cond_46
    move v1, v0

    goto :goto_49

    :cond_48
    :goto_48
    move v1, v4

    :goto_49
    if-eqz p3, :cond_7a

    if-nez v1, :cond_7a

    if-nez v2, :cond_7a

    .line 156
    iget-boolean v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v1, :cond_6f

    .line 157
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v1, p3, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 161
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    const-class p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-interface {p0, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_6e

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/Divider;->onRecentsDrawn()V

    :cond_6e
    return v4

    .line 168
    :cond_6f
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->dock_non_resizeble_failed_to_dock_text:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7a
    return v0
.end method

.method public toggleRecentApps()V
    .registers 9

    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 101
    new-instance v0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$ZzsBj6p_GVl3rLvpPg-WKT0NW9E;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$ZzsBj6p_GVl3rLvpPg-WKT0NW9E;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mSysUiServiceProvider:Lcom/android/systemui/SysUiServiceProvider;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_2d

    .line 117
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 118
    new-instance v3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$PUSBynP3ZsSZrPqXO1jJqSKnayU;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyRecentsImpl$PUSBynP3ZsSZrPqXO1jJqSKnayU;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_30

    .line 125
    :cond_2d
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_30
    return-void

    :cond_31
    const-string v0, "OverviewProxyRecentsImpl"

    const-string v1, "overviewProxy is null , try again"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    return-void
.end method
