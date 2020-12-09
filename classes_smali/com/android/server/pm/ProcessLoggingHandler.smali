.class public final Lcom/android/server/pm/ProcessLoggingHandler;
.super Landroid/os/Handler;
.source "ProcessLoggingHandler.java"


# static fields
.field static final INVALIDATE_BASE_APK_HASH_MSG:I = 0x2

.field static final LOG_APP_PROCESS_START_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessLoggingHandler"


# instance fields
.field private final mProcessLoggingBaseApkHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 44
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private computeHashOfApkFile(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 102
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 106
    :goto_14
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1f

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_14

    .line 109
    :cond_1f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 110
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method private computeStringHashOfApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 80
    if-nez p1, :cond_5

    .line 81
    const-string p1, "No APK"

    return-object p1

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    if-nez v0, :cond_46

    .line 86
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->computeHashOfApkFile(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    array-length v5, v1

    if-ge v4, v5, :cond_34

    .line 89
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 91
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3d} :catch_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_3d} :catch_3e

    .line 95
    goto :goto_46

    .line 93
    :catch_3e
    move-exception p1

    .line 94
    const-string v1, "ProcessLoggingHandler"

    const-string v2, "computeStringHashOfApk() failed"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_46
    :goto_46
    if-eqz v0, :cond_49

    goto :goto_4b

    :cond_49
    const-string v0, "Failed to count APK hash"

    :goto_4b
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "apkFile"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_b

    goto :goto_6e

    .line 64
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler;->mProcessLoggingBaseApkHashes:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    goto :goto_6e

    .line 51
    :cond_19
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 52
    const-string/jumbo v0, "processName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v4, "uid"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 54
    const-string/jumbo v5, "seinfo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string/jumbo v6, "pid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 57
    const-string/jumbo v7, "startTimestamp"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 58
    invoke-direct {p0, v1}, Lcom/android/server/pm/ProcessLoggingHandler;->computeStringHashOfApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    const v1, 0x33455

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object p1, v9, v0

    .line 59
    invoke-static {v1, v9}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    nop

    .line 69
    :goto_6e
    return-void
.end method

.method invalidateProcessLoggingBaseApkHash(Ljava/lang/String;)V
    .registers 4

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v1, "apkFile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void
.end method
