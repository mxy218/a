.class public interface abstract Lcom/flyme/systemui/fingerprint/IFingerprintCallback;
.super Ljava/lang/Object;
.source "IFingerprintCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAuthenticationSucceeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
