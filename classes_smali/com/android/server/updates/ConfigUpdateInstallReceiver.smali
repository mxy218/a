.class public Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigUpdateInstallReceiver.java"


# static fields
.field private static final EXTRA_REQUIRED_HASH:Ljava/lang/String; = "REQUIRED_HASH"

.field private static final EXTRA_VERSION_NUMBER:Ljava/lang/String; = "VERSION"

.field private static final TAG:Ljava/lang/String; = "ConfigUpdateInstallReceiver"


# instance fields
.field protected final updateContent:Ljava/io/File;

.field protected final updateDir:Ljava/io/File;

.field protected final updateVersion:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    .line 54
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getVersionFromIntent(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentVersion()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/updates/ConfigUpdateInstallReceiver;)[B
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentContent()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500([B)Ljava/lang/String;
    .registers 1

    .line 39
    invoke-static {p0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getCurrentHash([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getAltContent(Landroid/content/Context;Landroid/content/Intent;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p2

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 137
    :try_start_c
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    move-result-object p2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 139
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 137
    return-object p2

    .line 139
    :catchall_14
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method

.method private getContentFromIntent(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 101
    if-eqz p1, :cond_7

    .line 104
    return-object p1

    .line 102
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required content path, ignoring."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCurrentContent()[B
    .registers 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 146
    :catch_b
    move-exception v0

    .line 147
    const-string v0, "ConfigUpdateInstallReceiver"

    const-string v1, "Failed to read current content, assuming first update!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentHash([B)Ljava/lang/String;
    .registers 2

    .line 153
    if-nez p0, :cond_5

    .line 154
    const-string p0, "0"

    return-object p0

    .line 157
    :cond_5
    :try_start_5
    const-string v0, "SHA512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 159
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_14} :catch_15

    return-object p0

    .line 160
    :catch_15
    move-exception p0

    .line 161
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private getCurrentVersion()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return v0

    .line 127
    :catch_13
    move-exception v0

    .line 128
    const-string v0, "ConfigUpdateInstallReceiver"

    const-string v1, "Couldn\'t find current metadata, assuming first update"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method private getRequiredHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    .line 116
    const-string v0, "REQUIRED_HASH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    if-eqz p1, :cond_d

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required previous hash, ignoring."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getVersionFromIntent(Landroid/content/Intent;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 108
    const-string v0, "VERSION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    if-eqz p1, :cond_11

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 110
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing required version number, ignoring."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyPreviousHash(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 171
    const-string v0, "NONE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    const/4 p1, 0x1

    return p1

    .line 175
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected install([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateContent:Ljava/io/File;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 212
    iget-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 213
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 60
    new-instance v0, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;-><init>(Lcom/android/server/updates/ConfigUpdateInstallReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    invoke-virtual {v0}, Lcom/android/server/updates/ConfigUpdateInstallReceiver$1;->start()V

    .line 97
    return-void
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 216
    return-void
.end method

.method protected verifyVersion(II)Z
    .registers 3

    .line 166
    if-ge p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method protected writeUpdate(Ljava/io/File;Ljava/io/File;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    nop

    .line 180
    nop

    .line 183
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 190
    const-string v1, "journal"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_76

    .line 192
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1a
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 194
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_59

    .line 195
    :try_start_22
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/FileDescriptor;->sync()V

    .line 199
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_56

    if-eqz p3, :cond_3b

    .line 203
    nop

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 206
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 207
    nop

    .line 208
    return-void

    .line 200
    :cond_3b
    :try_start_3b
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to atomically rename "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_56

    .line 203
    :catchall_56
    move-exception p2

    move-object v0, v1

    goto :goto_78

    :catchall_59
    move-exception p2

    goto :goto_78

    .line 187
    :cond_5b
    :try_start_5b
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to create directory "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_76
    .catchall {:try_start_5b .. :try_end_76} :catchall_76

    .line 203
    :catchall_76
    move-exception p2

    move-object p1, v0

    :goto_78
    if-eqz p1, :cond_7d

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 206
    :cond_7d
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p2
.end method
