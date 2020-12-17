.class public interface abstract Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;
.super Ljava/lang/Object;
.source "IFreeWifiManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract remoteQuery()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
