.class public Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;
.super Ljava/lang/Object;
.source "FlymeLockSettingsServiceExt.java"


# static fields
.field private static final APP_LOCK_PASSWORD_FILE_NAME:Ljava/lang/String; = "app_lock.key"

.field private static final DOCUMENT_LOCK_LEGACY_PASSWORD_FILE_NAME:Ljava/lang/String; = "document.key"

.field private static final DOCUMENT_LOCK_PASSWORD_FILE_NAME:Ljava/lang/String; = "document_lock.key"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PRIVATE_MODE_PASSWORD_FILE_NAME:Ljava/lang/String; = "private_mode.key"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "FlymeLockSettingsServiceExt"

.field private static final TYPES_CAN_UNLOCK_KEYGURAD:[I

.field public static final TYPE_APP_LOCK:I = 0x0

.field public static final TYPE_DOCUMENT:I = 0x1

.field public static final TYPE_PRIVATE_MODE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->TYPES_CAN_UNLOCK_KEYGURAD:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "service"  # Lcom/android/server/locksettings/LockSettingsService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mFileWriteLock:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    iput-object p2, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 53
    invoke-direct {p0}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->handleLegacyPassword()V

    .line 54
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 235
    iget-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "FlymePasswordRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 231
    iget-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "FlymePasswordWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private getFileName(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"  # I

    .line 126
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_a
    const-string/jumbo v0, "private_mode.key"

    return-object v0

    .line 130
    :cond_e
    const-string v0, "document_lock.key"

    return-object v0

    .line 128
    :cond_11
    const-string v0, "app_lock.key"

    return-object v0
.end method

.method private getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userId"  # I
    .param p2, "basename"  # Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getUserParentOrSelfId(I)I

    move-result p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_2f

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 158
    :cond_2f
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUserParentOrSelfId(I)I
    .registers 5
    .param p1, "userId"  # I

    .line 163
    if-eqz p1, :cond_16

    .line 164
    iget-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 165
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 166
    .local v1, "pi":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_16

    .line 167
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 170
    .end local v0  # "um":Landroid/os/UserManager;
    .end local v1  # "pi":Landroid/content/pm/UserInfo;
    :cond_16
    return p1
.end method

.method private handleLegacyPassword()V
    .registers 6

    .line 57
    const/4 v0, 0x0

    const-string v1, "document.key"

    invoke-direct {p0, v0, v1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "legacyDocumentPaswordPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "documentPwdFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 61
    new-instance v3, Ljava/io/File;

    const-string v4, "document_lock.key"

    invoke-direct {p0, v0, v4}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 64
    .local v0, "newDocumentPwdFile":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 66
    .end local v0  # "newDocumentPwdFile":Ljava/io/File;
    :cond_21
    return-void
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 9
    .param p1, "name"  # Ljava/lang/String;

    .line 174
    const-string v0, "Error closing file "

    const-string v1, "FlymeLockSettingsServiceExt"

    const/4 v2, 0x0

    .line 175
    .local v2, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 177
    .local v3, "stored":[B
    :try_start_6
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 178
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    move-object v3, v4

    .line 179
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 180
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_3a
    .catchall {:try_start_6 .. :try_end_1f} :catchall_38

    .line 184
    nop

    .line 186
    :try_start_20
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 189
    :goto_23
    goto :goto_5d

    .line 187
    :catch_24
    move-exception v4

    .line 188
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4  # "e":Ljava/io/IOException;
    goto :goto_23

    .line 184
    :catchall_38
    move-exception v4

    goto :goto_5e

    .line 181
    :catch_3a
    move-exception v4

    .line 182
    .restart local v4  # "e":Ljava/io/IOException;
    :try_start_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_38

    .line 184
    nop

    .end local v4  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5d

    .line 186
    :try_start_52
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_23

    .line 187
    :catch_56
    move-exception v4

    .line 188
    .restart local v4  # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2a

    .line 192
    .end local v4  # "e":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    return-object v3

    .line 184
    :goto_5e
    if-eqz v2, :cond_77

    .line 186
    :try_start_60
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 189
    goto :goto_77

    .line 187
    :catch_64
    move-exception v5

    .line 188
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v5  # "e":Ljava/io/IOException;
    :cond_77
    :goto_77
    throw v4
.end method

.method private readPasswordHash(II)[B
    .registers 7
    .param p1, "type"  # I
    .param p2, "userId"  # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 141
    return-object v2

    .line 143
    :cond_c
    invoke-direct {p0, p2, v0}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 144
    .local v1, "stored":[B
    if-eqz v1, :cond_1a

    array-length v3, v1

    if-lez v3, :cond_1a

    .line 145
    return-object v1

    .line 147
    :cond_1a
    return-object v2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 10
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "hash"  # [B

    .line 204
    iget-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    const/4 v1, 0x0

    .line 208
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 210
    if-eqz p2, :cond_19

    array-length v2, p2

    if-nez v2, :cond_13

    goto :goto_19

    .line 213
    :cond_13
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1e

    .line 211
    :cond_19
    :goto_19
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 215
    :goto_1e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_21} :catch_41
    .catchall {:try_start_4 .. :try_end_21} :catchall_3f

    .line 219
    nop

    .line 221
    :try_start_22
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26
    .catchall {:try_start_22 .. :try_end_25} :catchall_95

    .line 224
    :goto_25
    goto :goto_74

    .line 222
    :catch_26
    move-exception v2

    .line 223
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    const-string v3, "FlymeLockSettingsServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_95

    .line 224
    nop

    .end local v2  # "e":Ljava/io/IOException;
    goto :goto_74

    .line 219
    :catchall_3f
    move-exception v2

    goto :goto_76

    .line 216
    :catch_41
    move-exception v2

    .line 217
    .restart local v2  # "e":Ljava/io/IOException;
    :try_start_42
    const-string v3, "FlymeLockSettingsServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3f

    .line 219
    nop

    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v1, :cond_74

    .line 221
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_95

    goto :goto_25

    .line 222
    :catch_5f
    move-exception v2

    .line 223
    .restart local v2  # "e":Ljava/io/IOException;
    :try_start_60
    const-string v3, "FlymeLockSettingsServiceExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 227
    .end local v1  # "raf":Ljava/io/RandomAccessFile;
    .end local v2  # "e":Ljava/io/IOException;
    :cond_74
    :goto_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_95

    .line 228
    return-void

    .line 219
    .restart local v1  # "raf":Ljava/io/RandomAccessFile;
    :goto_76
    if-eqz v1, :cond_93

    .line 221
    :try_start_78
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_95

    .line 224
    goto :goto_93

    .line 222
    :catch_7c
    move-exception v3

    .line 223
    .local v3, "e":Ljava/io/IOException;
    :try_start_7d
    const-string v4, "FlymeLockSettingsServiceExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v3  # "e":Ljava/io/IOException;
    :cond_93
    :goto_93
    nop

    .end local p0  # "this":Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;
    .end local p1  # "name":Ljava/lang/String;
    .end local p2  # "hash":[B
    throw v2

    .line 227
    .end local v1  # "raf":Ljava/io/RandomAccessFile;
    .restart local p0  # "this":Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;
    .restart local p1  # "name":Ljava/lang/String;
    .restart local p2  # "hash":[B
    :catchall_95
    move-exception v1

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_95

    throw v1
.end method

.method private writePasswordHash([BII)V
    .registers 6
    .param p1, "hash"  # [B
    .param p2, "type"  # I
    .param p3, "userId"  # I

    .line 196
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 198
    return-void

    .line 200
    :cond_b
    invoke-direct {p0, p3, v0}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->writeFile(Ljava/lang/String;[B)V

    .line 201
    return-void
.end method


# virtual methods
.method public checkPassword(ILjava/lang/String;I)Z
    .registers 10
    .param p1, "type"  # I
    .param p2, "password"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 81
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->checkPasswordReadPermission(I)V

    .line 83
    iget-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "pwdToHash":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 85
    return v2

    .line 88
    :cond_15
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 89
    .local v1, "hash":[B
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->readPasswordHash(II)[B

    move-result-object v3

    .line 90
    .local v3, "storedHash":[B
    if-nez v3, :cond_22

    .line 91
    return v2

    .line 93
    :cond_22
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 94
    .local v2, "matched":Z
    if-eqz v2, :cond_36

    sget-object v4, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->TYPES_CAN_UNLOCK_KEYGURAD:[I

    invoke-static {v4, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 95
    iget-object v4, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->mzProcessLeftTimes(Z)I

    .line 97
    :cond_36
    return v2
.end method

.method public clearPassword(II)Z
    .registers 6
    .param p1, "type"  # I
    .param p2, "userId"  # I

    .line 101
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->checkWritePermission(I)V

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 105
    const/4 v1, 0x0

    return v1

    .line 107
    :cond_f
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p2, v0}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_20

    .line 109
    const/4 v2, 0x1

    return v2

    .line 111
    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public hasPassword(II)Z
    .registers 7
    .param p1, "type"  # I
    .param p2, "userId"  # I

    .line 115
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->checkPasswordReadPermission(I)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 119
    return v2

    .line 121
    :cond_f
    invoke-direct {p0, p2, v0}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->getPasswordFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 122
    .local v1, "contents":[B
    if-eqz v1, :cond_1d

    array-length v3, v1

    if-lez v3, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    return v2
.end method

.method public setPassword(ILjava/lang/String;I)Z
    .registers 6
    .param p1, "type"  # I
    .param p2, "password"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 69
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->checkWritePermission(I)V

    .line 71
    iget-object v0, p0, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash([BI)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "pwdToHash":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 73
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/locksettings/FlymeLockSettingsServiceExt;->writePasswordHash([BII)V

    .line 74
    const/4 v1, 0x1

    return v1

    .line 77
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method
