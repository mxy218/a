.class public interface abstract Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;
.super Ljava/lang/Object;
.source "IFingerprintCallbackManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/flyme/systemui/fingerprint/IFingerprintCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/flyme/systemui/fingerprint/IFingerprintCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
