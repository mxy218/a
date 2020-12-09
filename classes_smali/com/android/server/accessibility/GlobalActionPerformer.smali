.class public Lcom/android/server/accessibility/GlobalActionPerformer;
.super Ljava/lang/Object;
.source "GlobalActionPerformer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mScreenshotHelperSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/GlobalActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V

    .line 59
    iput-object p3, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 60
    return-void
.end method

.method private expandNotifications()V
    .registers 5

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    iget-object v2, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 131
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    return-void
.end method

.method private expandQuickSettings()V
    .registers 5

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 141
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 143
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return-void
.end method

.method private lockScreen()Z
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 183
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method private openRecents()Z
    .registers 4

    .line 147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 149
    :try_start_4
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1c

    .line 151
    if-nez v2, :cond_13

    .line 152
    const/4 v2, 0x0

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    return v2

    .line 154
    :cond_13
    :try_start_13
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    .line 156
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    nop

    .line 158
    const/4 v0, 0x1

    return v0

    .line 156
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDownAndUpKeyEvents(I)V
    .registers 13

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 110
    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move-wide v5, v9

    move-wide v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    .line 111
    nop

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 111
    const/4 v4, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    return-void
.end method

.method private sendKeyEventIdentityCleared(IIJJ)V
    .registers 20

    .line 118
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move v4, p2

    move v5, p1

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 121
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 123
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 124
    return-void
.end method

.method private showGlobalActions()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    .line 163
    return-void
.end method

.method private takeScreenshot()Z
    .registers 9

    .line 188
    iget-object v0, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_b

    .line 189
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ScreenshotHelper;

    goto :goto_12

    :cond_b
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/GlobalActionPerformer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    :goto_12
    move-object v2, v0

    .line 190
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Landroid/os/Handler;

    .line 191
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x0

    .line 190
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZLandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method private toggleSplitScreen()Z
    .registers 4

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 168
    :try_start_4
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1c

    .line 170
    if-nez v2, :cond_13

    .line 171
    const/4 v2, 0x0

    .line 175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    return v2

    .line 173
    :cond_13
    :try_start_13
    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    .line 175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    nop

    .line 177
    const/4 v0, 0x1

    return v0

    .line 175
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public performGlobalAction(I)Z
    .registers 5

    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 65
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_5c

    .line 99
    const/4 p1, 0x0

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    return p1

    .line 96
    :pswitch_d  #0x9
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->takeScreenshot()Z

    move-result p1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_57

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return p1

    .line 93
    :pswitch_15  #0x8
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->lockScreen()Z

    move-result p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_57

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    return p1

    .line 90
    :pswitch_1d  #0x7
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->toggleSplitScreen()Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_57

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return p1

    .line 86
    :pswitch_25  #0x6
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->showGlobalActions()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_57

    .line 88
    nop

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    return v2

    .line 82
    :pswitch_2d  #0x5
    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->expandQuickSettings()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_57

    .line 84
    nop

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    return v2

    .line 78
    :pswitch_35  #0x4
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->expandNotifications()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_57

    .line 80
    nop

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    return v2

    .line 75
    :pswitch_3d  #0x3
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/accessibility/GlobalActionPerformer;->openRecents()Z

    move-result p1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_57

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    return p1

    .line 71
    :pswitch_45  #0x2
    const/4 p1, 0x3

    :try_start_46
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_57

    .line 73
    nop

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    return v2

    .line 67
    :pswitch_4e  #0x1
    const/4 p1, 0x4

    :try_start_4f
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/GlobalActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    .line 69
    nop

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    return v2

    .line 101
    :catchall_57
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_45  #00000002
        :pswitch_3d  #00000003
        :pswitch_35  #00000004
        :pswitch_2d  #00000005
        :pswitch_25  #00000006
        :pswitch_1d  #00000007
        :pswitch_15  #00000008
        :pswitch_d  #00000009
    .end packed-switch
.end method
