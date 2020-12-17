.class Lcom/android/server/accessibility/AccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "AccessibilityServiceConnection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityServiceConnection"


# instance fields
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
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .registers 25
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "componentName"  # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"  # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p5, "id"  # I
    .param p6, "mainHandler"  # Landroid/os/Handler;
    .param p7, "lock"  # Ljava/lang/Object;
    .param p8, "securityPolicy"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p9, "systemSupport"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p10, "windowManagerInternal"  # Lcom/android/server/wm/WindowManagerInternal;
    .param p11, "globalActionPerfomer"  # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 76
    move-object v12, p0

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

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
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    .line 80
    move-object/from16 v2, p6

    iput-object v2, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 81
    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x1040047

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 85
    .local v3, "identity":J
    :try_start_3f
    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.client_intent"

    iget-object v6, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget-object v7, v12, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-interface {v6, v7, v9, v8, v9}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_5b

    .line 88
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_5b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private initializeService()V
    .registers 8

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 188
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v2, :cond_10

    monitor-exit v1

    return-void

    .line 189
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    .line 190
    .local v3, "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_21

    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    if-eqz v4, :cond_2b

    .line 191
    :cond_21
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 193
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-object v0, v4

    .line 198
    :cond_2b
    if-eqz v0, :cond_40

    .line 199
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 200
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 201
    monitor-exit v1

    return-void

    .line 203
    .end local v2  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v3  # "bindingServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_6a

    .line 204
    if-nez v0, :cond_47

    .line 205
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 206
    return-void

    .line 209
    :cond_47
    :try_start_47
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4e} :catch_4f

    .line 214
    goto :goto_69

    .line 210
    :catch_4f
    move-exception v1

    .line 211
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting connection for service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 215
    .end local v1  # "re":Landroid/os/RemoteException;
    :goto_69
    return-void

    .line 203
    :catchall_6a
    move-exception v2

    :try_start_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method public static synthetic lambda$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->initializeService()V

    return-void
.end method


# virtual methods
.method public bindLocked()V
    .registers 9

    .line 93
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 94
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_b

    return-void

    .line 95
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 97
    .local v1, "identity":J
    const v3, 0x2100001

    .line 99
    .local v3, "flags":I
    :try_start_12
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindInstantServiceAllowed()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 100
    const/high16 v4, 0x400000

    or-int/2addr v3, v4

    .line 102
    :cond_1b
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIntent:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, p0, v3, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 104
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_3e

    .line 107
    .end local v3  # "flags":I
    :cond_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    nop

    .line 109
    return-void

    .line 107
    :catchall_3e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public binderDied()V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isConnectedLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    .line 272
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 273
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v1, :cond_1b

    .line 274
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->serviceDisconnectedLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 276
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 277
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 278
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 279
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .registers 2

    .line 121
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
    .registers 9

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 128
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    .line 129
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3e

    .line 132
    .local v2, "identity":J
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const-string v5, "enabled_accessibility_services"

    .line 134
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v6

    iget v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 132
    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_37

    .line 136
    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    nop

    .line 138
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    goto :goto_3c

    .line 136
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    throw v4

    .line 140
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v2  # "identity":J
    .restart local p0  # "this":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mWasConnectedAndDied:Z

    iput-boolean v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 181
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v0
.end method

.method public getSoftKeyboardShowMode()I
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 247
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getSoftKeyboardShowMode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 255
    monitor-exit v0

    return v2

    .line 257
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 258
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v1, :cond_1d

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    monitor-exit v0

    return v2

    .line 259
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .registers 7
    .param p1, "userState"  # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 284
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 285
    return v1

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->isAccessibilityButtonShown()Z

    move-result v0

    if-nez v0, :cond_f

    .line 290
    return v1

    .line 294
    :cond_f
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v0, :cond_18

    .line 296
    return v1

    .line 299
    :cond_18
    const/4 v0, 0x0

    .line 300
    .local v0, "requestingServices":I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_34

    .line 301
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 302
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_31

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 300
    .end local v3  # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 307
    .end local v1  # "i":I
    :cond_34
    if-ne v0, v2, :cond_37

    .line 310
    return v2

    .line 313
    :cond_37
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v1, :cond_3c

    .line 316
    return v2

    .line 319
    :cond_3c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected isCalledForCurrentUserLocked()Z
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 228
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 229
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 327
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 326
    :goto_13
    return v0
.end method

.method public onFingerprintGesture(I)V
    .registers 4
    .param p1, "gesture"  # I

    .line 350
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 351
    return-void

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 356
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 357
    if-eqz v1, :cond_16

    .line 359
    :try_start_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintGesture(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 361
    goto :goto_16

    .line 360
    :catch_15
    move-exception v0

    .line 363
    :cond_16
    :goto_16
    return-void

    .line 356
    .end local v1  # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 4
    .param p1, "active"  # Z

    .line 333
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-nez v0, :cond_7

    .line 334
    return-void

    .line 337
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 339
    .local v1, "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    .line 340
    if-eqz v1, :cond_16

    .line 342
    :try_start_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onFingerprintCapturingGesturesChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    .line 344
    goto :goto_16

    .line 343
    :catch_15
    move-exception v0

    .line 346
    :cond_16
    :goto_16
    return-void

    .line 339
    .end local v1  # "serviceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 145
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eq v1, p2, :cond_2f

    .line 148
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_57

    if-eqz v1, :cond_1a

    .line 150
    :try_start_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_11} :catch_12
    .catchall {:try_start_c .. :try_end_11} :catchall_57

    .line 153
    goto :goto_1a

    .line 151
    :catch_12
    move-exception v1

    .line 152
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_13
    const-string v3, "AccessibilityServiceConnection"

    const-string v4, "Failed to remove death link "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v1  # "e":Ljava/util/NoSuchElementException;
    :cond_1a
    :goto_1a
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_57

    .line 158
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_57

    .line 163
    goto :goto_2f

    .line 159
    :catch_22
    move-exception v1

    .line 160
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_23
    const-string v2, "AccessibilityServiceConnection"

    const-string v3, "Failed registering death link"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 162
    monitor-exit v0

    return-void

    .line 165
    .end local v1  # "re":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 166
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 167
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_41

    monitor-exit v0

    return-void

    .line 168
    :cond_41
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->addServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 169
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityServiceConnection$ASP9bmSvpeD7ZE_uJ8sm-9hCwiU;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    nop

    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_23 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "componentName"  # Landroid/content/ComponentName;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->binderDied()V

    .line 220
    return-void
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 9
    .param p1, "sequence"  # I
    .param p2, "gestureSteps"  # Landroid/content/pm/ParceledListSlice;

    .line 367
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 369
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 370
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v1

    .line 371
    .local v1, "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    if-eqz v1, :cond_1e

    .line 372
    nop

    .line 373
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 372
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_40

    goto :goto_3e

    .line 376
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25
    .catchall {:try_start_1e .. :try_end_24} :catchall_40

    .line 380
    goto :goto_3e

    .line 377
    :catch_25
    move-exception v2

    .line 378
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_26
    const-string v3, "AccessibilityServiceConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending motion event injection failure to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v1  # "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    .end local v2  # "re":Landroid/os/RemoteException;
    :cond_3e
    :goto_3e
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 5
    .param p1, "showMode"  # I

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 236
    monitor-exit v0

    return v2

    .line 238
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 239
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v1, :cond_18

    monitor-exit v0

    return v2

    .line 240
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 241
    .end local v1  # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public unbindLocked()V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mUserStateWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 114
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_10

    return-void

    .line 115
    :cond_10
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->resetLocked()V

    .line 118
    return-void
.end method
