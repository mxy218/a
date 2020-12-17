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
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 115
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"  # Ljava/io/InputStream;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"  # [B

    .line 69
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 70
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 13
    .param p0, "is"  # Ljava/io/InputStream;
    .param p1, "targetDir"  # Ljava/io/File;
    .param p2, "makeWorldReadable"  # Z
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
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v1, 0x2000

    :try_start_a
    new-array v1, v1, [B

    .line 136
    .local v1, "buffer":[B
    :goto_c
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    if-eqz v2, :cond_61

    .line 139
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "name":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 144
    .local v5, "entryFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 145
    invoke-static {v5, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    goto :goto_59

    .line 148
    :cond_26
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_38

    .line 149
    nop

    .line 150
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 149
    invoke-static {v6, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 153
    :cond_38
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_65

    .line 155
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_3d
    :try_start_3d
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4a

    .line 156
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3d

    .line 159
    :cond_4a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_5a

    .line 160
    .end local v8  # "count":I
    :try_start_51
    invoke-static {v4, v6}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 162
    .end local v6  # "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_59

    .line 163
    invoke-static {v5}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_65

    .line 166
    .end local v2  # "name":Ljava/lang/String;
    .end local v5  # "entryFile":Ljava/io/File;
    :cond_59
    :goto_59
    goto :goto_c

    .line 153
    .restart local v2  # "name":Ljava/lang/String;
    .restart local v5  # "entryFile":Ljava/io/File;
    .restart local v6  # "fos":Ljava/io/FileOutputStream;
    :catchall_5a
    move-exception v4

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v1  # "buffer":[B
    .end local v2  # "name":Ljava/lang/String;
    .end local v3  # "entry":Ljava/util/zip/ZipEntry;
    .end local v5  # "entryFile":Ljava/io/File;
    .end local v6  # "fos":Ljava/io/FileOutputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "targetDir":Ljava/io/File;
    .end local p2  # "makeWorldReadable":Z
    :try_start_5b
    throw v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 160
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1  # "buffer":[B
    .restart local v2  # "name":Ljava/lang/String;
    .restart local v3  # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5  # "entryFile":Ljava/io/File;
    .restart local v6  # "fos":Ljava/io/FileOutputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "targetDir":Ljava/io/File;
    .restart local p2  # "makeWorldReadable":Z
    :catchall_5c
    move-exception v7

    :try_start_5d
    invoke-static {v4, v6}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "targetDir":Ljava/io/File;
    .end local p2  # "makeWorldReadable":Z
    throw v7
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_65

    .line 167
    .end local v1  # "buffer":[B
    .end local v2  # "name":Ljava/lang/String;
    .end local v3  # "entry":Ljava/util/zip/ZipEntry;
    .end local v5  # "entryFile":Ljava/io/File;
    .end local v6  # "fos":Ljava/io/FileOutputStream;
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "targetDir":Ljava/io/File;
    .restart local p2  # "makeWorldReadable":Z
    :cond_61
    invoke-static {v4, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 168
    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    return-void

    .line 133
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_65
    move-exception v1

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "targetDir":Ljava/io/File;
    .end local p2  # "makeWorldReadable":Z
    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 167
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "targetDir":Ljava/io/File;
    .restart local p2  # "makeWorldReadable":Z
    :catchall_67
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 11
    .param p0, "is"  # Ljava/io/InputStream;
    .param p1, "entryName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "entry":Ljava/util/zip/ZipEntry;
    const/4 v3, 0x0

    if-eqz v1, :cond_6e

    .line 95
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 98
    goto :goto_5

    .line 101
    :cond_18
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/32 v6, 0x20000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4b

    .line 104
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 105
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_73

    .line 107
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_39

    .line 108
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2c

    .line 110
    :cond_39
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_44

    .line 111
    :try_start_3d
    invoke-static {v3, v5}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_73

    .line 115
    invoke-static {v3, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 110
    return-object v6

    .line 105
    .end local v7  # "count":I
    :catchall_44
    move-exception v3

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v1  # "name":Ljava/lang/String;
    .end local v2  # "entry":Ljava/util/zip/ZipEntry;
    .end local v4  # "buffer":[B
    .end local v5  # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "entryName":Ljava/lang/String;
    :try_start_45
    throw v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 111
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v1  # "name":Ljava/lang/String;
    .restart local v2  # "entry":Ljava/util/zip/ZipEntry;
    .restart local v4  # "buffer":[B
    .restart local v5  # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "entryName":Ljava/lang/String;
    :catchall_46
    move-exception v6

    :try_start_47
    invoke-static {v3, v5}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "entryName":Ljava/lang/String;
    throw v6

    .line 102
    .end local v4  # "buffer":[B
    .end local v5  # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "entryName":Ljava/lang/String;
    :cond_4b
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "entryName":Ljava/lang/String;
    throw v3
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_73

    .line 114
    .end local v1  # "name":Ljava/lang/String;
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "entryName":Ljava/lang/String;
    :cond_6e
    nop

    .line 115
    invoke-static {v3, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 114
    return-object v3

    .line 92
    .end local v2  # "entry":Ljava/util/zip/ZipEntry;
    :catchall_73
    move-exception v1

    .end local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local p0  # "is":Ljava/io/InputStream;
    .end local p1  # "entryName":Ljava/lang/String;
    :try_start_74
    throw v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 115
    .restart local v0  # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0  # "is":Ljava/io/InputStream;
    .restart local p1  # "entryName":Ljava/lang/String;
    :catchall_75
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .registers 4
    .param p1, "targetDir"  # Ljava/io/File;
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
    .registers 4
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
    .local v0, "contents":[B
    if-eqz v0, :cond_f

    .line 88
    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    return-object v1

    .line 86
    :cond_f
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    const-string v2, "Distro version file entry not found"

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
