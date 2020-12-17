.class public Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;
.super Lcom/flyme/server/exceptionmonitor/ExceptionHandler;
.source "OOMExceptionHandler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "perf_hwui_graphics_memory_use.xml"

.field private static final DUMP_ACTION:I = 0x4

.field private static final mDumpActionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OOM_DEFAULT_THRESHOLD:I

.field private final SETTING_NAME:Ljava/lang/String;

.field private final mCurrentDumpPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private final mPkgThresholds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    .line 56
    sget-object v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "texture"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bitmap"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "graphicbuffer"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;)V
    .registers 5
    .param p1, "services"  # Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    .line 63
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/ExceptionHandler;-><init>(Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;)V

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->OOM_DEFAULT_THRESHOLD:I

    .line 50
    const/4 v0, 0x1

    const-string v1, "ro.flyme.published"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    .line 51
    const-string v0, "flyme.exceptionmonitor.oom_enable"

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->SETTING_NAME:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mCurrentDumpPackages:Ljava/util/List;

    .line 53
    const-string v0, "(bitmap|texture|graphicbuffer)=([\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->pattern:Ljava/util/regex/Pattern;

    .line 64
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "data/system/perf_hwui_graphics_memory_use.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;)V
    .registers 1
    .param p0, "x0"  # Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;

    .line 43
    invoke-direct {p0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->initEnableState()V

    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"  # Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++oom++++:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lflyme/exceptionmonitor/ExceptionReporter;->debugLog(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private dumpAction(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "processName"  # Ljava/lang/String;
    .param p3, "pid"  # I

    .line 493
    sget-object v0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 494
    .local v0, "dumpType":I
    if-eqz v0, :cond_21

    .line 495
    const/4 v1, 0x4

    if-nez p3, :cond_1c

    .line 496
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v2, p2, v1, v0}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;II)V

    goto :goto_21

    .line 498
    :cond_1c
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v2, p3, v1, v0}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(III)V

    .line 501
    :cond_21
    :goto_21
    return-void
.end method

.method private dumpAllConfig(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OOMExceptionHandler config:enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    .local v1, "keyPkg":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getPkgThreshold(Ljava/lang/String;Z)Landroid/util/ArrayMap;

    move-result-object v2

    .line 342
    .local v2, "threshold":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .end local v1  # "keyPkg":Ljava/lang/String;
    .end local v2  # "threshold":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_20

    .line 344
    :cond_49
    return-void
.end method

.method private dumpConfigFile(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 318
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 320
    .local v1, "bf":Ljava/io/BufferedReader;
    :goto_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "str":Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 321
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1c} :catch_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_29
    .catchall {:try_start_1 .. :try_end_1c} :catchall_27

    goto :goto_12

    .line 328
    .end local v1  # "bf":Ljava/io/BufferedReader;
    .end local v3  # "str":Ljava/lang/String;
    :cond_1d
    nop

    .line 330
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 333
    :goto_21
    goto :goto_3d

    .line 331
    :catch_22
    move-exception v1

    .line 332
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1  # "e":Ljava/io/IOException;
    goto :goto_21

    .line 328
    :catchall_27
    move-exception v1

    goto :goto_3e

    .line 325
    :catch_29
    move-exception v1

    .line 326
    .restart local v1  # "e":Ljava/io/IOException;
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 328
    .end local v1  # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3d

    .line 330
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_22

    goto :goto_21

    .line 323
    :catch_33
    move-exception v1

    .line 324
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_27

    .line 328
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3d

    .line 330
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_22

    goto :goto_21

    .line 336
    :cond_3d
    :goto_3d
    return-void

    .line 328
    :goto_3e
    if-eqz v0, :cond_48

    .line 330
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 333
    goto :goto_48

    .line 331
    :catch_44
    move-exception v2

    .line 332
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    .end local v2  # "e":Ljava/io/IOException;
    :cond_48
    :goto_48
    throw v1
.end method

.method private dumpTrigger(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;

    .line 347
    array-length v0, p2

    const/4 v1, 0x5

    if-le v0, v1, :cond_4f

    .line 348
    const/4 v0, 0x2

    aget-object v0, p2, v0

    .line 349
    .local v0, "processName":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, p2, v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->tryParseInt(Ljava/lang/String;I)I

    move-result v8

    .line 350
    .local v8, "pid":I
    const/4 v2, 0x4

    aget-object v9, p2, v2

    .line 351
    .local v9, "typeName":Ljava/lang/String;
    aget-object v1, p2, v1

    invoke-static {v1, v3}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, "level":I
    const-string v5, ""

    move-object v2, p0

    move v3, v1

    move-object v4, v9

    move v6, v8

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->handlerEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trigger handerEvent : level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",typeName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .end local v0  # "processName":Ljava/lang/String;
    .end local v1  # "level":I
    .end local v8  # "pid":I
    .end local v9  # "typeName":Ljava/lang/String;
    goto :goto_59

    .line 355
    :cond_4f
    const-string v0, "error args, please use as blow!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    const-string v0, "trigger processName pid typeName level"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    :goto_59
    return-void
.end method

.method private getPkgThreshold(Ljava/lang/String;Z)Landroid/util/ArrayMap;
    .registers 9
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "create"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_78

    .line 184
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 185
    .local v0, "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_1a

    if-eqz p2, :cond_1a

    .line 186
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 187
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 189
    :cond_1a
    if-nez v0, :cond_77

    .line 190
    const/4 v1, 0x1

    .line 191
    .local v1, "matchSize":I
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/ArrayMap;

    .line 192
    iget-object v2, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_76

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_69

    invoke-static {v3, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 195
    :cond_69
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 196
    iget-object v4, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/util/ArrayMap;

    .line 199
    .end local v3  # "key":Ljava/lang/String;
    :cond_76
    goto :goto_32

    .line 202
    .end local v1  # "matchSize":I
    :cond_77
    :goto_77
    return-object v0

    .line 204
    .end local v0  # "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_78
    const/4 v0, 0x0

    return-object v0
.end method

.method private getThresholdsValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "typeName"  # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 174
    const/4 v1, -0x1

    if-eqz p1, :cond_1f

    .line 175
    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, p1, v2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getPkgThreshold(Ljava/lang/String;Z)Landroid/util/ArrayMap;

    move-result-object v2

    .line 176
    .local v2, "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v2, :cond_e

    :goto_d
    goto :goto_1d

    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_d

    :goto_1d
    monitor-exit v0

    return v1

    .line 178
    .end local v2  # "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1f
    monitor-exit v0

    return v1

    .line 179
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private initEnableState()V
    .registers 5

    .line 412
    const/4 v0, 0x1

    const-string v1, "ro.flyme.published"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    .line 413
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 414
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const-string v3, "flyme.exceptionmonitor.oom_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 415
    .local v3, "state":I
    if-eqz v3, :cond_22

    if-lez v3, :cond_20

    goto :goto_24

    :cond_20
    move v0, v2

    goto :goto_24

    :cond_22
    iget-boolean v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    :goto_24
    iput-boolean v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    .line 416
    return-void
.end method

.method private isValidProcessName(Ljava/lang/String;)Z
    .registers 4
    .param p1, "processName"  # Ljava/lang/String;

    .line 311
    const-string v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v0, p1, v1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private loadConfigFromFile()V
    .registers 8

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 124
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_c} :catch_6f
    .catchall {:try_start_1 .. :try_end_c} :catchall_6d

    move-object v0, v1

    .line 126
    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 127
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "utf-8"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 128
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 129
    .local v2, "event":I
    :goto_1a
    const/4 v3, 0x1

    if-eq v2, v3, :cond_5d

    .line 130
    if-eqz v2, :cond_56

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    goto :goto_57

    .line 134
    :cond_23
    const-string v3, "item"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 135
    const/4 v3, 0x0

    const-string v4, "package"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 137
    .local v5, "attrName":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-static {v1, v5, v6}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 138
    .local v6, "value":I
    invoke-direct {p0, v3, v5, v6}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->setThresholdsValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    .end local v5  # "attrName":Ljava/lang/String;
    .end local v6  # "value":I
    goto :goto_40

    .line 140
    .end local v3  # "packageName":Ljava/lang/String;
    :cond_55
    goto :goto_57

    .line 132
    :cond_56
    nop

    .line 145
    :cond_57
    :goto_57
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5b} :catch_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_5b} :catch_6f
    .catchall {:try_start_d .. :try_end_5b} :catchall_6d

    move v2, v3

    goto :goto_1a

    .line 149
    .end local v1  # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2  # "event":I
    :cond_5d
    goto :goto_62

    .line 147
    :catch_5e
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_62} :catch_6f
    .catchall {:try_start_5f .. :try_end_62} :catchall_6d

    .line 153
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_62
    if-eqz v0, :cond_79

    .line 155
    :try_start_64
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    .line 158
    :goto_67
    goto :goto_79

    .line 156
    :catchall_68
    move-exception v1

    .line 157
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1  # "t":Ljava/lang/Throwable;
    goto :goto_67

    .line 153
    :catchall_6d
    move-exception v1

    goto :goto_7a

    .line 150
    :catch_6f
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_70
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6d

    .line 153
    .end local v1  # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_79

    .line 155
    :try_start_75
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_68

    goto :goto_67

    .line 161
    :cond_79
    :goto_79
    return-void

    .line 153
    :goto_7a
    if-eqz v0, :cond_84

    .line 155
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    .line 158
    goto :goto_84

    .line 156
    :catchall_80
    move-exception v2

    .line 157
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .end local v2  # "t":Ljava/lang/Throwable;
    :cond_84
    :goto_84
    throw v1
.end method

.method private openFdLeakDetectOrDumpFdTraceStack(I)V
    .registers 4
    .param p1, "pid"  # I

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFdLeakDetectOrDumpFdTraceStack pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->debugLog(Ljava/lang/String;)V

    .line 528
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 529
    return-void
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"  # Ljava/lang/String;
    .param p2, "defValue"  # I

    .line 107
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private saveConfigToFile()V
    .registers 13

    .line 68
    const-string v0, "item"

    const-string v1, "list"

    const/4 v2, 0x0

    .line 70
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 71
    .local v3, "xs":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v4, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 72
    const-string v4, "UTF_8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 73
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 74
    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget-object v5, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 76
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 77
    .local v7, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_81

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_81

    .line 78
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string v8, "package"

    invoke-interface {v3, v4, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_59
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 81
    .local v9, "typeName":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 82
    .local v10, "value":I
    if-lez v10, :cond_7d

    .line 83
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v4, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .end local v9  # "typeName":Ljava/lang/String;
    .end local v10  # "value":I
    :cond_7d
    goto :goto_59

    .line 86
    :cond_7e
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .end local v6  # "packageName":Ljava/lang/String;
    .end local v7  # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_81
    goto :goto_2d

    .line 89
    :cond_82
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 91
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8d} :catch_9b
    .catchall {:try_start_5 .. :try_end_8d} :catchall_99

    .line 92
    const/4 v0, 0x0

    .line 96
    .end local v2  # "fos":Ljava/io/FileOutputStream;
    .end local v3  # "xs":Lorg/xmlpull/v1/XmlSerializer;
    .local v0, "fos":Ljava/io/FileOutputStream;
    if-eqz v0, :cond_ab

    .line 98
    :try_start_90
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 101
    :goto_93
    goto :goto_ab

    .line 99
    :catch_94
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1  # "e":Ljava/io/IOException;
    goto :goto_93

    .line 96
    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .restart local v2  # "fos":Ljava/io/FileOutputStream;
    :catchall_99
    move-exception v0

    goto :goto_ac

    .line 93
    :catch_9b
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    :try_start_9c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_99

    .line 96
    .end local v0  # "e":Ljava/io/IOException;
    if-eqz v2, :cond_aa

    .line 98
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 101
    :goto_a4
    goto :goto_aa

    .line 99
    :catch_a5
    move-exception v0

    .line 100
    .restart local v0  # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_a4

    .line 104
    :cond_aa
    :goto_aa
    move-object v0, v2

    .end local v2  # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    :cond_ab
    :goto_ab
    return-void

    .line 96
    .end local v0  # "fos":Ljava/io/FileOutputStream;
    .restart local v2  # "fos":Ljava/io/FileOutputStream;
    :goto_ac
    if-eqz v2, :cond_b6

    .line 98
    :try_start_ae
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    .line 101
    goto :goto_b6

    .line 99
    :catch_b2
    move-exception v1

    .line 100
    .restart local v1  # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    .end local v1  # "e":Ljava/io/IOException;
    :cond_b6
    :goto_b6
    throw v0
.end method

.method private setThresholdsValue(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "typeName"  # Ljava/lang/String;
    .param p3, "value"  # I

    .line 164
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 165
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    .line 166
    const/4 v1, 0x1

    :try_start_8
    invoke-direct {p0, p1, v1}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getPkgThreshold(Ljava/lang/String;Z)Landroid/util/ArrayMap;

    move-result-object v1

    .line 167
    .local v1, "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v1  # "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_13
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .registers 3
    .param p0, "value"  # Ljava/lang/String;
    .param p1, "defValue"  # I

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 114
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 115
    :catch_c
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 209
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_1e5

    .line 210
    aget-object v0, p3, v1

    .line 211
    .local v0, "actionName":Ljava/lang/String;
    array-length v2, p3

    const/4 v3, 0x2

    if-le v2, v3, :cond_d

    aget-object v2, p3, v3

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 212
    .local v2, "processName":Ljava/lang/String;
    :goto_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    sparse-switch v4, :sswitch_data_1ea

    :cond_19
    goto :goto_60

    :sswitch_1a
    const-string v4, "disable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v7

    goto :goto_61

    :sswitch_24
    const-string v4, "--help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x6

    goto :goto_61

    :sswitch_2e
    const-string v4, "configfile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v3

    goto :goto_61

    :sswitch_38
    const-string v4, "gfxinfo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v1

    goto :goto_61

    :sswitch_42
    const-string v4, "trigger"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x5

    goto :goto_61

    :sswitch_4c
    const-string v4, "enable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v6

    goto :goto_61

    :sswitch_56
    const-string v4, "config"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v8

    goto :goto_61

    :goto_60
    move v4, v5

    :goto_61
    packed-switch v4, :pswitch_data_208

    .line 283
    if-eqz v2, :cond_1df

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "packageDumping":Z
    iget-object v3, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mCurrentDumpPackages:Ljava/util/List;

    monitor-enter v3

    goto/16 :goto_1a2

    .line 270
    .end local v1  # "packageDumping":Z
    :pswitch_6c  #0x6
    const-string v1, "adb shell dumpsys exceptionmonitor oom enable //打开oom服务功能"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    const-string v1, "adb shell dumpsys exceptionmonitor oom disable //关闭oom服务功能"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    const-string v1, "adb shell dumpsys exceptionmonitor oom //打印oom服务相关配置信息"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    const-string v1, "adb shell dumpsys exceptionmonitor oom config //打印应用配置信息"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    const-string v1, "adb shell dumpsys exceptionmonitor oom configfile //打印应用配置文件"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    const-string v1, "adb shell dumpsys exceptionmonitor oom [bitmap|texture|graphicbuffer] {package} //dump相关信息"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    const-string v1, "adb shell dumpsys exceptionmonitor oom config {package} //读取应用配置"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    const-string v1, "adb shell dumpsys exceptionmonitor oom config {package} [bitmap|texture|graphicbuffer] //读取一项配置"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    const-string v1, "adb shell dumpsys exceptionmonitor oom config {package} [bitmap|texture|graphicbuffer] {int>100} //写入配置"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v1, "adb shell dumpsys exceptionmonitor oom trigger {processName} {pid} {typeName} {level}"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    goto/16 :goto_1e4

    .line 267
    :pswitch_a0  #0x5
    invoke-direct {p0, p2, p3}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->dumpTrigger(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 268
    goto/16 :goto_1e4

    .line 262
    :pswitch_a5  #0x4
    invoke-virtual {p0, v8}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->setEnable(Z)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oom exception handler state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    goto/16 :goto_1e4

    .line 257
    :pswitch_c0  #0x3
    invoke-virtual {p0, v1}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->setEnable(Z)V

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oom exception handler state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    goto/16 :goto_1e4

    .line 253
    :pswitch_db  #0x2
    invoke-direct {p0, p2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->dumpConfigFile(Ljava/io/PrintWriter;)V

    .line 255
    goto/16 :goto_1e4

    .line 246
    :pswitch_e0  #0x1
    if-eqz v2, :cond_1e4

    .line 247
    invoke-virtual {p0, v2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getExceptionInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 248
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gfxinfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    .end local v1  # "bundle":Landroid/os/Bundle;
    goto/16 :goto_1e4

    .line 214
    :pswitch_fc  #0x0
    array-length v4, p3

    if-le v4, v6, :cond_180

    .line 215
    aget-object v4, p3, v6

    .line 216
    .local v4, "typeName":Ljava/lang/String;
    array-length v9, p3

    if-le v9, v7, :cond_147

    .line 217
    aget-object v9, p3, v7

    invoke-static {v9, v5}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->tryParseInt(Ljava/lang/String;I)I

    move-result v5

    .line 218
    .local v5, "value":I
    sget-object v9, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_132

    .line 219
    invoke-direct {p0, v2, v4, v5}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->setThresholdsValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    invoke-direct {p0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->saveConfigToFile()V

    .line 221
    invoke-direct {p0, v2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->isValidProcessName(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_146

    .line 222
    iget-object v9, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    new-array v10, v7, [Ljava/lang/String;

    aput-object v2, v10, v8

    aput-object v4, v10, v1

    const-string v1, "set"

    aput-object v1, v10, v3

    aget-object v1, p3, v7

    aput-object v1, v10, v6

    invoke-virtual {v9, p1, p2, v10}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpGraphics(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_146

    .line 225
    :cond_132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown attributes name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .end local v5  # "value":I
    :cond_146
    :goto_146
    goto :goto_17f

    .line 228
    :cond_147
    sget-object v1, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v4}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getThresholdsValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17f

    .line 231
    :cond_16b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown attributes name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .end local v4  # "typeName":Ljava/lang/String;
    :goto_17f
    goto :goto_1e4

    .line 236
    :cond_180
    if-eqz v2, :cond_19e

    .line 237
    invoke-direct {p0, v2, v8}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getPkgThreshold(Ljava/lang/String;Z)Landroid/util/ArrayMap;

    move-result-object v1

    .line 238
    .local v1, "threshold":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .end local v1  # "threshold":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1e4

    .line 240
    :cond_19e
    invoke-direct {p0, p2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->dumpAllConfig(Ljava/io/PrintWriter;)V

    .line 244
    goto :goto_1e4

    .line 286
    .local v1, "packageDumping":Z
    :goto_1a2
    :try_start_1a2
    iget-object v4, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mCurrentDumpPackages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b0

    .line 287
    iget-object v4, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mCurrentDumpPackages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b1

    .line 289
    :cond_1b0
    const/4 v1, 0x1

    .line 291
    :goto_1b1
    monitor-exit v3
    :try_end_1b2
    .catchall {:try_start_1a2 .. :try_end_1b2} :catchall_1dc

    .line 292
    if-nez v1, :cond_1d6

    .line 293
    invoke-direct {p0, v0, v2, v8}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->dumpAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpsys："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mCurrentDumpPackages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1db

    .line 297
    :cond_1d6
    const-string v3, "In operation, please do not dump continuously"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .end local v1  # "packageDumping":Z
    :goto_1db
    goto :goto_1e4

    .line 291
    .restart local v1  # "packageDumping":Z
    :catchall_1dc
    move-exception v4

    :try_start_1dd
    monitor-exit v3
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    throw v4

    .line 301
    .end local v1  # "packageDumping":Z
    :cond_1df
    const-string v1, "need a package name,Example：adb shell dumpsys exceptionmonitor oom texture com.android.systemui"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .end local v0  # "actionName":Ljava/lang/String;
    .end local v2  # "processName":Ljava/lang/String;
    :cond_1e4
    :goto_1e4
    goto :goto_1e8

    .line 306
    :cond_1e5
    invoke-direct {p0, p2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->dumpAllConfig(Ljava/io/PrintWriter;)V

    .line 308
    :goto_1e8
    return-void

    nop

    :sswitch_data_1ea
    .sparse-switch
        -0x50c07cbe -> :sswitch_56
        -0x4d6ada7d -> :sswitch_4c
        -0x3f2caa48 -> :sswitch_42
        -0x2837059 -> :sswitch_38
        0x319807be -> :sswitch_2e
        0x4f7504e1 -> :sswitch_24
        0x639e22e8 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_fc  #00000000
        :pswitch_e0  #00000001
        :pswitch_db  #00000002
        :pswitch_c0  #00000003
        :pswitch_a5  #00000004
        :pswitch_a0  #00000005
        :pswitch_6c  #00000006
    .end packed-switch
.end method

.method public getConfigValue(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9
    .param p1, "processName"  # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-boolean v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    if-eqz v1, :cond_44

    .line 382
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->getPkgThreshold(Ljava/lang/String;Z)Landroid/util/ArrayMap;

    move-result-object v1

    .line 383
    .local v1, "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_44

    .line 384
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v2, "value":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 386
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 387
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 388
    .local v5, "v":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    .end local v4  # "key":Ljava/lang/String;
    .end local v5  # "v":Ljava/lang/Integer;
    :cond_41
    goto :goto_1b

    .line 391
    :cond_42
    monitor-exit v0

    return-object v2

    .line 394
    .end local v1  # "thresholds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2  # "value":Landroid/os/Bundle;
    :cond_44
    monitor-exit v0

    .line 395
    const/4 v0, 0x0

    return-object v0

    .line 394
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public getExceptionInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 14
    .param p1, "processName"  # Ljava/lang/String;

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 449
    .local v1, "dumpStream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 451
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/system/oom_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".gfxinfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 452
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 453
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 454
    .local v3, "writer":Lcom/android/internal/util/FastPrintWriter;
    iget-object v4, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const-string v8, "total"

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "size"

    const/4 v10, 0x2

    aput-object v8, v6, v10

    invoke-virtual {v4, v5, v3, v6}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpGraphics(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 456
    const/16 v4, 0x200

    new-array v5, v4, [B

    .line 457
    .local v5, "buffer":[B
    invoke-virtual {v2, v5, v7, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 458
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 459
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 460
    .local v6, "m":Ljava/util/regex/Matcher;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v8, "processName"

    invoke-virtual {v7, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_65
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 463
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7a} :catch_b1
    .catchall {:try_start_3 .. :try_end_7a} :catchall_93

    goto :goto_65

    .line 465
    :cond_7b
    nop

    .line 471
    nop

    .line 473
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    .line 476
    goto :goto_85

    .line 474
    :catch_81
    move-exception v8

    .line 475
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 478
    .end local v8  # "e":Ljava/io/IOException;
    :goto_85
    nop

    .line 480
    :try_start_86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    .line 483
    goto :goto_8e

    .line 481
    :catch_8a
    move-exception v8

    .line 482
    .restart local v8  # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    .end local v8  # "e":Ljava/io/IOException;
    :goto_8e
    nop

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 465
    return-object v7

    .line 468
    .end local v3  # "writer":Lcom/android/internal/util/FastPrintWriter;
    .end local v4  # "str":Ljava/lang/String;
    .end local v5  # "buffer":[B
    .end local v6  # "m":Ljava/util/regex/Matcher;
    .end local v7  # "bundle":Landroid/os/Bundle;
    :catchall_93
    move-exception v3

    .line 469
    .local v3, "throwable":Ljava/lang/Throwable;
    :try_start_94
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_ce

    .line 471
    .end local v3  # "throwable":Ljava/lang/Throwable;
    if-eqz v1, :cond_a1

    .line 473
    :try_start_99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    .line 476
    goto :goto_a1

    .line 474
    :catch_9d
    move-exception v3

    .line 475
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 478
    .end local v3  # "e":Ljava/io/IOException;
    :cond_a1
    :goto_a1
    if-eqz v2, :cond_ab

    .line 480
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    .line 483
    goto :goto_ab

    .line 481
    :catch_a7
    move-exception v3

    .line 482
    .restart local v3  # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    .end local v3  # "e":Ljava/io/IOException;
    :cond_ab
    :goto_ab
    if-eqz v0, :cond_cc

    .line 486
    :goto_ad
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_cc

    .line 466
    :catch_b1
    move-exception v3

    .line 467
    .restart local v3  # "e":Ljava/io/IOException;
    :try_start_b2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_ce

    .line 471
    .end local v3  # "e":Ljava/io/IOException;
    if-eqz v1, :cond_bf

    .line 473
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    .line 476
    goto :goto_bf

    .line 474
    :catch_bb
    move-exception v3

    .line 475
    .restart local v3  # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 478
    .end local v3  # "e":Ljava/io/IOException;
    :cond_bf
    :goto_bf
    if-eqz v2, :cond_c9

    .line 480
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    .line 483
    goto :goto_c9

    .line 481
    :catch_c5
    move-exception v3

    .line 482
    .restart local v3  # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    .end local v3  # "e":Ljava/io/IOException;
    :cond_c9
    :goto_c9
    if-eqz v0, :cond_cc

    .line 486
    goto :goto_ad

    .line 489
    :cond_cc
    :goto_cc
    const/4 v3, 0x0

    return-object v3

    .line 471
    :catchall_ce
    move-exception v3

    if-eqz v1, :cond_d9

    .line 473
    :try_start_d1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    .line 476
    goto :goto_d9

    .line 474
    :catch_d5
    move-exception v4

    .line 475
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 478
    .end local v4  # "e":Ljava/io/IOException;
    :cond_d9
    :goto_d9
    if-eqz v2, :cond_e3

    .line 480
    :try_start_db
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    .line 483
    goto :goto_e3

    .line 481
    :catch_df
    move-exception v4

    .line 482
    .restart local v4  # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    .end local v4  # "e":Ljava/io/IOException;
    :cond_e3
    :goto_e3
    if-eqz v0, :cond_e8

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e8
    throw v3
.end method

.method public handlerEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .param p1, "level"  # I
    .param p2, "data"  # Ljava/lang/String;
    .param p3, "message"  # Ljava/lang/String;
    .param p4, "pid"  # I
    .param p5, "processName"  # Ljava/lang/String;

    .line 505
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 506
    invoke-direct {p0, p2, p5, p4}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->dumpAction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 509
    :cond_6
    const-string v1, "graphicbuffer"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 510
    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    if-eq p1, v0, :cond_14

    goto :goto_17

    .line 513
    :cond_14
    invoke-direct {p0, p4}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->openFdLeakDetectOrDumpFdTraceStack(I)V

    .line 518
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public isEnable()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    return v0
.end method

.method public setConfigValue(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 14
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "value"  # Landroid/os/Bundle;

    .line 362
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPkgThresholds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 363
    :try_start_3
    invoke-direct {p0, p1}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->isValidProcessName(Ljava/lang/String;)Z

    move-result v1

    .line 364
    .local v1, "isPkg":Z
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 365
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 366
    .local v4, "v":I
    sget-object v5, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mDumpActionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 367
    invoke-direct {p0, p1, v3, v4}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->setThresholdsValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    if-eqz v1, :cond_54

    .line 369
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v7, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 370
    .local v5, "pw":Ljava/io/PrintWriter;
    iget-object v6, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    sget-object v7, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    const-string v10, "set"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v5, v8}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpGraphics(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 373
    .end local v3  # "key":Ljava/lang/String;
    .end local v4  # "v":I
    .end local v5  # "pw":Ljava/io/PrintWriter;
    :cond_54
    goto :goto_f

    .line 374
    :cond_55
    invoke-direct {p0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->saveConfigToFile()V

    .line 375
    .end local v1  # "isPkg":Z
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public setEnable(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 400
    iput-boolean p1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->debugLog(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v0}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, -0x1

    :goto_29
    const-string v2, "flyme.exceptionmonitor.oom_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    return-void
.end method

.method public systemReady()V
    .registers 7

    .line 424
    invoke-direct {p0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->initEnableState()V

    .line 425
    const-string v0, "flyme.exceptionmonitor.oom_enable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 426
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mMonitorService:Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    invoke-virtual {v1}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 427
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "systemReady mEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->debugLog(Ljava/lang/String;)V

    .line 428
    new-instance v2, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler$1;-><init>(Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 434
    new-instance v2, Ljava/io/File;

    const-string v3, "system/etc/perf_hwui_graphics_memory_use.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, "initFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    move-result v3

    if-nez v3, :cond_65

    .line 437
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_60} :catch_61

    .line 440
    goto :goto_65

    .line 438
    :catch_61
    move-exception v3

    .line 439
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 442
    .end local v3  # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/flyme/server/exceptionmonitor/OOMExceptionHandler;->loadConfigFromFile()V

    .line 443
    return-void
.end method
