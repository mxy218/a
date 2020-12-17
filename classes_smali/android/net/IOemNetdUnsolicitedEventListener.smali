.class public interface abstract Landroid/net/IOemNetdUnsolicitedEventListener;
.super Ljava/lang/Object;
.source "IOemNetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IOemNetdUnsolicitedEventListener$Stub;,
        Landroid/net/IOemNetdUnsolicitedEventListener$Default;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAppNetworkPolicyRequested(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRegistered()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
