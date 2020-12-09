.class public Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "CertificateTransparencyLogInstallReceiver.java"


# static fields
.field private static final LOGDIR_PREFIX:Ljava/lang/String; = "logs-"

.field private static final TAG:Ljava/lang/String; = "CTLogInstallReceiver"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 45
    const-string v0, "/data/misc/keychain/trusted_ct_logs/"

    const-string v1, "ct_logs"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private deleteOldLogDirectories()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 168
    return-void

    .line 170
    :cond_9
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;-><init>(Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;Ljava/io/File;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 178
    invoke-static {v3}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 180
    :cond_2d
    return-void
.end method

.method private getLogFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 151
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 153
    :try_start_5
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 154
    invoke-static {p1, v0}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_13} :catch_14

    return-object p1

    .line 155
    :catch_14
    move-exception p1

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const-string v0, "description"

    const-string/jumbo v1, "url"

    const-string v2, "key"

    :try_start_7
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->getLogFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_69

    .line 133
    :try_start_20
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_5d

    .line 136
    :try_start_35
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    .line 137
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {v4, p1, p2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 142
    nop

    .line 144
    return-void

    .line 138
    :cond_42
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set permissions on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_5d} :catch_69

    .line 131
    :catchall_5d
    move-exception p2

    :try_start_5e
    throw p2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 136
    :catchall_5f
    move-exception v0

    :try_start_60
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p1

    :try_start_65
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw v0
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_69} :catch_69

    .line 140
    :catch_69
    move-exception p1

    .line 141
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to parse log"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected install([BI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 59
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Unable to make directory "

    if-eqz v0, :cond_155

    .line 62
    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string v5, "current"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logs-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 75
    iget-object p1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 76
    invoke-direct {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 77
    return-void

    .line 79
    :cond_66
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 84
    :cond_69
    :try_start_69
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 85
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 88
    invoke-virtual {v4, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_133
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_76} :catch_133

    if-eqz v1, :cond_fa

    .line 95
    :try_start_78
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    const-string p1, "logs"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 97
    nop

    :goto_8b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_9b

    .line 98
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    invoke-direct {p0, v4, v1}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->installLog(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_78 .. :try_end_98} :catch_f1
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_98} :catch_133
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_98} :catch_133

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 103
    :cond_9b
    nop

    .line 107
    :try_start_9c
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    const-string/jumbo v2, "new_symlink"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a6} :catch_133
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_a6} :catch_133

    .line 109
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Landroid/system/ErrnoException; {:try_start_a6 .. :try_end_b1} :catch_e8
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b1} :catch_133
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_b1} :catch_133

    .line 112
    nop

    .line 115
    :try_start_b2
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b9} :catch_133
    .catch Ljava/lang/RuntimeException; {:try_start_b2 .. :try_end_b9} :catch_133

    .line 119
    nop

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CT log directory updated to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CTLogInstallReceiver"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateVersion:Ljava/io/File;

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    .line 124
    invoke-direct {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 125
    return-void

    .line 110
    :catch_e8
    move-exception p1

    .line 111
    :try_start_e9
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to create symlink"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 101
    :catch_f1
    move-exception p1

    .line 102
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to parse logs"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 89
    :cond_fa
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " readable"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_11a
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_133} :catch_133
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_133} :catch_133

    .line 116
    :catch_133
    move-exception p1

    .line 117
    invoke-static {v4}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 118
    throw p1

    .line 63
    :cond_138
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to set permissions on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_155
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
