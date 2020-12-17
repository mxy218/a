.class final Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;
.super Ljava/lang/Object;
.source "UserBackupManagerFilePersistedSettings.java"


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 49
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

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readBackupEnableState(I)Z
    .registers 2
    .param p0, "userId"  # I

    .line 36
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static readBackupEnableState(Ljava/io/File;)Z
    .registers 8
    .param p0, "baseDir"  # Ljava/io/File;

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v0, "enableFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "BackupManagerService"

    if-eqz v1, :cond_31

    .line 46
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_2a

    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 47
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_23

    .line 48
    .local v5, "state":I
    if-eqz v5, :cond_1e

    const/4 v6, 0x1

    goto :goto_1f

    :cond_1e
    move v6, v2

    .line 49
    :goto_1f
    :try_start_1f
    invoke-static {v4, v1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2a

    .line 48
    return v6

    .line 46
    .end local v5  # "state":I
    :catchall_23
    move-exception v4

    .end local v0  # "enableFile":Ljava/io/File;
    .end local v1  # "fin":Ljava/io/FileInputStream;
    .end local p0  # "baseDir":Ljava/io/File;
    :try_start_24
    throw v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 49
    .restart local v0  # "enableFile":Ljava/io/File;
    .restart local v1  # "fin":Ljava/io/FileInputStream;
    .restart local p0  # "baseDir":Ljava/io/File;
    :catchall_25
    move-exception v5

    :try_start_26
    invoke-static {v4, v1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "enableFile":Ljava/io/File;
    .end local p0  # "baseDir":Ljava/io/File;
    throw v5
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2a

    .end local v1  # "fin":Ljava/io/FileInputStream;
    .restart local v0  # "enableFile":Ljava/io/File;
    .restart local p0  # "baseDir":Ljava/io/File;
    :catch_2a
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Cannot read enable state; assuming disabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v1  # "e":Ljava/io/IOException;
    goto :goto_37

    .line 55
    :cond_31
    const-string/jumbo v1, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_37
    return v2
.end method

.method static writeBackupEnableState(IZ)V
    .registers 3
    .param p0, "userId"  # I
    .param p1, "enable"  # Z

    .line 40
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(Ljava/io/File;Z)V

    .line 41
    return-void
.end method

.method private static writeBackupEnableState(Ljava/io/File;Z)V
    .registers 7
    .param p0, "baseDir"  # Ljava/io/File;
    .param p1, "enable"  # Z

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v0, "enableFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled-stage"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "stage":Ljava/io/File;
    :try_start_e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_2d

    .local v2, "fout":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 65
    if-eqz p1, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    :try_start_19
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 67
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_26

    .line 69
    :try_start_22
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_25} :catch_2d

    .line 76
    .end local v2  # "fout":Ljava/io/FileOutputStream;
    goto :goto_4e

    .line 64
    .restart local v2  # "fout":Ljava/io/FileOutputStream;
    :catchall_26
    move-exception v3

    .end local v0  # "enableFile":Ljava/io/File;
    .end local v1  # "stage":Ljava/io/File;
    .end local v2  # "fout":Ljava/io/FileOutputStream;
    .end local p0  # "baseDir":Ljava/io/File;
    .end local p1  # "enable":Z
    :try_start_27
    throw v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 69
    .restart local v0  # "enableFile":Ljava/io/File;
    .restart local v1  # "stage":Ljava/io/File;
    .restart local v2  # "fout":Ljava/io/FileOutputStream;
    .restart local p0  # "baseDir":Ljava/io/File;
    .restart local p1  # "enable":Z
    :catchall_28
    move-exception v4

    :try_start_29
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "enableFile":Ljava/io/File;
    .end local v1  # "stage":Ljava/io/File;
    .end local p0  # "baseDir":Ljava/io/File;
    .end local p1  # "enable":Z
    throw v4
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2d} :catch_2d

    .end local v2  # "fout":Ljava/io/FileOutputStream;
    .restart local v0  # "enableFile":Ljava/io/File;
    .restart local v1  # "stage":Ljava/io/File;
    .restart local p0  # "baseDir":Ljava/io/File;
    .restart local p1  # "enable":Z
    :catch_2d
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v4, "BackupManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 77
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_4e
    return-void
.end method
