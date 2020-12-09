.class final Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;
.super Landroid/media/tv/ITvRemoteServiceInput$Stub;
.source "TvRemoteProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteServiceInputProvider"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/tv/TvRemoteProviderProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .registers 3

    .line 564
    invoke-direct {p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;-><init>()V

    .line 565
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 566
    return-void
.end method


# virtual methods
.method public clearInputBridge(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 593
    if-eqz v0, :cond_d

    .line 594
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->clearInputBridge(Landroid/os/IBinder;)V

    .line 596
    :cond_d
    return-void
.end method

.method public closeInputBridge(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 585
    if-eqz v0, :cond_d

    .line 586
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->closeInputBridge(Landroid/os/IBinder;)V

    .line 588
    :cond_d
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 571
    return-void
.end method

.method public openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 577
    if-eqz v1, :cond_13

    .line 578
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 580
    :cond_13
    return-void
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 609
    if-eqz v0, :cond_d

    .line 610
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 612
    :cond_d
    return-void
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 617
    if-eqz v0, :cond_d

    .line 618
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 620
    :cond_d
    return-void
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 626
    if-eqz v0, :cond_d

    .line 627
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 629
    :cond_d
    return-void
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 642
    if-eqz v0, :cond_d

    .line 643
    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerSync(Landroid/os/IBinder;)V

    .line 645
    :cond_d
    return-void
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 634
    if-eqz v0, :cond_d

    .line 635
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 637
    :cond_d
    return-void
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 601
    if-eqz v0, :cond_d

    .line 602
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 604
    :cond_d
    return-void
.end method