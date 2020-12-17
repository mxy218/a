.class Lcom/android/server/am/ActivityManagerService$21;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$fEventType:Ljava/lang/String;

.field final synthetic val$fPackageName:Ljava/lang/String;

.field final synthetic val$fProcessName:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$shouldReport:Z

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;ZLandroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"  # Ljava/lang/String;

    .line 10216
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$21;->val$shouldReport:Z

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p10, p0, Lcom/android/server/am/ActivityManagerService$21;->val$fEventType:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/server/am/ActivityManagerService$21;->val$fPackageName:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/am/ActivityManagerService$21;->val$fProcessName:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/server/am/ActivityManagerService$21;->val$subject:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 10219
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21;->val$report:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 10220
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10223
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logcat_for_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10224
    .local v0, "setting":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 10225
    .local v1, "lines":I
    const/high16 v3, 0x30000

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v1, 0x64

    sub-int/2addr v3, v4

    .line 10228
    .local v3, "maxDataFileSize":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    if-eqz v4, :cond_61

    if-lez v3, :cond_61

    .line 10230
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    const-string v6, "\n\n[[TRUNCATED]]"

    invoke-static {v4, v3, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_47} :catch_48

    .line 10234
    goto :goto_61

    .line 10232
    :catch_48
    move-exception v4

    .line 10233
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10236
    .end local v4  # "e":Ljava/io/IOException;
    :cond_61
    :goto_61
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v4, :cond_72

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v4, :cond_72

    .line 10237
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10240
    :cond_72
    const/4 v4, 0x1

    if-lez v1, :cond_13b

    .line 10241
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10244
    const/4 v5, 0x0

    .line 10246
    .local v5, "input":Ljava/io/InputStreamReader;
    :try_start_7d
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/16 v7, 0x11

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "/system/bin/timeout"

    aput-object v8, v7, v2

    const-string v8, "-k"

    aput-object v8, v7, v4

    const/4 v8, 0x2

    const-string v9, "15s"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "10s"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "/system/bin/logcat"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "-v"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string/jumbo v9, "threadtime"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "-b"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "events"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "-b"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string/jumbo v9, "system"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "-b"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string/jumbo v9, "main"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "-b"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "crash"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "-t"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    .line 10249
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 10250
    invoke-virtual {v6, v4}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_ef} :catch_124
    .catchall {:try_start_7d .. :try_end_ef} :catchall_122

    .line 10252
    .local v6, "logcat":Ljava/lang/Process;
    :try_start_ef
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f6} :catch_f7
    .catchall {:try_start_ef .. :try_end_f6} :catchall_122

    goto :goto_f8

    :catch_f7
    move-exception v7

    .line 10253
    :goto_f8
    :try_start_f8
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_ff} :catch_100
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_122

    goto :goto_101

    :catch_100
    move-exception v7

    .line 10254
    :goto_101
    :try_start_101
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v7

    .line 10257
    const/16 v7, 0x2000

    new-array v7, v7, [C

    .line 10258
    .local v7, "buf":[C
    :goto_10f
    invoke-virtual {v5, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    move v9, v8

    .local v9, "num":I
    if-lez v8, :cond_11c

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7, v2, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_11b} :catch_124
    .catchall {:try_start_101 .. :try_end_11b} :catchall_122

    goto :goto_10f

    .line 10262
    .end local v6  # "logcat":Ljava/lang/Process;
    .end local v7  # "buf":[C
    .end local v9  # "num":I
    :cond_11c
    :try_start_11c
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_120

    goto :goto_13b

    :catch_120
    move-exception v6

    goto :goto_13b

    :catchall_122
    move-exception v2

    goto :goto_133

    .line 10259
    :catch_124
    move-exception v6

    .line 10260
    .local v6, "e":Ljava/io/IOException;
    :try_start_125
    const-string v7, "ActivityManager"

    const-string v8, "Error running logcat"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12c
    .catchall {:try_start_125 .. :try_end_12c} :catchall_122

    .line 10262
    nop

    .end local v6  # "e":Ljava/io/IOException;
    if-eqz v5, :cond_13b

    :try_start_12f
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_120

    goto :goto_13b

    :goto_133
    if-eqz v5, :cond_13a

    :try_start_135
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_13a

    :catch_139
    move-exception v4

    :cond_13a
    :goto_13a
    throw v2

    .line 10268
    .end local v5  # "input":Ljava/io/InputStreamReader;
    :cond_13b
    :goto_13b
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$shouldReport:Z

    if-eqz v5, :cond_1ea

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v5

    if-nez v5, :cond_1ea

    .line 10269
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10270
    .local v5, "uuid":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 10271
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->mErrorListenerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 10273
    :try_start_16c
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;
    :try_end_170
    .catch Landroid/os/DeadObjectException; {:try_start_16c .. :try_end_170} :catch_1c9
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_170} :catch_1b1
    .catchall {:try_start_16c .. :try_end_170} :catchall_1af

    if-nez v7, :cond_174

    .line 10274
    :try_start_172
    monitor-exit v6
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_1af

    return-void

    .line 10276
    :cond_174
    :try_start_174
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v7, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$21;->val$fEventType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$21;->val$fPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$21;->val$fProcessName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$21;->val$subject:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-interface/range {v8 .. v14}, Landroid/app/IApplicationErrorListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 10279
    const-string v7, "ActivityManager"

    const-string v8, "ErrReport: call onError() END ! mIApplicationErrorListener=%s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    aput-object v9, v4, v2

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catch Landroid/os/DeadObjectException; {:try_start_174 .. :try_end_1ae} :catch_1c9
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_1ae} :catch_1b1
    .catchall {:try_start_174 .. :try_end_1ae} :catchall_1af

    goto :goto_1e5

    .line 10286
    :catchall_1af
    move-exception v2

    goto :goto_1e8

    .line 10283
    :catch_1b1
    move-exception v2

    .line 10284
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1b2
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ApplicationErrorListener.onError() E :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e6

    .line 10280
    .end local v2  # "e":Ljava/lang/Exception;
    :catch_1c9
    move-exception v2

    .line 10281
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ApplicationErrorListener.onError() E :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10282
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mIApplicationErrorListener:Landroid/app/IApplicationErrorListener;

    .line 10285
    .end local v2  # "e":Landroid/os/DeadObjectException;
    :goto_1e5
    nop

    .line 10286
    :goto_1e6
    monitor-exit v6

    .line 10287
    .end local v5  # "uuid":Ljava/lang/String;
    goto :goto_1f7

    .line 10286
    .restart local v5  # "uuid":Ljava/lang/String;
    :goto_1e8
    monitor-exit v6
    :try_end_1e9
    .catchall {:try_start_1b2 .. :try_end_1e9} :catchall_1af

    throw v2

    .line 10288
    .end local v5  # "uuid":Ljava/lang/String;
    :cond_1ea
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 10291
    :goto_1f7
    return-void
.end method
