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

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .registers 9

    .line 9586
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 9589
    const-string v0, "-b"

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$report:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 9590
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9593
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9594
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 9595
    const/high16 v2, 0x30000

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v2, v4

    mul-int/lit8 v4, v1, 0x64

    sub-int/2addr v2, v4

    .line 9598
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    const-string v5, "ActivityManager"

    if-eqz v4, :cond_62

    if-lez v2, :cond_62

    .line 9600
    :try_start_3f
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    const-string v7, "\n\n[[TRUNCATED]]"

    invoke-static {v4, v2, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4a} :catch_4b

    .line 9604
    goto :goto_62

    .line 9602
    :catch_4b
    move-exception v2

    .line 9603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dataFile:Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9606
    :cond_62
    :goto_62
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_73

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_73

    .line 9607
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v4, v4, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9610
    :cond_73
    if-lez v1, :cond_134

    .line 9611
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9614
    const/4 v2, 0x0

    .line 9616
    :try_start_7d
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/16 v6, 0x11

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "/system/bin/timeout"

    aput-object v7, v6, v3

    const-string v7, "-k"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v9, "15s"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "10s"

    aput-object v9, v6, v7

    const/4 v7, 0x4

    const-string v9, "/system/bin/logcat"

    aput-object v9, v6, v7

    const/4 v7, 0x5

    const-string v9, "-v"

    aput-object v9, v6, v7

    const/4 v7, 0x6

    const-string/jumbo v9, "threadtime"

    aput-object v9, v6, v7

    const/4 v7, 0x7

    aput-object v0, v6, v7

    const/16 v7, 0x8

    const-string v9, "events"

    aput-object v9, v6, v7

    const/16 v7, 0x9

    aput-object v0, v6, v7

    const/16 v7, 0xa

    const-string/jumbo v9, "system"

    aput-object v9, v6, v7

    const/16 v7, 0xb

    aput-object v0, v6, v7

    const/16 v7, 0xc

    const-string v9, "main"

    aput-object v9, v6, v7

    const/16 v7, 0xd

    aput-object v0, v6, v7

    const/16 v0, 0xe

    const-string v7, "crash"

    aput-object v7, v6, v0

    const/16 v0, 0xf

    const-string v7, "-t"

    aput-object v7, v6, v0

    const/16 v0, 0x10

    .line 9619
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-direct {v4, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 9620
    invoke-virtual {v4, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_e7} :catch_120
    .catchall {:try_start_7d .. :try_end_e7} :catchall_11e

    .line 9622
    :try_start_e7
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ee} :catch_ef
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_11e

    goto :goto_f0

    :catch_ef
    move-exception v1

    .line 9623
    :goto_f0
    :try_start_f0
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f7} :catch_f8
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_11e

    goto :goto_f9

    :catch_f8
    move-exception v1

    .line 9624
    :goto_f9
    :try_start_f9
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_102} :catch_120
    .catchall {:try_start_f9 .. :try_end_102} :catchall_11e

    .line 9627
    const/16 v0, 0x2000

    :try_start_104
    new-array v0, v0, [C

    .line 9628
    :goto_106
    invoke-virtual {v1, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    if-lez v2, :cond_112

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_111} :catch_11b
    .catchall {:try_start_104 .. :try_end_111} :catchall_118

    goto :goto_106

    .line 9632
    :cond_112
    :try_start_112
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_116

    goto :goto_134

    :catch_116
    move-exception v0

    goto :goto_134

    :catchall_118
    move-exception v0

    move-object v2, v1

    goto :goto_12c

    .line 9629
    :catch_11b
    move-exception v0

    move-object v2, v1

    goto :goto_121

    .line 9632
    :catchall_11e
    move-exception v0

    goto :goto_12c

    .line 9629
    :catch_120
    move-exception v0

    .line 9630
    :goto_121
    :try_start_121
    const-string v1, "Error running logcat"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_126
    .catchall {:try_start_121 .. :try_end_126} :catchall_11e

    .line 9632
    if-eqz v2, :cond_134

    :try_start_128
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_116

    goto :goto_134

    :goto_12c
    if-eqz v2, :cond_133

    :try_start_12e
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_132

    goto :goto_133

    :catch_132
    move-exception v1

    :cond_133
    :goto_133
    throw v0

    .line 9636
    :cond_134
    :goto_134
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$dropboxTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 9637
    return-void
.end method
