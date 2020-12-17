.class public Lcom/android/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final IS_CTS:Z

.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mNavBarMode:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private taskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "persist.sys_cts_state"

    const/4 v1, 0x0

    .line 358
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->IS_CTS:Z

    .line 76
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 77
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 79
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 82
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .line 133
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e8

    const/16 v4, 0x108

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 140
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 141
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v0, "ScreenPinningConfirmation"

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x77

    .line 143
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p0
.end method


# virtual methods
.method public clearPrompt()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_c

    .line 87
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    :cond_c
    return-void
.end method

.method public getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 158
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    const/16 p1, 0x13

    goto :goto_10

    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    const/16 p1, 0x15

    goto :goto_10

    :cond_e
    const/16 p1, 0x51

    :goto_10
    const/4 v0, -0x2

    .line 163
    invoke-direct {p0, v0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->screen_pinning_ok_button:I

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-ne v0, p1, :cond_15

    .line 151
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_15

    .line 154
    :catch_15
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz p0, :cond_7

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->onConfigurationChanged()V

    :cond_7
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .registers 2

    .line 123
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method public showPrompt(IZ)V
    .registers 4

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->IS_CTS:Z

    if-nez v0, :cond_11

    .line 96
    :try_start_4
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 98
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return-void

    .line 104
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->clearPrompt()V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_14} :catch_14

    .line 110
    :catch_14
    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->taskId:I

    .line 112
    new-instance p1, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 114
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 117
    invoke-direct {p0}, Lcom/android/systemui/recents/ScreenPinningRequest;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-interface {p2, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
