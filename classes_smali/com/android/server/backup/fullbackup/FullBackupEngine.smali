.class public Lcom/android/server/backup/fullbackup/FullBackupEngine;
.super Ljava/lang/Object;
.source "FullBackupEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private mAgent:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mIncludeApks:Z

.field private final mOpToken:I

.field private mOutput:Ljava/io/OutputStream;

.field private mPkg:Landroid/content/pm/PackageInfo;

.field private mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

.field private final mQuota:J

.field private mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

.field private final mTransportFlags:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V
    .registers 11

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 195
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 196
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    .line 197
    iput-object p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    .line 198
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    .line 199
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    .line 200
    iput-wide p7, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    .line 201
    iput p9, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    .line 202
    iput p10, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    .line 203
    nop

    .line 205
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    .line 204
    const-string p2, "Timeout parameters cannot be null"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/UserBackupManagerService;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/backup/fullbackup/FullBackupEngine;)I
    .registers 1

    .line 55
    iget p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTransportFlags:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/backup/fullbackup/FullBackupEngine;)Lcom/android/server/backup/BackupRestoreTask;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mTimeoutMonitor:Lcom/android/server/backup/BackupRestoreTask;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/backup/fullbackup/FullBackupEngine;)J
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mQuota:J

    return-wide v0
.end method

.method private initializeAgent()Z
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 303
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 304
    invoke-virtual {v0, v2, v1}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 307
    :cond_11
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method private tearDown()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_b

    .line 312
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 314
    :cond_b
    return-void
.end method


# virtual methods
.method public backupOnePackage()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    move-object/from16 v9, p0

    const-string v10, "Error bringing down backup stack"

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    const/16 v11, -0x3eb

    const-string v12, "BackupManagerService"

    if-eqz v0, :cond_f5

    .line 232
    nop

    .line 234
    const/16 v13, -0x3e8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    :try_start_15
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v17
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_8e
    .catchall {:try_start_15 .. :try_end_19} :catchall_89

    .line 236
    :try_start_19
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;

    iget-object v3, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v5, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    aget-object v6, v17, v16

    iget v7, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    iget-boolean v8, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mIncludeApks:Z

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/fullbackup/FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 244
    aget-object v1, v17, v16

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 245
    aput-object v14, v17, v16

    .line 246
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "app-data-runner"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 249
    aget-object v0, v17, v15

    iget-object v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 251
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    if-nez v0, :cond_68

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Full backup failed on package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_67} :catch_85
    .catchall {:try_start_19 .. :try_end_67} :catchall_82

    goto :goto_69

    .line 257
    :cond_68
    move v11, v15

    .line 265
    :goto_69
    :try_start_69
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 266
    nop

    .line 267
    aget-object v0, v17, v15

    if-eqz v0, :cond_78

    .line 268
    aget-object v0, v17, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 270
    :cond_78
    aget-object v0, v17, v16

    if-eqz v0, :cond_cd

    .line 271
    aget-object v0, v17, v16

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_81} :catch_ce

    goto :goto_cd

    .line 263
    :catchall_82
    move-exception v0

    move-object v1, v0

    goto :goto_d5

    .line 259
    :catch_85
    move-exception v0

    move-object/from16 v14, v17

    goto :goto_8f

    .line 263
    :catchall_89
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v14

    goto :goto_d5

    .line 259
    :catch_8e
    move-exception v0

    .line 260
    :goto_8f
    :try_start_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_8f .. :try_end_b3} :catchall_89

    .line 261
    nop

    .line 265
    :try_start_b4
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 266
    if-eqz v14, :cond_cd

    .line 267
    aget-object v0, v14, v15

    if-eqz v0, :cond_c4

    .line 268
    aget-object v0, v14, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 270
    :cond_c4
    aget-object v0, v14, v16

    if-eqz v0, :cond_cd

    .line 271
    aget-object v0, v14, v16

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_cd} :catch_ce

    .line 277
    :cond_cd
    :goto_cd
    goto :goto_d4

    .line 274
    :catch_ce
    move-exception v0

    .line 275
    invoke-static {v12, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    nop

    .line 278
    move v11, v13

    .line 279
    :goto_d4
    goto :goto_10d

    .line 265
    :goto_d5
    :try_start_d5
    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 266
    if-eqz v17, :cond_ee

    .line 267
    aget-object v0, v17, v15

    if-eqz v0, :cond_e5

    .line 268
    aget-object v0, v17, v15

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 270
    :cond_e5
    aget-object v0, v17, v16

    if-eqz v0, :cond_ee

    .line 271
    aget-object v0, v17, v16

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_ee} :catch_ef

    .line 277
    :cond_ee
    goto :goto_f4

    .line 274
    :catch_ef
    move-exception v0

    .line 275
    invoke-static {v12, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    nop

    .line 277
    :goto_f4
    throw v1

    .line 280
    :cond_f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_10d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->tearDown()V

    .line 283
    return v11
.end method

.method public synthetic lambda$sendQuotaExceeded$0$FullBackupEngine(JJLandroid/app/backup/IBackupCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method

.method public preflightCheck()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    if-nez v0, :cond_6

    .line 214
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_6
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 217
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/fullbackup/FullBackupPreflight;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v0

    .line 221
    return v0

    .line 223
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to full agent for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mPkg:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v0, -0x3eb

    return v0
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 12

    .line 287
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 289
    :try_start_6
    new-instance v0, Lcom/android/server/backup/fullbackup/-$$Lambda$FullBackupEngine$LOxiPZZ-0md-PJkeX7qAKOXet5g;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/fullbackup/-$$Lambda$FullBackupEngine$LOxiPZZ-0md-PJkeX7qAKOXet5g;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V

    iget-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 291
    invoke-virtual {p1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide p1

    .line 289
    invoke-static {v0, p1, p2}, Lcom/android/server/backup/remote/RemoteCall;->execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_18} :catch_19

    .line 294
    goto :goto_21

    .line 292
    :catch_19
    move-exception p1

    .line 293
    const-string p1, "BackupManagerService"

    const-string p2, "Remote exception while telling agent about quota exceeded"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_21
    :goto_21
    return-void
.end method
