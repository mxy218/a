.class Lcom/android/server/net/watchlist/WatchlistSettings;
.super Ljava/lang/Object;
.source "WatchlistSettings.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "watchlist_settings.xml"

.field private static final SECRET_KEY_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "WatchlistSettings"

.field private static final sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;


# instance fields
.field private mPrivacySecretKey:[B

.field private final mXmlFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 71
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getSystemWatchlistFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>(Ljava/io/File;)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 80
    new-instance v0, Landroid/util/AtomicFile;

    const-string/jumbo v1, "net-watchlist"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 81
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->reloadSettings()V

    .line 82
    iget-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    if-nez p1, :cond_20

    .line 84
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->generatePrivacySecretKey()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 85
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->saveSettings()V

    .line 87
    :cond_20
    return-void
.end method

.method private generatePrivacySecretKey()[B
    .registers 3

    .line 134
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 135
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-object v0
.end method

.method static getSystemWatchlistFile()Ljava/io/File;
    .registers 3

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watchlist_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseSecretKey(Lorg/xmlpull/v1/XmlPullParser;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 113
    const-string/jumbo v0, "secret-key"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 115
    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v2, :cond_1d

    array-length p1, v2

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1c

    goto :goto_1d

    .line 120
    :cond_1c
    return-object v2

    .line 117
    :cond_1d
    :goto_1d
    const-string p1, "WatchlistSettings"

    const-string v0, "Unable to parse secret key"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v1
.end method

.method private reloadSettings()V
    .registers 7

    .line 90
    const-string v0, "WatchlistSettings"

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 92
    return-void

    .line 94
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_11} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_11} :catch_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_11} :catch_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_11} :catch_5b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_5b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_11} :catch_5b

    .line 95
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 96
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v3, "network-watchlist-settings"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 98
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 99
    :cond_28
    :goto_28
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "secret-key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 101
    invoke-direct {p0, v2}, Lcom/android/server/net/watchlist/WatchlistSettings;->parseSecretKey(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    goto :goto_28

    .line 104
    :cond_42
    const-string v2, "Reload watchlist settings done"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_4d

    .line 105
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_4c} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_49 .. :try_end_4c} :catch_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_4c} :catch_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_4c} :catch_5b
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_5b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_49 .. :try_end_4c} :catch_5b

    .line 108
    :cond_4c
    goto :goto_61

    .line 94
    :catchall_4d
    move-exception v2

    :try_start_4e
    throw v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    .line 105
    :catchall_4f
    move-exception v3

    if-eqz v1, :cond_5a

    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception v1

    :try_start_57
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5a
    :goto_5a
    throw v3
    :try_end_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_5b} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_57 .. :try_end_5b} :catch_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5b} :catch_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_5b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5b} :catch_5b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_57 .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v1

    .line 107
    const-string v2, "Failed parsing xml"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :goto_61
    return-void
.end method

.method private saveSettings()V
    .registers 8

    .line 142
    const-string/jumbo v0, "secret-key"

    const-string/jumbo v1, "network-watchlist-settings"

    const-string v2, "WatchlistSettings"

    :try_start_8
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_50

    .line 146
    nop

    .line 148
    :try_start_f
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 149
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 150
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    invoke-interface {v4, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    invoke-interface {v4, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 157
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_43} :catch_44

    .line 161
    goto :goto_4f

    .line 158
    :catch_44
    move-exception v0

    .line 159
    const-string v1, "Failed to write display settings, restoring backup."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 162
    :goto_4f
    return-void

    .line 143
    :catch_50
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write display settings: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method


# virtual methods
.method declared-synchronized getPrivacySecretKey()[B
    .registers 5

    monitor-enter p0

    .line 128
    const/16 v0, 0x30

    :try_start_3
    new-array v1, v0, [B

    .line 129
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 130
    monitor-exit p0

    return-object v1

    .line 127
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
