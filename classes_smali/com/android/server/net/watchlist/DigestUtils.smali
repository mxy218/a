.class public Lcom/android/server/net/watchlist/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final FILE_READ_BUFFER_SIZE:I = 0x4000


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSha256Hash(Ljava/io/File;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 38
    :try_start_5
    invoke-static {v0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    return-object p0

    .line 37
    :catchall_d
    move-exception p0

    :try_start_e
    throw p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 39
    :catchall_f
    move-exception v1

    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_18

    :catchall_14
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v1
.end method

.method public static getSha256Hash(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 45
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 49
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_15

    .line 50
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_a

    .line 52
    :cond_15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method
