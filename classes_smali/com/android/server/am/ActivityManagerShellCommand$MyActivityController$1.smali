.class Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;
.super Ljava/lang/Thread;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

.field final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V
    .registers 3

    .line 1246
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1249
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1251
    const/4 v1, 0x0

    .line 1253
    :goto_8
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    monitor-enter v2

    .line 1254
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-nez v3, :cond_13

    .line 1255
    monitor-exit v2

    return-void

    .line 1257
    :cond_13
    const/4 v3, 0x2

    if-ne v1, v3, :cond_20

    .line 1258
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    .line 1259
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1261
    :cond_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_4c

    .line 1263
    :try_start_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1264
    if-nez v2, :cond_28

    .line 1265
    return-void

    .line 1267
    :cond_28
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GDB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_47} :catch_4a

    .line 1269
    add-int/lit8 v1, v1, 0x1

    .line 1272
    goto :goto_8

    .line 1270
    :catch_4a
    move-exception v0

    .line 1271
    return-void

    .line 1261
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method
