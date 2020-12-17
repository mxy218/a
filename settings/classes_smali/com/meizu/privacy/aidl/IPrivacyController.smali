.class public interface abstract Lcom/meizu/privacy/aidl/IPrivacyController;
.super Ljava/lang/Object;
.source "IPrivacyController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/privacy/aidl/IPrivacyController$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearPrivates(Lcom/meizu/privacy/aidl/IPrivacyResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract exportPrivates(Lcom/meizu/privacy/aidl/IPrivacyResultCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract markPrivate(Ljava/util/List;ILcom/meizu/privacy/aidl/IPrivacyResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/meizu/privacy/aidl/IPrivacyResultCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
