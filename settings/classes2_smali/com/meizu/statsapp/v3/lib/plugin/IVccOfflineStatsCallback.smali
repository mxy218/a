.class public interface abstract Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback;
.super Ljava/lang/Object;
.source "IVccOfflineStatsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRealBulkInsertEvents(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRealInsertEvent(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRealInsertH5Event(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
