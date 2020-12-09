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

    .line 1440
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 1441
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    .line 1442
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    .line 1443
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 1444
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    .line 1445
    iput p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    .line 1446
    return-void
.end method


# virtual methods
.method public onOomAdjMessage(Ljava/lang/String;)V
    .registers 5

    .line 1531
    monitor-enter p0

    .line 1532
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 1534
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1535
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 1538
    :try_start_16
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1539
    nop

    .line 1540
    monitor-exit p0

    .line 1541
    return-void

    .line 1538
    :catchall_1c
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    .line 1540
    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onUidActive(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1485
    monitor-enter p0

    .line 1486
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 1488
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1489
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, " active"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 1492
    :try_start_16
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1493
    nop

    .line 1494
    monitor-exit p0

    .line 1495
    return-void

    .line 1492
    :catchall_1c
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    .line 1494
    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public onUidCachedChanged(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1517
    monitor-enter p0

    .line 1518
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_26

    .line 1520
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1521
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    if-eqz p2, :cond_11

    const-string p2, " cached"

    goto :goto_13

    :cond_11
    const-string p2, " uncached"

    :goto_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 1524
    :try_start_1b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1525
    nop

    .line 1526
    monitor-exit p0

    .line 1527
    return-void

    .line 1524
    :catchall_21
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    .line 1526
    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw p1
.end method

.method public onUidGone(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    monitor-enter p0

    .line 1468
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    .line 1470
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1471
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, " gone"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    if-eqz p2, :cond_1a

    .line 1473
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string p2, " disabled"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    :cond_1a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1476
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 1478
    :try_start_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1479
    nop

    .line 1480
    monitor-exit p0

    .line 1481
    return-void

    .line 1478
    :catchall_2a
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    .line 1480
    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public onUidIdle(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1499
    monitor-enter p0

    .line 1500
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2f

    .line 1502
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1503
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, " idle"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    if-eqz p2, :cond_1a

    .line 1505
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string p2, " disabled"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    :cond_1a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1508
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 1510
    :try_start_24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1511
    nop

    .line 1512
    monitor-exit p0

    .line 1513
    return-void

    .line 1510
    :catchall_2a
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    .line 1512
    :catchall_2f
    move-exception p1

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public onUidStateChanged(IIJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    monitor-enter p0

    .line 1451
    :try_start_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    .line 1453
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 1454
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, " procstate "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-static {p2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1456
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string p2, " seq "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1457
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    .line 1458
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 1460
    :try_start_2b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1461
    nop

    .line 1462
    monitor-exit p0

    .line 1463
    return-void

    .line 1460
    :catchall_31
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1

    .line 1462
    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_36

    throw p1
.end method

.method printMessageForState()V
    .registers 3

    .line 1544
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    if-eqz v0, :cond_5

    goto :goto_c

    .line 1546
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Watching uid states...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    :goto_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish watching"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    return-void
.end method

.method run()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1554
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1555
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1557
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    const/16 v1, 0x1f

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1561
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_1c

    .line 1562
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->setOomAdjObserver(ILcom/android/server/am/ActivityManagerService$OomAdjObserver;)V

    .line 1564
    :cond_1c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mState:I

    .line 1566
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInput:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1567
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1570
    :goto_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7a

    .line 1571
    const/4 v3, 0x1

    .line 1572
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3a

    .line 1573
    move v3, v0

    goto :goto_63

    .line 1574
    :cond_3a
    const-string/jumbo v4, "q"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    const-string/jumbo v4, "quit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1575
    goto :goto_7a

    .line 1577
    :cond_4d
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    :goto_63
    monitor-enter p0
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_81
    .catchall {:try_start_0 .. :try_end_64} :catchall_7f

    .line 1581
    if-eqz v3, :cond_6d

    .line 1582
    :try_start_66
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->printMessageForState()V

    .line 1585
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1586
    monitor-exit p0

    .line 1587
    goto :goto_2b

    .line 1586
    :catchall_77
    move-exception v0

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_66 .. :try_end_79} :catchall_77

    :try_start_79
    throw v0
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7a} :catch_81
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7f

    .line 1593
    :cond_7a
    :goto_7a
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_95

    .line 1594
    goto :goto_90

    .line 1593
    :catchall_7f
    move-exception v0

    goto :goto_9c

    .line 1589
    :catch_81
    move-exception v0

    .line 1590
    :try_start_82
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1591
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_7f

    .line 1593
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v0, :cond_95

    .line 1594
    :goto_90
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1596
    :cond_95
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1597
    nop

    .line 1598
    return-void

    .line 1593
    :goto_9c
    iget v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mUid:I

    if-ltz v1, :cond_a5

    .line 1594
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInternal:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->clearOomAdjObserver()V

    .line 1596
    :cond_a5
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mInterface:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    throw v0
.end method
