.class Lcom/android/server/NativeDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NativeDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 646
    iput p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    .line 647
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/NativeDaemonEvent;)V
    .registers 9

    .line 650
    nop

    .line 651
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 652
    :try_start_4
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 653
    iget v4, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_1d

    .line 654
    nop

    .line 655
    goto :goto_1f

    .line 657
    :cond_1d
    goto :goto_a

    .line 652
    :cond_1e
    move-object v2, v3

    .line 658
    :goto_1f
    if-nez v2, :cond_8c

    .line 660
    :goto_21
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v1, v2, :cond_82

    .line 661
    const-string v1, "NativeDaemonConnector.ResponseQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more buffered than allowed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 662
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 666
    const-string v2, "NativeDaemonConnector.ResponseQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    goto :goto_21

    .line 670
    :cond_82
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, v3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 671
    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_8c
    iget p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 676
    iget p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez p1, :cond_9b

    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 677
    :cond_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_4 .. :try_end_9c} :catchall_a5

    .line 679
    :try_start_9c
    iget-object p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_a1} :catch_a2

    goto :goto_a3

    .line 680
    :catch_a2
    move-exception p1

    :goto_a3
    nop

    .line 681
    return-void

    .line 677
    :catchall_a5
    move-exception p1

    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 714
    const-string p1, "Pending requests:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter p1

    .line 716
    :try_start_8
    iget-object p3, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->logCmd:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    goto :goto_e

    .line 719
    :cond_3b
    monitor-exit p1

    .line 720
    return-void

    .line 719
    :catchall_3d
    move-exception p2

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw p2
.end method

.method public remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;
    .registers 10

    .line 686
    nop

    .line 687
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 688
    :try_start_4
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    .line 689
    iget v4, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_1d

    .line 690
    nop

    .line 691
    goto :goto_1f

    .line 693
    :cond_1d
    goto :goto_a

    .line 688
    :cond_1e
    move-object v2, v3

    .line 694
    :goto_1f
    if-nez v2, :cond_2b

    .line 695
    new-instance v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_2b
    iget p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 701
    iget p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 702
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_53

    .line 703
    nop

    .line 705
    :try_start_3c
    iget-object p1, v2, Lcom/android/server/NativeDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/NativeDaemonEvent;
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_46} :catch_47

    .line 706
    goto :goto_49

    :catch_47
    move-exception p1

    move-object p1, v3

    .line 707
    :goto_49
    if-nez p1, :cond_52

    .line 708
    const-string p2, "NativeDaemonConnector.ResponseQueue"

    const-string p3, "Timeout waiting for response"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_52
    return-object p1

    .line 702
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method
