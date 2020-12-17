.class Landroid/net/INetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetd;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1512
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 1510
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1511
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1515
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2592
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2596
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2597
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2598
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2599
    return-void

    .line 2601
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2604
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2606
    nop

    .line 2607
    return-void

    .line 2604
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthAddNiceApp(I)V
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2630
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2634
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2635
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2636
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2642
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2637
    return-void

    .line 2639
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2642
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2644
    nop

    .line 2645
    return-void

    .line 2642
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .registers 8
    .param p1, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1567
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1571
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1573
    .local v4, "_status":Z
    if-nez v4, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_35

    .line 1574
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v2
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_48

    .line 1580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    return v2

    .line 1576
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    if-eqz v5, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    .line 1580
    .end local v4  # "_status":Z
    .local v2, "_result":Z
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    nop

    .line 1583
    return v2

    .line 1580
    .end local v2  # "_result":Z
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2558
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2559
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2560
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    return-void

    .line 2563
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2566
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2568
    nop

    .line 2569
    return-void

    .line 2566
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2519
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2520
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2521
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2522
    return-void

    .line 2524
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2527
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2529
    nop

    .line 2530
    return-void

    .line 2527
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2616
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2617
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2618
    return-void

    .line 2620
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2623
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2625
    nop

    .line 2626
    return-void

    .line 2623
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthRemoveNiceApp(I)V
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2651
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2654
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2655
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2656
    return-void

    .line 2658
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2661
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2663
    nop

    .line 2664
    return-void

    .line 2661
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthSetGlobalAlert(J)V
    .registers 8
    .param p1, "bytes"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2576
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2577
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2578
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2579
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2580
    return-void

    .line 2582
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2585
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2587
    nop

    .line 2588
    return-void

    .line 2585
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .registers 9
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "bytes"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2539
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2540
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2541
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2542
    return-void

    .line 2544
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2547
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2549
    nop

    .line 2550
    return-void

    .line 2547
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2548
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .registers 9
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "bytes"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2500
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2501
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2502
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    return-void

    .line 2505
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2508
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2510
    nop

    .line 2511
    return-void

    .line 2508
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "nat64Prefix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2342
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2343
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 2344
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 2350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    return-object v3

    .line 2346
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2347
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2350
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2352
    nop

    .line 2353
    return-object v2

    .line 2350
    .end local v2  # "_result":Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clatdStop(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2362
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2363
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2364
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    return-void

    .line 2367
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2370
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    nop

    .line 2373
    return-void

    .line 2370
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3422
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3423
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3424
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3425
    return-void

    .line 3427
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3430
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3432
    nop

    .line 3433
    return-void

    .line 3430
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallEnableChildChain(IZ)V
    .registers 8
    .param p1, "childChain"  # I
    .param p2, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3172
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3173
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3174
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3175
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3176
    return-void

    .line 3178
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3181
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3183
    nop

    .line 3184
    return-void

    .line 3181
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .registers 7
    .param p1, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3441
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3442
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 3443
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3449
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3444
    return-void

    .line 3446
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3449
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3451
    nop

    .line 3452
    return-void

    .line 3449
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .registers 10
    .param p1, "chainName"  # Ljava/lang/String;
    .param p2, "isWhitelist"  # Z
    .param p3, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1544
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1549
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1551
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1552
    .local v4, "_status":Z
    if-nez v4, :cond_3b

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 1553
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v2
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4e

    .line 1559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1553
    return v2

    .line 1555
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1556
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    if-eqz v5, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    .line 1559
    .end local v4  # "_status":Z
    .local v2, "_result":Z
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1561
    nop

    .line 1562
    return v2

    .line 1559
    .end local v2  # "_result":Z
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallSetFirewallType(I)V
    .registers 7
    .param p1, "firewalltype"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3110
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3112
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3113
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 3114
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->firewallSetFirewallType(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3115
    return-void

    .line 3117
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3120
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3122
    nop

    .line 3123
    return-void

    .line 3120
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "firewallRule"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3132
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3133
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3134
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3140
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3135
    return-void

    .line 3137
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3140
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3142
    nop

    .line 3143
    return-void

    .line 3140
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public firewallSetUidRule(III)V
    .registers 9
    .param p1, "childChain"  # I
    .param p2, "uid"  # I
    .param p3, "firewallRule"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3147
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3149
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3152
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3153
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3154
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 3155
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 3161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    return-void

    .line 3158
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 3161
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    nop

    .line 3164
    return-void

    .line 3161
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1519
    const-string v0, "android.net.INetd"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3493
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 3494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3495
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3497
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3498
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3504
    goto :goto_33

    .line 3502
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3503
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 3506
    .end local v0  # "data":Landroid/os/Parcel;
    .end local v1  # "reply":Landroid/os/Parcel;
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getOemNetd()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3478
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3479
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 3480
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 3486
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3480
    return-object v3

    .line 3482
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 3486
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3488
    nop

    .line 3489
    return-object v2

    .line 3486
    .end local v2  # "_result":Landroid/os/IBinder;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "ipversion"  # I
    .param p2, "which"  # I
    .param p3, "ifname"  # Ljava/lang/String;
    .param p4, "parameter"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1857
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1858
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1859
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 1865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1859
    return-object v3

    .line 1861
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1862
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move-object v2, v3

    .line 1865
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1867
    nop

    .line 1868
    return-object v2

    .line 1865
    .end local v2  # "_result":Ljava/lang/String;
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "timeout"  # I
    .param p3, "classLabel"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2280
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2281
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 2282
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 2288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2283
    return-void

    .line 2285
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 2288
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2290
    nop

    .line 2291
    return-void

    .line 2288
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "timeout"  # I
    .param p3, "classLabel"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2297
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2301
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2302
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 2303
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 2309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2304
    return-void

    .line 2306
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 2309
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2311
    nop

    .line 2312
    return-void

    .line 2309
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "addrString"  # Ljava/lang/String;
    .param p3, "prefixLength"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1809
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1814
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1815
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1816
    return-void

    .line 1818
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1821
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1823
    nop

    .line 1824
    return-void

    .line 1821
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3283
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3284
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 3285
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3286
    return-void

    .line 3288
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3291
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3293
    nop

    .line 3294
    return-void

    .line 3291
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "addrString"  # Ljava/lang/String;
    .param p3, "prefixLength"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1834
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1835
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1836
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1837
    return-void

    .line 1839
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1842
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1844
    nop

    .line 1845
    return-void

    .line 1842
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3213
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3214
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3215
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 3226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    return-object v3

    .line 3217
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3218
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_42

    .line 3219
    sget-object v3, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/InterfaceConfigurationParcel;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    .local v3, "_result":Landroid/net/InterfaceConfigurationParcel;
    goto :goto_43

    .line 3222
    .end local v3  # "_result":Landroid/net/InterfaceConfigurationParcel;
    :cond_42
    const/4 v3, 0x0

    .line 3226
    .end local v2  # "_status":Z
    .restart local v3  # "_result":Landroid/net/InterfaceConfigurationParcel;
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3228
    nop

    .line 3229
    return-object v3

    .line 3226
    .end local v3  # "_result":Landroid/net/InterfaceConfigurationParcel;
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3188
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3192
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3193
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 3194
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 3200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3194
    return-object v3

    .line 3196
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 3200
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3202
    nop

    .line 3203
    return-object v2

    .line 3200
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .registers 7
    .param p1, "cfg"  # Landroid/net/InterfaceConfigurationParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3237
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 3238
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3239
    invoke-virtual {p1, v0, v2}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 3242
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3244
    :goto_1b
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3245
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 3246
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3247
    return-void

    .line 3249
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 3252
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3254
    nop

    .line 3255
    return-void

    .line 3252
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3298
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3302
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3303
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3304
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3305
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3311
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    return-void

    .line 3308
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3311
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3313
    nop

    .line 3314
    return-void

    .line 3311
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3263
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3264
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3265
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3266
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3267
    return-void

    .line 3269
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3272
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3274
    nop

    .line 3275
    return-void

    .line 3272
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "mtu"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3323
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3324
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3325
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    return-void

    .line 3328
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3331
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3333
    nop

    .line 3334
    return-void

    .line 3331
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .registers 47
    .param p1, "transformId"  # I
    .param p2, "mode"  # I
    .param p3, "sourceAddress"  # Ljava/lang/String;
    .param p4, "destinationAddress"  # Ljava/lang/String;
    .param p5, "underlyingNetId"  # I
    .param p6, "spi"  # I
    .param p7, "markValue"  # I
    .param p8, "markMask"  # I
    .param p9, "authAlgo"  # Ljava/lang/String;
    .param p10, "authKey"  # [B
    .param p11, "authTruncBits"  # I
    .param p12, "cryptAlgo"  # Ljava/lang/String;
    .param p13, "cryptKey"  # [B
    .param p14, "cryptTruncBits"  # I
    .param p15, "aeadAlgo"  # Ljava/lang/String;
    .param p16, "aeadKey"  # [B
    .param p17, "aeadIcvBits"  # I
    .param p18, "encapType"  # I
    .param p19, "encapLocalPort"  # I
    .param p20, "encapRemotePort"  # I
    .param p21, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1946
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1948
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1949
    move/from16 v15, p1

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    move/from16 v14, p2

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    move-object/from16 v13, p3

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1952
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1953
    move/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    move-object/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    move-object/from16 v6, p10

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1959
    move/from16 v5, p11

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    move-object/from16 v4, p12

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1961
    move-object/from16 v3, p13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1962
    move/from16 v15, p14

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    move-object/from16 v15, p15

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1964
    move-object/from16 v15, p16

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1965
    move/from16 v15, p17

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1966
    move/from16 v15, p18

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    move/from16 v15, p19

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    move/from16 v15, p20

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    move/from16 v15, p21

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    move-object/from16 v15, p0

    iget-object v0, v15, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1971
    .local v0, "_status":Z
    if-nez v0, :cond_c1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_c1

    .line 1972
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move/from16 v22, p19

    move/from16 v23, p20

    move/from16 v24, p21

    invoke-interface/range {v3 .. v24}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    :try_end_ba
    .catchall {:try_start_8 .. :try_end_ba} :catchall_cc

    .line 1978
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1973
    return-void

    .line 1975
    :cond_c1
    :try_start_c1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_cc

    .line 1978
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1980
    nop

    .line 1981
    return-void

    .line 1978
    :catchall_cc
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 26
    .param p1, "transformId"  # I
    .param p2, "selAddrFamily"  # I
    .param p3, "direction"  # I
    .param p4, "tmplSrcAddress"  # Ljava/lang/String;
    .param p5, "tmplDstAddress"  # Ljava/lang/String;
    .param p6, "spi"  # I
    .param p7, "markValue"  # I
    .param p8, "markMask"  # I
    .param p9, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2065
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2067
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e

    .line 2068
    move/from16 v13, p1

    :try_start_f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7c

    .line 2069
    move/from16 v14, p2

    :try_start_14
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7a

    .line 2070
    move/from16 v15, p3

    :try_start_19
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2071
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2072
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2073
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2076
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2078
    .local v0, "_status":Z
    if-nez v0, :cond_6d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 2079
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_66
    .catchall {:try_start_19 .. :try_end_66} :catchall_78

    .line 2085
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2080
    return-void

    .line 2082
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_78

    .line 2085
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2087
    nop

    .line 2088
    return-void

    .line 2085
    :catchall_78
    move-exception v0

    goto :goto_85

    :catchall_7a
    move-exception v0

    goto :goto_83

    :catchall_7c
    move-exception v0

    goto :goto_81

    :catchall_7e
    move-exception v0

    move/from16 v13, p1

    :goto_81
    move/from16 v14, p2

    :goto_83
    move/from16 v15, p3

    :goto_85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 23
    .param p1, "deviceName"  # Ljava/lang/String;
    .param p2, "localAddress"  # Ljava/lang/String;
    .param p3, "remoteAddress"  # Ljava/lang/String;
    .param p4, "iKey"  # I
    .param p5, "oKey"  # I
    .param p6, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2143
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2145
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    .line 2146
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6d

    .line 2147
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6b

    .line 2148
    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_69

    .line 2149
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_67

    .line 2150
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_65

    .line 2151
    move/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2152
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2153
    .local v0, "_status":Z
    if-nez v0, :cond_58

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 2154
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_63

    .line 2160
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2155
    return-void

    .line 2157
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 2160
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2162
    nop

    .line 2163
    return-void

    .line 2160
    :catchall_63
    move-exception v0

    goto :goto_7c

    :catchall_65
    move-exception v0

    goto :goto_7a

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move-object/from16 v10, p1

    :goto_72
    move-object/from16 v11, p2

    :goto_74
    move-object/from16 v12, p3

    :goto_76
    move/from16 v13, p4

    :goto_78
    move/from16 v14, p5

    :goto_7a
    move/from16 v15, p6

    :goto_7c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "transformId"  # I
    .param p2, "sourceAddress"  # Ljava/lang/String;
    .param p3, "destinationAddress"  # Ljava/lang/String;
    .param p4, "spi"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1929
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1931
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1932
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_49

    .line 1938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    return v3

    .line 1934
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_49

    move v2, v3

    .line 1938
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1940
    nop

    .line 1941
    return v2

    .line 1938
    .end local v2  # "_result":I
    :catchall_49
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 23
    .param p1, "socket"  # Landroid/os/ParcelFileDescriptor;
    .param p2, "transformId"  # I
    .param p3, "direction"  # I
    .param p4, "sourceAddress"  # Ljava/lang/String;
    .param p5, "destinationAddress"  # Ljava/lang/String;
    .param p6, "spi"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 2010
    .local v9, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 2012
    .local v10, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v0, "android.net.INetd"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2013
    const/4 v0, 0x0

    if-eqz v8, :cond_1a

    .line 2014
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2015
    invoke-virtual {v8, v9, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 2018
    :cond_1a
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_77

    .line 2020
    :goto_1d
    move/from16 v11, p2

    :try_start_1f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_75

    .line 2021
    move/from16 v12, p3

    :try_start_24
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_73

    .line 2022
    move-object/from16 v13, p4

    :try_start_29
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_71

    .line 2023
    move-object/from16 v14, p5

    :try_start_2e
    invoke-virtual {v9, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_6f

    .line 2024
    move/from16 v15, p6

    :try_start_33
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    move-object/from16 v7, p0

    iget-object v1, v7, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    invoke-interface {v1, v2, v9, v10, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2026
    .local v0, "_status":Z
    if-nez v0, :cond_62

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    if-eqz v1, :cond_62

    .line 2027
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5b
    .catchall {:try_start_33 .. :try_end_5b} :catchall_6d

    .line 2033
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2028
    return-void

    .line 2030
    :cond_62
    :try_start_62
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6d

    .line 2033
    .end local v0  # "_status":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2035
    nop

    .line 2036
    return-void

    .line 2033
    :catchall_6d
    move-exception v0

    goto :goto_82

    :catchall_6f
    move-exception v0

    goto :goto_80

    :catchall_71
    move-exception v0

    goto :goto_7e

    :catchall_73
    move-exception v0

    goto :goto_7c

    :catchall_75
    move-exception v0

    goto :goto_7a

    :catchall_77
    move-exception v0

    move/from16 v11, p2

    :goto_7a
    move/from16 v12, p3

    :goto_7c
    move-object/from16 v13, p4

    :goto_7e
    move-object/from16 v14, p5

    :goto_80
    move/from16 v15, p6

    :goto_82
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 24
    .param p1, "transformId"  # I
    .param p2, "sourceAddress"  # Ljava/lang/String;
    .param p3, "destinationAddress"  # Ljava/lang/String;
    .param p4, "spi"  # I
    .param p5, "markValue"  # I
    .param p6, "markMask"  # I
    .param p7, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1985
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1987
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_74

    .line 1988
    move/from16 v11, p1

    :try_start_f
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_72

    .line 1989
    move-object/from16 v12, p2

    :try_start_14
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_70

    .line 1990
    move-object/from16 v13, p3

    :try_start_19
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_6e

    .line 1991
    move/from16 v14, p4

    :try_start_1e
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6c

    .line 1992
    move/from16 v15, p5

    :try_start_23
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    move-object/from16 v8, p0

    iget-object v0, v8, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1996
    .local v0, "_status":Z
    if-nez v0, :cond_5f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 1997
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_58
    .catchall {:try_start_23 .. :try_end_58} :catchall_6a

    .line 2003
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1998
    return-void

    .line 2000
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6a

    .line 2003
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    nop

    .line 2006
    return-void

    .line 2003
    :catchall_6a
    move-exception v0

    goto :goto_7f

    :catchall_6c
    move-exception v0

    goto :goto_7d

    :catchall_6e
    move-exception v0

    goto :goto_7b

    :catchall_70
    move-exception v0

    goto :goto_79

    :catchall_72
    move-exception v0

    goto :goto_77

    :catchall_74
    move-exception v0

    move/from16 v11, p1

    :goto_77
    move-object/from16 v12, p2

    :goto_79
    move-object/from16 v13, p3

    :goto_7b
    move/from16 v14, p4

    :goto_7d
    move/from16 v15, p5

    :goto_7f
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .registers 23
    .param p1, "transformId"  # I
    .param p2, "selAddrFamily"  # I
    .param p3, "direction"  # I
    .param p4, "markValue"  # I
    .param p5, "markMask"  # I
    .param p6, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2119
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2121
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    .line 2122
    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6d

    .line 2123
    move/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6b

    .line 2124
    move/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_69

    .line 2125
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_67

    .line 2126
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_65

    .line 2127
    move/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2129
    .local v0, "_status":Z
    if-nez v0, :cond_58

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 2130
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_63

    .line 2136
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2131
    return-void

    .line 2133
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 2136
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    nop

    .line 2139
    return-void

    .line 2136
    :catchall_63
    move-exception v0

    goto :goto_7c

    :catchall_65
    move-exception v0

    goto :goto_7a

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move/from16 v10, p1

    :goto_72
    move/from16 v11, p2

    :goto_74
    move/from16 v12, p3

    :goto_76
    move/from16 v13, p4

    :goto_78
    move/from16 v14, p5

    :goto_7a
    move/from16 v15, p6

    :goto_7c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "socket"  # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2040
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2042
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2043
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 2044
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 2048
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2050
    :goto_1b
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2051
    .local v2, "_status":Z
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 2052
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 2058
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2053
    return-void

    .line 2055
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 2058
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2060
    nop

    .line 2061
    return-void

    .line 2058
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2195
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2196
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2197
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2203
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2198
    return-void

    .line 2200
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2203
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    nop

    .line 2206
    return-void

    .line 2203
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .registers 8
    .param p1, "socket"  # Landroid/os/ParcelFileDescriptor;
    .param p2, "newUid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1896
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1899
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1900
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1904
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1907
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1908
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 1909
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 1915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1910
    return-void

    .line 1912
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1915
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1917
    nop

    .line 1918
    return-void

    .line 1915
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 26
    .param p1, "transformId"  # I
    .param p2, "selAddrFamily"  # I
    .param p3, "direction"  # I
    .param p4, "tmplSrcAddress"  # Ljava/lang/String;
    .param p5, "tmplDstAddress"  # Ljava/lang/String;
    .param p6, "spi"  # I
    .param p7, "markValue"  # I
    .param p8, "markMask"  # I
    .param p9, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2092
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2094
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e

    .line 2095
    move/from16 v13, p1

    :try_start_f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7c

    .line 2096
    move/from16 v14, p2

    :try_start_14
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_7a

    .line 2097
    move/from16 v15, p3

    :try_start_19
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2098
    move-object/from16 v12, p4

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2099
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2100
    move/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2101
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2104
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2105
    .local v0, "_status":Z
    if-nez v0, :cond_6d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_6d

    .line 2106
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_66
    .catchall {:try_start_19 .. :try_end_66} :catchall_78

    .line 2112
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2107
    return-void

    .line 2109
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_78

    .line 2112
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2114
    nop

    .line 2115
    return-void

    .line 2112
    :catchall_78
    move-exception v0

    goto :goto_85

    :catchall_7a
    move-exception v0

    goto :goto_83

    :catchall_7c
    move-exception v0

    goto :goto_81

    :catchall_7e
    move-exception v0

    move/from16 v13, p1

    :goto_81
    move/from16 v14, p2

    :goto_83
    move/from16 v15, p3

    :goto_85
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 23
    .param p1, "deviceName"  # Ljava/lang/String;
    .param p2, "localAddress"  # Ljava/lang/String;
    .param p3, "remoteAddress"  # Ljava/lang/String;
    .param p4, "iKey"  # I
    .param p5, "oKey"  # I
    .param p6, "interfaceId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2167
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2169
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    .line 2170
    move-object/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_6d

    .line 2171
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6b

    .line 2172
    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_69

    .line 2173
    move/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_67

    .line 2174
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_65

    .line 2175
    move/from16 v15, p6

    :try_start_28
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    move-object/from16 v9, p0

    iget-object v0, v9, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2177
    .local v0, "_status":Z
    if-nez v0, :cond_58

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 2178
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_51
    .catchall {:try_start_28 .. :try_end_51} :catchall_63

    .line 2184
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2179
    return-void

    .line 2181
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 2184
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2186
    nop

    .line 2187
    return-void

    .line 2184
    :catchall_63
    move-exception v0

    goto :goto_7c

    :catchall_65
    move-exception v0

    goto :goto_7a

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move-object/from16 v10, p1

    :goto_72
    move-object/from16 v11, p2

    :goto_74
    move-object/from16 v12, p3

    :goto_76
    move/from16 v13, p4

    :goto_78
    move/from16 v14, p5

    :goto_7a
    move/from16 v15, p6

    :goto_7c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fromIface"  # Ljava/lang/String;
    .param p2, "toIface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2460
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2461
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2462
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2463
    return-void

    .line 2465
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2468
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2470
    nop

    .line 2471
    return-void

    .line 2468
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .registers 7
    .param p1, "requester"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2440
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2441
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2442
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2448
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    return-void

    .line 2445
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2448
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2450
    nop

    .line 2451
    return-void

    .line 2448
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .registers 7
    .param p1, "requester"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2417
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2419
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2421
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2422
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2423
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2424
    return-void

    .line 2426
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2429
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2431
    nop

    .line 2432
    return-void

    .line 2429
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2430
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2381
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2382
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2383
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 2389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2383
    return v3

    .line 2385
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 2389
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2391
    nop

    .line 2392
    return v2

    .line 2389
    .end local v2  # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdGetRequesterList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2397
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2401
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2402
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2403
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2403
    return-object v3

    .line 2405
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2406
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 2409
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2411
    nop

    .line 2412
    return-object v2

    .line 2409
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "fromIface"  # Ljava/lang/String;
    .param p2, "toIface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2475
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2480
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2481
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2482
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2483
    return-void

    .line 2485
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2488
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2490
    nop

    .line 2491
    return-void

    .line 2488
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isAlive()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1528
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1529
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 1530
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->isAlive()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1530
    return v3

    .line 1532
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v5, :cond_36

    move v3, v4

    :cond_36
    move v2, v3

    .line 1536
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1538
    nop

    .line 1539
    return v2

    .line 1536
    .end local v2  # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "iface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1647
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1652
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1653
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1654
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1655
    return-void

    .line 1657
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 1660
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    nop

    .line 1663
    return-void

    .line 1660
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "netId"  # I
    .param p2, "ifName"  # Ljava/lang/String;
    .param p3, "destination"  # Ljava/lang/String;
    .param p4, "nextHop"  # Ljava/lang/String;
    .param p5, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2867
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2869
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2870
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2871
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2875
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2876
    .local v2, "_status":Z
    if-nez v2, :cond_40

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 2877
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 2883
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2878
    return-void

    .line 2880
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 2883
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2883
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "netId"  # I
    .param p2, "ifName"  # Ljava/lang/String;
    .param p3, "destination"  # Ljava/lang/String;
    .param p4, "nextHop"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2823
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2828
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2830
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2831
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 2832
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2833
    return-void

    .line 2835
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2838
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2840
    nop

    .line 2841
    return-void

    .line 2838
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "uidRanges"  # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1692
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1693
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1694
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    return-void

    .line 1697
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1700
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1702
    nop

    .line 1703
    return-void

    .line 1700
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkCanProtect(I)Z
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3090
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3092
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3093
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 3094
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_43

    .line 3100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3094
    return v3

    .line 3096
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_43

    if-eqz v3, :cond_3a

    const/4 v4, 0x1

    :cond_3a
    move v2, v4

    .line 3100
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3102
    nop

    .line 3103
    return v2

    .line 3100
    .end local v2  # "_result":Z
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkClearDefault()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2954
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2955
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2956
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 2957
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 2963
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2958
    return-void

    .line 2960
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 2963
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2965
    nop

    .line 2966
    return-void

    .line 2963
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkClearPermissionForUser([I)V
    .registers 7
    .param p1, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3010
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3014
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3015
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 3016
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3022
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    return-void

    .line 3019
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3022
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3024
    nop

    .line 3025
    return-void

    .line 3022
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkCreatePhysical(II)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "permission"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1588
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1594
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 1595
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreatePhysical(II)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 1601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1596
    return-void

    .line 1598
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 1601
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    nop

    .line 1604
    return-void

    .line 1601
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkCreateVpn(IZ)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "secure"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1614
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1615
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkCreateVpn(IZ)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 1621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1616
    return-void

    .line 1618
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 1621
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1623
    nop

    .line 1624
    return-void

    .line 1621
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkDestroy(I)V
    .registers 7
    .param p1, "netId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1628
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1633
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 1634
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    return-void

    .line 1637
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 1640
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1642
    nop

    .line 1643
    return-void

    .line 1640
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkGetDefault()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2917
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2918
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2919
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->networkGetDefault()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2919
    return v3

    .line 2921
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2922
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 2925
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2927
    nop

    .line 2928
    return v2

    .line 2925
    .end local v2  # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "add"  # Z
    .param p2, "uidRanges"  # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1730
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1732
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1733
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1734
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1740
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    return-void

    .line 1737
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1740
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1742
    nop

    .line 1743
    return-void

    .line 1740
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "iface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1672
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1673
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1674
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1675
    return-void

    .line 1677
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1680
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1682
    nop

    .line 1683
    return-void

    .line 1680
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p1, "netId"  # I
    .param p2, "ifName"  # Ljava/lang/String;
    .param p3, "destination"  # Ljava/lang/String;
    .param p4, "nextHop"  # Ljava/lang/String;
    .param p5, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2896
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2898
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2899
    .local v2, "_status":Z
    if-nez v2, :cond_40

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 2900
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2901
    return-void

    .line 2903
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 2906
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2908
    nop

    .line 2909
    return-void

    .line 2906
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "netId"  # I
    .param p2, "ifName"  # Ljava/lang/String;
    .param p3, "destination"  # Ljava/lang/String;
    .param p4, "nextHop"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2845
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2852
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2853
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 2854
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2860
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2855
    return-void

    .line 2857
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2860
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2862
    nop

    .line 2863
    return-void

    .line 2860
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "uidRanges"  # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1707
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1709
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1712
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1713
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1714
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    return-void

    .line 1717
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1720
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    nop

    .line 1723
    return-void

    .line 1720
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetDefault(I)V
    .registers 7
    .param p1, "netId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2938
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2939
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2940
    return-void

    .line 2942
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2945
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2947
    nop

    .line 2948
    return-void

    .line 2945
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetPermissionForNetwork(II)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "permission"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2975
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2976
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2977
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2983
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2978
    return-void

    .line 2980
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2983
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2985
    nop

    .line 2986
    return-void

    .line 2983
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetPermissionForUser(I[I)V
    .registers 8
    .param p1, "permission"  # I
    .param p2, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2990
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2992
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2993
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2994
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2995
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2996
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2997
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3003
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2998
    return-void

    .line 3000
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3003
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3005
    nop

    .line 3006
    return-void

    .line 3003
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3004
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetProtectAllow(I)V
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3054
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 3055
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3061
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3056
    return-void

    .line 3058
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3061
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3063
    nop

    .line 3064
    return-void

    .line 3061
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkSetProtectDeny(I)V
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3068
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3070
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3071
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3072
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3073
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 3074
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3080
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3075
    return-void

    .line 3077
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3080
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3082
    nop

    .line 3083
    return-void

    .line 3080
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3081
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .registers 7
    .param p1, "listener"  # Landroid/net/INetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3401
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/net/INetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3402
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3403
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3404
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3405
    return-void

    .line 3407
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3410
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3412
    nop

    .line 3413
    return-void

    .line 3410
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 8
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "mode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2260
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2261
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2262
    return-void

    .line 2264
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2267
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2269
    nop

    .line 2270
    return-void

    .line 2267
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "ipversion"  # I
    .param p2, "which"  # I
    .param p3, "ifname"  # Ljava/lang/String;
    .param p4, "parameter"  # Ljava/lang/String;
    .param p5, "value"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1875
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1882
    .local v2, "_status":Z
    if-nez v2, :cond_40

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 1883
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    move v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1884
    return-void

    .line 1886
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 1889
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    nop

    .line 1892
    return-void

    .line 1889
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "rmemValues"  # Ljava/lang/String;
    .param p2, "wmemValues"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3383
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3384
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3385
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3391
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3386
    return-void

    .line 3388
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3391
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3393
    nop

    .line 3394
    return-void

    .line 3391
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .registers 8
    .param p1, "uidRanges"  # [Landroid/net/UidRangeParcel;
    .param p2, "exemptUids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1750
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1751
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1752
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1753
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1754
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    return-void

    .line 1757
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1760
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1762
    nop

    .line 1763
    return-void

    .line 1760
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1761
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public strictUidCleartextPenalty(II)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "policyPenalty"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2322
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2323
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2324
    return-void

    .line 2326
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2329
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2331
    nop

    .line 2332
    return-void

    .line 2329
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "intIface"  # Ljava/lang/String;
    .param p2, "extIface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3343
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3344
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3345
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3346
    return-void

    .line 3348
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3351
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3353
    nop

    .line 3354
    return-void

    .line 3351
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherApplyDnsInterfaces()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1771
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1772
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1773
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 1779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    return v3

    .line 1775
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 1779
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1781
    nop

    .line 1782
    return v2

    .line 1779
    .end local v2  # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherDnsList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2807
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2808
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2809
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2809
    return-object v3

    .line 2811
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2812
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 2815
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    nop

    .line 2818
    return-object v2

    .line 2815
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "netId"  # I
    .param p2, "dnsAddrs"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2788
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2789
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2790
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2791
    return-void

    .line 2793
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2796
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    nop

    .line 2799
    return-void

    .line 2796
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1791
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1792
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1793
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_41

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1793
    return-object v3

    .line 1795
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1796
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_41

    move-object v2, v3

    .line 1799
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1801
    nop

    .line 1802
    return-object v2

    .line 1799
    .end local v2  # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2727
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2728
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2729
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2730
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2731
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2737
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2732
    return-void

    .line 2734
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2737
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2739
    nop

    .line 2740
    return-void

    .line 2737
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2738
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2763
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2767
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2768
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2769
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2775
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2769
    return-object v3

    .line 2771
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2772
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 2775
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2777
    nop

    .line 2778
    return-object v2

    .line 2775
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
    .registers 7
    .param p1, "ifName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2747
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2748
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2749
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2750
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    return-void

    .line 2753
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2756
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2758
    nop

    .line 2759
    return-void

    .line 2756
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherIsEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2709
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2710
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2711
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    return v3

    .line 2713
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2714
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_40

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    :cond_37
    move v2, v4

    .line 2717
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2719
    nop

    .line 2720
    return v2

    .line 2717
    .end local v2  # "_result":Z
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "intIface"  # Ljava/lang/String;
    .param p2, "extIface"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3363
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3364
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3365
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3366
    return-void

    .line 3368
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3371
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3373
    nop

    .line 3374
    return-void

    .line 3371
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherStart([Ljava/lang/String;)V
    .registers 7
    .param p1, "dhcpRanges"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2672
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2673
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2674
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2675
    return-void

    .line 2677
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2680
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    nop

    .line 2683
    return-void

    .line 2680
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherStop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2687
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2689
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2690
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2691
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 2692
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->tetherStop()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    return-void

    .line 2695
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 2698
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2700
    nop

    .line 2701
    return-void

    .line 2698
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public trafficSetNetPermForUids(I[I)V
    .registers 8
    .param p1, "permission"  # I
    .param p2, "uids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3031
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3034
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3035
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 3036
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3042
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3037
    return-void

    .line 3039
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3042
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3044
    nop

    .line 3045
    return-void

    .line 3042
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3043
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public trafficSwapActiveStatsMap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3459
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3460
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 3461
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3462
    return-void

    .line 3464
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 3467
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3469
    nop

    .line 3470
    return-void

    .line 3467
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "mark"  # I
    .param p4, "mask"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2217
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2218
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 2219
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2220
    return-void

    .line 2222
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2225
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2227
    nop

    .line 2228
    return-void

    .line 2225
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "ifName"  # Ljava/lang/String;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "mark"  # I
    .param p4, "mask"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2239
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2240
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 2241
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2242
    return-void

    .line 2244
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2247
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2249
    nop

    .line 2250
    return-void

    .line 2247
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
