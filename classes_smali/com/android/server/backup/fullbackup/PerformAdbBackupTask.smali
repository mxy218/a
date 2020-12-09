.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private final mAllApps:Z

.field private final mCompress:Z

.field private final mCurrentOpToken:I

.field private final mCurrentPassword:Ljava/lang/String;

.field private mCurrentTarget:Landroid/content/pm/PackageInfo;

.field private final mDoWidgets:Z

.field private final mEncryptPassword:Ljava/lang/String;

.field private final mIncludeApks:Z

.field private final mIncludeObbs:Z

.field private final mIncludeShared:Z

.field private final mIncludeSystem:Z

.field private final mKeyValue:Z

.field private final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field private final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 16

    .line 92
    invoke-direct {p0, p3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 93
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 94
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 95
    iput-object p15, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 98
    iput-boolean p4, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 99
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 100
    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 101
    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 102
    iput-boolean p10, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 103
    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 104
    if-nez p14, :cond_23

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2c

    .line 106
    :cond_23
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2c
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 107
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 112
    if-eqz p9, :cond_3e

    const-string p1, ""

    invoke-virtual {p1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_3e

    .line 115
    :cond_3b
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_40

    .line 113
    :cond_3e
    :goto_3e
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 120
    :goto_40
    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 121
    iput-boolean p13, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 122
    return-void
.end method

.method private addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 128
    :try_start_16
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 131
    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    .line 134
    goto :goto_42

    .line 132
    :catch_26
    move-exception v1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skipping"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_42
    :goto_42
    goto :goto_4

    .line 137
    :cond_43
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 143
    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 145
    const-string v3, "PBKDF2WithHmacSHA1"

    const/16 v4, 0x2710

    invoke-static {v3, v2, v0, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 150
    const/16 v5, 0x20

    new-array v5, v5, [B

    .line 151
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 152
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 153
    invoke-virtual {v6, v1}, Lcom/android/server/backup/UserBackupManagerService;->randomBytes(I)[B

    move-result-object v1

    .line 156
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 157
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 158
    const/4 v5, 0x1

    invoke-virtual {v7, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 159
    new-instance v9, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v9, p2, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 162
    const-string p2, "AES-256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {v1}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 178
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    .line 179
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    .line 193
    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v5

    .line 194
    nop

    .line 196
    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v6

    .line 195
    invoke-static {v3, v6, v1, v4}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v1

    .line 199
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, v2

    array-length v6, v5

    add-int/2addr v4, v6

    array-length v6, v1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 201
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 203
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 204
    array-length v2, v5

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 206
    array-length v2, v1

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 207
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 209
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    return-object v9
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 3

    .line 219
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 223
    goto :goto_10

    .line 221
    :catch_8
    move-exception p1

    .line 222
    const-string p1, "BackupManagerService"

    const-string v0, "Error attempting to finalize backup stream"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_10
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 489
    return-void
.end method

.method public handleCancel(Z)V
    .registers 4

    .line 498
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adb backup cancel of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eqz p1, :cond_23

    .line 503
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 505
    :cond_23
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->removeOperation(I)V

    .line 506
    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    .line 494
    return-void
.end method

.method public run()V
    .registers 25

    .line 228
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    .line 229
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 232
    new-instance v13, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v13, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 234
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 237
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 240
    iget-boolean v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_6a

    .line 241
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 243
    move v2, v3

    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6a

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 246
    iget-boolean v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v5, :cond_62

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v14

    if-nez v5, :cond_67

    .line 248
    :cond_62
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 255
    :cond_6a
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v1, :cond_78

    .line 257
    nop

    .line 258
    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_78

    .line 270
    invoke-direct {v12, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 277
    :cond_78
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_7f

    .line 278
    invoke-direct {v12, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 285
    :cond_7f
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 287
    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 289
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 290
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v5

    .line 289
    invoke-static {v4, v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_df

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 291
    invoke-static {v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_b5

    goto :goto_df

    .line 297
    :cond_b5
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is key-value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    .line 292
    :cond_df
    :goto_df
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not eligible for backup, removing."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BackupManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_ff
    :goto_ff
    goto :goto_8c

    .line 308
    :cond_100
    new-instance v11, Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 311
    const/4 v1, 0x0

    .line 313
    nop

    .line 315
    :try_start_116
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    if-eqz v2, :cond_124

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_124

    move v2, v14

    goto :goto_125

    :cond_124
    move v2, v3

    .line 318
    :goto_125
    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->deviceIsEncrypted()Z

    move-result v4

    if-eqz v4, :cond_180

    if-nez v2, :cond_180

    .line 319
    const-string v0, "BackupManagerService"

    const-string v2, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_136} :catch_454
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_136} :catch_410
    .catchall {:try_start_116 .. :try_end_136} :catchall_40b

    .line 464
    nop

    .line 468
    :try_start_137
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13c} :catch_13d

    .line 471
    goto :goto_158

    .line 469
    :catch_13d
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_158
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_15b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2
    :try_end_166
    .catchall {:try_start_15b .. :try_end_166} :catchall_17d

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 320
    return-void

    .line 475
    :catchall_17d
    move-exception v0

    :try_start_17e
    monitor-exit v2
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_17d

    throw v0

    .line 323
    :cond_180
    nop

    .line 327
    :try_start_181
    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1dc

    .line 329
    const-string v0, "BackupManagerService"

    const-string v2, "Backup password mismatch; aborting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_192} :catch_454
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_192} :catch_410
    .catchall {:try_start_181 .. :try_end_192} :catchall_40b

    .line 464
    nop

    .line 468
    :try_start_193
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_198
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_198} :catch_199

    .line 471
    goto :goto_1b4

    .line 469
    :catch_199
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_1b4
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_1b7
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2
    :try_end_1c2
    .catchall {:try_start_1b7 .. :try_end_1c2} :catchall_1d9

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 331
    return-void

    .line 475
    :catchall_1d9
    move-exception v0

    :try_start_1da
    monitor-exit v2
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    throw v0

    .line 359
    :cond_1dc
    :try_start_1dc
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    const-string v5, "ANDROID BACKUP\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    iget-boolean v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    if-eqz v5, :cond_1f3

    const-string v5, "\n1\n"

    goto :goto_1f5

    :cond_1f3
    const-string v5, "\n0\n"

    :goto_1f5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f8
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1f8} :catch_454
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1f8} :catch_410
    .catchall {:try_start_1dc .. :try_end_1f8} :catchall_40b

    .line 367
    if-eqz v2, :cond_1ff

    .line 368
    :try_start_1fa
    invoke-direct {v12, v4, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    goto :goto_206

    .line 370
    :cond_1ff
    const-string/jumbo v2, "none\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    .line 373
    :goto_206
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 374
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 377
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    if-eqz v0, :cond_225

    .line 378
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v4, 0x9

    invoke-direct {v0, v4}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 379
    new-instance v4, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v4, v2, v0, v14}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_223} :catch_3b8
    .catch Landroid/os/RemoteException; {:try_start_1fa .. :try_end_223} :catch_454
    .catchall {:try_start_1fa .. :try_end_223} :catchall_40b

    move-object v10, v4

    goto :goto_226

    .line 377
    :cond_225
    move-object v10, v2

    .line 382
    :goto_226
    nop

    .line 387
    nop

    .line 390
    :try_start_228
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_22a
    .catch Landroid/os/RemoteException; {:try_start_228 .. :try_end_22a} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_22a} :catch_3af
    .catchall {:try_start_228 .. :try_end_22a} :catchall_3ac

    if-eqz v0, :cond_251

    .line 392
    :try_start_22c
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 394
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22c .. :try_end_23b} :catch_249
    .catch Landroid/os/RemoteException; {:try_start_22c .. :try_end_23b} :catch_245
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_23b} :catch_241
    .catchall {:try_start_22c .. :try_end_23b} :catchall_23c

    .line 397
    goto :goto_251

    .line 463
    :catchall_23c
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    goto/16 :goto_4af

    .line 460
    :catch_241
    move-exception v0

    move-object v1, v10

    goto/16 :goto_411

    .line 458
    :catch_245
    move-exception v0

    move-object v1, v10

    goto/16 :goto_455

    .line 395
    :catch_249
    move-exception v0

    .line 396
    :try_start_24a
    const-string v0, "BackupManagerService"

    const-string v1, "Unable to find shared-storage backup handler"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_251
    .catch Landroid/os/RemoteException; {:try_start_24a .. :try_end_251} :catch_245
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_251} :catch_241
    .catchall {:try_start_24a .. :try_end_251} :catchall_23c

    .line 401
    :cond_251
    :goto_251
    :try_start_251
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 402
    move v8, v3

    :goto_256
    if-ge v8, v0, :cond_30a

    .line 403
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 405
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- Performing full backup for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 412
    new-instance v17, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v4, 0x0

    iget-boolean v6, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    const-wide v18, 0x7fffffffffffffffL

    iget v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_292
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_292} :catch_3b3
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_292} :catch_3af
    .catchall {:try_start_251 .. :try_end_292} :catchall_3ac

    const/16 v20, 0x0

    move-object/from16 v1, v17

    move-object v3, v10

    move-object v5, v9

    move/from16 v21, v7

    move-object/from16 v7, p0

    move/from16 v22, v8

    move-object v14, v9

    move-wide/from16 v8, v18

    move-object/from16 v23, v10

    move/from16 v10, v21

    move-object/from16 v18, v11

    move/from16 v11, v20

    :try_start_2a9
    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V
    :try_end_2ac
    .catch Landroid/os/RemoteException; {:try_start_2a9 .. :try_end_2ac} :catch_305
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2ac} :catch_300
    .catchall {:try_start_2a9 .. :try_end_2ac} :catchall_2fb

    .line 423
    if-eqz v16, :cond_2c1

    :try_start_2ae
    const-string v1, "Shared storage"
    :try_end_2b0
    .catch Landroid/os/RemoteException; {:try_start_2ae .. :try_end_2b0} :catch_2bc
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2b0} :catch_2b7
    .catchall {:try_start_2ae .. :try_end_2b0} :catchall_2b1

    goto :goto_2c3

    .line 463
    :catchall_2b1
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v23

    goto/16 :goto_4af

    .line 460
    :catch_2b7
    move-exception v0

    move-object/from16 v1, v23

    goto/16 :goto_411

    .line 458
    :catch_2bc
    move-exception v0

    move-object/from16 v1, v23

    goto/16 :goto_455

    .line 423
    :cond_2c1
    :try_start_2c1
    iget-object v1, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_2c3
    invoke-virtual {v12, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 426
    iput-object v14, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 427
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 431
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_2cd
    .catch Landroid/os/RemoteException; {:try_start_2c1 .. :try_end_2cd} :catch_305
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2cd} :catch_300
    .catchall {:try_start_2c1 .. :try_end_2cd} :catchall_2fb

    if-eqz v1, :cond_2f1

    if-nez v16, :cond_2f1

    .line 432
    move-object/from16 v2, v23

    :try_start_2d3
    invoke-virtual {v13, v14, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v1

    .line 433
    if-eqz v1, :cond_2da

    goto :goto_2f3

    .line 434
    :cond_2da
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure writing OBB stack for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2f1
    move-object/from16 v2, v23

    .line 402
    :goto_2f3
    add-int/lit8 v8, v22, 0x1

    move-object v10, v2

    move-object/from16 v11, v18

    const/4 v14, 0x1

    goto/16 :goto_256

    .line 463
    :catchall_2fb
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_40d

    .line 460
    :catch_300
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_3b1

    .line 458
    :catch_305
    move-exception v0

    move-object/from16 v2, v23

    goto/16 :goto_3b5

    .line 439
    :cond_30a
    move-object v2, v10

    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_366

    .line 440
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_313
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_366

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 442
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- Performing key-value backup for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v3, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 448
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 449
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v21

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 450
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v22

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 451
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V

    .line 453
    goto :goto_313

    .line 457
    :cond_366
    invoke-direct {v12, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_369
    .catch Landroid/os/RemoteException; {:try_start_2d3 .. :try_end_369} :catch_3aa
    .catch Ljava/lang/Exception; {:try_start_2d3 .. :try_end_369} :catch_3a8
    .catchall {:try_start_2d3 .. :try_end_369} :catchall_3a6

    .line 464
    if-eqz v2, :cond_371

    .line 465
    :try_start_36b
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_371
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_376
    .catch Ljava/io/IOException; {:try_start_36b .. :try_end_376} :catch_377

    .line 471
    goto :goto_392

    .line 469
    :catch_377
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_392
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 473
    :try_start_395
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v1

    goto/16 :goto_494

    :catchall_3a3
    move-exception v0

    monitor-exit v1
    :try_end_3a5
    .catchall {:try_start_395 .. :try_end_3a5} :catchall_3a3

    throw v0

    .line 463
    :catchall_3a6
    move-exception v0

    goto :goto_40d

    .line 460
    :catch_3a8
    move-exception v0

    goto :goto_3b1

    .line 458
    :catch_3aa
    move-exception v0

    goto :goto_3b5

    .line 463
    :catchall_3ac
    move-exception v0

    move-object v2, v10

    goto :goto_40d

    .line 460
    :catch_3af
    move-exception v0

    move-object v2, v10

    :goto_3b1
    move-object v1, v2

    goto :goto_411

    .line 458
    :catch_3b3
    move-exception v0

    move-object v2, v10

    :goto_3b5
    move-object v1, v2

    goto/16 :goto_455

    .line 383
    :catch_3b8
    move-exception v0

    .line 385
    :try_start_3b9
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to emit archive header"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c0
    .catch Landroid/os/RemoteException; {:try_start_3b9 .. :try_end_3c0} :catch_454
    .catch Ljava/lang/Exception; {:try_start_3b9 .. :try_end_3c0} :catch_410
    .catchall {:try_start_3b9 .. :try_end_3c0} :catchall_40b

    .line 464
    nop

    .line 468
    :try_start_3c1
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3c6
    .catch Ljava/io/IOException; {:try_start_3c1 .. :try_end_3c6} :catch_3c7

    .line 471
    goto :goto_3e2

    .line 469
    :catch_3c7
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_3e2
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_3e5
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2
    :try_end_3f1
    .catchall {:try_start_3e5 .. :try_end_3f1} :catchall_408

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 386
    return-void

    .line 475
    :catchall_408
    move-exception v0

    :try_start_409
    monitor-exit v2
    :try_end_40a
    .catchall {:try_start_409 .. :try_end_40a} :catchall_408

    throw v0

    .line 463
    :catchall_40b
    move-exception v0

    move-object v2, v1

    :goto_40d
    move-object v1, v0

    goto/16 :goto_4af

    .line 460
    :catch_410
    move-exception v0

    .line 461
    :goto_411
    :try_start_411
    const-string v2, "BackupManagerService"

    const-string v3, "Internal exception during full backup"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_418
    .catchall {:try_start_411 .. :try_end_418} :catchall_40b

    .line 464
    if-eqz v1, :cond_420

    .line 465
    :try_start_41a
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_420
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_425
    .catch Ljava/io/IOException; {:try_start_41a .. :try_end_425} :catch_426

    .line 471
    goto :goto_441

    .line 469
    :catch_426
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_441
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_444
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2

    goto :goto_494

    :catchall_451
    move-exception v0

    monitor-exit v2
    :try_end_453
    .catchall {:try_start_444 .. :try_end_453} :catchall_451

    throw v0

    .line 458
    :catch_454
    move-exception v0

    .line 459
    :goto_455
    :try_start_455
    const-string v0, "BackupManagerService"

    const-string v2, "App died during full backup"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45c
    .catchall {:try_start_455 .. :try_end_45c} :catchall_40b

    .line 464
    if-eqz v1, :cond_464

    .line 465
    :try_start_45e
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_464
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_469
    .catch Ljava/io/IOException; {:try_start_45e .. :try_end_469} :catch_46a

    .line 471
    goto :goto_485

    .line 469
    :catch_46a
    move-exception v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO error closing adb backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_485
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_488
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2
    :try_end_494
    .catchall {:try_start_488 .. :try_end_494} :catchall_4ac

    .line 476
    :goto_494
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 482
    nop

    .line 483
    return-void

    .line 475
    :catchall_4ac
    move-exception v0

    :try_start_4ad
    monitor-exit v2
    :try_end_4ae
    .catchall {:try_start_4ad .. :try_end_4ae} :catchall_4ac

    throw v0

    .line 464
    :goto_4af
    if-eqz v2, :cond_4b7

    .line 465
    :try_start_4b1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 466
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 468
    :cond_4b7
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4bc
    .catch Ljava/io/IOException; {:try_start_4b1 .. :try_end_4bc} :catch_4bd

    .line 471
    goto :goto_4d8

    .line 469
    :catch_4bd
    move-exception v0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error closing adb backup file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_4d8
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 473
    :try_start_4db
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 475
    monitor-exit v2
    :try_end_4e7
    .catchall {:try_start_4db .. :try_end_4e7} :catchall_4fe

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 477
    invoke-virtual {v13}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 479
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    throw v1

    .line 475
    :catchall_4fe
    move-exception v0

    :try_start_4ff
    monitor-exit v2
    :try_end_500
    .catchall {:try_start_4ff .. :try_end_500} :catchall_4fe

    throw v0
.end method
