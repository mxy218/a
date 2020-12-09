.class Lcom/android/server/policy/DisplayFoldController;
.super Ljava/lang/Object;
.source "DisplayFoldController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayFoldController"


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

.field private mFocusedApp:Ljava/lang/String;

.field private mFolded:Ljava/lang/Boolean;

.field private final mFoldedArea:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayFoldListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mOverrideFoldedArea:Landroid/graphics/Rect;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 55
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    .line 58
    new-instance v0, Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-direct {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    .line 63
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 64
    iput-object p2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 65
    iput p3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 67
    iput-object p5, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .registers 9

    .line 189
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 190
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104017a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 194
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_23

    .line 197
    :cond_1d
    invoke-static {p0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    move-object v5, p0

    goto :goto_29

    .line 195
    :cond_23
    :goto_23
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    move-object v5, p0

    .line 200
    :goto_29
    new-instance p0, Lcom/android/server/policy/DisplayFoldController;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 201
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/DisplayFoldController;-><init>(Lcom/android/server/wm/WindowManagerInternal;Landroid/hardware/display/DisplayManagerInternal;ILandroid/graphics/Rect;Landroid/os/Handler;)V

    .line 200
    return-object p0
.end method

.method static createWithProxSensor(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;
    .registers 5

    .line 162
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 163
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 164
    if-nez v1, :cond_12

    .line 165
    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_12
    invoke-static {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object p0

    .line 169
    new-instance p1, Lcom/android/server/policy/DisplayFoldController$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/DisplayFoldController$1;-><init>(Lcom/android/server/policy/DisplayFoldController;)V

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 181
    return-object p0
.end method


# virtual methods
.method finishedGoingToSleep()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedGoingToSleep()V

    .line 72
    return-void
.end method

.method finishedWakingUp()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->onFinishedWakingUp(Ljava/lang/Boolean;)V

    .line 76
    return-void
.end method

.method getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    return-object v0

    .line 153
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$registerDisplayFoldListener$1$DisplayFoldController(Landroid/view/IDisplayFoldListener;)V
    .registers 4

    .line 134
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 137
    goto :goto_d

    .line 135
    :catch_c
    move-exception p1

    .line 138
    :goto_d
    return-void
.end method

.method public synthetic lambda$requestDeviceFolded$0$DisplayFoldController(Z)V
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DisplayFoldController;->setDeviceFolded(Z)V

    return-void
.end method

.method onDefaultDisplayFocusChanged(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    .line 186
    return-void
.end method

.method registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 130
    return-void

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$aUVA2gXih47E319JuwXnHTqEGHI;-><init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/IDisplayFoldListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method requestDeviceFolded(Z)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$NTSuhIo_Cno_Oi2ZijeIvJCcvfc;-><init>(Lcom/android/server/policy/DisplayFoldController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method setDeviceFolded(Z)V
    .registers 9

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_b

    .line 84
    return-void

    .line 86
    :cond_b
    const/4 v0, 0x0

    if-eqz p1, :cond_6a

    .line 88
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 89
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    goto :goto_23

    .line 90
    :cond_19
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 91
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFoldedArea:Landroid/graphics/Rect;

    .line 96
    :goto_23
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 97
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 99
    iget-object v3, p0, Lcom/android/server/policy/DisplayFoldController;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 103
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 104
    iget-object v4, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v5, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 104
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/wm/WindowManagerInternal;->setForcedDisplaySize(III)V

    .line 106
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 107
    goto :goto_7f

    .line 93
    :cond_69
    return-void

    .line 108
    :cond_6a
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    .line 109
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->clearForcedDisplaySize(I)V

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-virtual {v1, v2, v0, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 112
    :goto_7f
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/DisplayFoldDurationLogger;->setDeviceFolded(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mDurationLogger:Lcom/android/server/policy/DisplayFoldDurationLogger;

    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mFocusedApp:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/DisplayFoldDurationLogger;->logFocusedAppWithFoldState(ZLjava/lang/String;)V

    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mFolded:Ljava/lang/Boolean;

    .line 116
    iget-object v1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 117
    nop

    :goto_98
    if-ge v0, v1, :cond_ac

    .line 119
    :try_start_9a
    iget-object v2, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayFoldListener;

    iget v3, p0, Lcom/android/server/policy/DisplayFoldController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Landroid/view/IDisplayFoldListener;->onDisplayFoldChanged(IZ)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a7} :catch_a8

    .line 122
    goto :goto_a9

    .line 120
    :catch_a8
    move-exception v2

    .line 117
    :goto_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    .line 124
    :cond_ac
    iget-object p1, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 125
    return-void
.end method

.method setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mOverrideFoldedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    return-void
.end method

.method unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/DisplayFoldController;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 143
    return-void
.end method
