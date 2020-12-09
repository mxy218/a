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
    .registers 12

    .line 246
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 142
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 247
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 248
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 249
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 250
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 251
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 252
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 253
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 254
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    .line 255
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 256
    new-instance p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 257
    new-instance p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 266
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 4

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V
    .registers 6

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .registers 2

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method private getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 3

    .line 1246
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object v1

    .line 1248
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .registers 4

    .line 1203
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_9

    .line 1205
    return-void

    .line 1207
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1208
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1209
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_31

    .line 1212
    :try_start_14
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 1217
    goto :goto_31

    .line 1213
    :catch_18
    move-exception p1

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending accessibility button availability change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    :cond_31
    :goto_31
    return-void
.end method

.method private notifyAccessibilityButtonClickedInternal()V
    .registers 4

    .line 1191
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1192
    if-eqz v0, :cond_23

    .line 1194
    :try_start_6
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1197
    goto :goto_23

    .line 1195
    :catch_a
    move-exception v0

    .line 1196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending accessibility button click to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractAccessibilityServiceConnection"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    :cond_23
    :goto_23
    return-void
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .registers 7

    .line 1075
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1080
    if-nez v1, :cond_9

    .line 1081
    monitor-exit v0

    return-void

    .line 1087
    :cond_9
    if-nez p2, :cond_1c

    .line 1104
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    .line 1105
    if-nez p2, :cond_17

    .line 1106
    monitor-exit v0

    return-void

    .line 1108
    :cond_17
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1110
    :cond_1c
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 1111
    iget p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_30

    .line 1113
    :cond_2a
    const/4 p1, 0x0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1115
    :goto_30
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1116
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_63

    .line 1119
    :try_start_35
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_3e
    .catchall {:try_start_35 .. :try_end_38} :catchall_3c

    .line 1126
    :goto_38
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1127
    goto :goto_5e

    .line 1126
    :catchall_3c
    move-exception p1

    goto :goto_5f

    .line 1123
    :catch_3e
    move-exception p1

    .line 1124
    :try_start_3f
    const-string p3, "AbstractAccessibilityServiceConnection"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during sending "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_3f .. :try_end_5d} :catchall_3c

    goto :goto_38

    .line 1128
    :goto_5e
    return-void

    .line 1126
    :goto_5f
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw p1

    .line 1116
    :catchall_63
    move-exception p1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p1
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .registers 4

    .line 1234
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_12

    .line 1237
    :try_start_6
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1241
    goto :goto_12

    .line 1238
    :catch_a
    move-exception v0

    .line 1239
    const-string v1, "AbstractAccessibilityServiceConnection"

    const-string v2, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    :cond_12
    :goto_12
    return-void
.end method

.method private notifyGestureInternal(I)V
    .registers 5

    .line 1222
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_2b

    .line 1225
    :try_start_6
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1229
    goto :goto_2b

    .line 1226
    :catch_a
    move-exception v0

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during sending gesture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    :cond_2b
    :goto_2b
    return-void
.end method

.method private notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V
    .registers 12

    .line 1164
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1165
    if-eqz v0, :cond_28

    .line 1167
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_b
    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 1170
    goto :goto_28

    .line 1168
    :catch_f
    move-exception p1

    .line 1169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error sending magnification changes to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AbstractAccessibilityServiceConnection"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    :cond_28
    :goto_28
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .registers 4

    .line 1179
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_23

    .line 1182
    :try_start_6
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1186
    goto :goto_23

    .line 1183
    :catch_a
    move-exception p1

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    :cond_23
    :goto_23
    return-void
.end method

.method private registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z
    .registers 4

    .line 866
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 867
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 868
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 869
    const/4 p1, 0x1

    return p1

    .line 871
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .registers 4

    .line 1259
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    .line 1260
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return p1

    .line 1262
    :cond_a
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1d

    .line 1263
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 1264
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    return p1

    .line 1265
    :cond_15
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1d

    .line 1266
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    return p1

    .line 1269
    :cond_1d
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .registers 3

    .line 1252
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_c

    .line 1253
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result p1

    return p1

    .line 1255
    :cond_c
    return p1
.end method

.method private wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1043
    return v1

    .line 1046
    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1c

    .line 1047
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1c

    .line 1049
    return v1

    .line 1052
    :cond_1c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1053
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_26

    .line 1054
    return v1

    .line 1057
    :cond_26
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1058
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1059
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_38

    :cond_37
    const/4 p1, 0x0

    .line 1061
    :goto_38
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    :cond_44
    const/4 v1, 0x1

    :cond_45
    return v1
.end method


# virtual methods
.method public canReceiveEventsLocked()Z
    .registers 2

    .line 331
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
    .registers 6

    .line 936
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string p3, "AbstractAccessibilityServiceConnection"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 937
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 938
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service[label="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 939
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 938
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 940
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", feedbackType"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 941
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 940
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 942
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", capabilities="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 943
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 944
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 943
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 945
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 946
    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 947
    monitor-exit p1

    .line 948
    return-void

    .line 947
    :catchall_9d
    move-exception p2

    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_e .. :try_end_9f} :catchall_9d

    throw p2
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    move-object/from16 v0, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 562
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 563
    const/4 v3, 0x1

    :try_start_a
    iput-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 565
    monitor-exit v2

    return-object v4

    .line 567
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v7

    .line 568
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 569
    invoke-virtual {v3, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    .line 570
    if-nez v3, :cond_23

    .line 571
    monitor-exit v2

    return-object v4

    .line 573
    :cond_23
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v3

    .line 574
    if-nez v3, :cond_2d

    .line 575
    monitor-exit v2

    return-object v4

    .line 578
    :cond_2d
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 580
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 581
    move-object v1, v4

    .line 583
    :cond_39
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v18

    .line 584
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_bb

    .line 585
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 586
    return-object v4

    .line 588
    :cond_49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 589
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p5

    move/from16 v8, p4

    move v9, v15

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v13

    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 593
    :try_start_5e
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    iget v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int v14, v2, p6

    move-wide/from16 v9, p2

    move-object v11, v1

    move/from16 v12, p4

    move-wide/from16 v16, p7

    move-object/from16 v19, p9

    invoke-interface/range {v8 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    .line 596
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 597
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 596
    invoke-virtual {v0, v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_80} :catch_a7
    .catchall {:try_start_5e .. :try_end_80} :catchall_93

    .line 603
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    if-eqz v1, :cond_92

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 606
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 596
    :cond_92
    return-object v0

    .line 603
    :catchall_93
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    if-eqz v1, :cond_a6

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 606
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    :cond_a6
    throw v0

    .line 598
    :catch_a7
    move-exception v0

    .line 603
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    if-eqz v1, :cond_ba

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 606
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 609
    :cond_ba
    return-object v4

    .line 584
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    move-object/from16 v0, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 503
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 504
    const/4 v3, 0x1

    :try_start_a
    iput-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 506
    monitor-exit v2

    return-object v4

    .line 508
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v7

    .line 509
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 510
    invoke-virtual {v3, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    .line 511
    if-nez v3, :cond_23

    .line 512
    monitor-exit v2

    return-object v4

    .line 514
    :cond_23
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v3

    .line 515
    if-nez v3, :cond_2d

    .line 516
    monitor-exit v2

    return-object v4

    .line 519
    :cond_2d
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 521
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 522
    move-object v1, v4

    .line 524
    :cond_39
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v19

    .line 525
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_ba

    .line 526
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 527
    return-object v4

    .line 529
    :cond_49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 530
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move/from16 v8, p5

    move/from16 v9, v16

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v14

    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 534
    :try_start_5f
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    iget v15, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move-object v12, v1

    move/from16 v13, p5

    move-wide/from16 v17, p7

    invoke-interface/range {v8 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 537
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 538
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 537
    invoke-virtual {v0, v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_7f} :catch_a6
    .catchall {:try_start_5f .. :try_end_7f} :catchall_92

    .line 544
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    if-eqz v1, :cond_91

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 547
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 537
    :cond_91
    return-object v0

    .line 544
    :catchall_92
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    if-eqz v1, :cond_a5

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 547
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    :cond_a5
    throw v0

    .line 539
    :catch_a6
    move-exception v0

    .line 544
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 546
    if-eqz v1, :cond_b9

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 547
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 550
    :cond_b9
    return-object v4

    .line 525
    :catchall_ba
    move-exception v0

    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    move-object/from16 v0, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 444
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    const/4 v3, 0x1

    :try_start_a
    iput-boolean v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 447
    monitor-exit v2

    return-object v4

    .line 449
    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v7

    .line 450
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 451
    invoke-virtual {v3, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    .line 452
    if-nez v3, :cond_23

    .line 453
    monitor-exit v2

    return-object v4

    .line 455
    :cond_23
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v3

    .line 456
    if-nez v3, :cond_2d

    .line 457
    monitor-exit v2

    return-object v4

    .line 460
    :cond_2d
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 462
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 463
    move-object v1, v4

    .line 465
    :cond_39
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v19

    .line 466
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_ba

    .line 467
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 468
    return-object v4

    .line 470
    :cond_49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 471
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move/from16 v8, p5

    move/from16 v9, v16

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v14

    .line 473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 475
    :try_start_5f
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    iget v15, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move-object v12, v1

    move/from16 v13, p5

    move-wide/from16 v17, p7

    invoke-interface/range {v8 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 478
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 479
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 478
    invoke-virtual {v0, v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_7f} :catch_a6
    .catchall {:try_start_5f .. :try_end_7f} :catchall_92

    .line 485
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    if-eqz v1, :cond_91

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 478
    :cond_91
    return-object v0

    .line 485
    :catchall_92
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    if-eqz v1, :cond_a5

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    :cond_a5
    throw v0

    .line 480
    :catch_a6
    move-exception v0

    .line 485
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    if-eqz v1, :cond_b9

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 491
    :cond_b9
    return-object v4

    .line 466
    :catchall_ba
    move-exception v0

    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    move-object/from16 v0, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 621
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 622
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 623
    monitor-exit v2

    return-object v4

    .line 625
    :cond_12
    move/from16 v3, p1

    move/from16 v8, p4

    invoke-direct {v0, v3, v8}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v11

    .line 627
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 628
    invoke-virtual {v3, v0, v11}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    .line 629
    if-nez v3, :cond_24

    .line 630
    monitor-exit v2

    return-object v4

    .line 632
    :cond_24
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v3

    .line 633
    if-nez v3, :cond_2e

    .line 634
    monitor-exit v2

    return-object v4

    .line 637
    :cond_2e
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v11, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 639
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 640
    move-object v1, v4

    .line 642
    :cond_3a
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v16

    .line 643
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_bb

    .line 644
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 645
    return-object v4

    .line 647
    :cond_4a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 648
    iget-object v9, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v10, p6

    move/from16 v12, p5

    move v13, v2

    move-wide/from16 v14, p7

    invoke-interface/range {v9 .. v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v11

    .line 650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 652
    :try_start_5f
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v5

    iget v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object v9, v1

    move/from16 v10, p5

    move v13, v2

    move-wide/from16 v14, p7

    invoke-interface/range {v5 .. v16}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 655
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 656
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v5

    .line 655
    invoke-virtual {v0, v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_80} :catch_a7
    .catchall {:try_start_5f .. :try_end_80} :catchall_93

    .line 662
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    if-eqz v1, :cond_92

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 665
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 655
    :cond_92
    return-object v0

    .line 662
    :catchall_93
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    if-eqz v1, :cond_a6

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 665
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    :cond_a6
    throw v0

    .line 657
    :catch_a7
    move-exception v0

    .line 662
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    if-eqz v1, :cond_ba

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 665
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 668
    :cond_ba
    return-object v4

    .line 643
    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    move-object/from16 v0, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 680
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 681
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    .line 682
    monitor-exit v2

    return-object v4

    .line 684
    :cond_12
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v7

    .line 685
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 686
    invoke-virtual {v3, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    .line 687
    if-nez v3, :cond_20

    .line 688
    monitor-exit v2

    return-object v4

    .line 690
    :cond_20
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v3, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v3

    .line 691
    if-nez v3, :cond_2a

    .line 692
    monitor-exit v2

    return-object v4

    .line 695
    :cond_2a
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v5, v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 697
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 698
    move-object v1, v4

    .line 700
    :cond_36
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v5, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v19

    .line 701
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_b7

    .line 702
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 703
    return-object v4

    .line 705
    :cond_46
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 706
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v6, p6

    move/from16 v8, p5

    move/from16 v9, v16

    move-wide/from16 v10, p7

    invoke-interface/range {v5 .. v11}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v14

    .line 708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 710
    :try_start_5c
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    iget v15, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move-object v12, v1

    move/from16 v13, p5

    move-wide/from16 v17, p7

    invoke-interface/range {v8 .. v19}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 713
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 714
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getUid()I

    move-result v7

    .line 713
    invoke-virtual {v0, v2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_7c} :catch_a3
    .catchall {:try_start_5c .. :try_end_7c} :catchall_8f

    .line 720
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    if-eqz v1, :cond_8e

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 723
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 713
    :cond_8e
    return-object v0

    .line 720
    :catchall_8f
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    if-eqz v1, :cond_a2

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 723
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    :cond_a2
    throw v0

    .line 715
    :catch_a3
    move-exception v0

    .line 720
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    if-eqz v1, :cond_b6

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 723
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 726
    :cond_b6
    return-object v4

    .line 701
    :catchall_b7
    move-exception v0

    :try_start_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v0
.end method

.method public getCapabilities()I
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1273
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getMagnificationCenterX(I)F
    .registers 8

    .line 822
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 824
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 826
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 827
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 828
    nop

    .line 829
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    .line 832
    :try_start_1b
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterX(I)F

    move-result v5
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 834
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    if-eqz v2, :cond_27

    .line 836
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_27
    monitor-exit v0

    .line 832
    return v5

    .line 834
    :catchall_29
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 835
    if-eqz v2, :cond_32

    .line 836
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_32
    throw v5

    .line 839
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_33

    throw p1
.end method

.method public getMagnificationCenterY(I)F
    .registers 8

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 846
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 848
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 849
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 850
    nop

    .line 851
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 852
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    .line 854
    :try_start_1b
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterY(I)F

    move-result v5
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    .line 856
    :try_start_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    if-eqz v2, :cond_27

    .line 858
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_27
    monitor-exit v0

    .line 854
    return v5

    .line 856
    :catchall_29
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    if-eqz v2, :cond_32

    .line 858
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_32
    throw v5

    .line 861
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_33

    throw p1
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .registers 8

    .line 798
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_3
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 800
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_f

    .line 801
    monitor-exit v0

    return-object v1

    .line 803
    :cond_f
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 804
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    .line 805
    nop

    .line 806
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v3

    .line 807
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_36

    .line 809
    :try_start_1e
    invoke-virtual {v2, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 810
    nop

    .line 812
    :try_start_22
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    if-eqz v3, :cond_2a

    .line 814
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_2a
    monitor-exit v0

    .line 810
    return-object v1

    .line 812
    :catchall_2c
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    if-eqz v3, :cond_35

    .line 814
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_35
    throw v1

    .line 817
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public getMagnificationScale(I)F
    .registers 5

    .line 783
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 785
    const/high16 p1, 0x3f800000  # 1.0f

    monitor-exit v0

    return p1

    .line 787
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_25

    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 790
    :try_start_12
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result p1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 792
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 790
    return p1

    .line 792
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 787
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method getRelevantEventTypes()I
    .registers 3

    .line 351
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_8

    const v0, 0x41b83d

    goto :goto_a

    .line 352
    :cond_8
    const/16 v0, 0x20

    :goto_a
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v0, v1

    .line 351
    return v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 343
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 413
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 415
    monitor-exit v0

    return-object v2

    .line 417
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 418
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 419
    if-nez v1, :cond_1b

    .line 420
    monitor-exit v0

    return-object v2

    .line 422
    :cond_1b
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 423
    monitor-exit v0

    return-object v2

    .line 425
    :cond_25
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    .line 426
    if-eqz p1, :cond_38

    .line 427
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    .line 428
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 429
    monitor-exit v0

    return-object p1

    .line 431
    :cond_38
    monitor-exit v0

    return-object v2

    .line 432
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public getWindows()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->ensureWindowsAvailableTimed()V

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 384
    monitor-exit v0

    return-object v2

    .line 386
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 387
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 388
    if-nez v1, :cond_1b

    .line 389
    monitor-exit v0

    return-object v2

    .line 391
    :cond_1b
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v1, :cond_23

    .line 392
    monitor-exit v0

    return-object v2

    .line 394
    :cond_23
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 395
    monitor-exit v0

    return-object v2

    .line 397
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 399
    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v2, :cond_57

    .line 400
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 401
    nop

    .line 402
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 403
    iget v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 404
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 406
    :cond_57
    monitor-exit v0

    return-object v1

    .line 407
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method protected abstract isCalledForCurrentUserLocked()Z
.end method

.method public isConnectedLocked()Z
    .registers 2

    .line 990
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
    .registers 3

    .line 770
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 771
    return v1

    .line 773
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 774
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 775
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1

    .line 778
    :cond_26
    return v1
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result p1

    return p1
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .registers 3

    .line 1155
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1156
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .registers 2

    .line 1151
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked()V

    .line 1152
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 12

    .line 994
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 997
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 998
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

    .line 1000
    :goto_1a
    if-nez v2, :cond_20

    if-nez v3, :cond_20

    .line 1001
    monitor-exit v0

    return-void

    .line 1004
    :cond_20
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1005
    monitor-exit v0

    return-void

    .line 1010
    :cond_2a
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1012
    iget-wide v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_58

    const/16 v3, 0x800

    if-eq v1, v3, :cond_58

    .line 1015
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 1016
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1017
    if-eqz v3, :cond_51

    .line 1018
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1021
    :cond_51
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1022
    goto :goto_5e

    .line 1024
    :cond_58
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1026
    :goto_5e
    if-eqz v2, :cond_61

    goto :goto_62

    :cond_61
    move v4, v5

    :goto_62
    iput v4, p1, Landroid/os/Message;->arg1:I

    .line 1028
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1029
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
    :catchall_6d
    move-exception p1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw p1
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .registers 3

    .line 1136
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1138
    return-void
.end method

.method public notifyGesture(I)V
    .registers 5

    .line 1131
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1132
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .registers 12

    .line 1142
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1143
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1144
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .registers 3

    .line 1147
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1148
    return-void
.end method

.method public onAdded()V
    .registers 7

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 953
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/16 v4, 0x7f0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 956
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    nop

    .line 958
    return-void

    .line 956
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .registers 5

    .line 271
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_a

    goto :goto_28

    .line 274
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    .line 276
    return v1

    .line 278
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 279
    return v1

    .line 282
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_26

    .line 285
    nop

    .line 286
    const/4 p1, 0x1

    return p1

    .line 283
    :catch_26
    move-exception p1

    .line 284
    return v1

    .line 272
    :cond_28
    :goto_28
    return v1
.end method

.method public onRemoved()V
    .registers 7

    .line 961
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 963
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    nop

    .line 967
    return-void

    .line 965
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    move-object v0, p0

    .line 740
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 741
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 742
    monitor-exit v1

    return v3

    .line 744
    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v5

    .line 745
    iget-object v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 746
    monitor-exit v1

    return v3

    .line 748
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_3a

    .line 749
    iget-object v1, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 750
    return v3

    .line 752
    :cond_25
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    iget v12, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 753
    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-wide/from16 v13, p8

    invoke-interface/range {v4 .. v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v0

    .line 755
    return v0

    .line 748
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public performGlobalAction(I)Z
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_c

    .line 762
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 764
    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14

    .line 765
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/GlobalActionPerformer;->performGlobalAction(I)Z

    move-result p1

    return p1

    .line 764
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public resetLocked()V
    .registers 4

    .line 970
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    .line 974
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_15

    .line 975
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    .line 979
    :cond_15
    goto :goto_17

    .line 977
    :catch_16
    move-exception v1

    .line 980
    :goto_17
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 981
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 982
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 985
    :cond_21
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 986
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 987
    return-void
.end method

.method public resetMagnification(IZ)Z
    .registers 7

    .line 876
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 878
    monitor-exit v0

    return v2

    .line 880
    :cond_c
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 881
    monitor-exit v0

    return v2

    .line 883
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_37

    .line 884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 886
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 887
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    .line 888
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->reset(IZ)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 889
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result p1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    if-nez p1, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    .line 891
    :cond_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 888
    return v2

    .line 891
    :catchall_32
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 883
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .registers 3

    .line 731
    return-void
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5

    .line 290
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 291
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 292
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 293
    if-eqz v0, :cond_15

    .line 294
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 296
    :cond_15
    iget-wide v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 297
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 300
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_38

    .line 301
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_3e

    .line 303
    :cond_38
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 307
    :cond_3e
    :goto_3e
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4b

    .line 308
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_51

    .line 310
    :cond_4b
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 313
    :goto_51
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_59

    move v0, v1

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 315
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_64

    move v0, v1

    goto :goto_65

    :cond_64
    move v0, v2

    :goto_65
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 317
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6f

    move v0, v1

    goto :goto_70

    :cond_6f
    move v0, v2

    :goto_70
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 319
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7a

    move v0, v1

    goto :goto_7b

    :cond_7a
    move v0, v2

    :goto_7b
    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 321
    iget p1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_84

    goto :goto_85

    :cond_84
    move v1, v2

    :goto_85
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 323
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .registers 4

    .line 922
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V

    .line 923
    return-void
.end method

.method public setMagnificationScaleAndCenter(IFFFZ)Z
    .registers 16

    .line 898
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 899
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCalledForCurrentUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 900
    monitor-exit v7

    return v3

    .line 902
    :cond_c
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 903
    monitor-exit v7

    return v3

    .line 905
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3f

    .line 907
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 908
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    .line 909
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 910
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 912
    :cond_29
    iget v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 913
    move-object v0, v2

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result v0
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_3a

    .line 915
    :try_start_35
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7

    .line 912
    return v0

    .line 915
    :catchall_3a
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 917
    :catchall_3f
    move-exception v0

    monitor-exit v7
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    .line 337
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 6

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 359
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_24

    .line 363
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 364
    if-eqz v3, :cond_12

    .line 365
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 366
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_15

    .line 368
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 370
    :goto_15
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 371
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_21

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    nop

    .line 375
    return-void

    .line 371
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 373
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .registers 3

    .line 931
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 932
    return-void
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 3

    .line 326
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
