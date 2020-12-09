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

    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    .line 1542
    iput-object p1, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1543
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1547
    iget-object v0, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthAddNaughtyApp(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2626
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2627
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2628
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2629
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2630
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2631
    return-void

    .line 2633
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2638
    nop

    .line 2639
    return-void

    .line 2636
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthAddNiceApp(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2664
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2667
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2668
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    return-void

    .line 2671
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2674
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2676
    nop

    .line 2677
    return-void

    .line 2674
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthAddRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3528
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3530
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3533
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 3534
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->bandwidthAddRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3535
    return-void

    .line 3537
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    nop

    .line 3543
    return-void

    .line 3540
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthEnableDataSaver(Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1602
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1603
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1605
    if-nez v4, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 1606
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_48

    .line 1612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1606
    return p1

    .line 1608
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v2, v3

    .line 1612
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    nop

    .line 1615
    return v2

    .line 1612
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2588
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2590
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2591
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2592
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2593
    return-void

    .line 2595
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2600
    nop

    .line 2601
    return-void

    .line 2598
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2549
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2551
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2552
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2553
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2554
    return-void

    .line 2556
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    nop

    .line 2562
    return-void

    .line 2559
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthRemoveNaughtyApp(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2645
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2647
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2648
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2649
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2650
    return-void

    .line 2652
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2657
    nop

    .line 2658
    return-void

    .line 2655
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthRemoveNiceApp(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2683
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2685
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2686
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2687
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2688
    return-void

    .line 2690
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2695
    nop

    .line 2696
    return-void

    .line 2693
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthRemoveRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3549
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3553
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3554
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 3555
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->bandwidthRemoveRestrictAppOnInterface(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3556
    return-void

    .line 3558
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3563
    nop

    .line 3564
    return-void

    .line 3561
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthSetGlobalAlert(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2604
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2607
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2608
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2609
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2610
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2611
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2612
    return-void

    .line 2614
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2619
    nop

    .line 2620
    return-void

    .line 2617
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2568
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2571
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2572
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2573
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2574
    return-void

    .line 2576
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2579
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2581
    nop

    .line 2582
    return-void

    .line 2579
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2529
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2532
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2533
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2534
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    return-void

    .line 2537
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2540
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2542
    nop

    .line 2543
    return-void

    .line 2540
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2371
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2374
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2375
    if-nez v2, :cond_33

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2376
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_42

    .line 2382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2376
    return-object p1

    .line 2378
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2379
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_42

    .line 2382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2384
    nop

    .line 2385
    return-object p1

    .line 2382
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public clatdStop(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2392
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2394
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2395
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2396
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2397
    return-void

    .line 2399
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2404
    nop

    .line 2405
    return-void

    .line 2402
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3451
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3454
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3455
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3456
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3457
    return-void

    .line 3459
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3464
    nop

    .line 3465
    return-void

    .line 3462
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallEnableChildChain(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3202
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3204
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3205
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3206
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3207
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3208
    return-void

    .line 3210
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3215
    nop

    .line 3216
    return-void

    .line 3213
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallRemoveUidInterfaceRules([I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3471
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3473
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3474
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3475
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3476
    return-void

    .line 3478
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3483
    nop

    .line 3484
    return-void

    .line 3481
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1579
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1581
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v3

    :goto_17
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1583
    iget-object v4, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 1584
    if-nez v4, :cond_3b

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 1585
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result p1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4e

    .line 1591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    return p1

    .line 1587
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1588
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move v2, v3

    .line 1591
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1593
    nop

    .line 1594
    return v2

    .line 1591
    :catchall_4e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallSetFirewallType(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3142
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3144
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3145
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3146
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->firewallSetFirewallType(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3147
    return-void

    .line 3149
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3154
    nop

    .line 3155
    return-void

    .line 3152
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallSetInterfaceRule(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3161
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3164
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3165
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3166
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3167
    return-void

    .line 3169
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3174
    nop

    .line 3175
    return-void

    .line 3172
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public firewallSetUidRule(III)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3181
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3184
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3185
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3186
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 3187
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3188
    return-void

    .line 3190
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3195
    nop

    .line 3196
    return-void

    .line 3193
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1551
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

    .line 3567
    iget v0, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 3568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3571
    :try_start_d
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3572
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetd$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 3576
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3578
    goto :goto_33

    .line 3576
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 3580
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

    .line 3505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3509
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3510
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3511
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 3512
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3512
    return-object v2

    .line 3514
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3515
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3520
    nop

    .line 3521
    return-object v2

    .line 3518
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1884
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1889
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1890
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1891
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetd;->getProcSysNet(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_48

    .line 1897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1891
    return-object p1

    .line 1893
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1894
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 1897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1899
    nop

    .line 1900
    return-object p1

    .line 1897
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2308
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2312
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2313
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 2314
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2315
    return-void

    .line 2317
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    nop

    .line 2323
    return-void

    .line 2320
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2329
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2331
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2332
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2333
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2334
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 2335
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2336
    return-void

    .line 2338
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2343
    nop

    .line 2344
    return-void

    .line 2341
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1841
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1845
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1846
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1847
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    return-void

    .line 1850
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    nop

    .line 1856
    return-void

    .line 1853
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceClearAddrs(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3313
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3315
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3316
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3317
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3318
    return-void

    .line 3320
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3323
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    nop

    .line 3326
    return-void

    .line 3323
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1862
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1867
    if-nez v2, :cond_35

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 1868
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_40

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1869
    return-void

    .line 1871
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    nop

    .line 1877
    return-void

    .line 1874
    :catchall_40
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3243
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3245
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3246
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 3247
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_4b

    .line 3258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3247
    return-object p1

    .line 3249
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 3251
    sget-object p1, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/InterfaceConfigurationParcel;
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4b

    goto :goto_43

    .line 3254
    :cond_42
    const/4 p1, 0x0

    .line 3258
    :goto_43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3260
    nop

    .line 3261
    return-object p1

    .line 3258
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceGetList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3223
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3224
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3225
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 3226
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3226
    return-object v2

    .line 3228
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3229
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3234
    nop

    .line 3235
    return-object v2

    .line 3232
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3268
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3269
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 3270
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3271
    invoke-virtual {p1, v0, v2}, Landroid/net/InterfaceConfigurationParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 3274
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3276
    :goto_1b
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3277
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 3278
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 3284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3279
    return-void

    .line 3281
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 3284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3286
    nop

    .line 3287
    return-void

    .line 3284
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3332
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3334
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3335
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3336
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3337
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3338
    return-void

    .line 3340
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3345
    nop

    .line 3346
    return-void

    .line 3343
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3293
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3295
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3296
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3297
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3298
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3299
    return-void

    .line 3301
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3306
    nop

    .line 3307
    return-void

    .line 3304
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public interfaceSetMtu(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3352
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3355
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3356
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3357
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    return-void

    .line 3360
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3365
    nop

    .line 3366
    return-void

    .line 3363
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V
    .registers 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1977
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1980
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1981
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1982
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1983
    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1984
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1985
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1988
    move/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    move-object/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1990
    move-object/from16 v13, p10

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1991
    move/from16 v14, p11

    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    move-object/from16 v15, p12

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1993
    move-object/from16 v4, p13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1994
    move/from16 v3, p14

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1995
    move-object/from16 v0, p15

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1996
    move-object/from16 v0, p16

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1997
    move/from16 v0, p17

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1998
    move/from16 v0, p18

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1999
    move/from16 v0, p19

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2000
    move/from16 v0, p20

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    move/from16 v0, p21

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2003
    if-nez v0, :cond_c1

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 2004
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

    .line 2010
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    return-void

    .line 2007
    :cond_c1
    :try_start_c1
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_cc

    .line 2010
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2012
    nop

    .line 2013
    return-void

    .line 2010
    :catchall_cc
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2099
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2100
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2101
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2102
    move/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2104
    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2105
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2106
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2107
    move/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2108
    move/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    move-object v3, p0

    iget-object v3, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v13, 0x0

    invoke-interface {v3, v4, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2110
    if-nez v3, :cond_6a

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 2111
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_75

    .line 2117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2112
    return-void

    .line 2114
    :cond_6a
    :try_start_6a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_75

    .line 2117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2119
    nop

    .line 2120
    return-void

    .line 2117
    :catchall_75
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2177
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2178
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2179
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2180
    move-object v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2181
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2183
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    move-object v3, p0

    iget-object v3, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2185
    if-nez v3, :cond_4f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 2186
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_5a

    .line 2192
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2187
    return-void

    .line 2189
    :cond_4f
    :try_start_4f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 2192
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2194
    nop

    .line 2195
    return-void

    .line 2192
    :catchall_5a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1962
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1963
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 1964
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_48

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1964
    return p1

    .line 1966
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1972
    nop

    .line 1973
    return p1

    .line 1970
    :catchall_48
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2041
    move-object v0, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 2042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 2044
    :try_start_9
    const-string v1, "android.net.INetd"

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2045
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2046
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2047
    invoke-virtual {p1, v8, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 2050
    :cond_19
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    :goto_1c
    move v3, p2

    invoke-virtual {v8, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    move v4, p3

    invoke-virtual {v8, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    move-object v5, p4

    invoke-virtual {v8, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2055
    move-object/from16 v6, p5

    invoke-virtual {v8, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2056
    move/from16 v7, p6

    invoke-virtual {v8, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2057
    move-object v2, p0

    iget-object v2, v2, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v10, 0x17

    invoke-interface {v2, v10, v8, v9, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2058
    if-nez v1, :cond_59

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 2059
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_52
    .catchall {:try_start_9 .. :try_end_52} :catchall_64

    .line 2065
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2066
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 2060
    return-void

    .line 2062
    :cond_59
    :try_start_59
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_64

    .line 2065
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2066
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 2067
    nop

    .line 2068
    return-void

    .line 2065
    :catchall_64
    move-exception v0

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 2066
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2019
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2022
    move-object v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2023
    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2025
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2026
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2027
    move-object v3, p0

    iget-object v3, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v11, 0x0

    invoke-interface {v3, v4, v1, v2, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2028
    if-nez v3, :cond_58

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 2029
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_63

    .line 2035
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    return-void

    .line 2032
    :cond_58
    :try_start_58
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_63

    .line 2035
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    nop

    .line 2038
    return-void

    .line 2035
    :catchall_63
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2036
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecDeleteSecurityPolicy(IIIIII)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2153
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2154
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2155
    move v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2156
    move v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2160
    move-object v3, p0

    iget-object v3, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2161
    if-nez v3, :cond_4f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 2162
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IIIIII)V
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_5a

    .line 2168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2163
    return-void

    .line 2165
    :cond_4f
    :try_start_4f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 2168
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2170
    nop

    .line 2171
    return-void

    .line 2168
    :catchall_5a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2074
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2075
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 2076
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 2080
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2082
    :goto_1b
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2083
    if-nez v2, :cond_39

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 2084
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_44

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    return-void

    .line 2087
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 2090
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    nop

    .line 2093
    return-void

    .line 2090
    :catchall_44
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2225
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2227
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2228
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2229
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->ipSecRemoveTunnelInterface(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    return-void

    .line 2232
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2237
    nop

    .line 2238
    return-void

    .line 2235
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1930
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1931
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 1932
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1933
    invoke-virtual {p1, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 1936
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    :goto_1b
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1940
    if-nez v2, :cond_3c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 1941
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1942
    return-void

    .line 1944
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 1947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    nop

    .line 1950
    return-void

    .line 1947
    :catchall_47
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2126
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    move/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2131
    move-object/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2132
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    move/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    move/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    move-object v3, p0

    iget-object v3, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v13, 0x0

    invoke-interface {v3, v4, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2137
    if-nez v3, :cond_6a

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_6a

    .line 2138
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_75

    .line 2144
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2139
    return-void

    .line 2141
    :cond_6a
    :try_start_6a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_75

    .line 2144
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2146
    nop

    .line 2147
    return-void

    .line 2144
    :catchall_75
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2201
    :try_start_8
    const-string v0, "android.net.INetd"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2202
    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2203
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2204
    move-object v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2205
    move v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    move-object v3, p0

    iget-object v3, v3, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v10, 0x0

    invoke-interface {v3, v4, v1, v2, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 2209
    if-nez v3, :cond_4f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 2210
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/net/INetd;->ipSecUpdateTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_5a

    .line 2216
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2211
    return-void

    .line 2213
    :cond_4f
    :try_start_4f
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5a

    .line 2216
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2218
    nop

    .line 2219
    return-void

    .line 2216
    :catchall_5a
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2489
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2492
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2493
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2494
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2495
    return-void

    .line 2497
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2502
    nop

    .line 2503
    return-void

    .line 2500
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipfwdDisableForwarding(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2470
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2472
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2473
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2474
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2475
    return-void

    .line 2477
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2482
    nop

    .line 2483
    return-void

    .line 2480
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipfwdEnableForwarding(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2451
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2453
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2454
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2455
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2456
    return-void

    .line 2458
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2463
    nop

    .line 2464
    return-void

    .line 2461
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public ipfwdEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2412
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2413
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2414
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2415
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 2421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    return v2

    .line 2417
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 2421
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2423
    nop

    .line 2424
    return v4

    .line 2421
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2422
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

    .line 2428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2432
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2434
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2435
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->ipfwdGetRequesterList()[Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2435
    return-object v2

    .line 2437
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2438
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    nop

    .line 2444
    return-object v2

    .line 2441
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2509
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2511
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2512
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2513
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2514
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    return-void

    .line 2517
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2522
    nop

    .line 2523
    return-void

    .line 2520
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public isAlive()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1559
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1560
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1561
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1562
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3e

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1562
    return v2

    .line 1564
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3e

    if-eqz v2, :cond_36

    move v3, v4

    .line 1568
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1570
    nop

    .line 1571
    return v3

    .line 1568
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkAddInterface(ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1681
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1684
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1685
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1686
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 1692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1687
    return-void

    .line 1689
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 1692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1694
    nop

    .line 1695
    return-void

    .line 1692
    :catchall_3c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2901
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2904
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2905
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2908
    if-nez v2, :cond_40

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 2909
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 2915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2910
    return-void

    .line 2912
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 2915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    nop

    .line 2918
    return-void

    .line 2915
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2857
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2861
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2862
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2863
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2864
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2865
    return-void

    .line 2867
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2872
    nop

    .line 2873
    return-void

    .line 2870
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1721
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1724
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1725
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1726
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    return-void

    .line 1729
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1734
    nop

    .line 1735
    return-void

    .line 1732
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkCanProtect(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3122
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3124
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3125
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 3126
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkCanProtect(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_42

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3126
    return p1

    .line 3128
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_42

    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    .line 3132
    :cond_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3134
    nop

    .line 3135
    return v4

    .line 3132
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkClearDefault()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2983
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2986
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2987
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2988
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 2989
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2990
    return-void

    .line 2992
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 2995
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2997
    nop

    .line 2998
    return-void

    .line 2995
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkClearPermissionForUser([I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3044
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3046
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3047
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3048
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3049
    return-void

    .line 3051
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3056
    nop

    .line 3057
    return-void

    .line 3054
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkCreatePhysical(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1622
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1626
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 1627
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkCreatePhysical(II)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 1633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1628
    return-void

    .line 1630
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 1633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    nop

    .line 1636
    return-void

    .line 1633
    :catchall_3c
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkCreateVpn(IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1642
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    const/4 v2, 0x0

    if-eqz p2, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1646
    if-nez v2, :cond_36

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1647
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkCreateVpn(IZ)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1648
    return-void

    .line 1650
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1655
    nop

    .line 1656
    return-void

    .line 1653
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkDestroy(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1662
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1665
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1666
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 1672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    return-void

    .line 1669
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 1672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1674
    nop

    .line 1675
    return-void

    .line 1672
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkGetDefault()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2948
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2949
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2950
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2951
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->networkGetDefault()I

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    return v2

    .line 2953
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    nop

    .line 2960
    return v2

    .line 2957
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1761
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1762
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1763
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1764
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1765
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1766
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    return-void

    .line 1769
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1774
    nop

    .line 1775
    return-void

    .line 1772
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkRemoveInterface(ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1701
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1704
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1705
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1706
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1707
    return-void

    .line 1709
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1714
    nop

    .line 1715
    return-void

    .line 1712
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2924
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2926
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2927
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2928
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2930
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2931
    if-nez v2, :cond_40

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 2932
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/INetd;->networkRemoveLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 2938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2933
    return-void

    .line 2935
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 2938
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2940
    nop

    .line 2941
    return-void

    .line 2938
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2876
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2879
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2881
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2882
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2883
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2884
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2885
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2886
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2887
    return-void

    .line 2889
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2892
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2894
    nop

    .line 2895
    return-void

    .line 2892
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1741
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1743
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1744
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1745
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1746
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    return-void

    .line 1749
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1752
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1754
    nop

    .line 1755
    return-void

    .line 1752
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1753
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkSetDefault(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2964
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2967
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2969
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2970
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2971
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2972
    return-void

    .line 2974
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2977
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2979
    nop

    .line 2980
    return-void

    .line 2977
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkSetPermissionForNetwork(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3004
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3006
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3007
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3008
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3009
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3010
    return-void

    .line 3012
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3017
    nop

    .line 3018
    return-void

    .line 3015
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkSetPermissionForUser(I[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3024
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3026
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3027
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3028
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3029
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3030
    return-void

    .line 3032
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3037
    nop

    .line 3038
    return-void

    .line 3035
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkSetProtectAllow(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3083
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3085
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3086
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3087
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3088
    return-void

    .line 3090
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    nop

    .line 3096
    return-void

    .line 3093
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public networkSetProtectDeny(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3102
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3104
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3105
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 3106
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3107
    return-void

    .line 3109
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 3112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3114
    nop

    .line 3115
    return-void

    .line 3112
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3113
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3432
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3433
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/net/INetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3434
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3435
    if-nez v2, :cond_37

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 3436
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3437
    return-void

    .line 3439
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3444
    nop

    .line 3445
    return-void

    .line 3442
    :catchall_42
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2288
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2291
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2292
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2293
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2294
    return-void

    .line 2296
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2301
    nop

    .line 2302
    return-void

    .line 2299
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1907
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1910
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1913
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1914
    if-nez v2, :cond_40

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 1915
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/INetd;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_4b

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1916
    return-void

    .line 1918
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4b

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1923
    nop

    .line 1924
    return-void

    .line 1921
    :catchall_4b
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3412
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3415
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3416
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3417
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3418
    return-void

    .line 3420
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3425
    nop

    .line 3426
    return-void

    .line 3423
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public socketDestroy([Landroid/net/UidRangeParcel;[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1781
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1782
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1783
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1784
    iget-object v3, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1785
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1786
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1787
    return-void

    .line 1789
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1792
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1794
    nop

    .line 1795
    return-void

    .line 1792
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public strictUidCleartextPenalty(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2350
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2353
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2354
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2355
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2356
    return-void

    .line 2358
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2363
    nop

    .line 2364
    return-void

    .line 2361
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3372
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3375
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3376
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3377
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3378
    return-void

    .line 3380
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3385
    nop

    .line 3386
    return-void

    .line 3383
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherApplyDnsInterfaces()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1798
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1802
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1803
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1804
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1805
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 1811
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1805
    return v2

    .line 1807
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1808
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 1811
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1813
    nop

    .line 1814
    return v4

    .line 1811
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1812
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

    .line 2834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2838
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2840
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2841
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2841
    return-object v2

    .line 2843
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2844
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2849
    nop

    .line 2850
    return-object v2

    .line 2847
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherDnsSet(I[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2817
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2819
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2820
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2821
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2822
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2823
    return-void

    .line 2825
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2830
    nop

    .line 2831
    return-void

    .line 2828
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherGetStats()[Landroid/net/TetherStatsParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1822
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1823
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1824
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1825
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherGetStats()[Landroid/net/TetherStatsParcel;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_40

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1825
    return-object v2

    .line 1827
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1828
    sget-object v2, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/TetherStatsParcel;
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_40

    .line 1831
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1833
    nop

    .line 1834
    return-object v2

    .line 1831
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceAdd(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2759
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2761
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2762
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2763
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2764
    return-void

    .line 2766
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2771
    nop

    .line 2772
    return-void

    .line 2769
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherInterfaceList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2798
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2799
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2800
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2801
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3c

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2801
    return-object v2

    .line 2803
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3c

    .line 2807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2809
    nop

    .line 2810
    return-object v2

    .line 2807
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherInterfaceRemove(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2775
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2778
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2780
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2781
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2782
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    return-void

    .line 2785
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2788
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2790
    nop

    .line 2791
    return-void

    .line 2788
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherIsEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2740
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2741
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2742
    if-nez v2, :cond_2d

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 2743
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v2
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3f

    .line 2749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    return v2

    .line 2745
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3f

    if-eqz v2, :cond_37

    const/4 v4, 0x1

    .line 2749
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    nop

    .line 2752
    return v4

    .line 2749
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3392
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3395
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3396
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3397
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3398
    return-void

    .line 3400
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3405
    nop

    .line 3406
    return-void

    .line 3403
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherStart([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2702
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2704
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2705
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2706
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/INetd;->tetherStart([Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 2712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    return-void

    .line 2709
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 2712
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2714
    nop

    .line 2715
    return-void

    .line 2712
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2713
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public tetherStop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2721
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2722
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2723
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 2724
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->tetherStop()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 2730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2725
    return-void

    .line 2727
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 2730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2732
    nop

    .line 2733
    return-void

    .line 2730
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public trafficSetNetPermForUids(I[I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3063
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3066
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3067
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3068
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3d

    .line 3074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3069
    return-void

    .line 3071
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 3074
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3076
    nop

    .line 3077
    return-void

    .line 3074
    :catchall_3d
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public trafficSwapActiveStatsMap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3490
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3491
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3492
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 3493
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 3499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3494
    return-void

    .line 3496
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 3499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3501
    nop

    .line 3502
    return-void

    .line 3499
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2244
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2247
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2249
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2250
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2251
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2252
    return-void

    .line 2254
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    nop

    .line 2260
    return-void

    .line 2257
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2266
    :try_start_8
    const-string v2, "android.net.INetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2270
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2271
    iget-object v2, p0, Landroid/net/INetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2272
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 2273
    invoke-static {}, Landroid/net/INetd$Stub;->getDefaultImpl()Landroid/net/INetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2274
    return-void

    .line 2276
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    nop

    .line 2282
    return-void

    .line 2279
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
