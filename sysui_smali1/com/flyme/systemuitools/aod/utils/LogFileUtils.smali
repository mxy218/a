.class public Lcom/flyme/systemuitools/aod/utils/LogFileUtils;
.super Ljava/lang/Object;
.source "LogFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/utils/LogFileUtils$WorkerThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "LogFileUtils"

.field private static sInstance:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;


# instance fields
.field private final MSG_WRITE_LOG:I

.field mFormat:Ljava/text/DateFormat;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->MSG_WRITE_LOG:I

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy/MM/dd HH:mm:ss : "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mFormat:Ljava/text/DateFormat;

    .line 32
    new-instance v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils$WorkerThread;

    sget-object v1, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils$WorkerThread;-><init>(Lcom/flyme/systemuitools/aod/utils/LogFileUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mWorkerThread:Landroid/os/HandlerThread;

    .line 33
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mWorkerThread:Landroid/os/HandlerThread;

    check-cast v2, Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/utils/LogFileUtils;Ljava/lang/String;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->writeLogInBackground(Ljava/lang/String;)V

    return-void
.end method

.method private deleteFileIfTooBig()V
    .registers 7

    const/4 v0, 0x0

    .line 86
    :try_start_1
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getLogFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    return-void

    .line 90
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 91
    sget-object p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    const-string v1, "deleteFileIfTooBig : !fileDir.exists()"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_16
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_40
    .catchall {:try_start_1 .. :try_end_1b} :catchall_39

    .line 95
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4164000000000000L  # 1.048576E7

    cmpl-double v0, v2, v4

    if-lez v0, :cond_30

    .line 97
    sget-object v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    const-string v2, "file size more than 10485760"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_37
    .catchall {:try_start_1b .. :try_end_30} :catchall_34

    .line 104
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_45

    goto :goto_45

    :catchall_34
    move-exception p0

    move-object v0, v1

    goto :goto_3a

    :catch_37
    move-object v0, v1

    goto :goto_40

    :catchall_39
    move-exception p0

    :goto_3a
    if-eqz v0, :cond_3f

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    .line 107
    :catch_3f
    :cond_3f
    throw p0

    :catch_40
    :goto_40
    if-eqz v0, :cond_45

    .line 104
    :try_start_42
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_45

    :catch_45
    :cond_45
    :goto_45
    return-void
.end method

.method public static getInstance()Lcom/flyme/systemuitools/aod/utils/LogFileUtils;
    .registers 1

    .line 39
    sget-object v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->sInstance:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    invoke-direct {v0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;-><init>()V

    sput-object v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->sInstance:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    .line 42
    :cond_b
    sget-object v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->sInstance:Lcom/flyme/systemuitools/aod/utils/LogFileUtils;

    return-object v0
.end method

.method private getLogFile()Ljava/io/File;
    .registers 4

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Android/data/aod"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3c

    .line 121
    sget-object p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    const-string v1, "fileDir.mkdirs()"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_3c
    new-instance p0, Ljava/io/File;

    const-string/jumbo v1, "tools_aod.log"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private writeLogInBackground(Ljava/lang/String;)V
    .registers 7

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 50
    :try_start_c
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->getLogFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_13

    return-void

    .line 54
    :cond_13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_24

    .line 55
    sget-object v3, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeLog: createNewFile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 58
    :cond_24
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mFormat:Ljava/text/DateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget-object p1, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "writeLog: write"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {p1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_48} :catch_66
    .catchall {:try_start_c .. :try_end_48} :catchall_5f

    .line 63
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->deleteFileIfTooBig()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_56} :catch_5d
    .catchall {:try_start_48 .. :try_end_56} :catchall_5a

    .line 70
    :try_start_56
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_6b

    goto :goto_6b

    :catchall_5a
    move-exception p0

    move-object v1, p1

    goto :goto_60

    :catch_5d
    move-object v1, p1

    goto :goto_66

    :catchall_5f
    move-exception p0

    :goto_60
    if-eqz v1, :cond_65

    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_65

    .line 73
    :catch_65
    :cond_65
    throw p0

    :catch_66
    :goto_66
    if-eqz v1, :cond_6b

    .line 70
    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6b

    :catch_6b
    :cond_6b
    :goto_6b
    return-void
.end method


# virtual methods
.method public writeLog(Ljava/lang/String;)V
    .registers 3

    .line 79
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/utils/LogFileUtils;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
