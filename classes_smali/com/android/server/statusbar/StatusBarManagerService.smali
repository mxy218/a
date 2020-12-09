.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$UiState;,
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;,
        Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayUiState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/statusbar/StatusBarManagerService$UiState;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 177
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 209
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 471
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 178
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 181
    const-class p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 182
    const-class p2, Lcom/android/server/policy/GlobalActionsProvider;

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {p2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 185
    new-instance p2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {p2, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    nop

    .line 189
    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 190
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V
    .registers 3

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChanged(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .registers 10

    .line 72
    invoke-direct/range {p0 .. p9}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/statusbar/StatusBarManagerService;I)I
    .registers 2

    .line 72
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return p1
.end method

.method private disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13

    .line 750
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 753
    iget p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result p2

    .line 754
    iget p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 p4, 0x2

    invoke-virtual {p0, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result p3

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object p4

    .line 756
    invoke-static {p4, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z

    move-result p5

    if-nez p5, :cond_39

    .line 757
    invoke-static {p4, p2, p3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V

    .line 758
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;

    invoke-direct {p5, p0, p2}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz p4, :cond_39

    .line 761
    :try_start_32
    iget-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    .line 763
    goto :goto_39

    .line 762
    :catch_38
    move-exception p1

    .line 766
    :cond_39
    :goto_39
    return-void
.end method

.method private enforceBiometricDialog()V
    .registers 4

    .line 1062
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .line 1052
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .line 1047
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method private enforceStatusBarOrShell()V
    .registers 3

    .line 1040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 1041
    return-void

    .line 1043
    :cond_9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1044
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .line 1057
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method private findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1421
    nop

    .line 1423
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_1f

    .line 1424
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1425
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_1c

    iget v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v3, p2, :cond_1c

    .line 1426
    nop

    .line 1427
    goto :goto_20

    .line 1423
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    const/4 v2, 0x0

    .line 1431
    :goto_20
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static final getUiContext()Landroid/content/Context;
    .registers 1

    .line 1488
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method private getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 4

    .line 960
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 961
    if-nez v0, :cond_15

    .line 962
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .line 963
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    :cond_15
    return-object v0
.end method

.method static synthetic lambda$reboot$6(ZLjava/lang/String;)V
    .registers 3

    .line 1168
    if-eqz p0, :cond_b

    .line 1169
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_13

    .line 1171
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->rebootCustom(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1173
    :goto_13
    return-void
.end method

.method static synthetic lambda$shutdown$5()V
    .registers 3

    .line 1151
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyBarAttachChanged()V
    .registers 3

    .line 1098
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UR67Ud0NgV9VHyelUmYzZNtR6O4;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UR67Ud0NgV9VHyelUmYzZNtR6O4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    return-void
.end method

.method private setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .registers 11

    .line 912
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 916
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_6
    invoke-direct/range {p0 .. p8}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 919
    iget p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 p3, 0x3ff0000

    and-int p5, p2, p3

    iget-object p6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 p8, 0x1

    move-object p2, p0

    move p3, p1

    move-object p7, p9

    invoke-direct/range {p2 .. p8}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 925
    monitor-exit v0

    .line 926
    return-void

    .line 925
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private topAppWindowChanged(IZ)V
    .registers 6

    .line 856
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 862
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V

    .line 864
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 872
    monitor-exit v0

    .line 873
    return-void

    .line 872
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private updateUiVisibilityLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 27

    .line 932
    invoke-direct/range {p0 .. p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v7

    .line 933
    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-nez v0, :cond_46

    .line 935
    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;

    move-object v8, v2

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    invoke-direct/range {v8 .. v17}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 949
    :cond_46
    return-void
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 547
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 549
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 551
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 553
    goto :goto_e

    .line 552
    :catch_d
    move-exception p1

    .line 555
    :cond_e
    :goto_e
    return-void
.end method

.method public clearNotificationEffects()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1124
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1126
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1127
    nop

    .line 1128
    return-void

    .line 1126
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 569
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 571
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 573
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 575
    goto :goto_e

    .line 574
    :catch_d
    move-exception p1

    .line 577
    :cond_e
    :goto_e
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 512
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 514
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 516
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 518
    goto :goto_e

    .line 517
    :catch_d
    move-exception v0

    .line 520
    :cond_e
    :goto_e
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 703
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 704
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 725
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 726
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13

    .line 737
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 739
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 741
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13

    .line 709
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 711
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1453
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string p3, "StatusBarManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1455
    :cond_b
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1456
    const/4 p3, 0x0

    move v0, p3

    :goto_10
    :try_start_10
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    .line 1457
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1458
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDisabled1=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDisabled2=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1463
    :cond_75
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisableRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    nop

    :goto_90
    if-ge p3, v0, :cond_b9

    .line 1466
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    add-int/lit8 p3, p3, 0x1

    goto :goto_90

    .line 1469
    :cond_b9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mCurrentUserId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    const-string p3, "  mIcons="

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    iget-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_de
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1472
    const-string v1, "    "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1474
    const-string v1, " -> "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 1476
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1477
    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_119

    .line 1478
    const-string v1, " \""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1479
    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1480
    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1482
    :cond_119
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1483
    goto :goto_de

    .line 1484
    :cond_11d
    monitor-exit p1

    .line 1485
    return-void

    .line 1484
    :catchall_11f
    move-exception p2

    monitor-exit p1
    :try_end_121
    .catchall {:try_start_10 .. :try_end_121} :catchall_11f

    throw p2
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 500
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 502
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 504
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 506
    goto :goto_e

    .line 505
    :catch_d
    move-exception v0

    .line 508
    :cond_e
    :goto_e
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 3

    .line 536
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 538
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 540
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 542
    goto :goto_e

    .line 541
    :catch_d
    move-exception p1

    .line 544
    :cond_e
    :goto_e
    return-void
.end method

.method gatherDisableActionsLocked(II)I
    .registers 8

    .line 1436
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1438
    nop

    .line 1439
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_1f

    .line 1440
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1441
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1c

    .line 1442
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 1439
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1445
    :cond_1f
    return v2
.end method

.method public getDisableFlags(Landroid/os/IBinder;I)[I
    .registers 5

    .line 776
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 778
    nop

    .line 779
    nop

    .line 780
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 783
    const/4 p2, 0x0

    if-eqz p1, :cond_18

    .line 784
    iget v1, p1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 785
    iget p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1a

    .line 783
    :cond_18
    move p1, p2

    move v1, p1

    .line 787
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_24

    .line 789
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    return-object v0

    .line 787
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .registers 3

    .line 1373
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleSystemKey(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 583
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 585
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 587
    goto :goto_e

    .line 586
    :catch_d
    move-exception p1

    .line 589
    :cond_e
    :goto_e
    return-void
.end method

.method public hideBiometricDialog()V
    .registers 2

    .line 658
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 659
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 661
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideBiometricDialog()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 663
    goto :goto_e

    .line 662
    :catch_d
    move-exception v0

    .line 665
    :cond_e
    :goto_e
    return-void
.end method

.method public hideInDisplayFingerprintView()V
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 682
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideInDisplayFingerprintView()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 685
    goto :goto_b

    .line 683
    :catch_a
    move-exception v0

    .line 687
    :cond_b
    :goto_b
    return-void
.end method

.method public synthetic lambda$disableLocked$0$StatusBarManagerService(I)V
    .registers 3

    .line 758
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    return-void
.end method

.method public synthetic lambda$notifyBarAttachChanged$4$StatusBarManagerService()V
    .registers 3

    .line 1099
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_5

    return-void

    .line 1100
    :cond_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0, v1}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    .line 1101
    return-void
.end method

.method public synthetic lambda$setImeWindowStatus$2$StatusBarManagerService(ILandroid/os/IBinder;IIZ)V
    .registers 13

    .line 891
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_5

    return-void

    .line 893
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_11

    .line 895
    :catch_10
    move-exception p1

    :goto_11
    nop

    .line 896
    return-void
.end method

.method public synthetic lambda$topAppWindowChanged$1$StatusBarManagerService(IZ)V
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 867
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->topAppWindowChanged(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 869
    goto :goto_b

    .line 868
    :catch_a
    move-exception p1

    .line 871
    :cond_b
    :goto_b
    return-void
.end method

.method public synthetic lambda$updateUiVisibilityLocked$3$StatusBarManagerService(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 20

    .line 938
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1f

    .line 940
    :try_start_5
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_17

    .line 945
    goto :goto_1f

    .line 943
    :catch_17
    move-exception v0

    .line 944
    const-string v0, "StatusBarManagerService"

    const-string v1, "Can not get StatusBar!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_1f
    :goto_1f
    return-void
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 10

    .line 1388
    invoke-direct {p0, p3, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v0

    .line 1389
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1390
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1393
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    .line 1394
    if-eqz v0, :cond_23

    .line 1395
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1396
    iget-object p1, v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1398
    :cond_23
    return-void

    .line 1402
    :cond_24
    if-eqz v0, :cond_3a

    .line 1403
    invoke-virtual {v0, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1404
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1405
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1406
    iget-object p1, v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1408
    :cond_39
    return-void

    .line 1412
    :cond_3a
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V

    .line 1413
    invoke-virtual {v0, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1414
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 4

    .line 625
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 626
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 628
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(ZLjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 630
    goto :goto_e

    .line 629
    :catch_d
    move-exception p1

    .line 632
    :cond_e
    :goto_e
    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .registers 3

    .line 647
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 648
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 650
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 652
    goto :goto_e

    .line 651
    :catch_d
    move-exception p1

    .line 654
    :cond_e
    :goto_e
    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .registers 3

    .line 636
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 637
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 639
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 641
    goto :goto_e

    .line 640
    :catch_d
    move-exception p1

    .line 643
    :cond_e
    :goto_e
    return-void
.end method

.method public onClearAllNotifications(I)V
    .registers 7

    .line 1343
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1345
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1348
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1350
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1351
    nop

    .line 1352
    return-void

    .line 1350
    :catchall_19
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 194
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 204
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public onGlobalActionsHidden()V
    .registers 4

    .line 1193
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1196
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19

    if-nez v2, :cond_f

    .line 1199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1196
    return-void

    .line 1197
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1199
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1200
    nop

    .line 1201
    return-void

    .line 1199
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onGlobalActionsShown()V
    .registers 4

    .line 1181
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19

    if-nez v2, :cond_f

    .line 1187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1184
    return-void

    .line 1185
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1188
    nop

    .line 1189
    return-void

    .line 1187
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 16

    .line 1220
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1222
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1225
    :try_start_f
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1e

    .line 1228
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    nop

    .line 1230
    return-void

    .line 1228
    :catchall_1e
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;Z)V
    .registers 6

    .line 1356
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1359
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationBubbleChanged(Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1362
    nop

    .line 1363
    return-void

    .line 1361
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 23

    .line 1253
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1255
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1258
    move-object v0, p0

    :try_start_10
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v1 .. v11}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_29

    .line 1261
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1262
    nop

    .line 1263
    return-void

    .line 1261
    :catchall_29
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 8

    .line 1205
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1207
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1210
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    nop

    .line 1214
    return-void

    .line 1212
    :catchall_19
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1297
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1299
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    nop

    .line 1301
    return-void

    .line 1299
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 21

    .line 1235
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1238
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1241
    move-object v0, p0

    :try_start_10
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_26

    .line 1244
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    nop

    .line 1246
    return-void

    .line 1244
    :catchall_26
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1285
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1288
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1289
    nop

    .line 1290
    return-void

    .line 1288
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1332
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1335
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1338
    nop

    .line 1339
    return-void

    .line 1337
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1323
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    nop

    .line 1328
    return-void

    .line 1326
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 14

    .line 1306
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1309
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1313
    nop

    .line 1314
    return-void

    .line 1312
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1272
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1276
    nop

    .line 1277
    return-void

    .line 1275
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onPanelHidden()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1135
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    nop

    .line 1139
    return-void

    .line 1137
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .registers 6

    .line 1110
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1113
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1116
    nop

    .line 1117
    return-void

    .line 1115
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1368
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1370
    return-void
.end method

.method public reboot(ZLjava/lang/String;)V
    .registers 7

    .line 1163
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1166
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;

    invoke-direct {v3, p1, p2}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$__P4yftRx0zk_w3jNmDhtpJkJpA;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1175
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    nop

    .line 1177
    return-void

    .line 1175
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 20

    .line 1073
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerStatusBar bar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iput-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1077
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    invoke-virtual {v1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->linkToDeath()V

    .line 1078
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1080
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1081
    :try_start_2b
    new-instance v3, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1082
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_85

    .line 1083
    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1086
    :try_start_36
    iget-object v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1087
    new-instance v17, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v4, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v4

    .line 1088
    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v6

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v7

    .line 1089
    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v8

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v9

    iget v10, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v11, 0x2

    .line 1090
    invoke-virtual {v0, v10, v11}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v10

    .line 1091
    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v11

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v12

    .line 1092
    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v15

    .line 1093
    invoke-static {v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v16

    move-object/from16 v2, v17

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;IIZIIZIIILandroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    monitor-exit v1

    .line 1087
    return-object v17

    .line 1094
    :catchall_82
    move-exception v0

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_36 .. :try_end_84} :catchall_82

    throw v0

    .line 1082
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .registers 3

    .line 558
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 560
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 562
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 564
    goto :goto_e

    .line 563
    :catch_d
    move-exception p1

    .line 566
    :cond_e
    :goto_e
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4

    .line 836
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 838
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 839
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_16

    .line 843
    :try_start_f
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 845
    goto :goto_16

    .line 844
    :catch_15
    move-exception p1

    .line 847
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public setBlockedGesturalNavigation(Z)V
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 693
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setBlockedGesturalNavigation(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 696
    goto :goto_b

    .line 694
    :catch_a
    move-exception p1

    .line 698
    :cond_b
    :goto_b
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15

    .line 795
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 797
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 798
    :try_start_6
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 801
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    if-eqz p2, :cond_23

    .line 805
    :try_start_1c
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p2, p1, v8}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    .line 807
    goto :goto_23

    .line 806
    :catch_22
    move-exception p1

    .line 809
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    .line 810
    return-void

    .line 809
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6

    .line 814
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 816
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 817
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 818
    if-nez v1, :cond_12

    .line 819
    monitor-exit v0

    return-void

    .line 821
    :cond_12
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_23

    .line 822
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 824
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    if-eqz p2, :cond_23

    .line 826
    :try_start_1c
    iget-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    .line 828
    goto :goto_23

    .line 827
    :catch_22
    move-exception p1

    .line 831
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    .line 832
    return-void

    .line 831
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 16

    .line 878
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 884
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 888
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p3, p4, p5, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V

    .line 890
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UEYsZUbySBvjdjRhx8OmRQFMSn4;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UEYsZUbySBvjdjRhx8OmRQFMSn4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 897
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public setSystemUiVisibility(IIILjava/lang/String;)V
    .registers 16

    .line 902
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    .line 903
    nop

    .line 904
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v8

    .line 905
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v9

    .line 903
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 906
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .registers 13

    .line 614
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 615
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_13

    .line 617
    :try_start_7
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_12

    .line 619
    goto :goto_13

    .line 618
    :catch_12
    move-exception p1

    .line 621
    :cond_13
    :goto_13
    return-void
.end method

.method public showInDisplayFingerprintView()V
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 671
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showInDisplayFingerprintView()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 674
    goto :goto_b

    .line 672
    :catch_a
    move-exception v0

    .line 676
    :cond_b
    :goto_b
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 595
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 597
    goto :goto_b

    .line 596
    :catch_a
    move-exception p1

    .line 599
    :cond_b
    :goto_b
    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 605
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 607
    goto :goto_b

    .line 606
    :catch_a
    move-exception v0

    .line 609
    :cond_b
    :goto_b
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 1146
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1150
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UDezjj1c1F0KKrp-AAYUhMa21kk;->INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UDezjj1c1F0KKrp-AAYUhMa21kk;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 1154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    nop

    .line 1156
    return-void

    .line 1154
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public togglePanel()V
    .registers 2

    .line 524
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 526
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 528
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 530
    goto :goto_e

    .line 529
    :catch_d
    move-exception v0

    .line 532
    :cond_e
    :goto_e
    return-void
.end method
