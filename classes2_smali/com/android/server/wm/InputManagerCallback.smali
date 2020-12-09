.class final Lcom/android/server/wm/InputManagerCallback;
.super Ljava/lang/Object;
.source "InputManagerCallback.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFreezeReason:Ljava/lang/String;

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 294
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 7

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mInputFreezeReason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    :cond_1d
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .registers 2

    .line 255
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-nez v0, :cond_a

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 265
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 267
    :cond_a
    return-void
.end method

.method public getPointerDisplayId()I
    .registers 7

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 211
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 215
    :cond_14
    nop

    .line 216
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_4e

    .line 217
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 221
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3f

    .line 222
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 225
    :cond_3f
    if-nez v2, :cond_4b

    .line 226
    :try_start_41
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_4b

    .line 227
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 216
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 232
    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 233
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPointerLayer()I
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 7

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p1

    return p1
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result p1

    return p1
.end method

.method public notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J
    .registers 9

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    .line 77
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 78
    if-eqz p1, :cond_1b

    .line 79
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_1b

    .line 76
    :cond_1a
    move-object p1, v2

    .line 83
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_53

    .line 84
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 85
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".  Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x7f6

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    invoke-interface {v3, v4, v5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v3

    .line 92
    iget v4, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v4, v3, :cond_52

    const/4 v1, 0x1

    .line 93
    :cond_52
    goto :goto_8c

    :cond_53
    if-eqz v2, :cond_76

    .line 94
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out sending to application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".  Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 98
    :cond_76
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_8c
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 103
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_8 .. :try_end_92} :catchall_cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->saveANRState(Ljava/lang/String;)V

    .line 108
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_b6

    iget-object v0, v2, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_b6

    .line 111
    nop

    .line 112
    if-eqz p1, :cond_ac

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    goto :goto_ad

    :cond_ac
    const/4 p1, -0x1

    .line 111
    :goto_ad
    invoke-virtual {v2, p2, p1}, Lcom/android/server/wm/AppWindowToken;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result p1

    .line 113
    if-nez p1, :cond_cd

    .line 116
    iget-wide p1, v2, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    return-wide p1

    .line 118
    :cond_b6
    if-eqz p1, :cond_cd

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide p1

    .line 123
    cmp-long v0, p1, v3

    if-ltz v0, :cond_ce

    .line 126
    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    return-wide p1

    .line 118
    :cond_cd
    nop

    .line 129
    :cond_ce
    return-wide v3

    .line 103
    :catchall_cf
    move-exception p1

    :try_start_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 156
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    if-nez v1, :cond_15

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 141
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 143
    :cond_15
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 6

    .line 51
    if-nez p1, :cond_3

    .line 52
    return-void

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 57
    if-eqz p1, :cond_2e

    .line 58
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WINDOW DIED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 61
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    return-void

    .line 61
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 150
    return-void
.end method

.method public onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 4

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 3

    .line 282
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_9

    .line 287
    iput-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    .line 288
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 290
    :cond_9
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 2

    .line 270
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_d

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 277
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 279
    :cond_d
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-nez v1, :cond_e

    .line 246
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 248
    goto :goto_e

    .line 247
    :catch_d
    move-exception p1

    .line 250
    :cond_e
    :goto_e
    :try_start_e
    iget-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    monitor-exit v0

    return p1

    .line 251
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw p1
.end method
