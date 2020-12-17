.class public Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "AutoHideController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoHideSuspended:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mDisplayId:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastDispatchedSystemUiVisibility:I

.field private mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mSystemUiVisibility:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowManagerService:Landroid/view/IWindowManager;


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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$sJYAhc6qJ_sO_ZdtlpSd2BPK504;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 77
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    .line 78
    const-class p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 79
    const-class p2, Landroid/view/IWindowManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    return-void
.end method

.method private cancelAutoHide()V
    .registers 2

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCheckBarModesRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$Dw54NegELGCFcbvVgChoOa9gkLA;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    .line 177
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoHideController$FON87SM6b4--2jIBTAjBTcUbKIM;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    return-object v0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTransientMask()I
    .registers 2

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x4000000

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 222
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_13

    const/high16 p0, 0x8000000

    or-int/2addr v0, p0

    :cond_13
    return v0
.end method

.method private scheduleAutoHide()V
    .registers 5

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    .line 194
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedVisibleChange()Z

    move-result p0

    if-eqz p0, :cond_14

    const-wide/16 v2, 0x0

    goto :goto_16

    :cond_14
    const-wide/16 v2, 0x8ca

    .line 193
    :goto_16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private userAutoHide()V
    .registers 4

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method checkUserAutoHide(Landroid/view/MotionEvent;)V
    .registers 5

    .line 199
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_24

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_24

    move p1, v1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    .line 203
    :goto_25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr p1, v0

    :cond_37
    if-eqz p1, :cond_3c

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->userAutoHide()V

    :cond_3c
    return-void
.end method

.method hasNavigationBar()Z
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method hasStatusBar()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public synthetic lambda$getCheckBarModesRunnable$1$AutoHideController()V
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    return-void
.end method

.method public synthetic lambda$getCheckBarModesRunnable$2$AutoHideController()V
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    return-void
.end method

.method public synthetic lambda$new$0$AutoHideController()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 67
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    if-eq v1, v0, :cond_1a

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifySystemUiVisibilityChanged(I)V

    :cond_1a
    return-void
.end method

.method notifySystemUiVisibilityChanged(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I

    if-eq v0, p1, :cond_15

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(II)V

    .line 138
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mLastDispatchedSystemUiVisibility:I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    const-string p0, "AutoHideController"

    const-string p1, "Cannot get WindowManager"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 86
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    if-ne p1, v0, :cond_9

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_9
    return-void
.end method

.method resumeSuspendedAutoHide()V
    .registers 4

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_14

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14
    return-void
.end method

.method setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-void
.end method

.method setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 19

    move-object v0, p0

    move v6, p5

    .line 103
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    move v2, p1

    if-eq v2, v1, :cond_8

    return-void

    .line 106
    :cond_8
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    not-int v2, v6

    and-int/2addr v2, v1

    and-int v3, p2, v6

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    if-eqz v1, :cond_53

    .line 111
    iput v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v1

    if-eqz v1, :cond_27

    const/high16 v1, 0x10000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_27

    .line 115
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 118
    :cond_27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/high16 v1, 0x20000000

    and-int/2addr v1, p2

    if-eqz v1, :cond_3a

    .line 119
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    .line 123
    :cond_3a
    iget v3, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    if-eq v3, v2, :cond_4e

    .line 124
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/CommandQueue;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 129
    :cond_4e
    iget v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->notifySystemUiVisibilityChanged(I)V

    :cond_53
    return-void
.end method

.method suspendAutoHide()V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getTransientMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    return-void
.end method

.method touchAutoHide()V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasStatusBar()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 167
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isSemiTransparent()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 168
    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->scheduleAutoHide()V

    goto :goto_24

    .line 170
    :cond_21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->cancelAutoHide()V

    :goto_24
    return-void
.end method
