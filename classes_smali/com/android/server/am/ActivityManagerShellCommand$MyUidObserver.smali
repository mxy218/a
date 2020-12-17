.class final Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Lcom/android/server/am/ActivityManagerService$OomAdjObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyUidObserver"
.end annotation


# static fields
.field static final STATE_NORMAL:I


# instance fields
.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mInternal:Lcom/android/server/am/ActivityManagerService;

.field final mPw:Ljava/io/PrintWriter;

.field mState:I

.field final mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/PrintWriter;Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "input"  # Ljava/io/InputStream;
    .param p4, "uid"  # I

    .line 1486
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 1487
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    .line 1488
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1489
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 1490
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    .line 1491
    iput p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 1492
    return-void
.end method


# virtual methods
.method public onOomAdjMessage(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"  # Ljava/lang/String;

    .line 1577
    monitor-enter p0

    .line 1578
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 1580
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 1584
    :try_start_16
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1585
    nop

    .line 1586
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1587
    return-void

    .line 1584
    .restart local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1  # "msg":Ljava/lang/String;
    throw v1

    .line 1586
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1  # "msg":Ljava/lang/String;
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onUidActive(I)V
    .registers 5
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1531
    monitor-enter p0

    .line 1532
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 1534
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1535
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " active"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 1538
    :try_start_16
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1539
    nop

    .line 1540
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1541
    return-void

    .line 1538
    .restart local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1  # "uid":I
    throw v1

    .line 1540
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1  # "uid":I
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onUidCachedChanged(IZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "cached"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1563
    monitor-enter p0

    .line 1564
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    .line 1566
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1567
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    if-eqz p2, :cond_11

    const-string v2, " cached"

    goto :goto_13

    :cond_11
    const-string v2, " uncached"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 1570
    :try_start_1b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1571
    nop

    .line 1572
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1573
    return-void

    .line 1570
    .restart local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_21
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1  # "uid":I
    .end local p2  # "cached":Z
    throw v1

    .line 1572
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1  # "uid":I
    .restart local p2  # "cached":Z
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onUidGone(IZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "disabled"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1513
    monitor-enter p0

    .line 1514
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    .line 1516
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " gone"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1518
    if-eqz p2, :cond_1a

    .line 1519
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1521
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1522
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 1524
    :try_start_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1525
    nop

    .line 1526
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1527
    return-void

    .line 1524
    .restart local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2a
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1  # "uid":I
    .end local p2  # "disabled":Z
    throw v1

    .line 1526
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1  # "uid":I
    .restart local p2  # "disabled":Z
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public onUidIdle(IZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "disabled"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1545
    monitor-enter p0

    .line 1546
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    .line 1548
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1549
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " idle"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1550
    if-eqz p2, :cond_1a

    .line 1551
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1554
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 1556
    :try_start_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1557
    nop

    .line 1558
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1559
    return-void

    .line 1556
    .restart local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_2a
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1  # "uid":I
    .end local p2  # "disabled":Z
    throw v1

    .line 1558
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1  # "uid":I
    .restart local p2  # "disabled":Z
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public onUidStateChanged(IIJ)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "procState"  # I
    .param p3, "procStateSeq"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1496
    monitor-enter p0

    .line 1497
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    .line 1499
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1500
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " procstate "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, " seq "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    .line 1504
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 1506
    :try_start_2b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1507
    nop

    .line 1508
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    monitor-exit p0

    .line 1509
    return-void

    .line 1506
    .restart local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_31
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .end local p1  # "uid":I
    .end local p2  # "procState":I
    .end local p3  # "procStateSeq":J
    throw v1

    .line 1508
    .end local v0  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    .restart local p1  # "uid":I
    .restart local p2  # "procState":I
    .restart local p3  # "procStateSeq":J
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_36

    throw v0
.end method

.method printMessageForState()V
    .registers 3

    .line 1590
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    if-eqz v0, :cond_5

    goto :goto_c

    .line 1592
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Watching uid states...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    :goto_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish watching"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    return-void
.end method

.method run()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1600
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1601
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1603
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    const/16 v1, 0x1f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1607
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_1c

    .line 1608
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->setOomAdjObserver(ILcom/android/server/am/ActivityManagerService$OomAdjObserver;)V

    .line 1610
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    .line 1612
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1613
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1616
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_7b

    .line 1617
    const/4 v2, 0x1

    .line 1618
    .local v2, "addNewline":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3b

    .line 1619
    const/4 v2, 0x0

    goto :goto_64

    .line 1620
    :cond_3b
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1621
    goto :goto_7b

    .line 1623
    :cond_4e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    :goto_64
    monitor-enter p0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_65} :catch_82
    .catchall {:try_start_0 .. :try_end_65} :catchall_80

    .line 1627
    if-eqz v2, :cond_6e

    .line 1628
    :try_start_67
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1631
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1632
    monitor-exit p0

    .line 1633
    .end local v2  # "addNewline":Z
    goto :goto_2b

    .line 1632
    .restart local v2  # "addNewline":Z
    :catchall_78
    move-exception v4

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_78

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    :try_start_7a
    throw v4
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7b} :catch_82
    .catchall {:try_start_7a .. :try_end_7b} :catchall_80

    .line 1639
    .end local v0  # "converter":Ljava/io/InputStreamReader;
    .end local v1  # "in":Ljava/io/BufferedReader;
    .end local v2  # "addNewline":Z
    .end local v3  # "line":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;
    :cond_7b
    :goto_7b
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_96

    .line 1640
    goto :goto_91

    .line 1639
    :catchall_80
    move-exception v0

    goto :goto_9d

    .line 1635
    :catch_82
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/io/IOException;
    :try_start_83
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1637
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_80

    .line 1639
    .end local v0  # "e":Ljava/io/IOException;
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_96

    .line 1640
    :goto_91
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1642
    :cond_96
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1643
    nop

    .line 1644
    return-void

    .line 1639
    :goto_9d
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v1, :cond_a6

    .line 1640
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1642
    :cond_a6
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    throw v0
.end method
