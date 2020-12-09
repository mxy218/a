.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mBaseStateDir:Ljava/io/File;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private final mQueue:[Ljava/lang/String;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 83
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 85
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 86
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 12

    .line 64
    nop

    .line 66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    .line 71
    return-void
.end method

.method private notifyFinished(I)V
    .registers 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 106
    :cond_9
    goto :goto_e

    .line 104
    :catch_a
    move-exception p1

    .line 105
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 107
    :goto_e
    return-void
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .registers 4

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 96
    :cond_9
    goto :goto_e

    .line 94
    :catch_a
    move-exception p1

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 97
    :goto_e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .line 111
    move-object/from16 v1, p0

    const-string v2, "BackupManagerService"

    const-string v3, "PerformInitializeTask.run()"

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    nop

    .line 115
    const/4 v5, 0x0

    :try_start_10
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v6, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_136
    .catchall {:try_start_10 .. :try_end_13} :catchall_133

    move v7, v5

    move v8, v7

    :goto_15
    if-ge v7, v6, :cond_114

    :try_start_17
    aget-object v9, v0, v7

    .line 116
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    invoke-virtual {v10, v9, v3}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v10

    .line 118
    if-nez v10, :cond_3c

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested init for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " but not found"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto/16 :goto_105

    .line 122
    :cond_3c
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 127
    invoke-virtual {v10}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 126
    invoke-virtual {v11, v12}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v11

    .line 128
    const/16 v12, 0xb05

    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 131
    invoke-virtual {v10, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v10

    .line 132
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v14

    .line 133
    if-eqz v14, :cond_76

    .line 134
    const-string v15, "Transport error in initializeDevice()"

    invoke-static {v2, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 136
    :cond_76
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v14

    .line 137
    if-eqz v14, :cond_81

    .line 138
    const-string v15, "Transport error in finishBackup()"

    invoke-static {v2, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_81
    :goto_81
    const/4 v15, 0x1

    if-nez v14, :cond_c0

    .line 144
    const-string v10, "Device init successful"

    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v12, v16, v12

    long-to-int v10, v12

    .line 146
    const/16 v12, 0xb0b

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 147
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    iget-object v13, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v13, v12}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 149
    const/16 v12, 0xb09

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v13, v15

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v10, v5, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {v1, v9, v5}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    .line 152
    goto :goto_105

    .line 155
    :cond_c0
    const/16 v12, 0xb06

    const-string v13, "(initialize)"

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 156
    iget-object v12, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12, v15, v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {v1, v9, v14}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_cf} :catch_111
    .catchall {:try_start_17 .. :try_end_cf} :catchall_10f

    .line 158
    nop

    .line 161
    :try_start_d0
    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v10

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Init failed on "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " resched in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v8, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v8

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v10

    iget-object v9, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 166
    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v9

    .line 163
    invoke-virtual {v8, v5, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_104} :catch_10c
    .catchall {:try_start_d0 .. :try_end_104} :catchall_109

    move v8, v14

    .line 115
    :goto_105
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    .line 173
    :catchall_109
    move-exception v0

    move v8, v14

    goto :goto_159

    .line 169
    :catch_10c
    move-exception v0

    move v5, v14

    goto :goto_137

    .line 173
    :catchall_10f
    move-exception v0

    goto :goto_159

    .line 169
    :catch_111
    move-exception v0

    move v5, v8

    goto :goto_137

    .line 173
    :cond_114
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_118
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportClient;

    .line 174
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 175
    goto :goto_118

    .line 176
    :cond_12a
    invoke-direct {v1, v8}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 177
    :goto_12d
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 178
    goto :goto_158

    .line 173
    :catchall_133
    move-exception v0

    move v8, v5

    goto :goto_159

    .line 169
    :catch_136
    move-exception v0

    .line 170
    :goto_137
    :try_start_137
    const-string v6, "Unexpected error performing init"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13c
    .catchall {:try_start_137 .. :try_end_13c} :catchall_133

    .line 171
    const/16 v0, -0x3e8

    .line 173
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_142
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_154

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    .line 174
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 175
    goto :goto_142

    .line 176
    :cond_154
    invoke-direct {v1, v0}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    goto :goto_12d

    .line 179
    :goto_158
    return-void

    .line 173
    :goto_159
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    .line 174
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 175
    goto :goto_15d

    .line 176
    :cond_16f
    invoke-direct {v1, v8}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 177
    iget-object v1, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    throw v0
.end method
