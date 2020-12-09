.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/PrintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintManagerImpl"
.end annotation


# static fields
.field private static final BACKGROUND_USER_ID:I = -0xa


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 115
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 121
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 124
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo p1, "user"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 126
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    .line 127
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 2

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;
    .registers 4

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method private dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/print/UserState;",
            ">;)V"
        }
    .end annotation

    .line 781
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 782
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_22

    .line 783
    const-wide v2, 0x20b00000001L

    const-string/jumbo v4, "user_states"

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 784
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState;

    invoke-virtual {v4, p1}, Lcom/android/server/print/UserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 785
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 788
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 789
    return-void
.end method

.method private getCurrentUserId()I
    .registers 4

    .line 1083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1085
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1087
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1085
    return v2

    .line 1087
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .registers 4

    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object p1

    return-object p1
.end method

.method private getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    .registers 6

    .line 965
    if-eqz p3, :cond_27

    iget-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_27

    .line 966
    :cond_b
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be unlocked for printing to be available"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 970
    :cond_27
    :goto_27
    iget-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/print/UserState;

    .line 971
    if-nez p3, :cond_3f

    .line 972
    new-instance p3, Lcom/android/server/print/UserState;

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    invoke-direct {p3, v0, p1, v1, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    .line 973
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 976
    :cond_3f
    if-nez p2, :cond_44

    .line 977
    invoke-virtual {p3}, Lcom/android/server/print/UserState;->increasePriority()V

    .line 980
    :cond_44
    return-object p3
.end method

.method private handleUserStopped(I)V
    .registers 4

    .line 1008
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1020
    return-void
.end method

.method private handleUserUnlocked(I)V
    .registers 4

    .line 986
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1003
    return-void
.end method

.method private isPrintingEnabled()Z
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 776
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 775
    const-string/jumbo v2, "no_printing"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private registerBroadcastReceivers()V
    .registers 6

    .line 816
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    .line 955
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 957
    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 792
    const-string v0, "disabled_print_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 794
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 811
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 813
    return-void
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .registers 6

    .line 1040
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1041
    if-nez v0, :cond_7

    .line 1042
    return p1

    .line 1044
    :cond_7
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1045
    if-eq p1, v0, :cond_45

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_45

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    goto :goto_45

    .line 1049
    :cond_16
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v2, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_21

    .line 1056
    return p1

    .line 1052
    :cond_21
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call from app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as app "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1047
    :cond_45
    :goto_45
    return p1
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1071
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1072
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1071
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1073
    array-length v1, v0

    .line 1074
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    .line 1075
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1076
    return-object p1

    .line 1074
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1079
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "packageName has to belong to the caller"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resolveCallingProfileParentLocked(I)I
    .registers 5

    .line 1023
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_29

    .line 1024
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1026
    :try_start_a
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1027
    if-eqz p1, :cond_1e

    .line 1028
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_24

    .line 1033
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1028
    return p1

    .line 1030
    :cond_1e
    const/16 p1, -0xa

    .line 1033
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    return p1

    .line 1033
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1036
    :cond_29
    return p1
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .registers 10

    .line 1061
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    .line 1061
    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return p1

    .line 1063
    :catch_17
    move-exception v0

    .line 1066
    return p1
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 550
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 553
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_d
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 556
    monitor-exit v0

    return-void

    .line 558
    :cond_19
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    .line 559
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p3

    .line 560
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_34

    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 563
    :try_start_27
    invoke-virtual {p3, p1, p2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 566
    nop

    .line 567
    return-void

    .line 565
    :catchall_2f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 560
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 645
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 649
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_15
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 652
    monitor-exit v0

    return-void

    .line 654
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 655
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_38

    .line 656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 658
    :try_start_2b
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    nop

    .line 662
    return-void

    .line 660
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 655
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 596
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 600
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_15
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 603
    monitor-exit v0

    return-void

    .line 605
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 606
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_38

    .line 607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 609
    :try_start_2b
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    nop

    .line 613
    return-void

    .line 611
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 606
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .registers 7

    .line 263
    if-nez p1, :cond_3

    .line 264
    return-void

    .line 267
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 270
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_a
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 273
    monitor-exit v0

    return-void

    .line 275
    :cond_16
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    .line 276
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p3

    .line 277
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_31

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    :try_start_24
    invoke-virtual {p3, p1, p2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 277
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 6

    .line 394
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 396
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 398
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 401
    monitor-exit v0

    return-void

    .line 403
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 404
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 407
    :try_start_23
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 409
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 404
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 6

    .line 416
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 418
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 420
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 423
    monitor-exit v0

    return-void

    .line 425
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 426
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    :try_start_23
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    nop

    .line 433
    return-void

    .line 431
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 426
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 691
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    .line 693
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "PrintManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 695
    :cond_11
    nop

    .line 696
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 697
    :goto_15
    array-length v3, p3

    if-ge v1, v3, :cond_51

    .line 698
    aget-object v3, p3, v1

    .line 699
    if-eqz v3, :cond_51

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_51

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2b

    .line 700
    goto :goto_51

    .line 702
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    .line 703
    const-string v4, "--proto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 704
    const/4 v2, 0x1

    goto :goto_50

    .line 706
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    :goto_50
    goto :goto_15

    .line 710
    :cond_51
    :goto_51
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 711
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_59
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 713
    nop

    :goto_60
    if-ge v0, v3, :cond_70

    .line 714
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 716
    :cond_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_a3

    .line 718
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 720
    if-eqz v2, :cond_85

    .line 721
    :try_start_77
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V

    goto :goto_99

    .line 724
    :cond_85
    const-string p1, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    :try_end_99
    .catchall {:try_start_77 .. :try_end_99} :catchall_9e

    .line 730
    :goto_99
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    nop

    .line 732
    return-void

    .line 730
    :catchall_9e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 716
    :catchall_a3
    move-exception p1

    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method public getBindInstantServiceAllowed(I)Z
    .registers 4

    .line 736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 737
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 738
    :cond_b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by uid 2000 or 0"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 743
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    const/4 v1, 0x0

    :try_start_17
    invoke-direct {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p1

    .line 745
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 748
    :try_start_20
    invoke-virtual {p1}, Lcom/android/server/print/UserState;->getBindInstantServiceAllowed()Z

    move-result p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 748
    return p1

    .line 750
    :catchall_28
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 745
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .registers 6

    .line 242
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 244
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 246
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1a

    .line 249
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 251
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 252
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_31

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 255
    :try_start_24
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2c

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    return-object p1

    .line 257
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 252
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .registers 8

    .line 217
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 218
    return-object v0

    .line 221
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 224
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_b
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_17

    .line 227
    monitor-exit v1

    return-object v0

    .line 229
    :cond_17
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p3

    .line 231
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_32

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    :try_start_25
    invoke-virtual {p3, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    return-object p1

    .line 236
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 231
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 199
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_7
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_14

    .line 202
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 204
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p1

    .line 205
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 206
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2f

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 209
    :try_start_22
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 211
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    return-object p1

    .line 211
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 206
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p1

    .line 376
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1b

    .line 379
    monitor-exit v0

    return-object v1

    .line 381
    :cond_1b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p1

    .line 382
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_32

    .line 383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 385
    :try_start_25
    invoke-virtual {p1}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 387
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    return-object p1

    .line 387
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 382
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public getPrintServices(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .line 314
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 317
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PRINT_SERVICES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 321
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_13
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_1f

    .line 324
    monitor-exit v0

    return-object v1

    .line 326
    :cond_1f
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 327
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_36

    .line 328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 330
    :try_start_29
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    .line 332
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    return-object p1

    .line 332
    :catchall_31
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 327
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 134
    new-instance v0, Lcom/android/server/print/PrintShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintShellCommand;-><init>(Landroid/print/IPrintManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/print/PrintShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 135
    return-void
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 13

    .line 140
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/print/IPrintDocumentAdapter;

    .line 141
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_55

    .line 142
    nop

    .line 143
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 144
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    .line 148
    :try_start_1f
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 150
    if-eqz p1, :cond_33

    .line 151
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    const/4 p6, 0x1

    invoke-static {p2, p5, p1, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_50

    .line 155
    :cond_33
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    nop

    .line 158
    :try_start_37
    invoke-interface {v2}, Landroid/print/IPrintDocumentAdapter;->start()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 161
    goto :goto_43

    .line 159
    :catch_3b
    move-exception p1

    .line 160
    const-string p1, "PrintManagerService"

    const-string p2, "Error calling IPrintDocumentAdapter.start()"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_43
    :try_start_43
    invoke-interface {v2}, Landroid/print/IPrintDocumentAdapter;->finish()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 166
    goto :goto_4f

    .line 164
    :catch_47
    move-exception p1

    .line 165
    const-string p1, "PrintManagerService"

    const-string p2, "Error calling IPrintDocumentAdapter.finish()"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_4f
    return-object v0

    .line 155
    :catchall_50
    move-exception p1

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 169
    :cond_55
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 170
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 172
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 176
    iget-object p4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 178
    :try_start_69
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result p6

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq p6, v3, :cond_75

    .line 179
    monitor-exit p4

    return-object v0

    .line 181
    :cond_75
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v5

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 184
    monitor-exit p4
    :try_end_83
    .catchall {:try_start_69 .. :try_end_83} :catchall_95

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 187
    move-object v3, p3

    :try_start_88
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p3
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_90

    .line 190
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    return-object p3

    .line 190
    :catchall_90
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    .line 184
    :catchall_95
    move-exception p1

    :try_start_96
    monitor-exit p4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6

    .line 572
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 574
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 576
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 579
    monitor-exit v0

    return-void

    .line 581
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 582
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 585
    :try_start_23
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 587
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    nop

    .line 589
    return-void

    .line 587
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 582
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .registers 6

    .line 667
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 669
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 673
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_15
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 677
    monitor-exit v0

    return-void

    .line 679
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 680
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_38

    .line 681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 683
    :try_start_2b
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 685
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 680
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .registers 6

    .line 618
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 620
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 624
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_15
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_21

    .line 627
    monitor-exit v0

    return-void

    .line 629
    :cond_21
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 630
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_38

    .line 631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 633
    :try_start_2b
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 635
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    nop

    .line 637
    return-void

    .line 635
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 630
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .registers 7

    .line 288
    if-eqz p1, :cond_3a

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 293
    :cond_9
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 296
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_10
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 299
    monitor-exit v0

    return-void

    .line 301
    :cond_1c
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    .line 302
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p3

    .line 303
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_37

    .line 304
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 306
    :try_start_2a
    invoke-virtual {p3, p1, p2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_32

    .line 308
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    nop

    .line 310
    return-void

    .line 308
    :catchall_32
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 303
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1

    .line 290
    :cond_3a
    :goto_3a
    return-void
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .registers 5

    .line 756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 757
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 758
    :cond_b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can only be called by uid 2000 or 0"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 763
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    const/4 v1, 0x0

    :try_start_17
    invoke-direct {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p1

    .line 765
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 768
    :try_start_20
    invoke-virtual {p1, p2}, Lcom/android/server/print/UserState;->setBindInstantServiceAllowed(Z)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    .line 770
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    nop

    .line 772
    return-void

    .line 770
    :catchall_28
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 765
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .registers 7

    .line 338
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 339
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 342
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_34

    :try_start_10
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.printspooler"

    invoke-virtual {v1, v2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 342
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    goto :goto_34

    .line 345
    :cond_23
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only system and print spooler can call this"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2b} :catch_2b

    .line 347
    :catch_2b
    move-exception p1

    .line 348
    const-string p2, "PrintManagerService"

    const-string p3, "Could not verify caller"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    return-void

    .line 350
    :cond_34
    :goto_34
    nop

    .line 352
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 355
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3e
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_4a

    .line 358
    monitor-exit v0

    return-void

    .line 360
    :cond_4a
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p3

    .line 361
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_61

    .line 362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    :try_start_54
    invoke-virtual {p3, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5c

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    nop

    .line 368
    return-void

    .line 366
    :catchall_5c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 361
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .line 438
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 439
    if-eqz p2, :cond_10

    .line 440
    const-string v0, "PrinterId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 444
    :cond_10
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 446
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_17
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_23

    .line 449
    monitor-exit v0

    return-void

    .line 451
    :cond_23
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p3

    .line 452
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_3a

    .line 453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 455
    :try_start_2d
    invoke-virtual {p3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_35

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    nop

    .line 459
    return-void

    .line 457
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 452
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .registers 6

    .line 505
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 507
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 509
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 512
    monitor-exit v0

    return-void

    .line 514
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 515
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 518
    :try_start_23
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    nop

    .line 522
    return-void

    .line 520
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 515
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 6

    .line 463
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 465
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 467
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 470
    monitor-exit v0

    return-void

    .line 472
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 473
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 476
    :try_start_23
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 473
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .registers 6

    .line 526
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrinterId;

    .line 528
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 530
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_19

    .line 533
    monitor-exit v0

    return-void

    .line 535
    :cond_19
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 536
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_30

    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 539
    :try_start_23
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 541
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    nop

    .line 543
    return-void

    .line 541
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 536
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .line 484
    const-string v0, "PrinterId"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 486
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 488
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_f
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 491
    monitor-exit v0

    return-void

    .line 493
    :cond_1b
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 494
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_32

    .line 495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    :try_start_25
    invoke-virtual {p2, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    nop

    .line 501
    return-void

    .line 499
    :catchall_2d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 494
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method
