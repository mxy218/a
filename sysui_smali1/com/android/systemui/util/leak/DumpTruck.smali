.class public Lcom/android/systemui/util/leak/DumpTruck;
.super Ljava/lang/Object;
.source "DumpTruck.java"


# instance fields
.field final body:Ljava/lang/StringBuilder;

.field private final context:Landroid/content/Context;

.field private hprofUri:Landroid/net/Uri;

.field private pss:J


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 187
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

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    return-void
.end method

.method private static zipUp(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_56

    const/high16 p0, 0x100000

    :try_start_d
    new-array v2, p0, [B

    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 176
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_4f

    .line 177
    :try_start_2a
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 180
    :goto_32
    invoke-virtual {v5, v2, v0, p0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_3c

    .line 181
    invoke-virtual {v1, v2, v0, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_32

    .line 183
    :cond_3c
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_43

    .line 184
    :try_start_3f
    invoke-static {v4, v5}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4f

    goto :goto_13

    :catchall_43
    move-exception p0

    .line 176
    :try_start_44
    throw p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    .line 184
    :try_start_46
    invoke-static {p0, v5}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4f

    :cond_4a
    const/4 p0, 0x1

    .line 187
    :try_start_4b
    invoke-static {v4, v1}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_56

    return p0

    :catchall_4f
    move-exception p0

    .line 172
    :try_start_50
    throw p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    .line 187
    :try_start_52
    invoke-static {p0, v1}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_56

    :catch_56
    move-exception p0

    const-string p1, "DumpTruck"

    const-string v1, "error zipping up profile data"

    .line 188
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public captureHeaps([I)Lcom/android/systemui/util/leak/DumpTruck;
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 70
    const-class v2, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 72
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "leak"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const/4 v4, 0x0

    .line 74
    iput-object v4, v1, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 76
    iget-object v4, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    iget-object v4, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v6, "Build: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\nProcesses:\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 82
    array-length v7, v0

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 83
    array-length v8, v7

    move v9, v5

    :goto_46
    const/4 v0, 0x1

    const-string v10, "\n"

    const-string v11, "DumpTruck"

    if-ge v9, v8, :cond_f8

    aget v12, v7, v9

    .line 84
    iget-object v13, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v14, "  pid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_91

    .line 86
    invoke-virtual {v2, v12}, Lcom/android/systemui/util/leak/GarbageMonitor;->getMemInfo(I)Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    move-result-object v13

    if-eqz v13, :cond_91

    .line 88
    iget-object v14, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " up="

    .line 89
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v6

    .line 90
    invoke-virtual {v13}, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->getUptime()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pss="

    .line 91
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v13, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    .line 92
    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " uss="

    .line 93
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v13, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentUss:J

    .line 94
    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    iget-wide v5, v13, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    iput-wide v5, v1, Lcom/android/systemui/util/leak/DumpTruck;->pss:J

    move/from16 v5, v16

    goto :goto_92

    :cond_91
    move v5, v6

    :goto_92
    if-ne v12, v5, :cond_ed

    .line 99
    new-instance v6, Ljava/io/File;

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v0, v14

    const-string v13, "heap-%d.ahprof"

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dumping memory info for process "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_c8
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v6, " (hprof attached)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d5} :catch_d6

    goto :goto_ed

    :catch_d6
    move-exception v0

    const-string v6, "error dumping memory:"

    .line 107
    invoke-static {v11, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    iget-object v6, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v11, "\n** Could not dump heap: \n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_ed
    :goto_ed
    iget-object v0, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_46

    .line 115
    :cond_f8
    :try_start_f8
    new-instance v2, Ljava/io/File;

    const-string v5, "hprof-%d.zip"

    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v0, v7

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0, v4}, Lcom/android/systemui/util/leak/DumpTruck;->zipUp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_158

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v0, v1, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    const-string v3, "com.android.systemui.fileprovider"

    invoke-static {v0, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heap dump accessible at URI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_13f} :catch_140

    goto :goto_158

    :catch_140
    move-exception v0

    const-string/jumbo v2, "unable to zip up heapdumps"

    .line 124
    invoke-static {v11, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    iget-object v2, v1, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v3, "\n** Could not zip up files: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_158
    :goto_158
    return-object v1
.end method

.method public createShareIntent()Landroid/content/Intent;
    .registers 8

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-array v2, v1, [Ljava/lang/Object;

    .line 149
    iget-wide v3, p0, Lcom/android/systemui/util/leak/DumpTruck;->pss:J

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    .line 150
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "SystemUI memory dump (pss=%dM)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    .line 149
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    if-eqz v2, :cond_6c

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v3, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "application/zip"

    .line 157
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    .line 158
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 162
    new-instance v2, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipDescription;

    const-string/jumbo v4, "text/plain"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-direct {v3, v5, v4}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v4, Landroid/content/ClipData$Item;

    iget-object p0, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    invoke-direct {v4, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v3, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6c
    return-object v0
.end method
