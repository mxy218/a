.class public Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;
.super Lflyme/exceptionmonitor/IExceptionMonitorService$Stub;
.source "ExceptionMonitorService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field public static final ACTION_DUMP_TO_FILE:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_SYSTEM_SERVER_ANR:I = 0x4

.field public static final TYPE_SYSTEM_SERVER_JE:I = 0x2

.field public static final TYPE_SYSTEM_SERVER_NE:I = 0x3

.field public static final TYPE_SYSTEM_SERVER_WATCHDOG:I = 0x1

.field private static sErrorMonitorOutputStream:Ljava/io/OutputStream;

.field private static sErrorMonitorSocket:Landroid/net/LocalSocket;


# instance fields
.field private mAmsService:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private final mExceptionHandlerNameMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/flyme/server/exceptionmonitor/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mExceptionHandlerTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/flyme/server/exceptionmonitor/ExceptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "ExceptionMonitor"

    sput-object v0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 6
    .param p1, "ams"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"  # Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lflyme/exceptionmonitor/IExceptionMonitorService$Stub;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerTypeMap:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerNameMap:Landroid/util/ArrayMap;

    .line 69
    iput-object p2, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mContext:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    new-instance v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;

    invoke-direct {v0, p0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;-><init>(Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;)V

    .line 72
    .local v0, "oomExceptionHandler":Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerTypeMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerNameMap:Landroid/util/ArrayMap;

    const-string v2, "oom"

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static createEMFile(Ljava/lang/String;)V
    .registers 5
    .param p0, "path"  # Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "emFile":Ljava/io/File;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 352
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_26

    .line 355
    :cond_1f
    sget-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create EM dump file: createNewFile failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_27

    .line 359
    :goto_26
    goto :goto_2f

    .line 357
    :catch_27
    move-exception v1

    .line 358
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    const-string v3, "Exception creating ANR dump file:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v1  # "ioe":Ljava/io/IOException;
    :goto_2f
    return-void
.end method

.method private dumpEMTrace(Ljava/lang/String;)V
    .registers 5
    .param p1, "pidString"  # Ljava/lang/String;

    .line 338
    sget-object v0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpsys errormonitor trace info pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method

.method public static dumpErrorInfo(Ljava/lang/String;III)V
    .registers 11
    .param p0, "processName"  # Ljava/lang/String;
    .param p1, "pid"  # I
    .param p2, "action"  # I
    .param p3, "type"  # I

    .line 285
    const-string v0, "Error close ErrorMonitor socket"

    if-eqz p0, :cond_cd

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_c

    goto/16 :goto_cd

    .line 288
    :cond_c
    sget-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpDuetoError : processName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    const/4 v2, 0x3

    if-ge v1, v2, :cond_cc

    .line 291
    sget-object v2, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_48

    .line 292
    invoke-static {}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->openErroMonitorSocket()Z

    move-result v2

    if-nez v2, :cond_48

    .line 294
    const-wide/16 v2, 0x3e8

    :try_start_42
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46

    .line 297
    goto :goto_b5

    .line 295
    :catch_46
    move-exception v2

    .line 298
    goto :goto_b5

    .line 302
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "nativeMonitorString":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_75
    sget-object v4, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorOutputStream:Ljava/io/OutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 306
    sget-object v4, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_85} :catch_9a
    .catchall {:try_start_75 .. :try_end_85} :catchall_98

    .line 312
    :try_start_85
    sget-object v4, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_8e

    .line 313
    sget-object v4, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8e} :catch_8f

    .line 317
    :cond_8e
    goto :goto_95

    .line 315
    :catch_8f
    move-exception v4

    .line 316
    .local v4, "ex2":Ljava/io/IOException;
    sget-object v5, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v4  # "ex2":Ljava/io/IOException;
    :goto_95
    sput-object v3, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    .line 307
    return-void

    .line 311
    :catchall_98
    move-exception v4

    goto :goto_b9

    .line 308
    :catch_9a
    move-exception v4

    .line 309
    .local v4, "ex":Ljava/io/IOException;
    :try_start_9b
    sget-object v5, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    const-string v6, "Error writing to ErrorMonitor socket"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_98

    .line 312
    .end local v4  # "ex":Ljava/io/IOException;
    :try_start_a2
    sget-object v4, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_ab

    .line 313
    sget-object v4, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_ab} :catch_ac

    .line 317
    :cond_ab
    goto :goto_b2

    .line 315
    :catch_ac
    move-exception v4

    .line 316
    .local v4, "ex2":Ljava/io/IOException;
    sget-object v5, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v4  # "ex2":Ljava/io/IOException;
    :goto_b2
    sput-object v3, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    .line 319
    nop

    .line 290
    .end local v2  # "nativeMonitorString":Ljava/lang/String;
    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_33

    .line 312
    .restart local v2  # "nativeMonitorString":Ljava/lang/String;
    :goto_b9
    :try_start_b9
    sget-object v5, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_c2

    .line 313
    sget-object v5, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c2} :catch_c3

    .line 317
    :cond_c2
    goto :goto_c9

    .line 315
    :catch_c3
    move-exception v5

    .line 316
    .local v5, "ex2":Ljava/io/IOException;
    sget-object v6, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v5  # "ex2":Ljava/io/IOException;
    :goto_c9
    sput-object v3, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    throw v4

    .line 321
    .end local v1  # "i":I
    .end local v2  # "nativeMonitorString":Ljava/lang/String;
    :cond_cc
    return-void

    .line 286
    :cond_cd
    :goto_cd
    return-void
.end method

.method private getExceptionHandler(I)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    .registers 3
    .param p1, "type"  # I

    .line 265
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    return-object v0
.end method

.method private getExceptionHandler(Ljava/lang/String;)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    return-object v0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .registers 5
    .param p1, "pid"  # I

    .line 178
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 179
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1d

    .line 180
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    .line 182
    .end local v1  # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1d
    goto :goto_a

    .line 183
    :cond_1e
    const-string v0, ""

    return-object v0
.end method

.method private getProcessPid(Ljava/lang/String;)I
    .registers 5
    .param p1, "processName"  # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 188
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 189
    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    return v0

    .line 191
    .end local v1  # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_21
    goto :goto_a

    .line 192
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private static openErroMonitorSocket()Z
    .registers 3

    .line 325
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    sput-object v0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    .line 326
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "nativemonitor"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 327
    .local v0, "socketAddress":Landroid/net/LocalSocketAddress;
    sget-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 328
    sget-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorOutputStream:Ljava/io/OutputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_20

    .line 333
    .end local v0  # "socketAddress":Landroid/net/LocalSocketAddress;
    nop

    .line 334
    const/4 v0, 0x1

    return v0

    .line 329
    :catch_20
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    const-string v2, "ErrorMonitor daemon socket open failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const/4 v1, 0x0

    sput-object v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->sErrorMonitorSocket:Landroid/net/LocalSocket;

    .line 332
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 198
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 199
    .local v1, "pid":I
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_22

    .line 208
    array-length v2, p3

    if-lez v2, :cond_21

    .line 209
    const/4 v2, 0x0

    aget-object v2, p3, v2

    .line 210
    .local v2, "handleName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getExceptionHandler(Ljava/lang/String;)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    move-result-object v3

    .line 211
    .local v3, "exceptionHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    if-eqz v3, :cond_21

    .line 212
    invoke-virtual {v3, p1, p2, p3}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 217
    .end local v2  # "handleName":Ljava/lang/String;
    .end local v3  # "exceptionHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    :cond_21
    return-void

    .line 201
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: dump from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 6
    .param p1, "serviceName"  # Ljava/lang/String;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "args"  # [Ljava/lang/String;

    .line 240
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 241
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 243
    :try_start_6
    invoke-interface {v0, p2, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 246
    goto :goto_e

    .line 244
    :catch_a
    move-exception v1

    .line 245
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 248
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_e
    :goto_e
    return-void
.end method

.method public dumpErrorInfo(III)V
    .registers 5
    .param p1, "pid"  # I
    .param p2, "action"  # I
    .param p3, "type"  # I

    .line 255
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    .line 257
    return-void
.end method

.method public dumpErrorInfo(Ljava/lang/String;II)V
    .registers 5
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "action"  # I
    .param p3, "type"  # I

    .line 260
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getProcessPid(Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, "pid":I
    invoke-static {p1, v0, p2, p3}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    .line 262
    return-void
.end method

.method public dumpGraphics(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpGraphics(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method getAmsService()Lcom/android/server/am/ActivityManagerService;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExceptionMonitorConfig(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "type"  # I
    .param p2, "processName"  # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getExceptionHandler(I)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    move-result-object v0

    .line 87
    .local v0, "exceptionHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {v0, p2}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->getConfigValue(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 90
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public getExceptionMonitorInfo(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "type"  # I
    .param p2, "processName"  # Ljava/lang/String;

    .line 221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 222
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 223
    .local v1, "pid":I
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1f

    .line 232
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getExceptionHandler(I)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    move-result-object v2

    .line 233
    .local v2, "monitorHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    if-eqz v2, :cond_1d

    .line 234
    invoke-virtual {v2, p2}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->getExceptionInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    return-object v3

    .line 236
    :cond_1d
    const/4 v3, 0x0

    return-object v3

    .line 225
    .end local v2  # "monitorHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: getExceptionMonitorInfo() from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 123
    const-string v0, "getPackageInfo"

    :try_start_2
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "index":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_11

    .line 125
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object p1, v2

    .line 127
    :cond_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 128
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_1f
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    return-object v0

    .line 131
    .end local v1  # "index":I
    .end local v2  # "pm":Landroid/content/pm/IPackageManager;
    :catchall_1a
    move-exception v1

    .line 132
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 129
    .end local v1  # "throwable":Ljava/lang/Throwable;
    :catch_1f
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v1  # "e":Landroid/os/RemoteException;
    nop

    .line 134
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOOMExceptionHandlerEnable()Z
    .registers 2

    .line 279
    const-string v0, "oom"

    invoke-direct {p0, v0}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getExceptionHandler(Ljava/lang/String;)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->isEnable()Z

    move-result v0

    return v0
.end method

.method public reportExceptionEventBegin(Landroid/os/Bundle;Landroid/os/IRemoteCallback;)V
    .registers 23
    .param p1, "bundle"  # Landroid/os/Bundle;
    .param p2, "callback"  # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 140
    .local v3, "uid":I
    const/4 v0, 0x0

    const-string v4, "pid"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 141
    .local v4, "pid":I
    iget-object v5, v1, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 143
    .local v12, "userId":I
    const-string v5, "type"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 144
    .local v13, "type":I
    const-string v5, "level"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 145
    .local v14, "level":I
    const-string v5, "message"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 146
    .local v15, "message":Ljava/lang/String;
    const-string v5, "data"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 147
    .local v16, "data":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportExceptionEventBegin packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",level="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;)V

    .line 148
    if-eqz v4, :cond_e8

    if-eqz v15, :cond_e8

    .line 149
    const v5, 0xdc3370

    const/4 v8, 0x6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v0, 0x2

    aput-object v11, v9, v0

    const/16 v17, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v9, v17

    const/16 v17, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v9, v17

    const/16 v17, 0x5

    aput-object v15, v9, v17

    invoke-static {v5, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 150
    invoke-direct {v1, v13}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getExceptionHandler(I)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    move-result-object v17

    .line 151
    .local v17, "monitorHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    if-eqz v17, :cond_bb

    invoke-virtual/range {v17 .. v17}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 153
    .local v18, "origId":J
    move-object/from16 v5, v17

    move v6, v14

    move-object/from16 v7, v16

    move-object v8, v15

    move v9, v4

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->handlerEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    .line 154
    .local v5, "result":Z
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    if-eqz v5, :cond_b8

    .line 157
    move-object/from16 v9, p2

    :try_start_ad
    invoke-interface {v9, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 160
    goto :goto_e7

    .line 158
    :catch_b1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e7

    .line 155
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_b8
    move-object/from16 v9, p2

    goto :goto_e7

    .line 151
    .end local v5  # "result":Z
    .end local v18  # "origId":J
    :cond_bb
    move-object/from16 v9, p2

    .line 163
    if-nez v17, :cond_e7

    .line 164
    if-ne v13, v8, :cond_ea

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportExceptionEventBegin watchdog: packageName="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;)V

    .line 166
    const-string v5, "system_server"

    invoke-static {v5, v4, v0, v10}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    goto :goto_ea

    .line 163
    :cond_e7
    :goto_e7
    goto :goto_ea

    .line 148
    .end local v17  # "monitorHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    :cond_e8
    move-object/from16 v9, p2

    .line 171
    :cond_ea
    :goto_ea
    return-void
.end method

.method public reportExceptionEventEnd(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "bundle"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    return-void
.end method

.method public setExceptionMonitorConfig(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "type"  # I
    .param p2, "processName"  # Ljava/lang/String;
    .param p3, "data"  # Landroid/os/Bundle;

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 96
    .local v0, "uid":I
    const-string v1, "pid"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, "pid":I
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mAmsService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_4f

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 109
    .local v2, "origId":J
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExceptionMonitorConfig type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",process="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getExceptionHandler(I)Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    move-result-object v4

    .line 111
    .local v4, "exceptionHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    if-eqz v4, :cond_45

    .line 112
    invoke-virtual {v4, p2, p3}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->setConfigValue(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3f

    goto :goto_45

    .line 114
    .end local v4  # "exceptionHandler":Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
    :catchall_3f
    move-exception v4

    .line 115
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_40
    const-string v5, "setConfigValue error:"

    invoke-static {v5, v4}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_4a

    .line 117
    .end local v4  # "throwable":Ljava/lang/Throwable;
    :cond_45
    :goto_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    nop

    .line 119
    return-void

    .line 117
    :catchall_4a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 99
    .end local v2  # "origId":J
    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: setExceptionMonitorConfig() from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public systemReady()V
    .registers 3

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 274
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->mExceptionHandlerTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;

    invoke-virtual {v1}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;->systemReady()V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0  # "i":I
    :cond_17
    return-void
.end method
