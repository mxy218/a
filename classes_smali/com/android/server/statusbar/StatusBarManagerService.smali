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
.field private static final FROM_DEFAULT:I = -0x1

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

.field private mWindowStates:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "windowManager"  # Lcom/android/server/wm/WindowManagerService;

    .line 179
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 211
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 477
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 1530
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowStates:Landroid/util/SparseIntArray;

    .line 180
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 183
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 184
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 187
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .line 188
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    nop

    .line 191
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 192
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 193
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"  # Lcom/android/internal/statusbar/IStatusBar;

    .line 74
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"  # Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    .line 74
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationDelegate;

    .line 74
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChanged(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .registers 10
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # Landroid/graphics/Rect;
    .param p7, "x7"  # Landroid/graphics/Rect;
    .param p8, "x8"  # Z
    .param p9, "x9"  # Ljava/lang/String;

    .line 74
    invoke-direct/range {p0 .. p9}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/statusbar/StatusBarManagerService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"  # I

    .line 74
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return p1
.end method

.method private disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "displayId"  # I
    .param p2, "userId"  # I
    .param p3, "what"  # I
    .param p4, "token"  # Landroid/os/IBinder;
    .param p5, "pkg"  # Ljava/lang/String;
    .param p6, "whichFlag"  # I

    .line 723
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 726
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    .line 727
    .local v0, "net1":I
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    .line 728
    .local v1, "net2":I
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v2

    .line 729
    .local v2, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    invoke-static {v2, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z

    move-result v3

    if-nez v3, :cond_39

    .line 730
    invoke-static {v2, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V

    .line 731
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;

    invoke-direct {v4, p0, v0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v3, :cond_39

    .line 734
    :try_start_32
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    .line 736
    goto :goto_39

    .line 735
    :catch_38
    move-exception v3

    .line 739
    :cond_39
    :goto_39
    return-void
.end method

.method private enforceBiometricDialog()V
    .registers 4

    .line 1035
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method private enforceExpandStatusBar()V
    .registers 4

    .line 1025
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method private enforceStatusBar()V
    .registers 4

    .line 1020
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private enforceStatusBarOrShell()V
    .registers 3

    .line 1013
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 1014
    return-void

    .line 1016
    :cond_9
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1017
    return-void
.end method

.method private enforceStatusBarService()V
    .registers 4

    .line 1030
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method private findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "userId"  # I
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

    .line 1386
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1387
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 1389
    .local v1, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1f

    .line 1390
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1391
    .local v3, "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_1c

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p2, :cond_1c

    .line 1392
    move-object v1, v3

    .line 1393
    goto :goto_1f

    .line 1389
    .end local v3  # "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1397
    :cond_1f
    :goto_1f
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static final getUiContext()Landroid/content/Context;
    .registers 1

    .line 1454
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method private getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .registers 5
    .param p1, "displayId"  # I

    .line 933
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 934
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    if-nez v0, :cond_16

    .line 935
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    move-object v0, v1

    .line 936
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 938
    :cond_16
    return-object v0
.end method

.method static synthetic lambda$reboot$6(Z)V
    .registers 4
    .param p0, "safeMode"  # Z

    .line 1141
    if-eqz p0, :cond_b

    .line 1142
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_16

    .line 1144
    :cond_b
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "userrequested"

    invoke-static {v0, v2, v1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1147
    :goto_16
    return-void
.end method

.method static synthetic lambda$shutdown$5()V
    .registers 3

    .line 1124
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyBarAttachChanged()V
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UR67Ud0NgV9VHyelUmYzZNtR6O4;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UR67Ud0NgV9VHyelUmYzZNtR6O4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1075
    return-void
.end method

.method private setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .registers 20
    .param p1, "displayId"  # I
    .param p2, "vis"  # I
    .param p3, "fullscreenStackVis"  # I
    .param p4, "dockedStackVis"  # I
    .param p5, "mask"  # I
    .param p6, "fullscreenBounds"  # Landroid/graphics/Rect;
    .param p7, "dockedBounds"  # Landroid/graphics/Rect;
    .param p8, "isNavbarColorManagedByIme"  # Z
    .param p9, "cause"  # Ljava/lang/String;

    .line 885
    move-object v8, p0

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 889
    iget-object v9, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 890
    :try_start_7
    invoke-direct/range {p0 .. p8}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 892
    iget v3, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v0, 0x3ff0000

    and-int v4, p2, v0

    iget-object v5, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 898
    monitor-exit v9

    .line 899
    return-void

    .line 898
    :catchall_1c
    move-exception v0

    monitor-exit v9
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private topAppWindowChanged(IZ)V
    .registers 6
    .param p1, "displayId"  # I
    .param p2, "menuVisible"  # Z

    .line 829
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 835
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V

    .line 837
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 845
    monitor-exit v0

    .line 846
    return-void

    .line 845
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private updateUiVisibilityLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 27
    .param p1, "displayId"  # I
    .param p2, "vis"  # I
    .param p3, "fullscreenStackVis"  # I
    .param p4, "dockedStackVis"  # I
    .param p5, "mask"  # I
    .param p6, "fullscreenBounds"  # Landroid/graphics/Rect;
    .param p7, "dockedBounds"  # Landroid/graphics/Rect;
    .param p8, "isNavbarColorManagedByIme"  # Z

    .line 905
    invoke-direct/range {p0 .. p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v7

    .line 906
    .local v7, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-nez v0, :cond_47

    .line 908
    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 910
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

    goto :goto_49

    .line 906
    :cond_47
    move-object/from16 v0, p0

    .line 922
    :goto_49
    return-void
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 553
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 555
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 557
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 559
    goto :goto_e

    .line 558
    :catch_d
    move-exception v0

    .line 561
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

    .line 1094
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1097
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1100
    nop

    .line 1101
    return-void

    .line 1099
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 575
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 577
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 579
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 581
    goto :goto_e

    .line 580
    :catch_d
    move-exception v0

    .line 583
    :cond_e
    :goto_e
    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 518
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 520
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 522
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 524
    goto :goto_e

    .line 523
    :catch_d
    move-exception v0

    .line 526
    :cond_e
    :goto_e
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"  # I
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "pkg"  # Ljava/lang/String;

    .line 676
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 677
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "what"  # I
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "pkg"  # Ljava/lang/String;

    .line 698
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 699
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "what"  # I
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 710
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 712
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 714
    monitor-exit v0

    .line 715
    return-void

    .line 714
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 13
    .param p1, "what"  # I
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 682
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 684
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1419
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StatusBarManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1421
    :cond_b
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 1423
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1424
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1425
    .local v3, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled1=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled2=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    .end local v2  # "key":I
    .end local v3  # "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1429
    .end local v1  # "i":I
    :cond_74
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1430
    .local v1, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDisableRecords.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8f
    if-ge v2, v1, :cond_b8

    .line 1432
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1433
    .local v3, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    .end local v3  # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 1435
    .end local v2  # "i":I
    :cond_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurrentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    const-string v2, "  mIcons="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1438
    .local v3, "slot":Ljava/lang/String;
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1440
    const-string v4, " -> "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 1442
    .local v4, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1443
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_118

    .line 1444
    const-string v5, " \""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1445
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1446
    const-string v5, "\""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1448
    :cond_118
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1449
    .end local v3  # "slot":Ljava/lang/String;
    .end local v4  # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_dd

    .line 1450
    .end local v1  # "N":I
    :cond_11c
    monitor-exit v0

    .line 1451
    return-void

    .line 1450
    :catchall_11e
    move-exception v1

    monitor-exit v0
    :try_end_120
    .catchall {:try_start_f .. :try_end_120} :catchall_11e

    throw v1
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 506
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 508
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 510
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 512
    goto :goto_e

    .line 511
    :catch_d
    move-exception v0

    .line 514
    :cond_e
    :goto_e
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 3
    .param p1, "subPanel"  # Ljava/lang/String;

    .line 542
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 544
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 546
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 548
    goto :goto_e

    .line 547
    :catch_d
    move-exception v0

    .line 550
    :cond_e
    :goto_e
    return-void
.end method

.method gatherDisableActionsLocked(II)I
    .registers 8
    .param p1, "userId"  # I
    .param p2, "which"  # I

    .line 1402
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1404
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1405
    .local v1, "net":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_1e

    .line 1406
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1407
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_1b

    .line 1408
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v4

    or-int/2addr v1, v4

    .line 1405
    .end local v3  # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1411
    .end local v2  # "i":I
    :cond_1e
    return v1
.end method

.method public getDisableFlags(Landroid/os/IBinder;I)[I
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "userId"  # I

    .line 749
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, "disable1":I
    const/4 v1, 0x0

    .line 753
    .local v1, "disable2":I
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 755
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 756
    .local v3, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    if-eqz v3, :cond_18

    .line 757
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    move v0, v4

    .line 758
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    move v1, v4

    .line 760
    .end local v3  # "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_23

    .line 762
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2

    .line 760
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .registers 3

    .line 1339
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowState(I)I
    .registers 6
    .param p1, "window"  # I

    .line 1492
    const/4 v0, 0x0

    .line 1493
    .local v0, "def":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 1494
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->hasNavigationBar(I)Z

    move-result v2

    if-eqz v2, :cond_e

    move v1, v3

    :cond_e
    move v0, v1

    .line 1496
    :cond_f
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method public handleSystemKey(I)V
    .registers 3
    .param p1, "key"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 589
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 591
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 593
    goto :goto_e

    .line 592
    :catch_d
    move-exception v0

    .line 595
    :cond_e
    :goto_e
    return-void
.end method

.method public hideBiometricDialog()V
    .registers 2

    .line 664
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 665
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 667
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideBiometricDialog()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 669
    goto :goto_e

    .line 668
    :catch_d
    move-exception v0

    .line 671
    :cond_e
    :goto_e
    return-void
.end method

.method public synthetic lambda$disableLocked$0$StatusBarManagerService(I)V
    .registers 3
    .param p1, "net1"  # I

    .line 731
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    return-void
.end method

.method public synthetic lambda$notifyBarAttachChanged$4$StatusBarManagerService()V
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_5

    return-void

    .line 1073
    :cond_5
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0, v1}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    .line 1074
    return-void
.end method

.method public synthetic lambda$setImeWindowStatus$2$StatusBarManagerService(ILandroid/os/IBinder;IIZ)V
    .registers 13
    .param p1, "displayId"  # I
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "vis"  # I
    .param p4, "backDisposition"  # I
    .param p5, "showImeSwitcher"  # Z

    .line 864
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_5

    return-void

    .line 866
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

    .line 868
    :catch_10
    move-exception v0

    :goto_11
    nop

    .line 869
    return-void
.end method

.method public synthetic lambda$topAppWindowChanged$1$StatusBarManagerService(IZ)V
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "menuVisible"  # Z

    .line 838
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 840
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->topAppWindowChanged(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 842
    goto :goto_b

    .line 841
    :catch_a
    move-exception v0

    .line 844
    :cond_b
    :goto_b
    return-void
.end method

.method public synthetic lambda$updateUiVisibilityLocked$3$StatusBarManagerService(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 20
    .param p1, "displayId"  # I
    .param p2, "vis"  # I
    .param p3, "fullscreenStackVis"  # I
    .param p4, "dockedStackVis"  # I
    .param p5, "mask"  # I
    .param p6, "fullscreenBounds"  # Landroid/graphics/Rect;
    .param p7, "dockedBounds"  # Landroid/graphics/Rect;
    .param p8, "isNavbarColorManagedByIme"  # Z

    .line 911
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1f

    .line 913
    :try_start_5
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

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

    .line 918
    goto :goto_1f

    .line 916
    :catch_17
    move-exception v0

    .line 917
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "StatusBarManagerService"

    const-string v3, "Can not get StatusBar!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    return-void
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 11
    .param p1, "userId"  # I
    .param p2, "what"  # I
    .param p3, "token"  # Landroid/os/IBinder;
    .param p4, "pkg"  # Ljava/lang/String;
    .param p5, "which"  # I

    .line 1354
    invoke-direct {p0, p3, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v0

    .line 1355
    .local v0, "match":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1356
    .local v1, "i":I
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1359
    .local v2, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 1360
    if-eqz v2, :cond_23

    .line 1361
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1362
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1364
    :cond_23
    return-void

    .line 1368
    :cond_24
    if-eqz v2, :cond_3a

    .line 1369
    invoke-virtual {v2, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1370
    invoke-virtual {v2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1371
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1372
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1374
    :cond_39
    return-void

    .line 1378
    :cond_3a
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V

    move-object v2, v3

    .line 1379
    invoke-virtual {v2, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1380
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    return-void
.end method

.method public mzOnClearAllNotifications(II)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "from"  # I

    .line 1509
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1511
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1512
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1514
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(IIII)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1516
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1517
    nop

    .line 1518
    return-void

    .line 1516
    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 4
    .param p1, "authenticated"  # Z
    .param p2, "failureReason"  # Ljava/lang/String;

    .line 631
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 632
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 634
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(ZLjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 636
    goto :goto_e

    .line 635
    :catch_d
    move-exception v0

    .line 638
    :cond_e
    :goto_e
    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"  # Ljava/lang/String;

    .line 653
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 654
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 656
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 658
    goto :goto_e

    .line 657
    :catch_d
    move-exception v0

    .line 660
    :cond_e
    :goto_e
    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"  # Ljava/lang/String;

    .line 642
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 643
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 645
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 647
    goto :goto_e

    .line 646
    :catch_d
    move-exception v0

    .line 649
    :cond_e
    :goto_e
    return-void
.end method

.method public onClearAllNotifications(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 1317
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->mzOnClearAllNotifications(II)V

    .line 1318
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 196
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"  # I

    .line 206
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 200
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onGlobalActionsHidden()V
    .registers 4

    .line 1167
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1170
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19

    if-nez v2, :cond_f

    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1170
    return-void

    .line 1171
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1174
    nop

    .line 1175
    return-void

    .line 1173
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onGlobalActionsShown()V
    .registers 4

    .line 1155
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1158
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_19

    if-nez v2, :cond_f

    .line 1161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1158
    return-void

    .line 1159
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    nop

    .line 1163
    return-void

    .line 1161
    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onGroupChildRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGroupChildRemoved: GroupDebug,onGroupChildRemoved called,pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onGroupChildRemoved(Ljava/lang/String;)V

    .line 1505
    return-void
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 20
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "actionIndex"  # I
    .param p3, "action"  # Landroid/app/Notification$Action;
    .param p4, "nv"  # Lcom/android/internal/statusbar/NotificationVisibility;
    .param p5, "generatedByAssistant"  # Z

    .line 1194
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1196
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1197
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1199
    .local v11, "identity":J
    move-object v13, p0

    :try_start_10
    iget-object v1, v13, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v9

    move v3, v10

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    .line 1202
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1203
    nop

    .line 1204
    return-void

    .line 1202
    :catchall_25
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "isBubble"  # Z

    .line 1322
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1325
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationBubbleChanged(Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1328
    nop

    .line 1329
    return-void

    .line 1327
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 25
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I
    .param p5, "key"  # Ljava/lang/String;
    .param p6, "dismissalSurface"  # I
    .param p7, "dismissalSentiment"  # I
    .param p8, "nv"  # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1229
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1230
    .local v13, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1232
    .local v14, "identity":J
    move-object/from16 v11, p0

    :try_start_11
    iget-object v1, v11, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v12

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v1 .. v11}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_2d

    .line 1235
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1236
    nop

    .line 1237
    return-void

    .line 1235
    :catchall_2d
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClearForReason(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 20
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I
    .param p5, "reason"  # I

    .line 1465
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1467
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1468
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1470
    .local v11, "identity":J
    move-object v13, p0

    :try_start_10
    iget-object v1, v13, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v9

    move v3, v10

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClearForReason(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_25

    .line 1472
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1473
    nop

    .line 1474
    return-void

    .line 1472
    :catchall_25
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "nv"  # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1179
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1181
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1182
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1184
    .local v2, "identity":J
    :try_start_f
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_19

    .line 1186
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    nop

    .line 1188
    return-void

    .line 1186
    :catchall_19
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1268
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1271
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1273
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    nop

    .line 1275
    return-void

    .line 1273
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 24
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "uid"  # I
    .param p5, "initialPid"  # I
    .param p6, "message"  # Ljava/lang/String;
    .param p7, "userId"  # I

    .line 1209
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1211
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1212
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1215
    .local v13, "identity":J
    move-object/from16 v15, p0

    :try_start_11
    iget-object v1, v15, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v11

    move v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_2b

    .line 1218
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1219
    nop

    .line 1220
    return-void

    .line 1218
    :catchall_2b
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "userAction"  # Z
    .param p3, "expanded"  # Z
    .param p4, "location"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1259
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1263
    nop

    .line 1264
    return-void

    .line 1262
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1309
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1312
    nop

    .line 1313
    return-void

    .line 1311
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 14
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "replyIndex"  # I
    .param p3, "reply"  # Ljava/lang/CharSequence;
    .param p4, "notificationLocation"  # I
    .param p5, "modifiedBeforeSending"  # Z
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
    .local v0, "identity":J
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

    .line 1300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1301
    nop

    .line 1302
    return-void

    .line 1300
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 14
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "smartReplyCount"  # I
    .param p3, "smartActionCount"  # I
    .param p4, "generatedByAssistant"  # Z
    .param p5, "editBeforeSending"  # Z

    .line 1280
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1283
    .local v0, "identity":J
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

    .line 1286
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    nop

    .line 1288
    return-void

    .line 1286
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 14
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I
    .param p5, "reason"  # I

    .line 1480
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1481
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1483
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1486
    nop

    .line 1487
    return-void

    .line 1485
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 6
    .param p1, "newlyVisibleKeys"  # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"  # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1243
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1246
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1249
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1250
    nop

    .line 1251
    return-void

    .line 1249
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelHidden()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1105
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1108
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1110
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    nop

    .line 1112
    return-void

    .line 1110
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .registers 6
    .param p1, "clearNotificationEffects"  # Z
    .param p2, "numItems"  # I

    .line 1083
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1086
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1088
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1089
    nop

    .line 1090
    return-void

    .line 1088
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 1334
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

    .line 1336
    return-void
.end method

.method public reboot(Z)V
    .registers 6
    .param p1, "safeMode"  # Z

    .line 1136
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1137
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1139
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xttpOmITnH77D9l5GEy2ZzWEGAg;

    invoke-direct {v3, p1}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xttpOmITnH77D9l5GEy2ZzWEGAg;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_16

    .line 1149
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1150
    nop

    .line 1151
    return-void

    .line 1149
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .registers 22
    .param p1, "bar"  # Lcom/android/internal/statusbar/IStatusBar;

    .line 1046
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerStatusBar bar="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StatusBarManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iput-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1050
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->linkToDeath()V

    .line 1051
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1053
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1054
    :try_start_2b
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1055
    .local v5, "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_85

    .line 1056
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1059
    :try_start_36
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1060
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    new-instance v19, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v6

    .line 1061
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v8

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v9

    .line 1062
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v10

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v11

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v12, 0x2

    .line 1063
    invoke-virtual {v1, v4, v12}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v12

    .line 1064
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v13

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v14

    .line 1065
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v16

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v17

    .line 1066
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v18

    move-object/from16 v4, v19

    invoke-direct/range {v4 .. v18}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;IIZIIZIIILandroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    monitor-exit v3

    .line 1060
    return-object v19

    .line 1067
    .end local v0  # "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    :catchall_82
    move-exception v0

    monitor-exit v3
    :try_end_84
    .catchall {:try_start_36 .. :try_end_84} :catchall_82

    throw v0

    .line 1055
    .end local v5  # "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v3
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 564
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 566
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 568
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 570
    goto :goto_e

    .line 569
    :catch_d
    move-exception v0

    .line 572
    :cond_e
    :goto_e
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "slot"  # Ljava/lang/String;

    .line 809
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 811
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 812
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_16

    .line 816
    :try_start_f
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 818
    goto :goto_16

    .line 817
    :catch_15
    move-exception v1

    .line 820
    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v0

    .line 821
    return-void

    .line 820
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public resetKeyguardPeriodNotifications()V
    .registers 2

    .line 1523
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0}, Lcom/android/server/notification/NotificationDelegate;->resetKeyguardPeriodNotifications()V

    .line 1524
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 15
    .param p1, "slot"  # Ljava/lang/String;
    .param p2, "iconPackage"  # Ljava/lang/String;
    .param p3, "iconId"  # I
    .param p4, "iconLevel"  # I
    .param p5, "contentDescription"  # Ljava/lang/String;

    .line 768
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 770
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 771
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

    move-object v1, v8

    .line 774
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_26

    if-eqz v2, :cond_24

    .line 778
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 780
    goto :goto_24

    .line 779
    :catch_23
    move-exception v2

    .line 782
    .end local v1  # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_24
    :goto_24
    :try_start_24
    monitor-exit v0

    .line 783
    return-void

    .line 782
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "slot"  # Ljava/lang/String;
    .param p2, "visibility"  # Z

    .line 787
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 789
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 790
    :try_start_6
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 791
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_12

    .line 792
    monitor-exit v0

    return-void

    .line 794
    :cond_12
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_23

    .line 795
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 797
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_25

    if-eqz v2, :cond_23

    .line 799
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    .line 801
    goto :goto_23

    .line 800
    :catch_22
    move-exception v2

    .line 804
    .end local v1  # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    .line 805
    return-void

    .line 804
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 16
    .param p1, "displayId"  # I
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "vis"  # I
    .param p4, "backDisposition"  # I
    .param p5, "showImeSwitcher"  # Z

    .line 851
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 857
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p3, p4, p5, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V

    .line 863
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

    .line 870
    monitor-exit v0

    .line 871
    return-void

    .line 870
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public setSystemUiVisibility(IIILjava/lang/String;)V
    .registers 16
    .param p1, "displayId"  # I
    .param p2, "vis"  # I
    .param p3, "mask"  # I
    .param p4, "cause"  # Ljava/lang/String;

    .line 875
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    .line 876
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    nop

    .line 877
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v8

    .line 878
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v9

    .line 876
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 879
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .registers 13
    .param p1, "bundle"  # Landroid/os/Bundle;
    .param p2, "receiver"  # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p3, "type"  # I
    .param p4, "requireConfirmation"  # Z
    .param p5, "userId"  # I

    .line 620
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 621
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_13

    .line 623
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

    .line 625
    goto :goto_13

    .line 624
    :catch_12
    move-exception v0

    .line 627
    :cond_13
    :goto_13
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 3
    .param p1, "entering"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 601
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 603
    goto :goto_b

    .line 602
    :catch_a
    move-exception v0

    .line 605
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

    .line 609
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_b

    .line 611
    :try_start_4
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 613
    goto :goto_b

    .line 612
    :catch_a
    move-exception v0

    .line 615
    :cond_b
    :goto_b
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 1119
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1123
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UDezjj1c1F0KKrp-AAYUhMa21kk;->INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UDezjj1c1F0KKrp-AAYUhMa21kk;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 1127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1128
    nop

    .line 1129
    return-void

    .line 1127
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public togglePanel()V
    .registers 2

    .line 530
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 532
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_e

    .line 534
    :try_start_7
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 536
    goto :goto_e

    .line 535
    :catch_d
    move-exception v0

    .line 538
    :cond_e
    :goto_e
    return-void
.end method
