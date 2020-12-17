.class Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IColorService.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/IColorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/IColorService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qti/snapdragon/sdk/display/IColorService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 578
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public createNewModeAllFeatures(ILjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 861
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 865
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 866
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->createNewModeAllFeatures(ILjava/lang/String;)I

    move-result p0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_41

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 868
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_41

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_41
    move-exception p0

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getColorBalance(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 636
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 639
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 640
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->getColorBalance(I)I

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3d

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 642
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3d

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3d
    move-exception p0

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getDefaultMode(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 818
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_30

    .line 821
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 822
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/qti/snapdragon/sdk/display/IColorService;->getDefaultMode(I)I

    move-result p0
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3e

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 824
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_3e

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3e
    move-exception p0

    .line 828
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 747
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 751
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 752
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->getModes(II)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_45

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 754
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 755
    sget-object p0, Lcom/qti/snapdragon/sdk/display/ModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_45

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_45
    move-exception p0

    .line 758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public isFeatureSupported(II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 590
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_32

    .line 594
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 595
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->isFeatureSupported(II)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_43

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 597
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_43

    if-eqz p0, :cond_3c

    move v2, v3

    .line 601
    :cond_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_43
    move-exception p0

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setActiveMode(II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 703
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_32

    .line 707
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 708
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->setActiveMode(II)I

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_40

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 710
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_40

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_40
    move-exception p0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setColorBalance(II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 614
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_32

    .line 618
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 619
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->setColorBalance(II)I

    move-result p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_40

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 621
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_40

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_40
    move-exception p0

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setDefaultMode(II)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.qti.snapdragon.sdk.display.IColorService"

    .line 839
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    iget-object p0, p0, Lcom/qti/snapdragon/sdk/display/IColorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_33

    .line 843
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 844
    invoke-static {}, Lcom/qti/snapdragon/sdk/display/IColorService$Stub;->getDefaultImpl()Lcom/qti/snapdragon/sdk/display/IColorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/qti/snapdragon/sdk/display/IColorService;->setDefaultMode(II)I

    move-result p0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_41

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 846
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_41

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_41
    move-exception p0

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
