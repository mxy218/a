.class public Lcom/android/server/location/GpsPsdsDownloader;
.super Ljava/lang/Object;
.source "GpsPsdsDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "GpsPsdsDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mPsdsServers:[Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    const-string v0, "GpsPsdsDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsPsdsDownloader;->DEBUG:Z

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/GpsPsdsDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    nop

    .line 56
    const-string v0, "XTRA_SERVER_1"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "XTRA_SERVER_2"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v2, "XTRA_SERVER_3"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1c

    move v5, v4

    goto :goto_1d

    :cond_1c
    move v5, v3

    .line 60
    :goto_1d
    if-eqz v1, :cond_21

    add-int/lit8 v5, v5, 0x1

    .line 61
    :cond_21
    if-eqz v2, :cond_25

    add-int/lit8 v5, v5, 0x1

    .line 64
    :cond_25
    const-string v6, "XTRA_USER_AGENT"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 66
    const-string p1, "Android"

    iput-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_38

    .line 68
    :cond_36
    iput-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mUserAgent:Ljava/lang/String;

    .line 71
    :goto_38
    if-nez v5, :cond_45

    .line 72
    const-string p1, "GpsPsdsDownloader"

    const-string v0, "No PSDS servers were specified in the GPS configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    goto :goto_6f

    .line 75
    :cond_45
    new-array p1, v5, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    .line 76
    nop

    .line 77
    if-eqz v0, :cond_51

    iget-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aput-object v0, p1, v3

    move v3, v4

    .line 78
    :cond_51
    if-eqz v1, :cond_5a

    iget-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    aput-object v1, p1, v3

    goto :goto_5b

    :cond_5a
    move v0, v3

    .line 79
    :goto_5b
    if-eqz v2, :cond_64

    iget-object p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v2, p1, v0

    move v0, v1

    .line 82
    :cond_64
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    .line 85
    :goto_6f
    return-void
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 12

    .line 118
    sget-boolean v0, Lcom/android/server/location/GpsPsdsDownloader;->DEBUG:Z

    const-string v1, "GpsPsdsDownloader"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading PSDS data from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1a
    nop

    .line 122
    const/4 v0, 0x0

    :try_start_1c
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_c0
    .catchall {:try_start_1c .. :try_end_27} :catchall_bb

    .line 123
    :try_start_27
    const-string v2, "Accept"

    const-string v3, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v2, "x-wap-profile"

    const-string v3, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget v2, Lcom/android/server/location/GpsPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 130
    sget v2, Lcom/android/server/location/GpsPsdsDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 133
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 134
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_69

    .line 135
    sget-boolean v3, Lcom/android/server/location/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v3, :cond_63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP error downloading gps PSDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_63} :catch_b9
    .catchall {:try_start_27 .. :try_end_63} :catchall_d1

    .line 136
    :cond_63
    nop

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    return-object v0

    .line 139
    :cond_69
    :try_start_69
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6d} :catch_b9
    .catchall {:try_start_69 .. :try_end_6d} :catchall_d1

    .line 140
    :try_start_6d
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 143
    :cond_76
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9f

    .line 144
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 145
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    int-to-long v5, v5

    const-wide/32 v7, 0xf4240

    cmp-long v5, v5, v7

    if-lez v5, :cond_76

    .line 146
    sget-boolean v3, Lcom/android/server/location/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v3, :cond_96

    const-string v3, "PSDS file too large"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_6d .. :try_end_96} :catchall_ab

    .line 147
    :cond_96
    nop

    .line 151
    :try_start_97
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_b9
    .catchall {:try_start_97 .. :try_end_9a} :catchall_d1

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 147
    return-object v0

    .line 150
    :cond_9f
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_ab

    .line 151
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_b9
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_d1

    .line 155
    nop

    .line 156
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    return-object v3

    .line 139
    :catchall_ab
    move-exception v3

    :try_start_ac
    throw v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    .line 151
    :catchall_ad
    move-exception v4

    if-eqz v2, :cond_b8

    :try_start_b0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_b8

    :catchall_b4
    move-exception v2

    :try_start_b5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b8
    :goto_b8
    throw v4
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b9} :catch_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_d1

    .line 152
    :catch_b9
    move-exception v2

    goto :goto_c2

    .line 155
    :catchall_bb
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_d2

    .line 152
    :catch_c0
    move-exception v2

    move-object p1, v0

    .line 153
    :goto_c2
    :try_start_c2
    sget-boolean v3, Lcom/android/server/location/GpsPsdsDownloader;->DEBUG:Z

    if-eqz v3, :cond_cb

    const-string v3, "Error downloading gps PSDS: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_c2 .. :try_end_cb} :catchall_d1

    .line 155
    :cond_cb
    if-eqz p1, :cond_d0

    .line 156
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 159
    :cond_d0
    return-object v0

    .line 155
    :catchall_d1
    move-exception v0

    :goto_d2
    if-eqz p1, :cond_d7

    .line 156
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d7
    throw v0
.end method

.method downloadPsdsData()[B
    .registers 5

    .line 88
    nop

    .line 89
    iget v0, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    .line 91
    iget-object v1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 92
    return-object v2

    .line 96
    :cond_9
    :goto_9
    if-nez v2, :cond_3a

    .line 97
    const/16 v1, -0xbc

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 100
    :try_start_11
    iget-object v2, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_35

    .line 102
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 103
    nop

    .line 106
    iget v1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    .line 107
    iget v1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    iget-object v3, p0, Lcom/android/server/location/GpsPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    array-length v3, v3

    if-ne v1, v3, :cond_2f

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    .line 111
    :cond_2f
    iget v1, p0, Lcom/android/server/location/GpsPsdsDownloader;->mNextServerIndex:I

    if-ne v1, v0, :cond_34

    goto :goto_3a

    .line 112
    :cond_34
    goto :goto_9

    .line 102
    :catchall_35
    move-exception v0

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0

    .line 114
    :cond_3a
    :goto_3a
    return-object v2
.end method
