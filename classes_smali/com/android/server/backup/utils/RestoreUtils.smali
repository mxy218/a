.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 112
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    .line 78
    move-object/from16 v0, p5

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing from backup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    :try_start_1b
    new-instance v3, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    .line 89
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 90
    move-object/from16 v7, p6

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_38} :catch_b0

    .line 93
    :try_start_38
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v13
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_ab
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_b0

    .line 94
    :try_start_3c
    iget-object v8, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_a0

    .line 96
    const v8, 0x8000

    :try_start_4a
    new-array v8, v8, [B

    .line 97
    iget-wide v9, v0, Lcom/android/server/backup/FileMetadata;->size:J

    .line 98
    :goto_4e
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_77

    .line 99
    array-length v11, v8

    int-to-long v11, v11

    cmp-long v11, v11, v9

    if-gez v11, :cond_5d

    array-length v11, v8

    int-to-long v11, v11

    goto :goto_5e

    :cond_5d
    move-wide v11, v9

    .line 100
    :goto_5e
    long-to-int v11, v11

    move-object/from16 v12, p0

    invoke-virtual {v12, v8, v1, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 101
    if-ltz v11, :cond_6e

    .line 102
    int-to-long v14, v11

    move-object/from16 v6, p7

    invoke-interface {v6, v14, v15}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_70

    .line 101
    :cond_6e
    move-object/from16 v6, p7

    .line 104
    :goto_70
    invoke-virtual {v7, v8, v1, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_73
    .catchall {:try_start_4a .. :try_end_73} :catchall_95

    .line 105
    int-to-long v14, v11

    sub-long/2addr v9, v14

    .line 106
    const/4 v6, 0x1

    goto :goto_4e

    .line 107
    :cond_77
    if-eqz v7, :cond_7c

    :try_start_79
    invoke-static {v4, v7}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 110
    :cond_7c
    invoke-virtual {v13}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_a0

    .line 112
    :try_start_7f
    invoke-static {v4, v13}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_ab
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_b0

    .line 117
    nop

    .line 120
    nop

    .line 124
    nop

    .line 128
    nop

    .line 132
    :try_start_86
    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v3, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_90} :catch_b0

    if-eq v0, v2, :cond_93

    .line 133
    goto :goto_94

    .line 132
    :cond_93
    const/4 v1, 0x1

    .line 198
    :goto_94
    goto :goto_b7

    .line 94
    :catchall_95
    move-exception v0

    move-object v4, v0

    :try_start_97
    throw v4
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    .line 107
    :catchall_98
    move-exception v0

    move-object v6, v0

    if-eqz v7, :cond_9f

    :try_start_9c
    invoke-static {v4, v7}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9f
    throw v6
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_a0

    .line 93
    :catchall_a0
    move-exception v0

    move-object v4, v0

    :try_start_a2
    throw v4
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    .line 112
    :catchall_a3
    move-exception v0

    move-object v6, v0

    if-eqz v13, :cond_aa

    :try_start_a7
    invoke-static {v4, v13}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_aa
    throw v6
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ab} :catch_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_b0

    .line 113
    :catch_ab
    move-exception v0

    .line 114
    :try_start_ac
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 116
    throw v0
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_b0

    .line 195
    :catch_b0
    move-exception v0

    .line 196
    const-string v0, "Unable to transcribe restored apk for install"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    nop

    .line 200
    :goto_b7
    return v1
.end method
