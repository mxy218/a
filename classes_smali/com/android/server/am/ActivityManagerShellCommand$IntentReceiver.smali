.class final Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntentReceiver"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mPw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    .line 680
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 681
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    .line 682
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 8

    .line 687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Broadcast completed: result="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 688
    if-eqz p3, :cond_2c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data=\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 689
    :cond_2c
    if-eqz p4, :cond_42

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extras: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 690
    :cond_42
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 692
    monitor-enter p0

    .line 693
    const/4 p1, 0x1

    :try_start_4e
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    .line 694
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 695
    monitor-exit p0

    .line 696
    return-void

    .line 695
    :catchall_55
    move-exception p1

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_55

    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 700
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$IntentReceiver;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_e
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    goto :goto_1

    .line 703
    :cond_9
    nop

    .line 704
    monitor-exit p0

    return-void

    .line 699
    :catchall_c
    move-exception v0

    goto :goto_15

    .line 701
    :catch_e
    move-exception v0

    .line 702
    :try_start_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    .line 699
    :goto_15
    monitor-exit p0

    throw v0
.end method
