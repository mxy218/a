.class Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "AccessibilityServiceConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityServiceConnection"


# instance fields
.field final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field final mUserStateWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWasConnectedAndDied:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;Lcom/android/server/wm/ActivityTaskManagerInternal;)V
    .registers 25

    .line 76
    move-object v0, p0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    .line 78
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 80
    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 81
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.client_label"

    const v3, 0x1040047

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 86
    :try_start_42
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.client_intent"

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {v5, v0, v7, v6, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_5e

    .line 89
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_5e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private initializeService()V
    .registers 6

    .line 186
    nop

    .line 187
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 189
    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    .line 190
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v2

    .line 191
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    if-eqz v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_2d

    .line 192
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 193
    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 194
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 199
    :goto_2d
    if-eqz v2, :cond_42

    .line 200
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 201
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 202
    monitor-exit v0

    return-void

    .line 204
    :cond_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_6c

    .line 205
    if-nez v2, :cond_49

    .line 206
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 207
    return-void

    .line 210
    :cond_49
    :try_start_49
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_50} :catch_51

    .line 215
    goto :goto_6b

    .line 211
    :catch_51
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting connection for service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityServiceConnection"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 216
    :goto_6b
    return-void

    .line 204
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public static synthetic lambda$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->initializeService()V

    return-void
.end method


# virtual methods
.method public bindLocked()V
    .registers 9

    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 95
    if-nez v0, :cond_b

    return-void

    .line 96
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 98
    const v3, 0x2100001

    .line 100
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 101
    const v3, 0x2500001

    .line 103
    :cond_1b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, p0, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 105
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_57

    .line 108
    :cond_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    nop

    .line 110
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 111
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 110
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 113
    return-void

    .line 108
    :catchall_57
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public binderDied()V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 279
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 280
    if-eqz v1, :cond_1b

    .line 281
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 283
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 284
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 285
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public disableSelf()V
    .registers 8

    .line 133
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 135
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 136
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3e

    .line 139
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const-string v5, "enabled_accessibility_services"

    .line 141
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v6

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 139
    invoke-interface {v4, v5, v6, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_37

    .line 143
    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    nop

    .line 145
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    goto :goto_3c

    .line 143
    :catchall_37
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 147
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    iput-boolean v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 182
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 254
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardShowMode()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 262
    monitor-exit v0

    return v2

    .line 264
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 265
    if-eqz v1, :cond_1d

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    monitor-exit v0

    return v2

    .line 266
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 6

    .line 291
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 292
    return v1

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->isAccessibilityButtonShown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 297
    return v1

    .line 301
    :cond_f
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v0, :cond_18

    .line 303
    return v1

    .line 306
    :cond_18
    nop

    .line 307
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_21
    if-ltz v0, :cond_34

    .line 308
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 309
    iget-boolean v3, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_31

    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 307
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 314
    :cond_34
    if-ne v1, v2, :cond_37

    .line 317
    return v2

    .line 320
    :cond_37
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v0, :cond_3c

    .line 323
    return v2

    .line 326
    :cond_3c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isCalledForCurrentUserLocked()Z
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 235
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 334
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 333
    :goto_13
    return v0
.end method

.method public onFingerprintGesture(I)V
    .registers 4

    .line 357
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 358
    return-void

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 363
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 364
    if-eqz v1, :cond_16

    .line 366
    :try_start_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 368
    goto :goto_16

    .line 367
    :catch_15
    move-exception p1

    .line 370
    :cond_16
    :goto_16
    return-void

    .line 363
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 4

    .line 340
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 341
    return-void

    .line 344
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 346
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 347
    if-eqz v1, :cond_16

    .line 349
    :try_start_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 351
    goto :goto_16

    .line 350
    :catch_15
    move-exception p1

    .line 353
    :cond_16
    :goto_16
    return-void

    .line 346
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 152
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 153
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eq v0, p2, :cond_26

    .line 154
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_11

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 157
    :cond_11
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_4d

    .line 159
    :try_start_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_4d

    .line 164
    goto :goto_26

    .line 160
    :catch_19
    move-exception p2

    .line 161
    :try_start_1a
    const-string p2, "AccessibilityServiceConnection"

    const-string v0, "Failed registering death link"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 163
    monitor-exit p1

    return-void

    .line 166
    :cond_26
    :goto_26
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 167
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 168
    if-nez p2, :cond_38

    monitor-exit p1

    return-void

    .line 169
    :cond_38
    invoke-virtual {p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 170
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {p2, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 173
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    monitor-exit p1

    .line 176
    return-void

    .line 175
    :catchall_4d
    move-exception p2

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_1a .. :try_end_4f} :catchall_4d

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 220
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 221
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 222
    if-eqz p1, :cond_1b

    .line 224
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 227
    :cond_1b
    return-void
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 6

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 376
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 377
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_1e

    .line 379
    nop

    .line 380
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 379
    invoke-virtual {v1, p2, v2, p1}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_40

    goto :goto_3e

    .line 383
    :cond_1e
    :try_start_1e
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25
    .catchall {:try_start_1e .. :try_end_24} :catchall_40

    .line 387
    goto :goto_3e

    .line 384
    :catch_25
    move-exception p1

    .line 385
    :try_start_26
    const-string p2, "AccessibilityServiceConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending motion event injection failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 243
    monitor-exit v0

    return v2

    .line 245
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 246
    if-nez v1, :cond_18

    monitor-exit v0

    return v2

    .line 247
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 248
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public unbindLocked()V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 118
    if-nez v0, :cond_10

    return-void

    .line 119
    :cond_10
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 120
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 122
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setAllowAppSwitches(Ljava/lang/String;II)V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 125
    return-void
.end method
