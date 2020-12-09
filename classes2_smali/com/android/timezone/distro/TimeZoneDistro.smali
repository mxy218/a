.class public final Lcom/android/timezone/distro/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final FILE_NAME:Ljava/lang/String; = "distro.zip"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field private static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 115
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 69
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 70
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-static {p1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 133
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    const/16 p0, 0x2000

    :try_start_a
    new-array p0, p0, [B

    .line 136
    :goto_c
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    .line 139
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {p1, v3}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 144
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 145
    invoke-static {v3, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    goto :goto_57

    .line 148
    :cond_25
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 149
    nop

    .line 150
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 149
    invoke-static {v1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 153
    :cond_37
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_63

    .line 155
    :goto_3c
    :try_start_3c
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 156
    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3c

    .line 159
    :cond_48
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_58

    .line 160
    :try_start_4f
    invoke-static {v2, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 162
    if-eqz p2, :cond_57

    .line 163
    invoke-static {v3}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_63

    .line 166
    :cond_57
    :goto_57
    goto :goto_c

    .line 153
    :catchall_58
    move-exception p0

    :try_start_59
    throw p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 160
    :catchall_5a
    move-exception p1

    :try_start_5b
    invoke-static {p0, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_63

    .line 167
    :cond_5f
    invoke-static {v2, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 168
    return-void

    .line 133
    :catchall_63
    move-exception p0

    :try_start_64
    throw p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    .line 167
    :catchall_65
    move-exception p1

    invoke-static {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_6c

    .line 95
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 98
    goto :goto_5

    .line 101
    :cond_17
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x20000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_49

    .line 104
    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 105
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_71

    .line 107
    :goto_2b
    :try_start_2b
    invoke-virtual {v0, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    .line 108
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2b

    .line 110
    :cond_37
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_42

    .line 111
    :try_start_3b
    invoke-static {v1, p1}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_71

    .line 115
    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 110
    return-object p0

    .line 105
    :catchall_42
    move-exception p0

    :try_start_43
    throw p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 111
    :catchall_44
    move-exception v1

    :try_start_45
    invoke-static {p0, p1}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1

    .line 102
    :cond_49
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " too large: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6c
    .catchall {:try_start_45 .. :try_end_6c} :catchall_71

    .line 114
    :cond_6c
    nop

    .line 115
    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 114
    return-object v1

    .line 92
    :catchall_71
    move-exception p0

    :try_start_72
    throw p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 115
    :catchall_73
    move-exception p1

    invoke-static {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 124
    return-void
.end method

.method public getDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const-string v1, "distro_version"

    invoke-static {v0, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 85
    if-eqz v0, :cond_f

    .line 88
    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v0

    return-object v0

    .line 86
    :cond_f
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    const-string v1, "Distro version file entry not found"

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
