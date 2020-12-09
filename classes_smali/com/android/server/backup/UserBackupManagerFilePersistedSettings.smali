.class final Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;
.super Ljava/lang/Object;
.source "UserBackupManagerFilePersistedSettings.java"


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 49
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

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readBackupEnableState(I)Z
    .registers 1

    .line 36
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->readBackupEnableState(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static readBackupEnableState(Ljava/io/File;)Z
    .registers 5

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "BackupManagerService"

    if-eqz p0, :cond_31

    .line 46
    :try_start_10
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_2a

    const/4 v0, 0x0

    .line 47
    :try_start_16
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_23

    .line 48
    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    move v3, v1

    .line 49
    :goto_1f
    :try_start_1f
    invoke-static {v0, p0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2a

    .line 48
    return v3

    .line 46
    :catchall_23
    move-exception v0

    :try_start_24
    throw v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 49
    :catchall_25
    move-exception v3

    :try_start_26
    invoke-static {v0, p0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception p0

    .line 51
    const-string p0, "Cannot read enable state; assuming disabled"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_36

    .line 55
    :cond_31
    const-string p0, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_36
    return v1
.end method

.method static writeBackupEnableState(IZ)V
    .registers 2

    .line 40
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(Ljava/io/File;Z)V

    .line 41
    return-void
.end method

.method private static writeBackupEnableState(Ljava/io/File;Z)V
    .registers 5

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "backup_enabled"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/io/File;

    const-string v2, "backup_enabled-stage"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    :try_start_e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_2d

    const/4 v2, 0x0

    .line 65
    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    :try_start_19
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 66
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 67
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_26

    .line 69
    :try_start_22
    invoke-static {v2, p0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_25} :catch_2d

    .line 76
    goto :goto_4e

    .line 64
    :catchall_26
    move-exception p1

    :try_start_27
    throw p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 69
    :catchall_28
    move-exception v2

    :try_start_29
    invoke-static {p1, p0}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string p1, "BackupManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 77
    :goto_4e
    return-void
.end method
