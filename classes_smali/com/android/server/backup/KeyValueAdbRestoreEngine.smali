.class public Lcom/android/server/backup/KeyValueAdbRestoreEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbRestoreEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbRestoreEngine"


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mDataDir:Ljava/io/File;

.field private final mInFD:Landroid/os/ParcelFileDescriptor;

.field private final mInfo:Lcom/android/server/backup/FileMetadata;

.field private final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    .registers 7

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 52
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 53
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 54
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    .line 55
    iput-object p5, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 56
    iput p6, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    .line 57
    return-void
.end method

.method private copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    :goto_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 128
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 130
    if-gez v2, :cond_19

    .line 131
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 132
    goto :goto_5

    .line 134
    :cond_19
    new-array v3, v2, [B

    .line 135
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 136
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto :goto_5

    .line 138
    :cond_23
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 142
    array-length v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 143
    array-length v1, v2

    invoke-virtual {p2, v2, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 144
    goto :goto_33

    .line 145
    :cond_4e
    return-void
.end method

.method private invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-string v0, "KeyValueAdbRestoreEngine"

    iget-object v1, p2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".new"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    const/high16 v1, 0x10000000

    .line 88
    :try_start_1e
    invoke-static {p3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 89
    const/high16 p3, 0x3c000000  # 0.0078125f

    invoke-static {v2, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 96
    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->version:J

    iget v8, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    iget-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 97
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    .line 96
    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_36} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_62

    .line 100
    :catch_37
    move-exception p1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception calling doRestore on agent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 98
    :catch_4d
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception opening file. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_62
    nop

    .line 103
    :goto_63
    return-void
.end method

.method private prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 72
    new-instance v10, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    new-instance v11, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".sorted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->size:J

    iget v4, p1, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v7, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object v1, p2

    move-object v9, v10

    invoke-static/range {v1 .. v9}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 78
    invoke-direct {p0, v10, v11}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->sortKeyValueData(Ljava/io/File;Ljava/io/File;)V

    .line 79
    return-object v11
.end method

.method private sortKeyValueData(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    nop

    .line 107
    nop

    .line 109
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_30

    .line 110
    :try_start_8
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_2d

    .line 111
    :try_start_d
    new-instance p2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 112
    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 113
    invoke-direct {p0, p2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2b

    .line 115
    nop

    .line 116
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    nop

    .line 119
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 122
    return-void

    .line 115
    :catchall_2b
    move-exception p2

    goto :goto_33

    :catchall_2d
    move-exception p2

    move-object p1, v0

    goto :goto_33

    :catchall_30
    move-exception p2

    move-object p1, v0

    move-object v1, p1

    :goto_33
    if-eqz v1, :cond_38

    .line 116
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 118
    :cond_38
    if-eqz p1, :cond_3d

    .line 119
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_3d
    throw p2
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 67
    goto :goto_14

    .line 65
    :catch_10
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    :goto_14
    return-void
.end method
