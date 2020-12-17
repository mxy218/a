.class public interface abstract Lcom/meizu/flyme/update/IQueryUpdateService;
.super Ljava/lang/Object;
.source "IQueryUpdateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/update/IQueryUpdateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract hasUpdate(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Ljava/lang/String;Lcom/meizu/flyme/update/IUpdateChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
