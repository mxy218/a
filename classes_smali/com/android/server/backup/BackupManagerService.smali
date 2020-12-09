.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field static final DUMP_RUNNING_USERS_MESSAGE:Ljava/lang/String; = "Backup Manager is running for users:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MORE_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field private static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private final mBackupThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private final mServiceUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrampoline:Lcom/android/server/backup/Trampoline;

.field private mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;Landroid/os/HandlerThread;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Lcom/android/server/backup/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/Trampoline;

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mTrampoline:Lcom/android/server/backup/Trampoline;

    .line 114
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupThread:Landroid/os/HandlerThread;

    .line 117
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 119
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    if-nez p1, :cond_3d

    .line 120
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 123
    :cond_3d
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onRemovedNonSystemUser(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/backup/Trampoline;
    .registers 1

    .line 69
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/backup/Trampoline;)Lcom/android/server/backup/Trampoline;
    .registers 1

    .line 69
    sput-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object p0
.end method

.method private enforceCallingPermissionOnUserId(ILjava/lang/String;)V
    .registers 4

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 150
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_11
    return-void
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private onRemovedNonSystemUser(I)V
    .registers 5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing state for non system user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerFiles;->getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete state dir for removed user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_34
    return-void
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IIZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 14

    .line 841
    nop

    .line 842
    const-string v0, "acknowledgeAdbBackupOrRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 844
    if-eqz v1, :cond_11

    .line 845
    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 848
    :cond_11
    return-void
.end method

.method public adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 24

    .line 798
    nop

    .line 799
    const-string v0, "adbBackup()"

    move-object v1, p0

    move v2, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 801
    if-eqz v1, :cond_20

    .line 802
    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/backup/UserBackupManagerService;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 814
    :cond_20
    return-void
.end method

.method public adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    .registers 4

    .line 822
    nop

    .line 823
    const-string v0, "adbRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 825
    if-eqz p1, :cond_c

    .line 826
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 828
    :cond_c
    return-void
.end method

.method public agentConnected(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 5

    .line 263
    nop

    .line 264
    const-string v0, "agentConnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 266
    if-eqz p1, :cond_c

    .line 267
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 269
    :cond_c
    return-void
.end method

.method public agentDisconnected(ILjava/lang/String;)V
    .registers 4

    .line 276
    nop

    .line 277
    const-string v0, "agentDisconnected()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 279
    if-eqz p1, :cond_c

    .line 280
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->agentDisconnected(Ljava/lang/String;)V

    .line 282
    :cond_c
    return-void
.end method

.method public backupNow(I)V
    .registers 3

    .line 635
    nop

    .line 636
    const-string v0, "backupNow()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 638
    if-eqz p1, :cond_c

    .line 639
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 641
    :cond_c
    return-void
.end method

.method public beginFullBackup(ILcom/android/server/backup/FullBackupJob;)Z
    .registers 4

    .line 680
    nop

    .line 681
    const-string v0, "beginFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 683
    if-eqz p1, :cond_11

    .line 684
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 683
    :goto_12
    return p1
.end method

.method public beginRestoreSession(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5

    .line 736
    nop

    .line 737
    const-string v0, "beginRestoreSession()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 739
    if-nez p1, :cond_b

    .line 740
    const/4 p1, 0x0

    goto :goto_f

    .line 741
    :cond_b
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object p1

    .line 739
    :goto_f
    return-object p1
.end method

.method public cancelBackups(I)V
    .registers 3

    .line 663
    nop

    .line 664
    const-string v0, "cancelBackups()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 666
    if-eqz p1, :cond_c

    .line 667
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->cancelBackups()V

    .line 669
    :cond_c
    return-void
.end method

.method public clearBackupData(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 317
    nop

    .line 318
    const-string v0, "clearBackupData()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 320
    if-eqz p1, :cond_c

    .line 321
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_c
    return-void
.end method

.method public dataChanged(ILjava/lang/String;)V
    .registers 4

    .line 250
    nop

    .line 251
    const-string v0, "dataChanged()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 253
    if-eqz p1, :cond_c

    .line 254
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V

    .line 256
    :cond_c
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 856
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "BackupManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 857
    return-void

    .line 860
    :cond_b
    const/4 v0, 0x0

    if-eqz p3, :cond_53

    .line 861
    array-length v1, p3

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_53

    aget-object v3, p3, v2

    .line 862
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "users"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 863
    const-string p1, "Backup Manager is running for users:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    nop

    :goto_27
    iget-object p1, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_4c

    .line 865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 867
    :cond_4c
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 868
    return-void

    .line 861
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 873
    :cond_53
    nop

    .line 874
    const-string v1, "dump()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 876
    if-eqz v0, :cond_5f

    .line 877
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 879
    :cond_5f
    return-void
.end method

.method public endFullBackup(I)V
    .registers 3

    .line 692
    nop

    .line 693
    const-string v0, "endFullBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 695
    if-eqz p1, :cond_c

    .line 696
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V

    .line 698
    :cond_c
    return-void
.end method

.method public filterAppsEligibleForBackup(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 622
    nop

    .line 623
    const-string v0, "filterAppsEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 625
    if-nez p1, :cond_b

    .line 626
    const/4 p1, 0x0

    goto :goto_f

    .line 627
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterAppsEligibleForBackup([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 625
    :goto_f
    return-object p1
.end method

.method public fullTransportBackup(I[Ljava/lang/String;)V
    .registers 4

    .line 704
    nop

    .line 705
    const-string v0, "fullTransportBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 707
    if-eqz p1, :cond_c

    .line 708
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->fullTransportBackup([Ljava/lang/String;)V

    .line 710
    :cond_c
    return-void
.end method

.method public getAvailableRestoreToken(ILjava/lang/String;)J
    .registers 4

    .line 749
    nop

    .line 750
    const-string v0, "getAvailableRestoreToken()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 752
    if-nez p1, :cond_c

    .line 753
    const-wide/16 p1, 0x0

    goto :goto_10

    .line 754
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide p1

    .line 752
    :goto_10
    return-wide p1
.end method

.method public getConfigurationIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 470
    nop

    .line 471
    const-string v0, "getConfigurationIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 473
    if-nez p1, :cond_b

    .line 474
    const/4 p1, 0x0

    goto :goto_f

    .line 475
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 473
    :goto_f
    return-object p1
.end method

.method public getCurrentTransport(I)Ljava/lang/String;
    .registers 3

    .line 328
    nop

    .line 329
    const-string v0, "getCurrentTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 331
    if-nez p1, :cond_b

    .line 332
    const/4 p1, 0x0

    goto :goto_f

    .line 333
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransport()Ljava/lang/String;

    move-result-object p1

    .line 331
    :goto_f
    return-object p1
.end method

.method public getCurrentTransportComponent(I)Landroid/content/ComponentName;
    .registers 3

    .line 342
    nop

    .line 343
    const-string v0, "getCurrentTransportComponent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 345
    if-nez p1, :cond_b

    .line 346
    const/4 p1, 0x0

    goto :goto_f

    .line 347
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getCurrentTransportComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 345
    :goto_f
    return-object p1
.end method

.method public getDataManagementIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 548
    nop

    .line 549
    const-string v0, "getDataManagementIntent()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 551
    if-nez p1, :cond_b

    .line 552
    const/4 p1, 0x0

    goto :goto_f

    .line 553
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 551
    :goto_f
    return-object p1
.end method

.method public getDataManagementLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    .line 562
    nop

    .line 563
    const-string v0, "getDataManagementLabel()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 565
    if-nez p1, :cond_b

    .line 566
    const/4 p1, 0x0

    goto :goto_f

    .line 567
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 565
    :goto_f
    return-object p1
.end method

.method public getDestinationString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 537
    nop

    .line 538
    const-string v0, "getDestinationString()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 540
    if-nez p1, :cond_b

    .line 541
    const/4 p1, 0x0

    goto :goto_f

    .line 542
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 540
    :goto_f
    return-object p1
.end method

.method getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->enforceCallingPermissionOnUserId(ILjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 227
    if-nez v0, :cond_2b

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for unknown user: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2b
    return-object v0
.end method

.method public getServiceUsers()Landroid/util/SparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/backup/UserBackupManagerService;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 5

    .line 376
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    nop

    .line 378
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 379
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 381
    goto :goto_10

    .line 382
    :cond_25
    return-object v0
.end method

.method public getUserForAncestralSerialNumber(J)Landroid/os/UserHandle;
    .registers 10

    .line 504
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 508
    :try_start_c
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_42

    .line 511
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    nop

    .line 514
    array-length v1, v0

    :goto_20
    if-ge v4, v1, :cond_40

    aget v2, v0, v4

    .line 515
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->getServiceUsers()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/UserBackupManagerService;

    .line 516
    if-eqz v3, :cond_3d

    .line 517
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getAncestralSerialNumber()J

    move-result-wide v5

    cmp-long v3, v5, p1

    if-nez v3, :cond_3d

    .line 518
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1

    .line 514
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 523
    :cond_40
    const/4 p1, 0x0

    return-object p1

    .line 511
    :catchall_42
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public hasBackupPassword()Z
    .registers 3

    .line 773
    nop

    .line 774
    const/4 v0, 0x0

    const-string v1, "hasBackupPassword()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 777
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public initializeTransports(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 5

    .line 304
    nop

    .line 305
    const-string v0, "initializeTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 307
    if-eqz p1, :cond_c

    .line 308
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 310
    :cond_c
    return-void
.end method

.method public isAppEligibleForBackup(ILjava/lang/String;)Z
    .registers 4

    .line 610
    nop

    .line 611
    const-string v0, "isAppEligibleForBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 613
    if-eqz p1, :cond_11

    .line 614
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 613
    :goto_12
    return p1
.end method

.method public isBackupEnabled(I)Z
    .registers 3

    .line 598
    nop

    .line 599
    const-string v0, "isBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 601
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public listAllTransportComponents(I)[Landroid/content/ComponentName;
    .registers 3

    .line 364
    nop

    .line 365
    const-string v0, "listAllTransportComponents()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 367
    if-nez p1, :cond_b

    .line 368
    const/4 p1, 0x0

    goto :goto_f

    .line 369
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object p1

    .line 367
    :goto_f
    return-object p1
.end method

.method public listAllTransports(I)[Ljava/lang/String;
    .registers 3

    .line 353
    nop

    .line 354
    const-string v0, "listAllTransports()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 356
    if-nez p1, :cond_b

    .line 357
    const/4 p1, 0x0

    goto :goto_f

    .line 358
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object p1

    .line 356
    :goto_f
    return-object p1
.end method

.method public opComplete(IIJ)V
    .registers 6

    .line 289
    nop

    .line 290
    const-string/jumbo v0, "opComplete()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 292
    if-eqz p1, :cond_d

    .line 293
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/backup/UserBackupManagerService;->opComplete(IJ)V

    .line 295
    :cond_d
    return-void
.end method

.method public requestBackup(I[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7

    .line 653
    nop

    .line 654
    const-string/jumbo v0, "requestBackup()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 656
    if-nez p1, :cond_d

    .line 657
    const/16 p1, -0x7d1

    goto :goto_11

    .line 658
    :cond_d
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/backup/UserBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p1

    .line 656
    :goto_11
    return p1
.end method

.method public restoreAtInstall(ILjava/lang/String;I)V
    .registers 5

    .line 721
    nop

    .line 722
    const-string/jumbo v0, "restoreAtInstall()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 724
    if-eqz p1, :cond_d

    .line 725
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->restoreAtInstall(Ljava/lang/String;I)V

    .line 727
    :cond_d
    return-void
.end method

.method public selectBackupTransport(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    nop

    .line 440
    const-string/jumbo v0, "selectBackupTransport()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 442
    if-nez p1, :cond_c

    .line 443
    const/4 p1, 0x0

    goto :goto_10

    .line 444
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 442
    :goto_10
    return-object p1
.end method

.method public selectBackupTransportAsync(ILandroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 5

    .line 455
    nop

    .line 456
    const-string/jumbo v0, "selectBackupTransportAsync()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 458
    if-eqz p1, :cond_d

    .line 459
    invoke-virtual {p1, p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 461
    :cond_d
    return-void
.end method

.method public setAncestralSerialNumber(J)V
    .registers 5

    .line 485
    nop

    .line 487
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 486
    const-string/jumbo v1, "setAncestralSerialNumber()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_15

    .line 491
    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAncestralSerialNumber(J)V

    .line 493
    :cond_15
    return-void
.end method

.method public setAutoRestore(IZ)V
    .registers 4

    .line 586
    nop

    .line 587
    const-string/jumbo v0, "setAutoRestore()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 589
    if-eqz p1, :cond_d

    .line 590
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setAutoRestore(Z)V

    .line 592
    :cond_d
    return-void
.end method

.method public setBackupEnabled(IZ)V
    .registers 4

    .line 576
    nop

    .line 577
    const-string/jumbo v0, "setBackupEnabled()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object p1

    .line 579
    if-eqz p1, :cond_d

    .line 580
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(Z)V

    .line 582
    :cond_d
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 763
    nop

    .line 764
    const/4 v0, 0x0

    const-string/jumbo v1, "setBackupPassword()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 767
    if-eqz v1, :cond_13

    .line 768
    invoke-virtual {v1, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    nop

    .line 767
    :goto_14
    return v0
.end method

.method protected startServiceForUser(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already started, so not starting again"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 170
    :cond_25
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTrampoline:Lcom/android/server/backup/Trampoline;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportWhitelist:Ljava/util/Set;

    .line 171
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/Trampoline;Ljava/util/Set;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 174
    return-void
.end method

.method startServiceForUser(ILcom/android/server/backup/UserBackupManagerService;)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    const-wide/16 v0, 0x40

    const-string p1, "backup enable"

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->initializeBackupEnableState()V

    .line 185
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 186
    return-void
.end method

.method protected stopServiceForUser(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mServiceUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 193
    if-eqz v0, :cond_17

    .line 194
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownService()V

    .line 196
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(ILandroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/backup/FullBackupJob;->cancel(ILandroid/content/Context;)V

    .line 199
    :cond_17
    return-void
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 16

    .line 416
    nop

    .line 417
    const-string/jumbo v0, "updateTransportAttributes()"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_13

    .line 420
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 428
    :cond_13
    return-void
.end method
