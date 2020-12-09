.class public Lcom/android/server/wm/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LockTaskController$LockTaskToken;
    }
.end annotation


# static fields
.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x3a60000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_BAR_MASK_PINNED:I = 0x29f0000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDisableFromDismiss:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mTelecomManager:Landroid/telecom/TelecomManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 108
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 109
    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 112
    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 114
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 117
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 120
    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 123
    nop

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V
    .registers 6

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/LockTaskController$LockTaskToken;-><init>(Lcom/android/server/wm/LockTaskController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 193
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 197
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 199
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/LockTaskController;)I
    .registers 1

    .line 88
    iget p0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/wm/LockTaskController;I)I
    .registers 2

    .line 88
    iput p1, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1c

    .line 874
    nop

    .line 875
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 874
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 876
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1c

    .line 877
    const-string v0, "ActivityTaskManager"

    const-string v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_c

    .line 887
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 889
    :cond_c
    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .registers 4

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    .line 861
    nop

    .line 862
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 861
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 863
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    .line 864
    const-string v0, "StatusBarManager"

    const-string v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 3

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_f

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    .line 898
    :cond_f
    return-object v0
.end method

.method private isEmergencyCallTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 6

    .line 343
    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 345
    return v0

    .line 349
    :cond_6
    sget-object v1, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 350
    return v2

    .line 354
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 355
    return v2

    .line 359
    :cond_21
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 360
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    .line 361
    :goto_2d
    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 362
    return v2

    .line 365
    :cond_3e
    return v0
.end method

.method private isKeyguardAllowed(I)Z
    .registers 2

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private isLockTaskModeViolationInternal(Lcom/android/server/wm/TaskRecord;Z)Z
    .registers 5

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    .line 316
    return v1

    .line 320
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeRecents()Z

    move-result p2

    if-eqz p2, :cond_19

    iget p2, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isRecentsAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 321
    return v1

    .line 325
    :cond_19
    iget p2, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isEmergencyCallTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 326
    return v1

    .line 329
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskWhitelisted(Lcom/android/server/wm/TaskRecord;)Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_37

    const/4 v1, 0x1

    :cond_37
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .registers 2

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private isRootTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private lockKeyguardIfNeeded()V
    .registers 3

    .line 805
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->shouldLockKeyguard()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 807
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 808
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 810
    :cond_19
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .registers 3

    .line 917
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 921
    :cond_1e
    const-string v0, "PINNED"

    return-object v0

    .line 919
    :cond_21
    const-string v0, "LOCKED"

    return-object v0

    .line 923
    :cond_24
    const-string v0, "NONE"

    return-object v0
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .registers 6

    .line 609
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_b

    .line 610
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 612
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 613
    iput p3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 614
    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 615
    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 616
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p3

    if-eqz p3, :cond_25

    .line 617
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p3

    invoke-interface {p3, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_25} :catch_27

    .line 621
    :cond_25
    nop

    .line 622
    return-void

    .line 619
    :catch_27
    move-exception p1

    .line 620
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private performStopLockTask(I)V
    .registers 6

    .line 485
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 486
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 487
    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 488
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded()V

    .line 490
    :cond_f
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 491
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 493
    :cond_1d
    iget p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne p1, v2, :cond_28

    .line 494
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 496
    :cond_28
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2d} :catch_33
    .catchall {:try_start_1 .. :try_end_2d} :catchall_31

    .line 500
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_31
    move-exception p1

    goto :goto_3a

    .line 497
    :catch_33
    move-exception p1

    .line 498
    :try_start_34
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    .line 500
    :goto_3a
    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    throw p1
.end method

.method private removeLockedTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 471
    return-void

    .line 474
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$LockTaskController$2elXHbo9dze0DvBeuUaZ338FJqE;-><init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/TaskRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_1b
    return-void
.end method

.method private setKeyguardState(II)V
    .registers 5

    .line 755
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 756
    if-nez p1, :cond_e

    .line 757
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_4e

    .line 759
    :cond_e
    const/4 v0, 0x1

    const-string v1, "Lock-to-App"

    if-ne p1, v0, :cond_47

    .line 760
    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 761
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_4e

    .line 765
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 766
    iput p2, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 767
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/LockTaskController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/LockTaskController$1;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_4e

    .line 791
    :cond_3f
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_4e

    .line 796
    :cond_47
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 798
    :goto_4e
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;Z)V
    .registers 12

    .line 561
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_5

    .line 564
    return-void

    .line 566
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 567
    const-string p1, "ActivityTaskManager"

    const-string p2, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 571
    :cond_13
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 573
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 575
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LockTaskController$9_wIEcqJktdkdI2IOf8QHYvHoks;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$LockTaskController$9_wIEcqJktdkdI2IOf8QHYvHoks;-><init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/TaskRecord;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_3f
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_48

    .line 588
    iget v0, p1, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    iput v0, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 591
    :cond_48
    if-eqz p4, :cond_70

    .line 592
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_52

    const/4 p2, 0x1

    goto :goto_53

    :cond_52
    const/4 p2, 0x0

    :goto_53
    move v6, p2

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 594
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 595
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 596
    if-eqz p1, :cond_80

    .line 597
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_80

    .line 599
    :cond_70
    if-eqz p2, :cond_80

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 601
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    const/4 v5, 0x1

    .line 600
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    goto :goto_81

    .line 599
    :cond_80
    :goto_80
    nop

    .line 603
    :goto_81
    return-void
.end method

.method private setStatusBarState(II)V
    .registers 8

    .line 722
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 723
    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_e

    .line 724
    const-string p1, "Can\'t find StatusBarService"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-void

    .line 729
    :cond_e
    nop

    .line 730
    nop

    .line 732
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1a

    .line 733
    const/high16 p1, 0x29f0000

    move v4, v3

    move v3, p1

    move p1, v4

    goto :goto_37

    .line 735
    :cond_1a
    const/4 v2, 0x1

    if-ne p1, v2, :cond_36

    .line 736
    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result p1

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object p1

    .line 738
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 739
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_37

    .line 735
    :cond_36
    move p1, v3

    .line 743
    :goto_37
    :try_start_37
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, p2, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 744
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4d} :catch_4e

    .line 747
    goto :goto_54

    .line 745
    :catch_4e
    move-exception p1

    .line 746
    const-string p2, "Failed to set status bar flags"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    :goto_54
    return-void
.end method

.method private shouldLockKeyguard()Z
    .registers 7

    .line 816
    const/4 v0, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    .line 816
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_f} :catch_14

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1

    .line 819
    :catch_14
    move-exception v3

    .line 821
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "127605586"

    aput-object v5, v4, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 822
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 240
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_27

    .line 242
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_27

    iget p1, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_27

    .line 244
    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 245
    const-string p1, "ActivityTaskManager"

    const-string v0, "Not finishing task in lock task mode"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 247
    const/4 p1, 0x1

    return p1

    .line 249
    :cond_27
    const/4 p1, 0x0

    return p1
.end method

.method canMoveTaskToBack(Lcom/android/server/wm/TaskRecord;)Z
    .registers 2

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 259
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 260
    const/4 p1, 0x0

    return p1

    .line 262
    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method clearLockedTask(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 447
    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_43

    .line 449
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2c

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-lez v0, :cond_2c

    .line 453
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 452
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 457
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 459
    return-void

    .line 461
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked()V

    .line 462
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 463
    return-void

    .line 447
    :cond_43
    :goto_43
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .registers 3

    .line 432
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    .line 433
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 435
    :cond_14
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    const/4 v0, 0x0

    move v1, v0

    :goto_56
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_86

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 909
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    nop

    :goto_9b
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d7

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 912
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    .line 914
    :cond_d7
    return-void
.end method

.method getLockTaskModeState()I
    .registers 2

    .line 216
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/wm/TaskRecord;
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 836
    nop

    .line 837
    nop

    .line 838
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x3ff0000

    const/16 v2, 0x1f

    :goto_e
    if-ltz v0, :cond_38

    .line 839
    sget-object v3, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 840
    sget-object v4, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_35

    .line 841
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v1, v4

    .line 842
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    .line 838
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 846
    :cond_38
    const/high16 p1, 0x3a60000

    and-int/2addr p1, v1

    .line 847
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;Z)Z

    move-result p1

    return p1
.end method

.method isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;Z)Z
    .registers 3

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/TaskRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 296
    const/4 p1, 0x1

    return p1

    .line 298
    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method isPackageWhitelisted(ILjava/lang/String;)Z
    .registers 7

    .line 678
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 679
    return v0

    .line 682
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 683
    if-nez p1, :cond_f

    .line 684
    return v0

    .line 686
    :cond_f
    array-length v1, p1

    move v2, v0

    :goto_11
    if-ge v2, v1, :cond_20

    aget-object v3, p1, v2

    .line 687
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 688
    const/4 p1, 0x1

    return p1

    .line 686
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 691
    :cond_20
    return v0
.end method

.method isTaskLocked(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isTaskWhitelisted(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3

    .line 270
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    .line 278
    const/4 p1, 0x0

    return p1

    .line 274
    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$removeLockedTask$0$LockTaskController(Lcom/android/server/wm/TaskRecord;)V
    .registers 2

    .line 477
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public synthetic lambda$setLockTaskMode$1$LockTaskController(Landroid/content/Intent;Lcom/android/server/wm/TaskRecord;I)V
    .registers 4

    .line 575
    nop

    .line 576
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, p2, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 575
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$updateLockTaskFeatures$2$LockTaskController(I)V
    .registers 4

    .line 709
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 710
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 711
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 713
    :cond_d
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 208
    return-void
.end method

.method showLockTaskToast()V
    .registers 4

    .line 509
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 511
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 514
    goto :goto_15

    .line 512
    :catch_d
    move-exception v0

    .line 513
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :cond_15
    :goto_15
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    .registers 5

    .line 531
    const/4 v0, 0x1

    if-nez p2, :cond_19

    .line 532
    iput p3, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    .line 533
    iget p3, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne p3, v0, :cond_19

    .line 537
    const-class p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 539
    if-eqz p2, :cond_18

    .line 540
    iget p1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {p2, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    .line 542
    :cond_18
    return-void

    .line 549
    :cond_19
    if-eqz p2, :cond_1d

    const/4 p2, 0x2

    goto :goto_1e

    :cond_1d
    move p2, v0

    :goto_1e
    const-string p3, "startLockTask"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;Z)V

    .line 551
    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    .registers 6

    .line 388
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_5

    .line 389
    return-void

    .line 392
    :cond_5
    if-eqz p2, :cond_1b

    .line 393
    const/4 p1, 0x2

    if-ne v0, p1, :cond_10

    .line 394
    const-string p1, "stopAppPinning"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_58

    .line 396
    :cond_10
    const-string p1, "ActivityTaskManager"

    const-string p2, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    goto :goto_58

    .line 402
    :cond_1b
    if-eqz p1, :cond_59

    .line 413
    iget p2, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    if-eq p3, p2, :cond_55

    iget p2, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    if-nez p2, :cond_2a

    iget p2, p1, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-ne p3, p2, :cond_2a

    goto :goto_55

    .line 415
    :cond_2a
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid uid, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " effectiveUid="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 420
    :cond_55
    :goto_55
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 422
    :goto_58
    return-void

    .line 403
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t stop LockTask for null task"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method updateLockTaskFeatures(II)V
    .registers 4

    .line 701
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    .line 702
    if-ne p2, v0, :cond_7

    .line 703
    return-void

    .line 706
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2b

    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/TaskRecord;

    iget p2, p2, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne p1, p2, :cond_2b

    .line 708
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_2b
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 11

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 633
    nop

    .line 634
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    const/4 v3, 0x2

    if-ltz p2, :cond_4e

    .line 635
    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 636
    iget v5, v4, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    const/4 v6, 0x3

    if-eq v5, v3, :cond_27

    iget v5, v4, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne v5, v6, :cond_25

    goto :goto_27

    :cond_25
    move v5, v1

    goto :goto_28

    :cond_27
    :goto_27
    move v5, v0

    .line 638
    :goto_28
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth()V

    .line 639
    iget v7, v4, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eq v7, v3, :cond_36

    iget v3, v4, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne v3, v6, :cond_34

    goto :goto_36

    :cond_34
    move v3, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v0

    .line 642
    :goto_37
    iget v6, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v6, v0, :cond_4b

    iget v6, v4, Lcom/android/server/wm/TaskRecord;->userId:I

    if-ne v6, p1, :cond_4b

    if-eqz v5, :cond_4b

    if-eqz v3, :cond_44

    .line 645
    goto :goto_4b

    .line 651
    :cond_44
    invoke-direct {p0, v4}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 652
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked()V

    .line 653
    move v2, v0

    .line 634
    :cond_4b
    :goto_4b
    add-int/lit8 p2, p2, -0x1

    goto :goto_10

    .line 656
    :cond_4e
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v0

    .line 657
    :goto_57
    if-ltz p1, :cond_67

    .line 658
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->onLockTaskPackagesUpdated()V

    .line 657
    add-int/lit8 p1, p1, -0x1

    goto :goto_57

    .line 661
    :cond_67
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 662
    if-eqz p1, :cond_76

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    goto :goto_77

    :cond_76
    const/4 p1, 0x0

    .line 663
    :goto_77
    iget-object p2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8b

    if-eqz p1, :cond_8b

    iget p2, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne p2, v3, :cond_8b

    .line 668
    const-string p2, "package updated"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;Z)V

    .line 669
    goto :goto_8c

    .line 672
    :cond_8b
    move v0, v2

    :goto_8c
    if-eqz v0, :cond_95

    .line 673
    iget-object p1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 675
    :cond_95
    return-void
.end method
