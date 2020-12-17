.class public interface abstract Lcom/meizu/flyme/update/IUpdateChangeListener;
.super Ljava/lang/Object;
.source "IUpdateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUpdateChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
