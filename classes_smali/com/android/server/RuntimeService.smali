.class public Lcom/android/server/RuntimeService;
.super Landroid/os/Binder;
.source "RuntimeService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static addDistroVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Llibcore/util/DebugInfo;)V
    .registers 9

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 147
    :try_start_1d
    sget v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 148
    invoke-static {v0, v1}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    const-string v3, "OK"

    invoke-virtual {p2, p0, v3}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "formatVersion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v3, v4, v2}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rulesVersion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 154
    invoke-virtual {v2, v3, v4}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "revision"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 156
    invoke-virtual {v2, v3, v1}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;I)Llibcore/util/DebugInfo;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_89} :catch_8a
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_1d .. :try_end_89} :catch_8a

    goto :goto_d8

    .line 158
    :catch_8a
    move-exception v1

    .line 159
    const-string v2, "ERROR"

    invoke-virtual {p2, p0, v2}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exception_class"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p2, p0, v2}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "exception_msg"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error reading "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/RuntimeService;->logMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    :goto_d8
    goto :goto_de

    .line 166
    :cond_d9
    const-string p1, "NOT_FOUND"

    invoke-virtual {p2, p0, p1}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 168
    :goto_de
    return-void
.end method

.method private static addTimeZoneApkDebugInfo(Llibcore/util/DebugInfo;)V
    .registers 3

    .line 97
    nop

    .line 98
    const-string v0, "distro_version"

    invoke-static {v0}, Llibcore/timezone/TimeZoneDataFiles;->getDataTimeZoneFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "core_library.timezone.source.data_"

    invoke-static {v0, v1, p0}, Lcom/android/server/RuntimeService;->addDistroVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Llibcore/util/DebugInfo;)V

    .line 101
    return-void
.end method

.method private static hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 81
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 83
    const/4 p0, 0x1

    return p0

    .line 81
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    :cond_12
    return v1
.end method

.method private static logMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 171
    const-string v0, "RuntimeService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return-void
.end method

.method private static reportTimeZoneInfo(Llibcore/util/DebugInfo;Ljava/io/PrintWriter;)V
    .registers 4

    .line 111
    const-string v0, "Core Library Debug Info: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Llibcore/util/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/util/DebugInfo$DebugEntry;

    .line 113
    invoke-virtual {v0}, Llibcore/util/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    const-string v1, ": \""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Llibcore/util/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    goto :goto_d

    .line 118
    :cond_32
    return-void
.end method

.method private static reportTimeZoneInfoProto(Llibcore/util/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    .line 128
    invoke-virtual {p0}, Llibcore/util/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/util/DebugInfo$DebugEntry;

    .line 129
    const-wide v1, 0x20b00000001L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 130
    const-wide v3, 0x10900000001L

    invoke-virtual {v0}, Llibcore/util/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 131
    const-wide v3, 0x10900000002L

    invoke-virtual {v0}, Llibcore/util/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 132
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 133
    goto :goto_8

    .line 134
    :cond_39
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    const-string v1, "RuntimeService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 58
    return-void

    .line 61
    :cond_b
    const-string v0, "--proto"

    invoke-static {p3, v0}, Lcom/android/server/RuntimeService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 62
    const/4 v0, 0x0

    .line 64
    invoke-static {}, Llibcore/util/CoreLibraryDebug;->getDebugInfo()Llibcore/util/DebugInfo;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/android/server/RuntimeService;->addTimeZoneApkDebugInfo(Llibcore/util/DebugInfo;)V

    .line 67
    if-eqz p3, :cond_24

    .line 68
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 69
    invoke-static {v1, v0}, Lcom/android/server/RuntimeService;->reportTimeZoneInfoProto(Llibcore/util/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_27

    .line 71
    :cond_24
    invoke-static {v1, p2}, Lcom/android/server/RuntimeService;->reportTimeZoneInfo(Llibcore/util/DebugInfo;Ljava/io/PrintWriter;)V

    .line 74
    :goto_27
    if-eqz p3, :cond_2c

    .line 75
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 77
    :cond_2c
    return-void
.end method
