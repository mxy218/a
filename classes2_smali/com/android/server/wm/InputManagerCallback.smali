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
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 295
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 7
    .param p1, "focus"  # Landroid/os/IBinder;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 195
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1
.end method

.method public dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "displayId"  # I

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->dispatcherWaitToCheckSystemGesture(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInputFreezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    :cond_1d
    return-void
.end method

.method public freezeInputDispatchingLw()V
    .registers 3

    .line 256
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-nez v0, :cond_20

    .line 257
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    .line 258
    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 263
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1d

    .line 264
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 266
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 268
    :cond_20
    return-void
.end method

.method public getPointerDisplayId()I
    .registers 7

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 211
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    if-nez v1, :cond_14

    .line 212
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 216
    :cond_14
    const/4 v1, 0x0

    .line 217
    .local v1, "firstExternalDisplayId":I
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_21
    if-ltz v2, :cond_4f

    .line 218
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 222
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3f

    .line 223
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 226
    :cond_3f
    if-nez v1, :cond_4c

    .line 227
    :try_start_41
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 228
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    move v1, v4

    .line 217
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 233
    .end local v2  # "i":I
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 234
    .end local v1  # "firstExternalDisplayId":I
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPointerLayer()I
    .registers 3

    .line 201
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
    .param p1, "focus"  # Landroid/os/IBinder;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 184
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J
    .registers 6
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I
    .param p3, "displayId"  # I

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeDispatching(Landroid/view/MotionEvent;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IJI)I
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "whenNanos"  # J
    .param p4, "policyFlags"  # I

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/policy/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(IJI)I

    move-result v0

    return v0
.end method

.method public mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 4
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->mzInterceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Landroid/os/IBinder;Ljava/lang/String;)J
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "reason"  # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    .line 75
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 76
    .local v2, "aboveSystem":Z
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 77
    const/4 v4, 0x0

    if-eqz p1, :cond_1b

    .line 78
    iget-object v5, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v5

    move-object v1, v5

    .line 79
    if-eqz v1, :cond_1b

    .line 80
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v0, v5

    .line 84
    :cond_1b
    if-eqz v1, :cond_54

    .line 85
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input event dispatching timed out sending to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 86
    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ".  Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v5, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7f6

    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    invoke-interface {v5, v6, v7}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v5

    .line 93
    .local v5, "systemAlertLayer":I
    iget v6, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v6, v5, :cond_52

    const/4 v4, 0x1

    :cond_52
    move v2, v4

    .line 94
    .end local v5  # "systemAlertLayer":I
    goto :goto_8d

    :cond_54
    if-eqz v0, :cond_77

    .line 95
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event dispatching timed out sending to application "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".  Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 99
    :cond_77
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input event dispatching timed out .  Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_8d
    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 104
    monitor-exit v3
    :try_end_93
    .catchall {:try_start_8 .. :try_end_93} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->saveANRState(Ljava/lang/String;)V

    .line 109
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_b8

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v5, :cond_b8

    .line 112
    nop

    .line 113
    if-eqz v1, :cond_ad

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    goto :goto_ae

    :cond_ad
    const/4 v5, -0x1

    .line 112
    :goto_ae
    invoke-virtual {v0, p2, v5}, Lcom/android/server/wm/AppWindowToken;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v5

    .line 114
    .local v5, "abort":Z
    if-nez v5, :cond_b7

    .line 117
    iget-wide v3, v0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    return-wide v3

    .line 114
    .end local v5  # "abort":Z
    :cond_b7
    goto :goto_cf

    .line 119
    :cond_b8
    if-eqz v1, :cond_cf

    .line 122
    iget-object v5, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v5, v6, v2, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v5

    .line 124
    .local v5, "timeout":J
    cmp-long v7, v5, v3

    if-ltz v7, :cond_d0

    .line 127
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v5

    return-wide v3

    .line 119
    .end local v5  # "timeout":J
    :cond_cf
    :goto_cf
    nop

    .line 130
    :cond_d0
    return-wide v3

    .line 104
    :catchall_d1
    move-exception v4

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"  # J
    .param p3, "lensCovered"  # Z

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 157
    return-void
.end method

.method public notifyConfigurationChanged()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration(I)V

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_9
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    if-nez v1, :cond_15

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 144
    :cond_15
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public notifyInputChannelBroken(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 52
    if-nez p1, :cond_3

    .line 53
    return-void

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 57
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 58
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2e

    .line 59
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 62
    .end local v1  # "windowState":Lcom/android/server/wm/WindowState;
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    return-void

    .line 62
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"  # J
    .param p3, "lidOpen"  # Z

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 151
    return-void
.end method

.method public onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "touchedToken"  # Landroid/os/IBinder;

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 240
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 283
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_23

    .line 284
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1e

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting event dispatching to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1e
    iput-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    .line 289
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 291
    :cond_23
    return-void
.end method

.method public thawInputDispatchingLw()V
    .registers 3

    .line 271
    iget-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_18

    .line 272
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_f

    .line 273
    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputFreezeReason:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/android/server/wm/InputManagerCallback;->updateInputDispatchModeLw()V

    .line 280
    :cond_18
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .registers 5
    .param p1, "timeoutMillis"  # J

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-nez v1, :cond_e

    .line 247
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 249
    goto :goto_e

    .line 248
    :catch_d
    move-exception v1

    .line 251
    :cond_e
    :goto_e
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    monitor-exit v0

    return v1

    .line 252
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v1
.end method
