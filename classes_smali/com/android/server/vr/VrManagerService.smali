.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$VrState;,
        Lcom/android/server/vr/VrManagerService$SettingEvent;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_LOG_SIZE:I = 0x40

.field private static final FLAG_ALL:I = 0x7

.field private static final FLAG_AWAKE:I = 0x1

.field private static final FLAG_KEYGUARD_UNLOCKED:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SCREEN_ON:I = 0x2

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_PERSISTENT_VR_MODE_STATE_CHANGE:I = 0x2

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mBootsToVr:Z

.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mDefaultVrService:Landroid/content/ComponentName;

.field private final mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mLogLimitHit:Z

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/utils/ManagedApplicationService$LogFormattable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPersistentVrModeEnabled:Z

.field private final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IPersistentVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private mRunning2dInVr:Z

.field private mStandby:Z

.field private mSystemSleepFlags:I

.field private mUseStandbyToExitVrMode:Z

.field private mUserUnlocked:Z

.field private mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field private mVrAppProcessId:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeAllowed:Z

.field private mVrModeEnabled:Z

.field private final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mWasDefaultGranted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 434
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 750
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 134
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 151
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 153
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 155
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    .line 156
    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    .line 159
    new-instance p1, Ljava/util/ArrayDeque;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 160
    new-instance p1, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 163
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 177
    new-instance p1, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 305
    new-instance p1, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 533
    new-instance p1, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 751
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/vr/VrManagerService;)I
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setStandbyEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/vr/VrManagerService;)I
    .registers 1

    .line 109
    iget p0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return p0
.end method

.method static synthetic access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 6

    .line 109
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->setUserUnlocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/vr/VrManagerService;)Z
    .registers 1

    .line 109
    iget-boolean p0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    .line 109
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method private addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3

    .line 1413
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1414
    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 3

    .line 1405
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1406
    return-void
.end method

.method private callFocusedActivityChangedLocked()V
    .registers 6

    .line 995
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 996
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 997
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 998
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    new-instance v4, Lcom/android/server/vr/VrManagerService$6;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/vr/VrManagerService$6;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    .line 1009
    return-void
.end method

.method private changeVrModeLocked(Z)V
    .registers 3

    .line 1151
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_2d

    .line 1152
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VR mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_17

    const-string v0, "enabled"

    goto :goto_19

    :cond_17
    const-string v0, "disabled"

    :goto_19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VrManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {p1}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 1158
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    .line 1160
    :cond_2d
    return-void
.end method

.method private consumeAndApplyPendingStateLocked()V
    .registers 2

    .line 1201
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 1202
    return-void
.end method

.method private consumeAndApplyPendingStateLocked(Z)V
    .registers 10

    .line 1212
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_22

    .line 1213
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v3, p1, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v4, p1, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v5, p1, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v6, p1, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v7, p1, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1216
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    goto :goto_2e

    .line 1217
    :cond_22
    if-eqz p1, :cond_2e

    .line 1218
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1220
    :cond_2e
    :goto_2e
    return-void
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .registers 5

    .line 1138
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1139
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VrManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void
.end method

.method private createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 14

    .line 1189
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v8, v0

    goto :goto_9

    .line 1190
    :cond_7
    const/4 v0, 0x3

    move v8, v0

    .line 1191
    :goto_9
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p1

    return-object p1
.end method

.method private createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 14

    .line 1177
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v8, v0

    goto :goto_9

    .line 1178
    :cond_7
    const/4 v0, 0x2

    move v8, v0

    .line 1179
    :goto_9
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104074d

    sget-object v6, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    const-string v5, "android.settings.VR_LISTENER_SETTINGS"

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p1

    return-object p1
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1240
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1241
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1242
    :try_start_a
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 1243
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    const-string v2, "None"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    if-eqz v2, :cond_25

    .line 1248
    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    :cond_25
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1252
    invoke-interface {v3, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    goto :goto_2b

    .line 1254
    :cond_3f
    monitor-exit v1

    .line 1255
    return-void

    .line 1254
    :catchall_41
    move-exception p1

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw p1
.end method

.method private varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .registers 6

    .line 692
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 693
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 695
    return-void

    .line 692
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 698
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1116
    const-string v0, ""

    if-eqz p0, :cond_39

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_39

    .line 1120
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    const/4 v2, 0x1

    .line 1122
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1123
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1124
    goto :goto_15

    .line 1126
    :cond_28
    if-nez v2, :cond_2f

    .line 1127
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1129
    :cond_2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    const/4 v2, 0x0

    .line 1131
    goto :goto_15

    .line 1132
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1117
    :cond_39
    :goto_39
    return-object v0
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1100
    const-string v0, "enabled_notification_listeners"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1103
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 1104
    if-eqz p1, :cond_25

    .line 1105
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1106
    array-length v0, p1

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_25

    aget-object v2, p1, v1

    .line 1107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1108
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1106
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1112
    :cond_25
    return-object p2
.end method

.method private getPersistentVrMode()Z
    .registers 3

    .line 1427
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    monitor-exit v0

    return v1

    .line 1429
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getStateAsString()Ljava/lang/String;
    .registers 4

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x1

    const-string v2, ""

    if-eqz v1, :cond_10

    const-string v1, "awake, "

    goto :goto_11

    :cond_10
    move-object v1, v2

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "screen_on, "

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2a

    const-string v2, "keyguard_off"

    :cond_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method private getVr2dDisplayId()I
    .registers 3

    .line 1333
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_9

    .line 1334
    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->getVirtualDisplayId()I

    move-result v0

    return v0

    .line 1336
    :cond_9
    const-string v0, "VrManagerService"

    const-string v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v0, -0x1

    return v0
.end method

.method private getVrMode()Z
    .registers 3

    .line 1421
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    monitor-exit v0

    return v1

    .line 1423
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 6

    .line 1066
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1068
    :try_start_8
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_16} :catch_17

    .line 1074
    goto :goto_33

    .line 1070
    :catch_17
    move-exception p2

    .line 1072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not grant coarse location permission, package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was removed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VrManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_33
    :goto_33
    return-void
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 7

    .line 1040
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1041
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1042
    const-string v2, "android.service.notification.NotificationListenerService"

    const-string v3, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v1, p2, v2, v3}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1046
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1047
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1048
    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1050
    :cond_36
    goto :goto_1c

    .line 1051
    :cond_37
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 4

    .line 1027
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1028
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1029
    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .registers 5

    .line 1385
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 1387
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .registers 6

    .line 1391
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1393
    monitor-exit v0

    return v2

    .line 1395
    :cond_a
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1396
    invoke-virtual {p1}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result p1

    if-ne p2, p1, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    nop

    :goto_25
    monitor-exit v0

    .line 1395
    return v2

    .line 1397
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .registers 4

    .line 1012
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1014
    nop

    .line 1016
    const/16 v1, 0x80

    :try_start_9
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_d} :catch_e

    .line 1018
    goto :goto_10

    .line 1017
    :catch_e
    move-exception p1

    const/4 p1, 0x0

    .line 1020
    :goto_10
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_21

    .line 1023
    :cond_1f
    const/4 p1, 0x1

    return p1

    .line 1021
    :cond_21
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 1093
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p1

    .line 1095
    and-int/lit8 p1, p1, 0x3

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method private logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 5

    .line 1230
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 1231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_15

    .line 1232
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    .line 1235
    :cond_15
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1236
    monitor-exit v0

    .line 1237
    return-void

    .line 1236
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private logStateLocked()V
    .registers 10

    .line 1223
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_c

    .line 1224
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v4, v0

    .line 1225
    :goto_c
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v6, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1227
    return-void
.end method

.method private onVrModeChangedLocked()V
    .registers 4

    .line 1168
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1169
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1168
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1170
    return-void
.end method

.method private removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3

    .line 1417
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1418
    return-void
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 3

    .line 1409
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1410
    return-void
.end method

.method private revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 6

    .line 1080
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1082
    :try_start_8
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_16} :catch_17

    .line 1088
    goto :goto_33

    .line 1084
    :catch_17
    move-exception p2

    .line 1086
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not revoke coarse location permission, package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was removed."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VrManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_33
    :goto_33
    return-void
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 7

    .line 1054
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1055
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v1

    .line 1057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1058
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1059
    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1061
    :cond_2e
    goto :goto_12

    .line 1062
    :cond_2f
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 4

    .line 1032
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1034
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 1036
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1037
    return-void
.end method

.method private setAndBindCompositor(Landroid/content/ComponentName;)V
    .registers 6

    .line 1341
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1342
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1344
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 1345
    :try_start_b
    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 1346
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    nop

    .line 1350
    return-void

    .line 1346
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 1348
    :catchall_17
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private setPersistentModeAndNotifyListenersLocked(Z)V
    .registers 5

    .line 1372
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v0, p1, :cond_5

    .line 1373
    return-void

    .line 1375
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistent VR mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v1, "enabled"

    goto :goto_16

    :cond_14
    const-string v1, "disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    const-string v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1378
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1380
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 1381
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    const/4 v2, 0x0

    .line 1380
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1382
    return-void
.end method

.method private setPersistentVrModeEnabled(Z)V
    .registers 9

    .line 1309
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 1312
    if-nez p1, :cond_11

    .line 1313
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1315
    :cond_11
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private setScreenOn(Z)V
    .registers 3

    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 252
    return-void
.end method

.method private setStandbyEnabled(Z)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-nez v1, :cond_10

    .line 297
    const-string p1, "VrManagerService"

    const-string v1, "Attempting to set standby mode on a non-standalone device"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v0

    return-void

    .line 300
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    .line 301
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 302
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private setSystemState(IZ)V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 267
    if-eqz p2, :cond_d

    .line 268
    iget p2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    goto :goto_13

    .line 270
    :cond_d
    iget p2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 272
    :goto_13
    iget p1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v1, p1, :cond_1a

    .line 274
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 276
    :cond_1a
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private setUserUnlocked()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 290
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 22

    .line 1263
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1269
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_13

    :try_start_9
    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v3, :cond_e

    goto :goto_13

    :cond_e
    move v3, v1

    goto :goto_14

    .line 1305
    :catchall_10
    move-exception v0

    goto/16 :goto_69

    .line 1269
    :cond_13
    :goto_13
    move v3, v2

    .line 1270
    :goto_14
    if-nez p1, :cond_1c

    iget-boolean v4, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    .line 1271
    :goto_1d
    if-eqz v4, :cond_23

    .line 1272
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    move-object v5, v1

    goto :goto_25

    .line 1274
    :cond_23
    move-object/from16 v5, p2

    .line 1277
    :goto_25
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    move-object v9, v1

    move v10, v3

    move v11, v4

    move-object v12, v5

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1280
    iget-boolean v6, v0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v6, :cond_3c

    .line 1284
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1285
    monitor-exit v8

    return-void

    .line 1288
    :cond_3c
    if-nez v3, :cond_51

    iget-object v6, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v6, :cond_51

    .line 1291
    iget-object v3, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v3, :cond_4d

    .line 1292
    iget-object v3, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1296
    :cond_4d
    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1297
    monitor-exit v8

    return-void

    .line 1299
    :cond_51
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1300
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1303
    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1305
    monitor-exit v8

    .line 1306
    return-void

    .line 1305
    :goto_69
    monitor-exit v8
    :try_end_6a
    .catchall {:try_start_9 .. :try_end_6a} :catchall_10

    throw v0
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .registers 6

    .line 1353
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    const-string v1, "VrManagerService"

    if-eqz v0, :cond_29

    .line 1354
    invoke-virtual {v0, p2, p1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting compositor service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1356
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1355
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1362
    :cond_29
    if-eqz p2, :cond_4e

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_4e

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting compositor service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    invoke-direct {p0, p2, p1}, Lcom/android/server/vr/VrManagerService;->createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1367
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {p1}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1369
    :cond_4e
    return-void
.end method

.method private updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    .registers 24

    .line 902
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    .line 903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 906
    :try_start_e
    iget-object v7, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v7

    if-nez v7, :cond_18

    const/4 v7, 0x1

    goto :goto_19

    :cond_18
    const/4 v7, 0x0

    .line 908
    :goto_19
    if-eqz v7, :cond_1f

    if-eqz p1, :cond_1f

    const/4 v10, 0x1

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 909
    :goto_20
    iget-boolean v11, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_11e

    if-nez v11, :cond_2b

    if-nez v10, :cond_2b

    .line 910
    nop

    .line 990
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    return v7

    .line 913
    :cond_2b
    :try_start_2b
    iget-object v11, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v12, 0x0

    if-eqz v11, :cond_3b

    .line 914
    iget-object v11, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_3c

    :cond_3b
    move-object v11, v12

    .line 915
    :goto_3c
    iget v13, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 918
    invoke-direct {v0, v10}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_11e

    .line 920
    nop

    .line 921
    const/16 v14, -0x2710

    const-string v15, " for user "

    const-string v8, "VrManagerService"

    if-nez v10, :cond_86

    .line 923
    :try_start_4a
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v2, :cond_82

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Leaving VR mode, disconnecting "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 925
    invoke-virtual {v10}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 926
    invoke-virtual {v10}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 928
    invoke-direct {v0, v14, v12}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 929
    iput-object v12, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v9, 0x0

    const/16 v16, 0x0

    goto :goto_d4

    .line 931
    :cond_82
    const/4 v9, 0x0

    const/16 v16, 0x1

    goto :goto_d4

    .line 935
    :cond_86
    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v10, :cond_ce

    .line 938
    iget-object v10, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v10, v2, v3}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 939
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VR mode component changed to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", disconnecting "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 940
    invoke-virtual {v9}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 941
    invoke-virtual {v9}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 939
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {v0, v14, v12}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 943
    invoke-direct {v0, v2, v3}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 944
    const/4 v9, 0x1

    const/16 v16, 0x0

    goto :goto_d4

    .line 946
    :cond_ca
    const/4 v9, 0x0

    const/16 v16, 0x1

    goto :goto_d4

    .line 952
    :cond_ce
    invoke-direct {v0, v2, v3}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 953
    const/4 v9, 0x1

    const/16 v16, 0x0

    .line 957
    :goto_d4
    if-nez v4, :cond_da

    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v2, :cond_e2

    :cond_da
    iget-object v2, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 958
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    :cond_e2
    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    if-eq v2, v1, :cond_e7

    .line 960
    :cond_e6
    const/4 v9, 0x1

    .line 962
    :cond_e7
    iput-object v4, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 963
    iput-boolean v1, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 964
    move/from16 v1, p5

    iput v1, v0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 966
    iget v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    if-eq v1, v3, :cond_f6

    .line 967
    iput v3, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 968
    const/4 v9, 0x1

    .line 971
    :cond_f6
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_105

    .line 972
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    goto :goto_106

    :cond_105
    nop

    .line 973
    :goto_106
    iget v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 977
    invoke-direct {v0, v12, v1, v11, v13}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    .line 980
    iget-object v1, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_114

    if-eqz v9, :cond_114

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    .line 984
    :cond_114
    if-nez v16, :cond_119

    .line 985
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_119
    .catchall {:try_start_4a .. :try_end_119} :catchall_11e

    .line 988
    :cond_119
    nop

    .line 990
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 988
    return v7

    .line 990
    :catchall_11e
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7

    .line 871
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 872
    return-void

    .line 874
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 877
    :try_start_b
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    .line 879
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    nop

    .line 881
    return-void

    .line 879
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .registers 11

    .line 852
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 855
    if-eq p3, p2, :cond_19

    .line 856
    const/16 v2, 0x18

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object v1, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 861
    :cond_19
    const/4 p3, 0x0

    if-nez p1, :cond_20

    new-array p1, p3, [Ljava/lang/String;

    move-object v5, p1

    goto :goto_26

    .line 862
    :cond_20
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, p3

    move-object v5, v1

    .line 864
    :goto_26
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v1, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 866
    return-void
.end method

.method private updateVrModeAllowedLocked()V
    .registers 15

    .line 219
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 220
    :goto_d
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    .line 221
    :goto_18
    iget v4, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1f

    if-eqz v0, :cond_27

    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    if-eqz v0, :cond_27

    if-nez v3, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v2

    .line 223
    :goto_28
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v3, v0, :cond_7b

    .line 224
    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 226
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz v0, :cond_4c

    .line 227
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_39

    .line 228
    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 230
    :cond_39
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-nez v0, :cond_7b

    .line 231
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_7b

    .line 236
    :cond_4c
    invoke-direct {p0, v2}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 239
    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v8, :cond_6e

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_6e

    .line 240
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v9, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 241
    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v11

    iget v12, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_6f

    .line 242
    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 245
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 248
    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public synthetic lambda$onSwitchUser$0$VrManagerService()V
    .registers 3

    .line 829
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 831
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onAwakeStateChanged(Z)V
    .registers 3

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 257
    return-void
.end method

.method public onBootPhase(I)V
    .registers 10

    .line 769
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_b1

    .line 770
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 771
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 773
    nop

    .line 774
    const-string/jumbo p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 773
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 775
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 776
    :try_start_20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 777
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 778
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 779
    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string v2, "enabled_vr_listeners"

    const-string v4, "android.permission.BIND_VR_LISTENER_SERVICE"

    const-string v5, "android.service.vr.VrListenerService"

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    invoke-static/range {v0 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 785
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 786
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_ae

    .line 790
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    move-result-object p1

    .line 791
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 792
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    goto :goto_66

    .line 794
    :cond_5f
    const-string p1, "VrManagerService"

    const-string v0, "No default vr listener service found."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_66
    nop

    .line 798
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 799
    new-instance v0, Lcom/android/server/vr/Vr2dDisplay;

    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 801
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 802
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 804
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/server/vr/Vr2dDisplay;->init(Landroid/content/Context;Z)V

    .line 806
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 807
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_b1

    .line 786
    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v0

    .line 817
    :cond_b1
    :goto_b1
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    .line 846
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 847
    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 848
    monitor-exit p1

    .line 849
    return-void

    .line 848
    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onEnabledComponentChanged()V
    .registers 10

    .line 501
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 504
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v2, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 506
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 507
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 508
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-direct {p0, v4}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 510
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_33
    goto :goto_16

    .line 513
    :cond_34
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v1, v2}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 515
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v1, :cond_3f

    .line 516
    monitor-exit v0

    return-void

    .line 520
    :cond_3f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 522
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v1, :cond_49

    .line 523
    monitor-exit v0

    return-void

    .line 527
    :cond_49
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 528
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v6

    iget v7, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 527
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 530
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 3

    .line 261
    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 262
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 755
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_3
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 758
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_42

    .line 760
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.boot.vr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 761
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    .line 762
    const-string/jumbo v1, "persist.vr.use_standby_to_exit_vr_mode"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_27

    move v0, v2

    goto :goto_28

    :cond_27
    nop

    :goto_28
    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 763
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "vrmanager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 765
    return-void

    .line 758
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public onStartUser(I)V
    .registers 3

    .line 821
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 822
    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 823
    monitor-exit p1

    .line 824
    return-void

    .line 823
    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onStopUser(I)V
    .registers 3

    .line 838
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 839
    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 840
    monitor-exit p1

    .line 842
    return-void

    .line 840
    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 828
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;

    invoke-direct {v0, p0}, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 834
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 5

    .line 1320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1322
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v2, :cond_11

    .line 1323
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v2, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1d

    .line 1327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    return-void

    .line 1327
    :cond_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1328
    nop

    .line 1329
    const-string p1, "VrManagerService"

    const-string v0, "Vr2dDisplay is null!"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void

    .line 1327
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
