.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;,
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$SettingsAttrs;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;,
        Lcom/android/server/trust/TrustManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_DISPATCH_UNLOCK_LOCKOUT:I = 0xd

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REFRESH_DEVICE_LOCKED_FOR_USER:I = 0xe

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_SCHEDULE_TRUST_TIMEOUT:I = 0xf

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STOP_USER:I = 0xc

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "TrustManagerService.trustTimeoutForUser"

.field private static final TRUST_TIMEOUT_IN_MILLIS:J = 0xdbba00L

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceLockedForUser"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTrustUsuallyManagedForUser"
        }
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserIsTrusted"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersUnlockedByBiometric"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 101
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    const-string v1, "TrustManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 130
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 136
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 169
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 173
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 184
    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 1071
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    .line 1338
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 1402
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 188
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 189
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 190
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 191
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 192
    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 193
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 194
    new-instance p1, Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    .line 195
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/trust/TrustManagerService;)I
    .registers 1

    .line 99
    iget p0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 2

    .line 99
    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustManagerService;ZI)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/trust/TrustManagerService;IIZ)V
    .registers 4

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustTimeout(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .registers 5

    .line 971
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 972
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 973
    return-void

    .line 971
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 976
    :cond_1f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 978
    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .registers 6

    .line 930
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 931
    return v1

    .line 933
    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 934
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 935
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 936
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 937
    const/4 p1, 0x1

    return p1

    .line 933
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 941
    :cond_2c
    return v1
.end method

.method private aggregateIsTrusted(I)Z
    .registers 6

    .line 915
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 916
    return v1

    .line 918
    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 919
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 920
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 921
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 922
    const/4 p1, 0x1

    return p1

    .line 918
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 926
    :cond_2c
    return v1
.end method

.method private dispatchDeviceLocked(IZ)V
    .registers 6

    .line 709
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 710
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 711
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_22

    .line 712
    if-eqz p2, :cond_1d

    .line 713
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_22

    .line 715
    :cond_1d
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    .line 709
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 719
    :cond_25
    return-void
.end method

.method private dispatchEscrowTokenActivatedLocked(JI)V
    .registers 7

    .line 722
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 723
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 724
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p3, :cond_1a

    .line 725
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/trust/TrustAgentWrapper;->onEscrowTokenActivated(JI)V

    .line 722
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    :cond_1d
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .registers 8

    .line 990
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_34

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_34
    const/4 v0, 0x0

    if-nez p1, :cond_38

    move p3, v0

    .line 995
    :cond_38
    nop

    :goto_39
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_65

    .line 997
    :try_start_41
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_4c
    .catch Landroid/os/DeadObjectException; {:try_start_41 .. :try_end_4c} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4c} :catch_4d

    goto :goto_61

    .line 1002
    :catch_4d
    move-exception v2

    .line 1003
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 998
    :catch_54
    move-exception v2

    .line 999
    const-string v2, "Removing dead TrustListener."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1001
    add-int/lit8 v0, v0, -0x1

    .line 1004
    :goto_61
    nop

    .line 995
    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1006
    :cond_65
    return-void
.end method

.method private dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .registers 6

    .line 1026
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_20

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4d

    .line 1031
    :try_start_29
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_29 .. :try_end_34} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_49

    .line 1036
    :catch_35
    move-exception v2

    .line 1037
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .line 1032
    :catch_3c
    move-exception v2

    .line 1033
    const-string v2, "Removing dead TrustListener."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1035
    add-int/lit8 v0, v0, -0x1

    .line 1038
    :goto_49
    nop

    .line 1029
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1040
    :cond_4d
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .registers 7

    .line 1009
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_28

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 1014
    :try_start_31
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_3c} :catch_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_51

    .line 1019
    :catch_3d
    move-exception v2

    .line 1020
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 1015
    :catch_44
    move-exception v2

    .line 1016
    const-string v2, "Removing dead TrustListener."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1018
    add-int/lit8 v0, v0, -0x1

    .line 1021
    :goto_51
    nop

    .line 1012
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 1023
    :cond_55
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .registers 6

    .line 945
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 946
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    .line 948
    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZ)V

    .line 951
    :cond_c
    nop

    :goto_d
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 952
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 953
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_26

    .line 954
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 951
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 957
    :cond_29
    return-void
.end method

.method private dispatchUnlockLockout(II)V
    .registers 6

    .line 960
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 961
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 962
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1a

    .line 963
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    .line 960
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 966
    :cond_1d
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 4

    .line 837
    if-eqz p1, :cond_15

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_15

    .line 838
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 837
    :cond_15
    :goto_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2

    .line 882
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 883
    const v0, 0x1040168

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 884
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 885
    const/4 p0, 0x0

    return-object p0

    .line 887
    :cond_13
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .registers 11

    .line 782
    const-string v0, "TrustManagerService"

    const/4 v1, 0x0

    if-eqz p2, :cond_ea

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_ea

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_11

    goto/16 :goto_ea

    .line 784
    :cond_11
    nop

    .line 785
    nop

    .line 787
    nop

    .line 788
    nop

    .line 790
    const/4 v2, 0x0

    :try_start_16
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v4, "android.service.trust.trustagent"

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1e} :catch_9b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1e} :catch_8a
    .catchall {:try_start_16 .. :try_end_1e} :catchall_82

    .line 792
    if-nez v3, :cond_2c

    .line 793
    :try_start_20
    const-string p1, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_25} :catch_7f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_25} :catch_79
    .catchall {:try_start_20 .. :try_end_25} :catchall_77

    .line 794
    nop

    .line 821
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 794
    :cond_2b
    return-object v1

    .line 796
    :cond_2c
    :try_start_2c
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 797
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 799
    :goto_38
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v6, :cond_43

    if-eq v5, v7, :cond_43

    goto :goto_38

    .line 803
    :cond_43
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 804
    const-string/jumbo v6, "trust-agent"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 805
    const-string p1, "Meta-data does not start with trust-agent tag"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_55} :catch_7f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_55} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_55} :catch_79
    .catchall {:try_start_2c .. :try_end_55} :catchall_77

    .line 806
    nop

    .line 821
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 806
    return-object v1

    .line 808
    :cond_5a
    :try_start_5a
    sget-object v5, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 809
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 810
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_64} :catch_7f
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_64} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_64} :catch_79
    .catchall {:try_start_5a .. :try_end_64} :catchall_77

    .line 811
    const/4 v5, 0x3

    :try_start_65
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 813
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_6c} :catch_75
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6c} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_6c} :catch_71
    .catchall {:try_start_65 .. :try_end_6c} :catchall_77

    .line 821
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 823
    move-object p1, v1

    goto :goto_a2

    .line 818
    :catch_71
    move-exception p1

    goto :goto_8d

    .line 816
    :catch_73
    move-exception p1

    goto :goto_97

    .line 814
    :catch_75
    move-exception p1

    goto :goto_9e

    .line 821
    :catchall_77
    move-exception p1

    goto :goto_84

    .line 818
    :catch_79
    move-exception p1

    move-object v4, v1

    goto :goto_8d

    .line 816
    :catch_7c
    move-exception p1

    move-object v4, v1

    goto :goto_97

    .line 814
    :catch_7f
    move-exception p1

    move-object v4, v1

    goto :goto_9e

    .line 821
    :catchall_82
    move-exception p1

    move-object v3, v1

    :goto_84
    if-eqz v3, :cond_89

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_89
    throw p1

    .line 818
    :catch_8a
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    .line 819
    :goto_8d
    nop

    .line 821
    if-eqz v3, :cond_a2

    :goto_90
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_a2

    .line 816
    :catch_94
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    .line 817
    :goto_97
    nop

    .line 821
    if-eqz v3, :cond_a2

    goto :goto_90

    .line 814
    :catch_9b
    move-exception p1

    move-object v3, v1

    move-object v4, v3

    .line 815
    :goto_9e
    nop

    .line 821
    if-eqz v3, :cond_a2

    goto :goto_90

    .line 823
    :cond_a2
    :goto_a2
    if-eqz p1, :cond_bd

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    return-object v1

    .line 827
    :cond_bd
    if-nez v4, :cond_c0

    .line 828
    return-object v1

    .line 830
    :cond_c0
    const/16 p1, 0x2f

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_e0

    .line 831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 833
    :cond_e0
    new-instance p1, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object p1

    .line 783
    :cond_ea
    :goto_ea
    return-object v1
.end method

.method private handleScheduleTrustTimeout(II)V
    .registers 14

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    add-long v6, v0, v2

    .line 331
    iget p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 332
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 335
    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_34

    .line 336
    if-nez p2, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 337
    sget-boolean p1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p1, :cond_2c

    const-string p1, "Found existing trust timeout alarm. Skipping."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2c
    return-void

    .line 340
    :cond_2d
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    move-object v9, v0

    goto :goto_43

    .line 342
    :cond_34
    new-instance p2, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    invoke-direct {p2, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 343
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, p2

    .line 346
    :goto_43
    sget-boolean p1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p1, :cond_4c

    const-string p1, "\tSetting up trust timeout alarm"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_4c
    const/4 p1, 0x1

    invoke-virtual {v9, p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 348
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const-string v8, "TrustManagerService.trustTimeoutForUser"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 351
    return-void
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .registers 5

    .line 1304
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1305
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 1306
    if-ltz v1, :cond_13

    .line 1307
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1309
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 1311
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v0

    .line 1312
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    .line 1313
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    .line 1314
    if-ltz v2, :cond_2d

    .line 1316
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    monitor-exit v1

    return p1

    .line 1319
    :cond_2d
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1320
    monitor-exit v1

    return v0

    .line 1322
    :catchall_34
    move-exception p1

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_34

    throw p1

    .line 1309
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 11

    .line 842
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "trust_agents_initialized"

    invoke-static {v0, v2, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    .line 844
    return-void

    .line 846
    :cond_11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 847
    invoke-direct {p0, v0, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v0

    .line 848
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 849
    const/4 v4, 0x1

    if-eqz v3, :cond_25

    move v1, v4

    .line 850
    :cond_25
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 852
    const-string v6, "TrustManagerService"

    if-eqz v1, :cond_4b

    .line 853
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it is a default agent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 856
    :cond_4b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 857
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v3

    .line 858
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 859
    and-int/2addr v1, v4

    if-nez v1, :cond_82

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Leaving agent "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " disabled because package is not a system package."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    goto :goto_4f

    .line 864
    :cond_82
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 865
    goto :goto_4f

    .line 868
    :cond_86
    :goto_86
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_8f

    .line 870
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 872
    :cond_8f
    invoke-virtual {p1, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 873
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 875
    return-void
.end method

.method private maybeLockScreen(I)V
    .registers 5

    .line 299
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-eq p1, v0, :cond_5

    .line 300
    return-void

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getLockWhenTrustLost()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 304
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_18

    const-string v0, "Locking device because trust was lost"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21

    .line 309
    goto :goto_27

    .line 307
    :catch_21
    move-exception v0

    .line 308
    const-string v0, "Error locking screen when trust was lost"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_27
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 314
    if-eqz p1, :cond_46

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsExtendUnlock()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 315
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 316
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 319
    :cond_46
    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .registers 11

    .line 637
    const/4 v0, -0x1

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_29

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "TrustManagerService"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    move p1, v0

    .line 643
    :cond_29
    const/4 v1, 0x1

    if-ne p1, v0, :cond_33

    .line 644
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    goto :goto_42

    .line 646
    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    .line 650
    :goto_42
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 652
    const/4 v2, 0x0

    move v3, v2

    :goto_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b1

    .line 653
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 655
    if-eqz v4, :cond_ae

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_ae

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_ae

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v5, :cond_65

    .line 656
    goto :goto_ae

    .line 659
    :cond_65
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 660
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    .line 662
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v7

    if-nez v7, :cond_7f

    .line 663
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_ae

    if-nez v6, :cond_ae

    .line 664
    invoke-direct {p0, v5, v2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto :goto_ae

    .line 669
    :cond_7f
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v4

    .line 670
    nop

    .line 671
    nop

    .line 673
    iget v7, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v7, v5, :cond_9e

    .line 674
    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v7

    .line 675
    :try_start_8c
    iget-object v8, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v8

    .line 676
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_9b

    .line 678
    :try_start_93
    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v7
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_97} :catch_98

    .line 680
    goto :goto_a0

    .line 679
    :catch_98
    move-exception v7

    move v7, v1

    goto :goto_a0

    .line 676
    :catchall_9b
    move-exception p1

    :try_start_9c
    monitor-exit v7
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p1

    .line 673
    :cond_9e
    move v7, v1

    move v8, v2

    .line 682
    :goto_a0
    if-eqz v6, :cond_aa

    if-eqz v7, :cond_aa

    if-nez v4, :cond_aa

    if-nez v8, :cond_aa

    move v4, v1

    goto :goto_ab

    :cond_aa
    move v4, v2

    .line 684
    :goto_ab
    invoke-direct {p0, v5, v4}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    .line 652
    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 686
    :cond_b1
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .registers 8

    .line 745
    nop

    .line 746
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_52

    .line 747
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 748
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TrustManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 751
    move v2, v1

    .line 753
    :cond_45
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 754
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 746
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 757
    :cond_52
    if-eqz v2, :cond_57

    .line 758
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 760
    :cond_57
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .registers 5

    .line 981
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 982
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 983
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 984
    return-void

    .line 981
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 987
    :cond_24
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 891
    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 896
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 897
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_27

    goto :goto_16

    .line 898
    :cond_27
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2e

    goto :goto_16

    .line 899
    :cond_2e
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 900
    const-string v3, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_62

    .line 902
    invoke-direct {p0, v1}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping agent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because package does not have permission "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrustManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    goto :goto_16

    .line 907
    :cond_62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    goto :goto_16

    .line 909
    :cond_66
    return-object v0
.end method

.method private resolveProfileParent(I)I
    .registers 5

    .line 1326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1328
    :try_start_4
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1329
    if-eqz v2, :cond_18

    .line 1330
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    .line 1334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    return p1

    .line 1332
    :cond_18
    nop

    .line 1334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1332
    return p1

    .line 1334
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private scheduleTrustTimeout(IZ)V
    .registers 5

    .line 322
    nop

    .line 323
    if-eqz p2, :cond_4

    .line 324
    const/4 p2, 0x1

    .line 326
    :cond_4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void
.end method

.method private setDeviceLockedForUser(IZ)V
    .registers 7

    .line 690
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 691
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    move v1, v2

    .line 692
    :goto_d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 693
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_3d

    .line 694
    if-eqz v1, :cond_3c

    .line 695
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    .line 697
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore;->onUserLockedStateChanged(IZ)V

    .line 700
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1

    array-length v0, p1

    :goto_26
    if-ge v2, v0, :cond_3c

    aget v1, p1, v2

    .line 701
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 702
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Landroid/security/KeyStore;->onUserLockedStateChanged(IZ)V

    .line 700
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 706
    :cond_3c
    return-void

    .line 693
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private updateTrust(IIZ)V
    .registers 11

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    .line 392
    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 393
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 394
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v1

    if-eq v1, v0, :cond_18

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    .line 398
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    .line 399
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 400
    nop

    .line 402
    const/4 v2, 0x1

    :try_start_22
    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_27

    .line 404
    goto :goto_29

    .line 403
    :catch_27
    move-exception v1

    move v1, v2

    .line 407
    :goto_29
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 408
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsExtendUnlock()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_91

    .line 412
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eq v4, v0, :cond_3f

    move v4, v2

    goto :goto_40

    :cond_3f
    move v4, v5

    .line 413
    :goto_40
    if-eqz v0, :cond_4e

    if-eqz v1, :cond_48

    if-nez p3, :cond_48

    if-nez v4, :cond_4e

    :cond_48
    iget p3, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne p1, p3, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v5

    .line 416
    :goto_4f
    sget-boolean p3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz p3, :cond_91

    .line 417
    const-string p3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extend unlock setting trusted as "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " && "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_6f

    move v1, v2

    goto :goto_70

    :cond_6f
    move v1, v5

    .line 418
    :goto_70
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " && "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne p1, v1, :cond_82

    move v1, v2

    goto :goto_83

    :cond_82
    move v1, v5

    .line 419
    :goto_83
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {p3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_91
    iget-object p3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    if-eq p3, v0, :cond_9a

    goto :goto_9b

    :cond_9a
    move v2, v5

    .line 423
    :goto_9b
    iget-object p3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 424
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_2c .. :try_end_a1} :catchall_b3

    .line 425
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    .line 426
    if-eqz v2, :cond_b2

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 428
    if-nez v0, :cond_af

    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    goto :goto_b2

    .line 431
    :cond_af
    invoke-direct {p0, p1, v5}, Lcom/android/server/trust/TrustManagerService;->scheduleTrustTimeout(IZ)V

    .line 434
    :cond_b2
    :goto_b2
    return-void

    .line 424
    :catchall_b3
    move-exception p1

    :try_start_b4
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p1
.end method

.method private updateTrustAll()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 381
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 382
    goto :goto_b

    .line 383
    :cond_1e
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 439
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    .line 442
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 444
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0x1d4c0

    .line 443
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 446
    return-void

    .line 439
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;

    invoke-direct {v1, p0}, Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p1

    return-wide p1
.end method

.method isDeviceLockedInner(I)Z
    .registers 5

    .line 627
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 628
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 629
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5

    .line 460
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$addEscrowToken$0$TrustManagerService(JI)V
    .registers 4

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->dispatchEscrowTokenActivatedLocked(JI)V

    .line 452
    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 204
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    return-void

    .line 208
    :cond_7
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2a

    .line 209
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 210
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    .line 211
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_42

    .line 212
    :cond_2a
    const/16 v0, 0x258

    if-ne p1, v0, :cond_38

    .line 213
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 214
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    goto :goto_42

    .line 216
    :cond_38
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_42

    .line 217
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 219
    :cond_42
    :goto_42
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 6

    .line 1051
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1052
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "trust"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    return-void
.end method

.method public onStartUser(I)V
    .registers 6

    .line 1046
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1047
    return-void
.end method

.method public onStopUser(I)V
    .registers 6

    .line 1066
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1067
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6

    .line 1056
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1057
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 6

    .line 1061
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1062
    return-void
.end method

.method refreshAgentList(I)V
    .registers 22

    .line 472
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAgentList("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_24
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_29

    .line 474
    return-void

    .line 476
    :cond_29
    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    if-gez v1, :cond_50

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    move v1, v2

    .line 481
    :cond_50
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 484
    const/4 v5, 0x1

    if-ne v1, v2, :cond_60

    .line 485
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    goto :goto_6e

    .line 487
    :cond_60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 488
    iget-object v7, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :goto_6e
    iget-object v7, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 492
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 493
    iget-object v9, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 495
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7e
    :goto_7e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_343

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 496
    if-eqz v9, :cond_33b

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v11, :cond_33b

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_33b

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v11, :cond_9b

    .line 497
    goto :goto_7e

    .line 498
    :cond_9b
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    const-string/jumbo v12, "refreshAgentList: skipping user "

    if-nez v11, :cond_c2

    .line 499
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_7e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": switchToByUser=false"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 503
    :cond_c2
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v13}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v11

    if-nez v11, :cond_ea

    .line 504
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_7e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": user not started"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 508
    :cond_ea
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-nez v11, :cond_111

    .line 509
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_7e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": no secure credential"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 514
    :cond_111
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    .line 515
    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v13

    .line 516
    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_122

    move v13, v5

    goto :goto_123

    :cond_122
    const/4 v13, 0x0

    .line 519
    :goto_123
    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v15}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    .line 520
    if-nez v15, :cond_14a

    .line 521
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_7e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": no agents enabled by user"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7e

    .line 525
    :cond_14a
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v4, v10}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v10

    .line 526
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_154
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_333

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 527
    invoke-direct {v0, v2}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 529
    invoke-interface {v15, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    const-string v14, " u"

    move-object/from16 v18, v6

    const-string/jumbo v6, "refreshAgentList: skipping "

    if-nez v17, :cond_1a0

    .line 530
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_19a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not enabled by user"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19a
    move-object/from16 v6, v18

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v14, 0x0

    goto :goto_154

    .line 535
    :cond_1a0
    if-eqz v13, :cond_1e7

    .line 536
    move-object/from16 v17, v7

    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 537
    move-object/from16 v19, v10

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v5, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v7

    .line 539
    if-eqz v7, :cond_1b5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1eb

    .line 540
    :cond_1b5
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_1dc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not allowed by DPM"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1dc
    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v14, 0x0

    goto/16 :goto_154

    .line 535
    :cond_1e7
    move-object/from16 v17, v7

    move-object/from16 v19, v10

    .line 546
    :cond_1eb
    new-instance v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    .line 547
    iput-object v5, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 548
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    iput v10, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 549
    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_212

    .line 550
    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 551
    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 552
    invoke-direct {v0, v4, v2}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_220

    .line 554
    :cond_212
    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 555
    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 558
    :goto_220
    nop

    .line 559
    iget-object v10, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    if-eqz v10, :cond_235

    .line 560
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v2, v2, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v2, :cond_233

    iget-object v2, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    iget-boolean v2, v2, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v2, :cond_233

    const/4 v10, 0x1

    goto :goto_236

    :cond_233
    const/4 v10, 0x0

    goto :goto_236

    .line 559
    :cond_235
    const/4 v10, 0x0

    .line 564
    :goto_236
    if-eqz v10, :cond_261

    .line 565
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_261

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "refreshAgentList: trustagent "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "of user "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "can unlock user profile."

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_261
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-nez v2, :cond_29d

    if-nez v10, :cond_29d

    .line 571
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_292

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'s trust agent "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": FBE still locked and  the agent cannot unlock user profile."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_292
    move-object v14, v7

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    const/4 v2, -0x1

    const/4 v5, 0x1

    goto/16 :goto_154

    .line 577
    :cond_29d
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v2

    if-nez v2, :cond_2fc

    .line 578
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v14, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    .line 579
    const/16 v14, 0x8

    if-eq v2, v14, :cond_2fa

    .line 580
    const/4 v14, 0x1

    if-ne v2, v14, :cond_2b8

    if-nez v10, :cond_2fd

    .line 582
    :cond_2b8
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_2ef

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": prevented by StrongAuthTracker = 0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    .line 585
    invoke-virtual {v5, v6}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v14

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    const/4 v2, -0x1

    move-object v14, v7

    move-object/from16 v7, v17

    goto/16 :goto_154

    .line 582
    :cond_2ef
    move v5, v14

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    const/4 v2, -0x1

    move-object v14, v7

    move-object/from16 v7, v17

    goto/16 :goto_154

    .line 579
    :cond_2fa
    const/4 v14, 0x1

    goto :goto_2fd

    .line 577
    :cond_2fc
    const/4 v14, 0x1

    .line 592
    :cond_2fd
    :goto_2fd
    iget-object v2, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v2, :cond_317

    .line 593
    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v10, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 594
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {v2, v10, v0, v5, v7}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v2, v6, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 597
    :cond_317
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_325

    .line 598
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_328

    .line 600
    :cond_325
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 602
    :goto_328
    move v5, v14

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v10, v19

    const/4 v2, -0x1

    const/4 v14, 0x0

    goto/16 :goto_154

    .line 603
    :cond_333
    move v14, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    const/4 v2, -0x1

    goto/16 :goto_7e

    .line 496
    :cond_33b
    move v14, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    const/4 v2, -0x1

    goto/16 :goto_7e

    .line 605
    :cond_343
    move v14, v5

    .line 606
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_346
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_36f

    .line 607
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 608
    const/4 v4, -0x1

    if-eq v1, v4, :cond_359

    iget v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v4, :cond_36c

    .line 609
    :cond_359
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v4

    if-eqz v4, :cond_362

    .line 610
    move v5, v14

    .line 612
    :cond_362
    iget-object v4, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 613
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 606
    :cond_36c
    add-int/lit8 v2, v2, 0x1

    goto :goto_346

    .line 617
    :cond_36f
    if-eqz v5, :cond_37c

    .line 618
    const/4 v2, -0x1

    if-ne v1, v2, :cond_378

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_37c

    .line 621
    :cond_378
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 624
    :cond_37c
    :goto_37c
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result p1

    return p1
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .registers 10

    .line 763
    nop

    .line 764
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_53

    .line 765
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 766
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v5, :cond_50

    .line 767
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TrustManagerService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 769
    move v3, v1

    .line 771
    :cond_46
    iget-object v4, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v4}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 772
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 764
    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 775
    :cond_53
    if-eqz v3, :cond_58

    .line 776
    invoke-virtual {p0, p2, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 778
    :cond_58
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 779
    return-void
.end method

.method showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 2

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    .line 469
    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 6

    .line 464
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    .line 465
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .registers 5

    .line 731
    nop

    .line 732
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 733
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 734
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 735
    iget-object v1, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 736
    const/4 v1, 0x1

    .line 732
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 739
    :cond_24
    if-eqz v1, :cond_2b

    .line 740
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    .line 742
    :cond_2b
    return-void
.end method

.method public updateTrust(II)V
    .registers 4

    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZ)V

    .line 388
    return-void
.end method
