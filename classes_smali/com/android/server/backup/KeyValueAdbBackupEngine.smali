.class public Lcom/android/server/backup/KeyValueAdbBackupEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;
    }
.end annotation


# static fields
.field private static final BACKUP_KEY_VALUE_BACKUP_DATA_FILENAME_SUFFIX:Ljava/lang/String; = ".data"

.field private static final BACKUP_KEY_VALUE_BLANK_STATE_FILENAME:Ljava/lang/String; = "blank_state"

.field private static final BACKUP_KEY_VALUE_DIRECTORY_NAME:Ljava/lang/String; = "key_value_dir"

.field private static final BACKUP_KEY_VALUE_NEW_STATE_FILENAME_SUFFIX:Ljava/lang/String; = ".new"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbBackupEngine"


# instance fields
.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private final mBackupDataName:Ljava/io/File;

.field private mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBlankStateName:Ljava/io/File;

.field private final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private final mDataDir:Ljava/io/File;

.field private final mManifestFile:Ljava/io/File;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private final mNewStateName:Ljava/io/File;

.field private final mOutput:Ljava/io/OutputStream;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private final mStateDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 73
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 74
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 75
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    iput-object p6, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    .line 78
    new-instance p1, Ljava/io/File;

    const-string p2, "key_value_dir"

    invoke-direct {p1, p5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    .line 79
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 81
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 83
    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    const-string p5, "blank_state"

    invoke-direct {p2, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    .line 84
    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".data"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p2, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    .line 86
    new-instance p2, Ljava/io/File;

    iget-object p4, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mStateDir:Ljava/io/File;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".new"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    .line 89
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    const-string p4, "_manifest"

    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    .line 90
    nop

    .line 91
    invoke-virtual {p3}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    .line 90
    const-string p2, "Timeout parameters cannot be null"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mManifestFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mDataDir:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Ljava/io/File;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/backup/KeyValueAdbBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method private bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;
    .registers 5

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p1

    .line 150
    :catch_8
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in binding to agent for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyValueAdbBackupEngine"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 p1, 0x0

    return-object p1
.end method

.method private cleanup()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 302
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 303
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 304
    return-void
.end method

.method private invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z
    .registers 22

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "KeyValueAdbBackupEngine"

    iget-object v3, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v3

    .line 160
    iget-object v4, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v6

    .line 162
    const/4 v10, 0x0

    :try_start_13
    iget-object v4, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 165
    new-instance v4, Lcom/android/server/backup/remote/ServiceBackupCallback;

    iget-object v5, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 167
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/server/backup/remote/ServiceBackupCallback;-><init>(Landroid/app/backup/IBackupManager;I)V

    .line 169
    iget-object v12, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v13, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v14, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    const-wide v15, 0x7fffffffffffffffL

    const/16 v18, 0x0

    move-object/from16 v11, p2

    move-object/from16 v17, v4

    invoke-interface/range {v11 .. v18}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 176
    iget-object v0, v0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key-value backup failed on package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_56} :catch_59

    .line 178
    return v10

    .line 183
    :cond_57
    const/4 v0, 0x1

    return v0

    .line 184
    :catch_59
    move-exception v0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error invoking agent for backup on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v10
.end method

.method private prepareBackupFiles(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBlankStateName:Ljava/io/File;

    const/high16 v0, 0x18000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 135
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    const/high16 v0, 0x3c000000  # 0.0078125f

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 138
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELinux restorecon failed on "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupDataName:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyValueAdbBackupEngine"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_34
    iget-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewStateName:Ljava/io/File;

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 144
    return-void
.end method

.method private writeBackupData()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "KeyValueAdbBackupEngine"

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v4

    .line 258
    nop

    .line 260
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_12
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_75
    .catchall {:try_start_12 .. :try_end_16} :catchall_72

    .line 262
    :try_start_16
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 270
    new-instance v2, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    aget-object v4, v11, v10

    invoke-direct {v2, p0, v3, v4, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine$KeyValueAdbBackupDataCopier;-><init>(Lcom/android/server/backup/KeyValueAdbBackupEngine;Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)V

    .line 272
    aget-object v3, v11, v10

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 273
    aput-object v8, v11, v10

    .line 274
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "key-value-app-data-runner"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 278
    aget-object v2, v11, v9

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v2, v3}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 280
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Full backup failed on package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_5f} :catch_6f
    .catchall {:try_start_16 .. :try_end_5f} :catchall_6d

    .line 291
    :cond_5f
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 292
    nop

    .line 293
    aget-object v0, v11, v9

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    aget-object v0, v11, v10

    goto :goto_a4

    .line 291
    :catchall_6d
    move-exception v0

    goto :goto_a8

    .line 287
    :catch_6f
    move-exception v1

    move-object v8, v11

    goto :goto_76

    .line 291
    :catchall_72
    move-exception v0

    move-object v11, v8

    goto :goto_a8

    .line 287
    :catch_75
    move-exception v1

    .line 288
    :goto_76
    :try_start_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error backing up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_76 .. :try_end_96} :catchall_72

    .line 291
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 292
    if-eqz v8, :cond_a7

    .line 293
    aget-object v0, v8, v9

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    aget-object v0, v8, v10

    :goto_a4
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 297
    :cond_a7
    return-void

    .line 291
    :goto_a8
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 292
    if-eqz v11, :cond_b9

    .line 293
    aget-object v1, v11, v9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 294
    aget-object v1, v11, v10

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_b9
    throw v0
.end method


# virtual methods
.method public backupOnePackage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-string v0, "KeyValueAdbBackupEngine"

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    :try_start_6
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->prepareBackupFiles(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->bindToAgent(Landroid/content/pm/ApplicationInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    .line 103
    if-nez v1, :cond_2f

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed binding to BackupAgent for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2b} :catch_5e
    .catchall {:try_start_6 .. :try_end_2b} :catchall_5c

    .line 124
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 107
    return-void

    .line 111
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->invokeAgentForAdbBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Failed for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_51} :catch_5e
    .catchall {:try_start_2f .. :try_end_51} :catchall_5c

    .line 124
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 114
    return-void

    .line 118
    :cond_55
    :try_start_55
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->writeBackupData()V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_5e
    .catchall {:try_start_55 .. :try_end_58} :catchall_5c

    .line 124
    :goto_58
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    .line 125
    goto :goto_80

    .line 124
    :catchall_5c
    move-exception v0

    goto :goto_81

    .line 119
    :catch_5e
    move-exception v1

    .line 120
    :try_start_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed creating files for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbBackupEngine;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " will ignore package. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_5f .. :try_end_7f} :catchall_5c

    goto :goto_58

    .line 126
    :goto_80
    return-void

    .line 124
    :goto_81
    invoke-direct {p0}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->cleanup()V

    throw v0
.end method
