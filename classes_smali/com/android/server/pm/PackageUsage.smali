.class Lcom/android/server/pm/PackageUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Landroid/content/pm/PackageParser$Package;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field private static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"


# instance fields
.field private mIsHistoricalPackageUsageAvailable:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .line 47
    const/4 v0, 0x1

    const-string/jumbo v1, "package-usage.list"

    const-string v2, "PackageUsage_DiskWriter"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    iput-boolean v0, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    .line 48
    return-void
.end method

.method private parseAsLong(Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide v0

    .line 173
    :catch_5
    move-exception v0

    .line 174
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a long."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 186
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 187
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_13

    .line 189
    const/4 p1, 0x0

    return-object p1

    .line 191
    :cond_13
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected EOF"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_1b
    if-ne v0, p3, :cond_22

    .line 194
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 196
    :cond_22
    int-to-char v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    goto :goto_4
.end method

.method private readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    nop

    :goto_1
    if-eqz p4, :cond_4d

    .line 124
    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_31

    .line 130
    const/4 p4, 0x0

    aget-object v1, v0, p4

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 132
    if-nez v1, :cond_19

    .line 133
    goto :goto_2c

    .line 136
    :cond_19
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 137
    nop

    .line 138
    :goto_21
    const/16 v0, 0x8

    if-ge p4, v0, :cond_2c

    .line 140
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aput-wide v2, v0, p4

    .line 139
    add-int/lit8 p4, p4, 0x1

    goto :goto_21

    .line 123
    :cond_2c
    :goto_2c
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 126
    :cond_31
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " as package-timestamp pair."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_4d
    return-void
.end method

.method private readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 151
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_31

    .line 156
    const/4 v0, 0x0

    aget-object v2, v1, v0

    .line 157
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 158
    if-nez v2, :cond_1d

    .line 159
    goto :goto_0

    .line 162
    :cond_1d
    nop

    .line 163
    :goto_1e
    const/16 v3, 0x8

    if-ge v0, v3, :cond_30

    .line 165
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    add-int/lit8 v4, v0, 0x1

    aget-object v5, v1, v4

    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v0

    .line 164
    move v0, v4

    goto :goto_1e

    .line 167
    :cond_30
    goto :goto_0

    .line 153
    :cond_31
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " as a timestamp array."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_4d
    return-void
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->readInternal(Ljava/util/Map;)V

    return-void
.end method

.method protected readInternal(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 95
    nop

    .line 97
    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_f} :catch_42
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_39
    .catchall {:try_start_6 .. :try_end_f} :catchall_37

    .line 98
    :try_start_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1b

    goto :goto_2a

    .line 103
    :cond_1b
    const-string v3, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 104
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/pm/PackageUsage;->readVersion1LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;)V

    goto :goto_2a

    .line 106
    :cond_27
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/pm/PackageUsage;->readVersion0LP(Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_2a} :catch_34
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2a} :catch_31
    .catchall {:try_start_f .. :try_end_2a} :catchall_2e

    .line 113
    :goto_2a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_49

    :catchall_2e
    move-exception p1

    move-object v1, v2

    goto :goto_4b

    .line 110
    :catch_31
    move-exception p1

    move-object v1, v2

    goto :goto_3a

    .line 108
    :catch_34
    move-exception p1

    move-object v1, v2

    goto :goto_43

    .line 113
    :catchall_37
    move-exception p1

    goto :goto_4b

    .line 110
    :catch_39
    move-exception p1

    .line 111
    :goto_3a
    :try_start_3a
    const-string v0, "PackageManager"

    const-string v2, "Failed to read package usage times"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 108
    :catch_42
    move-exception p1

    .line 109
    :goto_43
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_37

    .line 113
    :goto_46
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 114
    :goto_49
    nop

    .line 115
    return-void

    .line 113
    :goto_4b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 39
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageUsage;->writeInternal(Ljava/util/Map;)V

    return-void
.end method

.method protected writeInternal(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pm/PackageUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 57
    nop

    .line 59
    :try_start_5
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_8f

    .line 60
    :try_start_9
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a0

    const/16 v5, 0x3e8

    const/16 v6, 0x408

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v4, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 70
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5a

    .line 71
    goto :goto_43

    .line 73
    :cond_5a
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 74
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    array-length v7, v5

    :goto_66
    if-ge v6, v7, :cond_75

    aget-wide v8, v5, v6

    .line 76
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 79
    :cond_75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 81
    goto :goto_43

    .line 82
    :cond_86
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 83
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_8c} :catch_8d

    .line 89
    goto :goto_9d

    .line 84
    :catch_8d
    move-exception p1

    goto :goto_91

    :catch_8f
    move-exception p1

    const/4 v1, 0x0

    .line 85
    :goto_91
    if-eqz v1, :cond_96

    .line 86
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 88
    :cond_96
    const-string v0, "PackageManager"

    const-string v1, "Failed to write package usage times"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_9d
    return-void
.end method
