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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 112
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    .registers 31
    .param p0, "instream"  # Ljava/io/InputStream;
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "deleteObserver"  # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"  # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"  # Ljava/lang/String;
    .param p7, "bytesReadListener"  # Lcom/android/server/backup/utils/BytesReadListener;
    .param p8, "userId"  # I
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
    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    const/4 v2, 0x1

    .line 81
    .local v2, "okay":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing from backup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_1b
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v5, v0

    .line 86
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    .line 87
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v7, v0

    .line 89
    .local v7, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_342

    move-object v8, v0

    .line 90
    .local v8, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v9, p6

    :try_start_35
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_33c

    move v10, v0

    .line 93
    .local v10, "sessionId":I
    :try_start_3d
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_326
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_33c

    move-object v15, v0

    .line 94
    .local v15, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_42
    iget-object v12, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_30a

    const-wide/16 v13, 0x0

    move-object/from16 v17, v5

    .end local v5  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v17, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :try_start_48
    iget-wide v4, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_2fa

    move-object v11, v15

    move-object/from16 v18, v15

    .end local v15  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v18, "session":Landroid/content/pm/PackageInstaller$Session;
    move-wide v15, v4

    :try_start_4e
    invoke-virtual/range {v11 .. v16}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_2e9

    .line 96
    .local v4, "apkStream":Ljava/io/OutputStream;
    const v5, 0x8000

    :try_start_55
    new-array v11, v5, [B

    .line 97
    .local v11, "buffer":[B
    iget-wide v12, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_2cd

    .line 98
    .local v12, "size":J
    :goto_59
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    const/4 v15, 0x0

    if-lez v14, :cond_da

    .line 99
    :try_start_60
    array-length v14, v11
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_c5

    move-object/from16 v16, v6

    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    int-to-long v5, v14

    cmp-long v5, v5, v12

    if-gez v5, :cond_7e

    :try_start_68
    array-length v5, v11
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_6b

    int-to-long v5, v5

    goto :goto_7f

    .line 94
    .end local v11  # "buffer":[B
    .end local v12  # "size":J
    :catchall_6b
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v11, v0

    move-object v5, v1

    move/from16 v20, v2

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_2dd

    .line 99
    .restart local v11  # "buffer":[B
    .restart local v12  # "size":J
    :cond_7e
    move-wide v5, v12

    .line 100
    .local v5, "toRead":J
    :goto_7f
    long-to-int v14, v5

    move/from16 v20, v2

    move-object/from16 v2, p0

    .end local v2  # "okay":Z
    .local v20, "okay":Z
    :try_start_84
    invoke-virtual {v2, v11, v15, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_b3

    .line 101
    .local v14, "didRead":I
    if-ltz v14, :cond_91

    .line 102
    int-to-long v0, v14

    move-object/from16 v15, p7

    :try_start_8d
    invoke-interface {v15, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_93

    .line 101
    :cond_91
    move-object/from16 v15, p7

    .line 104
    :goto_93
    const/4 v1, 0x0

    invoke-virtual {v4, v11, v1, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_97
    .catchall {:try_start_8d .. :try_end_97} :catchall_a3

    .line 105
    int-to-long v0, v14

    sub-long/2addr v12, v0

    .line 106
    .end local v5  # "toRead":J
    .end local v14  # "didRead":I
    move-object/from16 v1, p5

    move-object/from16 v6, v16

    move/from16 v2, v20

    const v5, 0x8000

    goto :goto_59

    .line 94
    .end local v11  # "buffer":[B
    .end local v12  # "size":J
    :catchall_a3
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v11, v0

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_2dd

    :catchall_b3
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v11, v0

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_2dd

    .end local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v20  # "okay":Z
    .restart local v2  # "okay":Z
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_c5
    move-exception v0

    move-object/from16 v15, p7

    move/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v13, p3

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v11, v0

    move-object v2, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p4

    .end local v2  # "okay":Z
    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v20  # "okay":Z
    goto/16 :goto_2dd

    .line 98
    .end local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v20  # "okay":Z
    .restart local v2  # "okay":Z
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v11  # "buffer":[B
    .restart local v12  # "size":J
    :cond_da
    move-object/from16 v15, p7

    move/from16 v20, v2

    move-object/from16 v16, v6

    move-object/from16 v2, p0

    .line 107
    .end local v2  # "okay":Z
    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11  # "buffer":[B
    .end local v12  # "size":J
    .restart local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v20  # "okay":Z
    if-eqz v4, :cond_f9

    const/4 v0, 0x0

    :try_start_e5
    invoke-static {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e9

    goto :goto_f9

    .line 93
    .end local v4  # "apkStream":Ljava/io/OutputStream;
    :catchall_e9
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object v4, v0

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    goto/16 :goto_31b

    .line 110
    :cond_f9
    :goto_f9
    :try_start_f9
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_2bb

    .line 112
    move-object/from16 v1, v18

    const/4 v0, 0x0

    .end local v18  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_ff
    invoke-static {v0, v1}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_102} :catch_2ac
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_29f

    .line 117
    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    nop

    .line 120
    const/4 v1, 0x0

    .line 124
    .local v1, "result":Landroid/content/Intent;
    const/4 v4, 0x1

    .line 128
    .local v4, "status":I
    if-eqz v4, :cond_130

    .line 132
    move-object/from16 v5, p5

    :try_start_109
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10b} :catch_12b

    move-object/from16 v6, p4

    :try_start_10d
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_113} :catch_128

    if-eq v0, v3, :cond_11e

    .line 133
    const/4 v0, 0x0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move/from16 v14, p8

    .end local v20  # "okay":Z
    .local v0, "okay":Z
    goto/16 :goto_292

    .line 132
    .end local v0  # "okay":Z
    .restart local v20  # "okay":Z
    :cond_11e
    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v0, v20

    goto/16 :goto_292

    .line 195
    .end local v1  # "result":Landroid/content/Intent;
    .end local v4  # "status":I
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_128
    move-exception v0

    goto/16 :goto_29c

    :catch_12b
    move-exception v0

    move-object/from16 v6, p4

    goto/16 :goto_29c

    .line 137
    .restart local v1  # "result":Landroid/content/Intent;
    .restart local v4  # "status":I
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .restart local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :cond_130
    move-object/from16 v6, p4

    move-object/from16 v5, p5

    const/4 v11, 0x0

    .line 138
    .local v11, "uninstall":Z
    :try_start_135
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 140
    .local v12, "installedPackageName":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_142} :catch_299

    if-nez v0, :cond_171

    .line 141
    :try_start_144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " but apk was really "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_162} :catch_128

    .line 145
    const/4 v0, 0x0

    .line 146
    .end local v20  # "okay":Z
    .restart local v0  # "okay":Z
    const/4 v11, 0x1

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v18, v4

    move-object/from16 v2, v16

    move-object/from16 v16, v1

    move v1, v0

    goto/16 :goto_26d

    .line 149
    .end local v0  # "okay":Z
    .restart local v20  # "okay":Z
    :cond_171
    :try_start_171
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_173
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_171 .. :try_end_173} :catch_246
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_173} :catch_128

    const/high16 v13, 0x8000000

    move/from16 v14, p8

    move-object/from16 v2, v16

    .end local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_179
    invoke-virtual {v2, v0, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 151
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_181
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_179 .. :try_end_181} :catch_23e
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_181} :catch_239

    const v16, 0x8000

    and-int v13, v13, v16

    if-nez v13, :cond_1bc

    .line 153
    :try_start_188
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_188 .. :try_end_18d} :catch_1b3
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18d} :catch_239

    move-object/from16 v16, v1

    .end local v1  # "result":Landroid/content/Intent;
    .local v16, "result":Landroid/content/Intent;
    :try_start_18f
    const-string v1, "Restore stream contains apk of package "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but it disallows backup/restore"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18f .. :try_end_1a5} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1a5} :catch_239

    .line 156
    const/4 v1, 0x0

    move-object/from16 v13, p3

    move/from16 v18, v4

    .end local v20  # "okay":Z
    .local v1, "okay":Z
    goto/16 :goto_22e

    .line 178
    .end local v0  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1  # "okay":Z
    .restart local v20  # "okay":Z
    :catch_1ac
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v18, v4

    goto/16 :goto_251

    .end local v16  # "result":Landroid/content/Intent;
    .local v1, "result":Landroid/content/Intent;
    :catch_1b3
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v13, p3

    move/from16 v18, v4

    .end local v1  # "result":Landroid/content/Intent;
    .restart local v16  # "result":Landroid/content/Intent;
    goto/16 :goto_251

    .line 159
    .end local v16  # "result":Landroid/content/Intent;
    .restart local v0  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v1  # "result":Landroid/content/Intent;
    :cond_1bc
    move-object/from16 v16, v1

    .end local v1  # "result":Landroid/content/Intent;
    .restart local v16  # "result":Landroid/content/Intent;
    :try_start_1be
    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_1c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1be .. :try_end_1c0} :catch_233
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c0} :catch_239

    move-object/from16 v13, p3

    :try_start_1c2
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 160
    .local v1, "sigs":[Landroid/content/pm/Signature;
    const-class v18, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v18 .. v18}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageManagerInternal;
    :try_end_1d0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c2 .. :try_end_1d0} :catch_231
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1d0} :catch_33a

    move-object/from16 v19, v18

    .line 162
    .local v19, "pmi":Landroid/content/pm/PackageManagerInternal;
    move/from16 v18, v4

    move-object/from16 v4, v19

    .end local v19  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v18, "status":I
    :try_start_1d6
    invoke-static {v1, v0, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v19
    :try_end_1da
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d6 .. :try_end_1da} :catch_22f
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1da} :catch_33a

    move-object/from16 v21, v1

    .end local v1  # "sigs":[Landroid/content/pm/Signature;
    .local v21, "sigs":[Landroid/content/pm/Signature;
    const-string v1, "Installed app "

    if-eqz v19, :cond_210

    .line 165
    move-object/from16 v19, v4

    .end local v4  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v19  # "pmi":Landroid/content/pm/PackageManagerInternal;
    :try_start_1e2
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_20d

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_20d

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has restricted uid and no agent"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .end local v20  # "okay":Z
    .local v1, "okay":Z
    goto :goto_22e

    .line 182
    .end local v0  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1  # "okay":Z
    .end local v19  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21  # "sigs":[Landroid/content/pm/Signature;
    .restart local v20  # "okay":Z
    :cond_20d
    move/from16 v1, v20

    goto :goto_22e

    .line 172
    .restart local v0  # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v4  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v21  # "sigs":[Landroid/content/pm/Signature;
    :cond_210
    move-object/from16 v19, v4

    .end local v4  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v19  # "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " signatures do not match restore manifest"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e2 .. :try_end_22b} :catch_22f
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_22b} :catch_33a

    .line 174
    const/4 v1, 0x0

    .line 175
    .end local v20  # "okay":Z
    .restart local v1  # "okay":Z
    const/4 v4, 0x1

    move v11, v4

    .line 182
    .end local v0  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v19  # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v21  # "sigs":[Landroid/content/pm/Signature;
    :goto_22e
    goto :goto_26d

    .line 178
    .end local v1  # "okay":Z
    .restart local v20  # "okay":Z
    :catch_22f
    move-exception v0

    goto :goto_251

    .end local v18  # "status":I
    .local v4, "status":I
    :catch_231
    move-exception v0

    goto :goto_236

    :catch_233
    move-exception v0

    move-object/from16 v13, p3

    :goto_236
    move/from16 v18, v4

    .end local v4  # "status":I
    .restart local v18  # "status":I
    goto :goto_251

    .line 195
    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v11  # "uninstall":Z
    .end local v12  # "installedPackageName":Ljava/lang/String;
    .end local v16  # "result":Landroid/content/Intent;
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18  # "status":I
    :catch_239
    move-exception v0

    move-object/from16 v13, p3

    goto/16 :goto_350

    .line 178
    .local v1, "result":Landroid/content/Intent;
    .restart local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4  # "status":I
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .restart local v11  # "uninstall":Z
    .restart local v12  # "installedPackageName":Ljava/lang/String;
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_23e
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v16, v1

    move/from16 v18, v4

    .end local v1  # "result":Landroid/content/Intent;
    .end local v4  # "status":I
    .restart local v16  # "result":Landroid/content/Intent;
    .restart local v18  # "status":I
    goto :goto_251

    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v18  # "status":I
    .restart local v1  # "result":Landroid/content/Intent;
    .restart local v4  # "status":I
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :catch_246
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v18, v4

    move-object/from16 v2, v16

    move-object/from16 v16, v1

    .line 179
    .end local v1  # "result":Landroid/content/Intent;
    .end local v4  # "status":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .local v16, "result":Landroid/content/Intent;
    .restart local v18  # "status":I
    :goto_251
    :try_start_251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install of package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " succeeded but now not found"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_26c} :catch_294

    .line 181
    const/4 v1, 0x0

    .line 187
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v20  # "okay":Z
    .local v1, "okay":Z
    :goto_26d
    if-eqz v11, :cond_28c

    .line 188
    :try_start_26f
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_272
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_272} :catch_283

    .line 189
    move-object/from16 v4, p2

    move/from16 v19, v1

    const/4 v1, 0x0

    .end local v1  # "okay":Z
    .local v19, "okay":Z
    :try_start_277
    invoke-virtual {v2, v12, v4, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_27d
    .catch Ljava/io/IOException; {:try_start_277 .. :try_end_27d} :catch_27e

    goto :goto_290

    .line 195
    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v11  # "uninstall":Z
    .end local v12  # "installedPackageName":Ljava/lang/String;
    .end local v16  # "result":Landroid/content/Intent;
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18  # "status":I
    :catch_27e
    move-exception v0

    move/from16 v20, v19

    goto/16 :goto_350

    .end local v19  # "okay":Z
    .restart local v1  # "okay":Z
    :catch_283
    move-exception v0

    move-object/from16 v4, p2

    move/from16 v19, v1

    move/from16 v20, v19

    .end local v1  # "okay":Z
    .restart local v19  # "okay":Z
    goto/16 :goto_350

    .line 187
    .end local v19  # "okay":Z
    .restart local v1  # "okay":Z
    .restart local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .restart local v11  # "uninstall":Z
    .restart local v12  # "installedPackageName":Ljava/lang/String;
    .restart local v16  # "result":Landroid/content/Intent;
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v18  # "status":I
    :cond_28c
    move-object/from16 v4, p2

    move/from16 v19, v1

    .line 198
    .end local v1  # "okay":Z
    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v11  # "uninstall":Z
    .end local v12  # "installedPackageName":Ljava/lang/String;
    .end local v16  # "result":Landroid/content/Intent;
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18  # "status":I
    .restart local v19  # "okay":Z
    :goto_290
    move/from16 v0, v19

    .end local v19  # "okay":Z
    .local v0, "okay":Z
    :goto_292
    goto/16 :goto_357

    .line 195
    .end local v0  # "okay":Z
    .restart local v20  # "okay":Z
    :catch_294
    move-exception v0

    move-object/from16 v4, p2

    goto/16 :goto_350

    :catch_299
    move-exception v0

    move-object/from16 v4, p2

    :goto_29c
    move-object/from16 v13, p3

    goto :goto_2a8

    :catch_29f
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    :goto_2a8
    move/from16 v14, p8

    goto/16 :goto_350

    .line 113
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_2ac
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object/from16 v2, v16

    .end local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v2  # "packageManager":Landroid/content/pm/PackageManager;
    goto/16 :goto_335

    .line 93
    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .local v18, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2bb
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    move/from16 v14, p8

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    move-object v4, v0

    .end local v16  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v18  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2  # "packageManager":Landroid/content/pm/PackageManager;
    goto/16 :goto_31b

    .line 94
    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20  # "okay":Z
    .local v2, "okay":Z
    .local v4, "apkStream":Ljava/io/OutputStream;
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v18  # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2cd
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    move-object v2, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p4

    move-object v11, v0

    .end local v2  # "okay":Z
    .end local v4  # "apkStream":Ljava/io/OutputStream;
    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local p0  # "instream":Ljava/io/InputStream;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6  # "installerPackageName":Ljava/lang/String;
    .end local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8  # "userId":I
    :goto_2dd
    :try_start_2dd
    throw v11
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2de

    .line 107
    .restart local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v4  # "apkStream":Ljava/io/OutputStream;
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20  # "okay":Z
    .restart local p0  # "instream":Ljava/io/InputStream;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6  # "installerPackageName":Ljava/lang/String;
    .restart local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8  # "userId":I
    :catchall_2de
    move-exception v0

    move-object v12, v0

    if-eqz v4, :cond_2e5

    :try_start_2e2
    invoke-static {v11, v4}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v20  # "okay":Z
    .end local p0  # "instream":Ljava/io/InputStream;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6  # "installerPackageName":Ljava/lang/String;
    .end local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8  # "userId":I
    :cond_2e5
    throw v12
    :try_end_2e6
    .catchall {:try_start_2e2 .. :try_end_2e6} :catchall_2e6

    .line 93
    .end local v4  # "apkStream":Ljava/io/OutputStream;
    .restart local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20  # "okay":Z
    .restart local p0  # "instream":Ljava/io/InputStream;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6  # "installerPackageName":Ljava/lang/String;
    .restart local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8  # "userId":I
    :catchall_2e6
    move-exception v0

    move-object v4, v0

    goto :goto_31b

    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20  # "okay":Z
    .local v2, "okay":Z
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v18  # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2e9
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    move-object v2, v6

    move-object/from16 v1, v18

    move-object/from16 v6, p4

    move-object v4, v0

    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v18  # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v20  # "okay":Z
    goto :goto_31b

    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20  # "okay":Z
    .local v2, "okay":Z
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v15  # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2fa
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    move-object v2, v6

    move-object v1, v15

    move-object/from16 v6, p4

    move-object/from16 v15, p7

    move-object v4, v0

    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v15  # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v20  # "okay":Z
    goto :goto_31b

    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v20  # "okay":Z
    .local v2, "okay":Z
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v15  # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_30a
    move-exception v0

    move-object/from16 v13, p3

    move/from16 v14, p8

    move/from16 v20, v2

    move-object/from16 v17, v5

    move-object v2, v6

    move-object/from16 v6, p4

    move-object v5, v1

    move-object v1, v15

    move-object/from16 v15, p7

    move-object v4, v0

    .end local v2  # "okay":Z
    .end local v5  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v15  # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local p0  # "instream":Ljava/io/InputStream;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6  # "installerPackageName":Ljava/lang/String;
    .end local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8  # "userId":I
    :goto_31b
    :try_start_31b
    throw v4
    :try_end_31c
    .catchall {:try_start_31b .. :try_end_31c} :catchall_31c

    .line 112
    .restart local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v10  # "sessionId":I
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20  # "okay":Z
    .restart local p0  # "instream":Ljava/io/InputStream;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6  # "installerPackageName":Ljava/lang/String;
    .restart local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8  # "userId":I
    :catchall_31c
    move-exception v0

    move-object v11, v0

    if-eqz v1, :cond_323

    :try_start_320
    invoke-static {v4, v1}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v20  # "okay":Z
    .end local p0  # "instream":Ljava/io/InputStream;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6  # "installerPackageName":Ljava/lang/String;
    .end local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8  # "userId":I
    :cond_323
    throw v11
    :try_end_324
    .catch Ljava/lang/Exception; {:try_start_320 .. :try_end_324} :catch_324
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_324} :catch_33a

    .line 113
    .end local v1  # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20  # "okay":Z
    .restart local p0  # "instream":Ljava/io/InputStream;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6  # "installerPackageName":Ljava/lang/String;
    .restart local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8  # "userId":I
    :catch_324
    move-exception v0

    goto :goto_335

    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v20  # "okay":Z
    .local v2, "okay":Z
    .restart local v5  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6  # "packageManager":Landroid/content/pm/PackageManager;
    :catch_326
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v15, p7

    move/from16 v14, p8

    move/from16 v20, v2

    move-object/from16 v17, v5

    move-object v2, v6

    move-object/from16 v6, p4

    move-object v5, v1

    .line 114
    .end local v5  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6  # "packageManager":Landroid/content/pm/PackageManager;
    .local v0, "t":Ljava/lang/Exception;
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    .restart local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20  # "okay":Z
    :goto_335
    :try_start_335
    invoke-virtual {v7, v10}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 116
    nop

    .end local v20  # "okay":Z
    .end local p0  # "instream":Ljava/io/InputStream;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6  # "installerPackageName":Ljava/lang/String;
    .end local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8  # "userId":I
    throw v0
    :try_end_33a
    .catch Ljava/io/IOException; {:try_start_335 .. :try_end_33a} :catch_33a

    .line 195
    .end local v0  # "t":Ljava/lang/Exception;
    .end local v2  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7  # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8  # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10  # "sessionId":I
    .end local v17  # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20  # "okay":Z
    .restart local p0  # "instream":Ljava/io/InputStream;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3  # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4  # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5  # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6  # "installerPackageName":Ljava/lang/String;
    .restart local p7  # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8  # "userId":I
    :catch_33a
    move-exception v0

    goto :goto_350

    .end local v20  # "okay":Z
    .local v2, "okay":Z
    :catch_33c
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    goto :goto_349

    :catch_342
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    :goto_349
    move-object/from16 v15, p7

    move/from16 v14, p8

    move-object v5, v1

    move/from16 v20, v2

    .line 196
    .end local v2  # "okay":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v20  # "okay":Z
    :goto_350
    const-string v1, "Unable to transcribe restored apk for install"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    move v0, v1

    .line 200
    .end local v20  # "okay":Z
    .local v0, "okay":Z
    :goto_357
    return v0
.end method
