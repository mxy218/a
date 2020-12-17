.class abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractAccessibilityServiceConnection"


# instance fields
.field protected final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCaptureFingerprintGestures:Z

.field final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field private final mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

.field final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field mIsDefault:Z

.field mLastAccessibilityButtonCallbackState:Z

.field protected final mLock:Ljava/lang/Object;

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mReceivedAccessibilityButtonCallbackSinceBind:Z

.field mRequestAccessibilityButton:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field mRetrieveInteractiveWindows:Z

.field protected final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field protected final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field mUsesAccessibilityCache:Z

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "componentName"  # Landroid/content/ComponentName;
    .param p3, "accessibilityServiceInfo"  # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"  # I
    .param p5, "mainHandler"  # Landroid/os/Handler;
    .param p6, "lock"  # Ljava/lang/Object;
    .param p7, "securityPolicy"  # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p8, "systemSupport"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"  # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "globalActionPerfomer"  # Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 249
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 145
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 250
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 251
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 252
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 253
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 254
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 255
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 256
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 257
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 258
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 259
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 260
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 269
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "x3"  # Z

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"  # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 78
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/graphics/Region;
    .param p3, "x3"  # F
    .param p4, "x4"  # F
    .param p5, "x5"  # F

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"  # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 78
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"  # Z

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method private getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object v1

    .line 1257
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .registers 6
    .param p1, "available"  # Z

    .line 1212
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_9

    .line 1214
    return-void

    .line 1216
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1217
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1218
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1219
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_31

    .line 1221
    :try_start_14
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 1226
    goto :goto_31

    .line 1222
    :catch_18
    move-exception v1

    .line 1223
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button availability change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    .end local v1  # "re":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method private notifyAccessibilityButtonClickedInternal()V
    .registers 5

    .line 1200
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1201
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_23

    .line 1203
    :try_start_6
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1206
    goto :goto_23

    .line 1204
    :catch_a
    move-exception v1

    .line 1205
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button click to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1208
    .end local v1  # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 9
    .param p1, "eventType"  # I
    .param p2, "event"  # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "serviceWantsEvent"  # Z

    .line 1084
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1089
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_9

    .line 1090
    monitor-exit v0

    return-void

    .line 1096
    :cond_9
    if-nez p2, :cond_1d

    .line 1113
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    move-object p2, v2

    .line 1114
    if-nez p2, :cond_18

    .line 1115
    monitor-exit v0

    return-void

    .line 1117
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1119
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1120
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_31

    .line 1122
    :cond_2b
    const/4 v2, 0x0

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1124
    :goto_31
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1125
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_66

    .line 1128
    :try_start_36
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_40
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e

    .line 1135
    nop

    :goto_3a
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1136
    goto :goto_61

    .line 1135
    :catchall_3e
    move-exception v0

    goto :goto_62

    .line 1132
    :catch_40
    move-exception v0

    .line 1133
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_41
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_3e

    .line 1135
    nop

    .end local v0  # "re":Landroid/os/RemoteException;
    goto :goto_3a

    .line 1137
    :goto_61
    return-void

    .line 1135
    :goto_62
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v0

    .line 1125
    .end local v1  # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .registers 5

    .line 1243
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1244
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_12

    .line 1246
    :try_start_6
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1250
    goto :goto_12

    .line 1247
    :catch_a
    move-exception v1

    .line 1248
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    .end local v1  # "re":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method private notifyGestureInternal(I)V
    .registers 6
    .param p1, "gestureId"  # I

    .line 1231
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1232
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_2b

    .line 1234
    :try_start_6
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1238
    goto :goto_2b

    .line 1235
    :catch_a
    move-exception v1

    .line 1236
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during sending gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    .end local v1  # "re":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    return-void
.end method

.method private notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V
    .registers 13
    .param p1, "displayId"  # I
    .param p2, "region"  # Landroid/graphics/Region;
    .param p3, "scale"  # F
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F

    .line 1173
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v6

    .line 1174
    .local v6, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v6, :cond_29

    .line 1176
    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_c
    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 1179
    goto :goto_29

    .line 1177
    :catch_10
    move-exception v0

    .line 1178
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending magnification changes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractAccessibilityServiceConnection"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    .end local v0  # "re":Landroid/os/RemoteException;
    :cond_29
    :goto_29
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .registers 6
    .param p1, "showState"  # I

    .line 1188
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1189
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_23

    .line 1191
    :try_start_6
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1195
    goto :goto_23

    .line 1192
    :catch_a
    move-exception v1

    .line 1193
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1197
    .end local v1  # "re":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method private registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "magnificationController"  # Lcom/android/server/accessibility/MagnificationController;

    .line 869
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 870
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 871
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 872
    const/4 v0, 0x1

    return v0

    .line 874
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 4
    .param p1, "windowId"  # I
    .param p2, "focusType"  # I

    .line 1268
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    .line 1269
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 1271
    :cond_a
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1d

    .line 1272
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 1273
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    return v0

    .line 1274
    :cond_15
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1d

    .line 1275
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    return v0

    .line 1278
    :cond_1d
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .registers 3
    .param p1, "accessibilityWindowId"  # I

    .line 1261
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_c

    .line 1262
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0

    .line 1264
    :cond_c
    return p1
.end method

.method private wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1052
    return v1

    .line 1055
    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 1056
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1c

    .line 1058
    return v1

    .line 1061
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1062
    .local v0, "eventType":I
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_26

    .line 1063
    return v1

    .line 1066
    :cond_26
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1067
    .local v2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1068
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 1070
    .local v3, "packageName":Ljava/lang/String;
    :goto_38
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    :cond_44
    const/4 v1, 0x1

    :cond_45
    return v1
.end method


# virtual methods
.method public canReceiveEventsLocked()Z
    .registers 2

    .line 334
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 939
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 940
    :cond_b
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 942
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 944
    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 947
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 949
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 950
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_e .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 36
    .param p1, "accessibilityWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "interactionId"  # I
    .param p5, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"  # I
    .param p7, "interrogatingTid"  # J
    .param p9, "arguments"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 565
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 566
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 568
    monitor-exit v3

    return-object v4

    .line 570
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 571
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 572
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 573
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_24

    .line 574
    monitor-exit v3

    return-object v4

    .line 576
    :cond_24
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 577
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2f

    .line 578
    monitor-exit v3

    return-object v4

    .line 581
    :cond_2f
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 583
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 584
    const/4 v2, 0x0

    .line 586
    :cond_3b
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v24

    .line 587
    .end local v0  # "permissionGranted":Z
    .local v24, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_c3

    .line 588
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 589
    return-object v4

    .line 591
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 592
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p5

    move v7, v12

    move/from16 v8, p4

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 594
    .end local p5  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 596
    .local v6, "identityToken":J
    :try_start_61
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int v20, v0, p6

    move-wide/from16 v15, p2

    move-object/from16 v17, v2

    move/from16 v18, p4

    move-object/from16 v19, v5

    move/from16 v21, v3

    move-wide/from16 v22, p7

    move-object/from16 v25, p9

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    .line 599
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 600
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 599
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_88} :catch_af
    .catchall {:try_start_61 .. :try_end_88} :catchall_9b

    .line 606
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    if-eqz v2, :cond_9a

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 609
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 599
    :cond_9a
    return-object v0

    .line 606
    :catchall_9b
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    if-eqz v2, :cond_ae

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 609
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_ae
    throw v0

    .line 601
    :catch_af
    move-exception v0

    .line 606
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    if-eqz v2, :cond_c2

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 609
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 612
    :cond_c2
    return-object v4

    .line 587
    .end local v3  # "interrogatingPid":I
    .end local v5  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6  # "identityToken":J
    .end local v12  # "resolvedWindowId":I
    .end local v13  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v24  # "spec":Landroid/view/MagnificationSpec;
    .restart local p5  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 35
    .param p1, "accessibilityWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "text"  # Ljava/lang/String;
    .param p5, "interactionId"  # I
    .param p6, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 506
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 507
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 509
    monitor-exit v3

    return-object v4

    .line 511
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 512
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 513
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 514
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_24

    .line 515
    monitor-exit v3

    return-object v4

    .line 517
    :cond_24
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 518
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2f

    .line 519
    monitor-exit v3

    return-object v4

    .line 522
    :cond_2f
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 524
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 525
    const/4 v2, 0x0

    .line 527
    :cond_3b
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 528
    .end local v0  # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_c3

    .line 529
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 530
    return-object v4

    .line 532
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 533
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 535
    .end local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 537
    .local v6, "identityToken":J
    :try_start_61
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 540
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 541
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 540
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_88} :catch_af
    .catchall {:try_start_61 .. :try_end_88} :catchall_9b

    .line 547
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    if-eqz v2, :cond_9a

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 550
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 540
    :cond_9a
    return-object v0

    .line 547
    :catchall_9b
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    if-eqz v2, :cond_ae

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 550
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_ae
    throw v0

    .line 542
    :catch_af
    move-exception v0

    .line 547
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    if-eqz v2, :cond_c2

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 550
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 553
    :cond_c2
    return-object v4

    .line 528
    .end local v3  # "interrogatingPid":I
    .end local v5  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6  # "identityToken":J
    .end local v12  # "resolvedWindowId":I
    .end local v13  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25  # "spec":Landroid/view/MagnificationSpec;
    .restart local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 35
    .param p1, "accessibilityWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "viewIdResName"  # Ljava/lang/String;
    .param p5, "interactionId"  # I
    .param p6, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 447
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 448
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_15

    .line 450
    monitor-exit v3

    return-object v4

    .line 452
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 453
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 454
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 455
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_24

    .line 456
    monitor-exit v3

    return-object v4

    .line 458
    :cond_24
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 459
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2f

    .line 460
    monitor-exit v3

    return-object v4

    .line 463
    :cond_2f
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 465
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 466
    const/4 v2, 0x0

    .line 468
    :cond_3b
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 469
    .end local v0  # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_c3

    .line 470
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 471
    return-object v4

    .line 473
    :cond_4b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 474
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 476
    .end local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 478
    .local v6, "identityToken":J
    :try_start_61
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move-object/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 481
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 482
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 481
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_88} :catch_af
    .catchall {:try_start_61 .. :try_end_88} :catchall_9b

    .line 488
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    if-eqz v2, :cond_9a

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 491
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 481
    :cond_9a
    return-object v0

    .line 488
    :catchall_9b
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    if-eqz v2, :cond_ae

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 491
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_ae
    throw v0

    .line 483
    :catch_af
    move-exception v0

    .line 488
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 490
    if-eqz v2, :cond_c2

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 491
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 494
    :cond_c2
    return-object v4

    .line 469
    .end local v3  # "interrogatingPid":I
    .end local v5  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6  # "identityToken":J
    .end local v12  # "resolvedWindowId":I
    .end local v13  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25  # "spec":Landroid/view/MagnificationSpec;
    .restart local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v3
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 32
    .param p1, "accessibilityWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "focusType"  # I
    .param p5, "interactionId"  # I
    .param p6, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 624
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 625
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_12

    .line 626
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_cb

    return-object v4

    .line 628
    :cond_12
    move/from16 v5, p1

    move/from16 v15, p4

    :try_start_16
    invoke-direct {v1, v5, v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v0

    move v14, v0

    .line 630
    .local v14, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 631
    invoke-virtual {v0, v1, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 632
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_25

    .line 633
    monitor-exit v3

    return-object v4

    .line 635
    :cond_25
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v6

    move-object/from16 v18, v6

    .line 636
    .local v18, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v18, :cond_31

    .line 637
    monitor-exit v3

    return-object v4

    .line 640
    :cond_31
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, v14, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 642
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 643
    const/4 v2, 0x0

    .line 645
    :cond_3d
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v6, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v17

    .line 646
    .end local v0  # "permissionGranted":Z
    .local v17, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_16 .. :try_end_44} :catchall_d0

    .line 647
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 648
    return-object v4

    .line 650
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 651
    .local v3, "interrogatingPid":I
    iget-object v6, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v7, p6

    move v8, v14

    move/from16 v9, p5

    move v10, v3

    move-wide/from16 v11, p7

    invoke-interface/range {v6 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v19

    .line 653
    .end local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v19, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 655
    .local v20, "identityToken":J
    :try_start_63
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v6

    iget v13, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_69} :catch_b5
    .catchall {:try_start_63 .. :try_end_69} :catchall_9f

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-object v10, v2

    move/from16 v11, p5

    move-object/from16 v12, v19

    move/from16 v22, v14

    .end local v14  # "resolvedWindowId":I
    .local v22, "resolvedWindowId":I
    move v14, v3

    move-wide/from16 v15, p7

    :try_start_77
    invoke-interface/range {v6 .. v17}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 658
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 659
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 658
    invoke-virtual {v0, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_88} :catch_9d
    .catchall {:try_start_77 .. :try_end_88} :catchall_9b

    .line 665
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    if-eqz v2, :cond_9a

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 668
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 658
    :cond_9a
    return-object v0

    .line 665
    :catchall_9b
    move-exception v0

    goto :goto_a2

    .line 660
    :catch_9d
    move-exception v0

    goto :goto_b8

    .line 665
    .end local v22  # "resolvedWindowId":I
    .restart local v14  # "resolvedWindowId":I
    :catchall_9f
    move-exception v0

    move/from16 v22, v14

    .end local v14  # "resolvedWindowId":I
    .restart local v22  # "resolvedWindowId":I
    :goto_a2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    if-eqz v2, :cond_b4

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 668
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_b4
    throw v0

    .line 660
    .end local v22  # "resolvedWindowId":I
    .restart local v14  # "resolvedWindowId":I
    :catch_b5
    move-exception v0

    move/from16 v22, v14

    .line 665
    .end local v14  # "resolvedWindowId":I
    .restart local v22  # "resolvedWindowId":I
    :goto_b8
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    if-eqz v2, :cond_ca

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 668
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 671
    :cond_ca
    return-object v4

    .line 646
    .end local v3  # "interrogatingPid":I
    .end local v17  # "spec":Landroid/view/MagnificationSpec;
    .end local v18  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v19  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v20  # "identityToken":J
    .end local v22  # "resolvedWindowId":I
    .restart local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_cb
    move-exception v0

    move/from16 v5, p1

    :goto_ce
    :try_start_ce
    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_d0

    throw v0

    :catchall_d0
    move-exception v0

    goto :goto_ce
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 35
    .param p1, "accessibilityWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "direction"  # I
    .param p5, "interactionId"  # I
    .param p6, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    move-object/from16 v1, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 683
    .local v2, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 684
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_12

    .line 685
    monitor-exit v3

    return-object v4

    .line 687
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v12, v0

    .line 688
    .local v12, "resolvedWindowId":I
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 689
    invoke-virtual {v0, v1, v12}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 690
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_21

    .line 691
    monitor-exit v3

    return-object v4

    .line 693
    :cond_21
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v5

    move-object v13, v5

    .line 694
    .local v13, "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    if-nez v13, :cond_2c

    .line 695
    monitor-exit v3

    return-object v4

    .line 698
    :cond_2c
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v12, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 700
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 701
    const/4 v2, 0x0

    .line 703
    :cond_38
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v25

    .line 704
    .end local v0  # "permissionGranted":Z
    .local v25, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_c0

    .line 705
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 706
    return-object v4

    .line 708
    :cond_48
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 709
    .local v3, "interrogatingPid":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move v7, v12

    move/from16 v8, p5

    move v9, v3

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v5

    .line 711
    .end local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v5, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 713
    .local v6, "identityToken":J
    :try_start_5e
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    iget v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move-object/from16 v18, v2

    move/from16 v19, p5

    move-object/from16 v20, v5

    move/from16 v21, v0

    move/from16 v22, v3

    move-wide/from16 v23, p7

    invoke-interface/range {v14 .. v25}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 716
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 717
    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v9

    .line 716
    invoke-virtual {v0, v8, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_85} :catch_ac
    .catchall {:try_start_5e .. :try_end_85} :catchall_98

    .line 723
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    if-eqz v2, :cond_97

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 726
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 716
    :cond_97
    return-object v0

    .line 723
    :catchall_98
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    if-eqz v2, :cond_ab

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 726
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    :cond_ab
    throw v0

    .line 718
    :catch_ac
    move-exception v0

    .line 723
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    if-eqz v2, :cond_bf

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 726
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 729
    :cond_bf
    return-object v4

    .line 704
    .end local v3  # "interrogatingPid":I
    .end local v5  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v6  # "identityToken":J
    .end local v12  # "resolvedWindowId":I
    .end local v13  # "connection":Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .end local v25  # "spec":Landroid/view/MagnificationSpec;
    .restart local p6  # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_c0
    move-exception v0

    :try_start_c1
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v0
.end method

.method public getCapabilities()I
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1282
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getMagnificationCenterX(I)F
    .registers 8
    .param p1, "displayId"  # I

    .line 825
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 827
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 829
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 830
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 831
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 832
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 833
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_34

    .line 835
    .local v3, "identity":J
    :try_start_1b
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterX(I)F

    move-result v5
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 837
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    if-eqz v2, :cond_27

    .line 839
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_27
    monitor-exit v0

    .line 835
    return v5

    .line 837
    :catchall_29
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    if-eqz v2, :cond_32

    .line 839
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_32
    nop

    .end local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1  # "displayId":I
    throw v5

    .line 842
    .end local v1  # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2  # "registeredJustForThisCall":Z
    .end local v3  # "identity":J
    .restart local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1  # "displayId":I
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getMagnificationCenterY(I)F
    .registers 8
    .param p1, "displayId"  # I

    .line 847
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 849
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 851
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 852
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 853
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 854
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 855
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_34

    .line 857
    .local v3, "identity":J
    :try_start_1b
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterY(I)F

    move-result v5
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 859
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    if-eqz v2, :cond_27

    .line 861
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_27
    monitor-exit v0

    .line 857
    return v5

    .line 859
    :catchall_29
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 860
    if-eqz v2, :cond_32

    .line 861
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_32
    nop

    .end local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1  # "displayId":I
    throw v5

    .line 864
    .end local v1  # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2  # "registeredJustForThisCall":Z
    .end local v3  # "identity":J
    .restart local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1  # "displayId":I
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .registers 9
    .param p1, "displayId"  # I

    .line 801
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_3
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 803
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_f

    .line 804
    monitor-exit v0

    return-object v1

    .line 806
    :cond_f
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 807
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    .line 808
    .local v2, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 809
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v3

    .line 810
    .local v3, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_37

    .line 812
    .local v4, "identity":J
    :try_start_1e
    invoke-virtual {v2, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 813
    nop

    .line 815
    :try_start_22
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    if-eqz v3, :cond_2a

    .line 817
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_2a
    monitor-exit v0

    .line 813
    return-object v1

    .line 815
    :catchall_2c
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 816
    if-eqz v3, :cond_35

    .line 817
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_35
    nop

    .end local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1  # "displayId":I
    throw v6

    .line 820
    .end local v1  # "region":Landroid/graphics/Region;
    .end local v2  # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v3  # "registeredJustForThisCall":Z
    .end local v4  # "identity":J
    .restart local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1  # "displayId":I
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public getMagnificationScale(I)F
    .registers 5
    .param p1, "displayId"  # I

    .line 786
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 788
    const/high16 v1, 0x3f800000  # 1.0f

    monitor-exit v0

    return v1

    .line 790
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_25

    .line 791
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 793
    .local v0, "identity":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v2
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 795
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    return v2

    .line 795
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 790
    .end local v0  # "identity":J
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method getRelevantEventTypes()I
    .registers 3

    .line 354
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_8

    const v0, 0x41b83d

    goto :goto_a

    .line 355
    :cond_8
    const/16 v0, 0x20

    :goto_a
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v0, v1

    .line 354
    return v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 346
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 7
    .param p1, "windowId"  # I

    .line 415
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 416
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 418
    monitor-exit v0

    return-object v2

    .line 420
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 421
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 422
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1b

    .line 423
    monitor-exit v0

    return-object v2

    .line 425
    :cond_1b
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 426
    monitor-exit v0

    return-object v2

    .line 428
    :cond_25
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 429
    .local v3, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v3, :cond_38

    .line 430
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 431
    .local v2, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 432
    monitor-exit v0

    return-object v2

    .line 434
    .end local v2  # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_38
    monitor-exit v0

    return-object v2

    .line 435
    .end local v1  # "permissionGranted":Z
    .end local v3  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 387
    monitor-exit v0

    return-object v2

    .line 389
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 390
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 391
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1b

    .line 392
    monitor-exit v0

    return-object v2

    .line 394
    :cond_1b
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v3, :cond_23

    .line 395
    monitor-exit v0

    return-object v2

    .line 397
    :cond_23
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 398
    monitor-exit v0

    return-object v2

    .line 400
    :cond_2d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 402
    .local v3, "windowCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v3, :cond_58

    .line 403
    iget-object v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 404
    .local v5, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    nop

    .line 405
    invoke-static {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    .line 406
    .local v6, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 407
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    nop

    .end local v5  # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6  # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 409
    .end local v4  # "i":I
    :cond_58
    monitor-exit v0

    return-object v2

    .line 410
    .end local v1  # "permissionGranted":Z
    .end local v2  # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .end local v3  # "windowCount":I
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method protected abstract isCalledForCurrentUserLocked()Z
.end method

.method public isConnectedLocked()Z
    .registers 2

    .line 999
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 774
    return v1

    .line 776
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 777
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 778
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object v0

    .line 779
    .local v0, "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1

    .line 781
    .end local v0  # "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    :cond_26
    return v1
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 929
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 3
    .param p1, "available"  # Z

    .line 1164
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1165
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 2

    .line 1160
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked()V

    .line 1161
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 13
    .param p1, "event"  # Landroid/view/accessibility/AccessibilityEvent;

    .line 1003
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1006
    .local v1, "eventType":I
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1007
    .local v2, "serviceWantsEvent":Z
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_19

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_19

    move v3, v4

    goto :goto_1a

    :cond_19
    move v3, v5

    .line 1009
    .local v3, "requiredForCacheConsistency":Z
    :goto_1a
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 1010
    monitor-exit v0

    return-void

    .line 1013
    :cond_20
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 1014
    monitor-exit v0

    return-void

    .line 1019
    :cond_2a
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1021
    .local v6, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-wide v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_59

    const/16 v7, 0x800

    if-eq v1, v7, :cond_59

    .line 1024
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    .line 1025
    .local v7, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    if-eqz v7, :cond_51

    .line 1027
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1028
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1030
    :cond_51
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v7, v8

    .line 1031
    .local v7, "message":Landroid/os/Message;
    goto :goto_5f

    .line 1033
    .end local v7  # "message":Landroid/os/Message;
    :cond_59
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1035
    .restart local v7  # "message":Landroid/os/Message;
    :goto_5f
    if-eqz v2, :cond_62

    goto :goto_63

    :cond_62
    move v4, v5

    :goto_63
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 1037
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1038
    nop

    .end local v1  # "eventType":I
    .end local v2  # "serviceWantsEvent":Z
    .end local v3  # "requiredForCacheConsistency":Z
    .end local v6  # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v7  # "message":Landroid/os/Message;
    monitor-exit v0

    .line 1039
    return-void

    .line 1038
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 3

    .line 1145
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1147
    return-void
.end method

.method public notifyGesture(I)V
    .registers 5
    .param p1, "gestureId"  # I

    .line 1140
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1142
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .registers 12
    .param p1, "displayId"  # I
    .param p2, "region"  # Landroid/graphics/Region;
    .param p3, "scale"  # F
    .param p4, "centerX"  # F
    .param p5, "centerY"  # F

    .line 1151
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1152
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1153
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 3
    .param p1, "showState"  # I

    .line 1156
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1157
    return-void
.end method

.method public onAdded()V
    .registers 7

    .line 954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 956
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    nop

    .line 961
    return-void

    .line 959
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 5
    .param p1, "keyEvent"  # Landroid/view/KeyEvent;
    .param p2, "sequenceNumber"  # I

    .line 274
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_a

    goto :goto_28

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 279
    return v1

    .line 281
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 282
    return v1

    .line 285
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_26

    .line 288
    nop

    .line 289
    const/4 v0, 0x1

    return v0

    .line 286
    :catch_26
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 275
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return v1
.end method

.method public onRemoved()V
    .registers 7

    .line 964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 966
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 968
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 969
    nop

    .line 970
    return-void

    .line 968
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 26
    .param p1, "accessibilityWindowId"  # I
    .param p2, "accessibilityNodeId"  # J
    .param p4, "action"  # I
    .param p5, "arguments"  # Landroid/os/Bundle;
    .param p6, "interactionId"  # I
    .param p7, "callback"  # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 743
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 744
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_f

    .line 745
    monitor-exit v3

    return v4

    .line 747
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    .line 748
    .local v0, "resolvedWindowId":I
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 749
    monitor-exit v3

    return v4

    .line 751
    :cond_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3d

    .line 752
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 753
    return v4

    .line 755
    :cond_27
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget v13, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 756
    move v6, v0

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    move-wide/from16 v14, p8

    invoke-interface/range {v5 .. v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v3

    .line 758
    .local v3, "returnValue":Z
    return v3

    .line 751
    .end local v0  # "resolvedWindowId":I
    .end local v3  # "returnValue":Z
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public performGlobalAction(I)Z
    .registers 4
    .param p1, "action"  # I

    .line 763
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 765
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 767
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 768
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/GlobalActionPerformer;->performGlobalAction(I)Z

    move-result v0

    return v0

    .line 767
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public resetLocked()V
    .registers 6

    .line 973
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    .line 977
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_15

    .line 978
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 982
    :cond_15
    goto :goto_17

    .line 980
    :catch_16
    move-exception v1

    .line 983
    :goto_17
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 986
    :try_start_1c
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1f
    .catch Ljava/util/NoSuchElementException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 989
    goto :goto_28

    .line 987
    :catch_20
    move-exception v1

    .line 988
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "AbstractAccessibilityServiceConnection"

    const-string v4, "Failed to remove death link "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    .end local v1  # "e":Ljava/util/NoSuchElementException;
    :goto_28
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 994
    :cond_2a
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 995
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 996
    return-void
.end method

.method public resetMagnification(IZ)Z
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "animate"  # Z

    .line 879
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 881
    monitor-exit v0

    return v2

    .line 883
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 884
    monitor-exit v0

    return v2

    .line 886
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_37

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 889
    .local v0, "identity":J
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 890
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    .line 891
    .local v3, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->reset(IZ)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 892
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v4
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    if-nez v4, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    .line 894
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 891
    return v2

    .line 894
    .end local v3  # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 886
    .end local v0  # "identity":J
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 3
    .param p1, "sequence"  # I
    .param p2, "gestureSteps"  # Landroid/content/pm/ParceledListSlice;

    .line 734
    return-void
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6
    .param p1, "info"  # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 293
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 294
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 295
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 296
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 297
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 299
    :cond_15
    iget-wide v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 300
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 303
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_38

    .line 304
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_3e

    .line 306
    :cond_38
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 310
    :cond_3e
    :goto_3e
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4b

    .line 311
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_51

    .line 313
    :cond_4b
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 316
    :goto_51
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_59

    move v1, v2

    goto :goto_5a

    :cond_59
    move v1, v3

    :goto_5a
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 318
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_64

    move v1, v2

    goto :goto_65

    :cond_64
    move v1, v3

    :goto_65
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 320
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6f

    move v1, v2

    goto :goto_70

    :cond_6f
    move v1, v3

    :goto_70
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 322
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7a

    move v1, v2

    goto :goto_7b

    :cond_7a
    move v1, v3

    :goto_7b
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 324
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_84

    goto :goto_85

    :cond_84
    move v2, v3

    :goto_85
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 326
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "enabled"  # Z

    .line 925
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V

    .line 926
    return-void
.end method

.method public setMagnificationScaleAndCenter(IFFFZ)Z
    .registers 19
    .param p1, "displayId"  # I
    .param p2, "scale"  # F
    .param p3, "centerX"  # F
    .param p4, "centerY"  # F
    .param p5, "animate"  # Z

    .line 901
    move-object v1, p0

    move v9, p1

    iget-object v10, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 902
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 903
    monitor-exit v10

    return v2

    .line 905
    :cond_e
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 906
    monitor-exit v10

    return v2

    .line 908
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_45

    move-wide v11, v2

    .line 910
    .local v11, "identity":J
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 911
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    .line 912
    .local v0, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 913
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 915
    :cond_2c
    iget v8, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 916
    move-object v2, v0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result v2
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_40

    .line 918
    :try_start_3b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    .line 915
    return v2

    .line 918
    .end local v0  # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_40
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1  # "displayId":I
    .end local p2  # "scale":F
    .end local p3  # "centerX":F
    .end local p4  # "centerY":F
    .end local p5  # "animate":Z
    throw v0

    .line 920
    .end local v11  # "identity":J
    .restart local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1  # "displayId":I
    .restart local p2  # "scale":F
    .restart local p3  # "centerX":F
    .restart local p4  # "centerY":F
    .restart local p5  # "animate":Z
    :catchall_45
    move-exception v0

    monitor-exit v10
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_45

    throw v0
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 4
    .param p1, "handled"  # Z
    .param p2, "sequence"  # I

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    .line 340
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 8
    .param p1, "info"  # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_24

    .line 366
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 367
    .local v3, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v3, :cond_12

    .line 368
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_15

    .line 371
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 373
    :goto_15
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 374
    .end local v3  # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_21

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    nop

    .line 378
    return-void

    .line 374
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_start_23
    throw v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 376
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1  # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 3
    .param p1, "enabled"  # Z

    .line 934
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 935
    return-void
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 4
    .param p1, "info"  # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 329
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
