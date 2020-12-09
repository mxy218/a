.class Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;,
        Lcom/android/server/net/watchlist/WatchlistConfig$XmlTags;
    }
.end annotation


# static fields
.field private static final NETWORK_WATCHLIST_DB_FOR_TEST_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist_for_test.xml"

.field private static final NETWORK_WATCHLIST_DB_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist.xml"

.field private static final TAG:Ljava/lang/String; = "WatchlistConfig"

.field private static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field private volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private mIsSecureConfig:Z

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 100
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 102
    return-void
.end method

.method private getCrc32(Ljava/lang/String;)[B
    .registers 8

    .line 205
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 207
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 208
    const/4 p1, 0x4

    new-array p1, p1, [B

    const/16 v2, 0x18

    shr-long v2, v0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, p1, v3

    const/16 v2, 0x10

    shr-long v2, v0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, p1, v3

    const/16 v2, 0x8

    shr-long v2, v0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, p1, v3

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p1, v1

    return-object p1
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-object v0
.end method

.method private getSha256(Ljava/lang/String;)[B
    .registers 3

    .line 216
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_13

    .line 220
    nop

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 222
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 217
    :catch_13
    move-exception p1

    .line 219
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v0, :cond_20

    .line 159
    const-string v2, "hash"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 161
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_5

    .line 164
    :cond_20
    invoke-interface {p1, v3, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public containsDomain(Ljava/lang/String;)Z
    .registers 6

    .line 168
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 169
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 171
    return v1

    .line 174
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v2

    if-nez v2, :cond_13

    .line 176
    return v1

    .line 179
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object p1

    .line 180
    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result p1

    return p1
.end method

.method public containsIp(Ljava/lang/String;)Z
    .registers 6

    .line 184
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 185
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 187
    return v1

    .line 190
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)[B

    move-result-object v2

    .line 191
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v2

    if-nez v2, :cond_13

    .line 192
    return v1

    .line 195
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object p1

    .line 196
    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 277
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchlist config hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v0, "Domain CRC32 digest list:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_30

    .line 282
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 284
    :cond_30
    const-string v0, "Domain SHA256 digest list:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_40

    .line 286
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 288
    :cond_40
    const-string v0, "Ip CRC32 digest list:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_50

    .line 291
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 293
    :cond_50
    const-string v0, "Ip SHA256 digest list:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v0, :cond_60

    .line 295
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v0, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 297
    :cond_60
    return-void
.end method

.method public getWatchlistConfigHash()[B
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 236
    return-object v1

    .line 239
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 240
    :catch_11
    move-exception v0

    .line 241
    const-string v2, "WatchlistConfig"

    const-string v3, "Unable to get watchlist config hash"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    return-object v1
.end method

.method public isConfigSecure()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    return v0
.end method

.method public reloadConfig()V
    .registers 16

    .line 108
    const-string/jumbo v0, "watchlist-config"

    const-string v1, "WatchlistConfig"

    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    .line 110
    return-void

    .line 112
    :cond_e
    :try_start_e
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_eb
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_15} :catch_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_15} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_15} :catch_eb
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_eb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_15} :catch_eb

    .line 113
    :try_start_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 119
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-interface {v7, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_3e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v9, :cond_b1

    .line 123
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 124
    const/4 v12, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x1

    sparse-switch v13, :sswitch_data_f2

    :cond_52
    goto :goto_7c

    :sswitch_53
    const-string v13, "crc32-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    move v12, v14

    goto :goto_7c

    :sswitch_5d
    const-string/jumbo v13, "sha256-ip"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    move v12, v11

    goto :goto_7c

    :sswitch_68
    const-string/jumbo v13, "sha256-domain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    move v12, v9

    goto :goto_7c

    :sswitch_73
    const-string v13, "crc32-domain"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_52

    const/4 v12, 0x0

    :goto_7c
    if-eqz v12, :cond_ac

    if-eq v12, v14, :cond_a8

    if-eq v12, v9, :cond_a4

    if-eq v12, v11, :cond_a0

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_b0

    .line 135
    :cond_a0
    invoke-direct {p0, v7, v10, v6}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 136
    goto :goto_b0

    .line 132
    :cond_a4
    invoke-direct {p0, v7, v10, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 133
    goto :goto_b0

    .line 129
    :cond_a8
    invoke-direct {p0, v7, v10, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 130
    goto :goto_b0

    .line 126
    :cond_ac
    invoke-direct {p0, v7, v10, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    nop

    .line 141
    :goto_b0
    goto :goto_3e

    .line 142
    :cond_b1
    invoke-interface {v7, v11, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v7, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v7, v3}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v3, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v7, v3}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulDigests;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 145
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v3, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v3, v5}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v4, v6}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v3, v4}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulDigests;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 147
    const-string v0, "Reload watchlist done"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_15 .. :try_end_db} :catchall_df

    .line 148
    :try_start_db
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/lang/IllegalStateException; {:try_start_db .. :try_end_de} :catch_eb
    .catch Ljava/lang/NullPointerException; {:try_start_db .. :try_end_de} :catch_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_db .. :try_end_de} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_db .. :try_end_de} :catch_eb
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_eb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_db .. :try_end_de} :catch_eb

    .line 151
    goto :goto_f1

    .line 112
    :catchall_df
    move-exception v0

    :try_start_e0
    throw v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_e1

    .line 148
    :catchall_e1
    move-exception v3

    :try_start_e2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e6

    goto :goto_ea

    :catchall_e6
    move-exception v2

    :try_start_e7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ea
    throw v3
    :try_end_eb
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_eb} :catch_eb
    .catch Ljava/lang/NullPointerException; {:try_start_e7 .. :try_end_eb} :catch_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_eb} :catch_eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e7 .. :try_end_eb} :catch_eb
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_eb} :catch_eb
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e7 .. :try_end_eb} :catch_eb

    :catch_eb
    move-exception v0

    .line 150
    const-string v2, "Failed parsing xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_f1
    return-void

    :sswitch_data_f2
    .sparse-switch
        -0x6f059362 -> :sswitch_73
        -0xe260d6 -> :sswitch_68
        0x31cafa8d -> :sswitch_5d
        0x6670a201 -> :sswitch_53
    .end sparse-switch
.end method

.method public removeTestModeConfig()V
    .registers 3

    .line 267
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 273
    :cond_10
    goto :goto_19

    .line 271
    :catch_11
    move-exception v0

    .line 272
    const-string v0, "WatchlistConfig"

    const-string v1, "Unable to delete test config"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_19
    return-void
.end method

.method public setTestMode(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const-string v0, "WatchlistConfig"

    const-string v1, "Setting watchlist testing config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    .line 259
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 261
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 263
    return-void
.end method
