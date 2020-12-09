.class Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;
.super Landroid/os/IProgressListener$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressWaiter"
.end annotation


# instance fields
.field private final mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 3

    .line 382
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    .line 383
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Lcom/android/server/am/ActivityManagerShellCommand$1;)V
    .registers 3

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;-><init>(Lcom/android/server/am/ActivityManagerShellCommand;)V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .registers 3

    .line 393
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 394
    return-void
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .registers 4

    .line 389
    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .registers 3

    .line 386
    return-void
.end method

.method public waitForFinish(J)Z
    .registers 5

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProgressWaiter;->mFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 399
    :catch_9
    move-exception p1

    .line 400
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Thread interrupted unexpectedly."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    const/4 p1, 0x0

    return p1
.end method
