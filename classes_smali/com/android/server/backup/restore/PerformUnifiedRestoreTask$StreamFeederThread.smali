.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 845
    const-string v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 858
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 859
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 860
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 861
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 862
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 1012
    return-void
.end method

.method public handleCancel(Z)V
    .registers 8
    .param p1, "cancelAll"  # Z

    .line 1020
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 1022
    const-string v0, "StreamFeederThread"

    const-string v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1027
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1025
    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/4 v5, 0x2

    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$202(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1028
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->handleTimeout()V

    .line 1030
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1031
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v3, v0, v1

    .line 1032
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1033
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v3, v0, v1

    .line 1034
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"  # J

    .line 1015
    return-void
.end method

.method public run()V
    .registers 24

    .line 866
    move-object/from16 v11, p0

    const-string v12, "Transport threw from abortFullRestore: "

    const-string v13, "StreamFeederThread"

    sget-object v14, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 867
    .local v14, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    const/4 v15, 0x0

    .line 869
    .local v15, "status":I
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 870
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 869
    const/16 v1, 0xb1c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 872
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 873
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iget-object v1, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v9, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZIZ)V

    iput-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 874
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngineThread;

    iget-object v1, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngineThread;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    .line 876
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 877
    .local v2, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v0, v3

    .line 878
    .local v4, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    aget-object v5, v0, v1

    .line 880
    .local v5, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v6, 0x8000

    .line 881
    .local v6, "bufferSize":I
    new-array v7, v6, [B

    .line 882
    .local v7, "buffer":[B
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v8, v0

    .line 883
    .local v8, "engineOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    .line 886
    .local v9, "transportIn":Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/Thread;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    const-string/jumbo v1, "unified-restore-engine"

    invoke-direct {v0, v10, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 888
    const-string v1, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    .line 890
    .local v1, "callerLogString":Ljava/lang/String;
    :try_start_79
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 891
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    :goto_83
    if-nez v15, :cond_107

    .line 893
    invoke-interface {v0, v5}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v18
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_89} :catch_268
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_89} :catch_1ac
    .catchall {:try_start_79 .. :try_end_89} :catchall_1a6

    move/from16 v19, v18

    .line 894
    .local v19, "result":I
    move/from16 v10, v19

    .end local v19  # "result":I
    .local v10, "result":I
    if-lez v10, :cond_c4

    .line 900
    if-le v10, v6, :cond_a6

    .line 901
    move v6, v10

    .line 902
    :try_start_92
    new-array v3, v6, [B
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_94} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_94} :catch_9c
    .catchall {:try_start_92 .. :try_end_94} :catchall_96

    move-object v7, v3

    .end local v7  # "buffer":[B
    .local v3, "buffer":[B
    goto :goto_a6

    .line 952
    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3  # "buffer":[B
    .end local v10  # "result":I
    .restart local v7  # "buffer":[B
    :catchall_96
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v0

    goto/16 :goto_304

    .line 941
    :catch_9c
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_1af

    .line 933
    :catch_a1
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_26b

    .line 904
    .restart local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v10  # "result":I
    :cond_a6
    :goto_a6
    move v3, v10

    .line 905
    .local v3, "toCopy":I
    :goto_a7
    if-lez v3, :cond_bf

    .line 906
    move-object/from16 v20, v2

    const/4 v2, 0x0

    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v20, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :try_start_ac
    invoke-virtual {v9, v7, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    move/from16 v21, v19

    .line 907
    .local v21, "n":I
    move-object/from16 v22, v0

    move/from16 v0, v21

    .end local v21  # "n":I
    .local v0, "n":I
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-virtual {v8, v7, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 908
    sub-int/2addr v3, v0

    .line 912
    .end local v0  # "n":I
    move-object/from16 v2, v20

    move-object/from16 v0, v22

    goto :goto_a7

    .line 905
    .end local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_bf
    move-object/from16 v22, v0

    move-object/from16 v20, v2

    .line 913
    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v3  # "toCopy":I
    .restart local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22  # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_fb

    .end local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .end local v22  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_c4
    move-object/from16 v22, v0

    move-object/from16 v20, v2

    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v22  # "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v0, -0x1

    if-ne v10, v0, :cond_cd

    .line 919
    const/4 v15, 0x0

    .line 920
    goto :goto_10b

    .line 924
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " streaming restore for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 925
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0xb0f

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_f9} :catch_104
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_f9} :catch_101
    .catchall {:try_start_ac .. :try_end_f9} :catchall_302

    .line 927
    move v0, v10

    move v15, v0

    .line 929
    .end local v10  # "result":I
    :goto_fb
    move-object/from16 v2, v20

    move-object/from16 v0, v22

    const/4 v3, 0x0

    goto :goto_83

    .line 941
    .end local v22  # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_101
    move-exception v0

    goto/16 :goto_1af

    .line 933
    :catch_104
    move-exception v0

    goto/16 :goto_26b

    .line 891
    .end local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :cond_107
    move-object/from16 v22, v0

    move-object/from16 v20, v2

    .line 952
    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_10b
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 953
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v2

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 960
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 964
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v2

    if-eqz v2, :cond_13a

    const/4 v2, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v2, 0x0

    :goto_13b
    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 968
    if-nez v15, :cond_159

    .line 970
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 974
    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 977
    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    goto :goto_19b

    .line 982
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_159
    :try_start_159
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 983
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 984
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_166} :catch_168

    .line 990
    nop

    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_181

    .line 985
    :catch_168
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/16 v15, -0x3e8

    .line 994
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_181
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 995
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 994
    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 998
    const/16 v2, -0x3e8

    if-ne v15, v2, :cond_199

    .line 999
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_19b

    .line 1001
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_199
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1004
    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_19b
    iget-object v2, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v2, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1005
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 1006
    goto/16 :goto_301

    .line 952
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catchall_1a6
    move-exception v0

    move-object/from16 v20, v2

    move-object v2, v0

    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    goto/16 :goto_304

    .line 941
    .end local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :catch_1ac
    move-exception v0

    move-object/from16 v20, v2

    .line 945
    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_1af
    :try_start_1af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport failed during restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v2, 0xb0f

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1cf
    .catchall {:try_start_1af .. :try_end_1cf} :catchall_302

    .line 947
    const/16 v2, -0x3e8

    .line 952
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v15  # "status":I
    .local v2, "status":I
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 953
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v10, 0x0

    aget-object v0, v0, v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 960
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 964
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_200

    const/4 v3, 0x1

    goto :goto_201

    :cond_200
    const/4 v3, 0x0

    :goto_201
    invoke-static {v0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 968
    if-nez v2, :cond_221

    .line 970
    :goto_206
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 974
    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 977
    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    move v15, v2

    goto/16 :goto_19b

    .line 982
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_221
    :try_start_221
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 983
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 984
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_22e} :catch_230

    .line 990
    nop

    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_249

    .line 985
    :catch_230
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/16 v2, -0x3e8

    .line 994
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_249
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 995
    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 994
    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 998
    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_263

    .line 999
    :goto_25e
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move v15, v2

    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto/16 :goto_19b

    .line 1001
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_263
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    move v15, v2

    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto/16 :goto_19b

    .line 933
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v2, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15  # "status":I
    :catch_268
    move-exception v0

    move-object/from16 v20, v2

    .line 937
    .end local v2  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v20  # "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    :goto_26b
    :try_start_26b
    const-string v2, "Unable to route data for restore"

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 939
    invoke-static {v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v10, v3, v17

    const-string v10, "I/O error on pipes"

    const/16 v16, 0x1

    aput-object v10, v3, v16

    .line 938
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_28a
    .catchall {:try_start_26b .. :try_end_28a} :catchall_302

    .line 940
    const/16 v2, -0x3eb

    .line 952
    .end local v0  # "e":Ljava/io/IOException;
    .end local v15  # "status":I
    .local v2, "status":I
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 953
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v16

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 960
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 964
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v3

    if-eqz v3, :cond_2ba

    const/4 v3, 0x1

    goto :goto_2bb

    :cond_2ba
    const/4 v3, 0x0

    :goto_2bb
    invoke-static {v0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 968
    if-nez v2, :cond_2c2

    .line 970
    goto/16 :goto_206

    .line 982
    :cond_2c2
    :try_start_2c2
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 983
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 984
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2c2 .. :try_end_2cf} :catch_2d1

    .line 990
    nop

    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_2ea

    .line 985
    :catch_2d1
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/16 v2, -0x3e8

    .line 994
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_2ea
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 995
    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 994
    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 998
    const/16 v3, -0x3e8

    if-ne v2, v3, :cond_263

    .line 999
    goto/16 :goto_25e

    .line 1007
    .end local v2  # "status":I
    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v15  # "status":I
    :goto_301
    return-void

    .line 952
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catchall_302
    move-exception v0

    move-object v2, v0

    :goto_304
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 953
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v10, 0x0

    aget-object v0, v0, v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 957
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/FullRestoreEngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/FullRestoreEngineThread;->waitForResult()I

    .line 960
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v10

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 964
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v10

    if-eqz v10, :cond_332

    goto :goto_333

    :cond_332
    const/4 v3, 0x0

    :goto_333
    invoke-static {v0, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 968
    if-eqz v15, :cond_37c

    .line 982
    :try_start_338
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 983
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 984
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_338 .. :try_end_345} :catch_347

    .line 990
    nop

    .end local v0  # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_361

    .line 985
    :catch_347
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/16 v3, -0x3e8

    move v15, v3

    .line 994
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_361
    iget-object v0, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/UserBackupManagerService;

    move-result-object v0

    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 995
    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 994
    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataAfterRestoreFailure(Ljava/lang/String;)V

    .line 998
    const/16 v3, -0x3e8

    if-ne v15, v3, :cond_379

    .line 999
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_394

    .line 1001
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_379
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    goto :goto_394

    .line 970
    .end local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_37c
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 974
    .end local v14  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0  # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 977
    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v10, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    .line 1004
    :goto_394
    iget-object v3, v11, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v3, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1005
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    throw v2
.end method
