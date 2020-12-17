.class public abstract Lcom/meizu/privacy/aidl/IPrivacyController$Stub;
.super Landroid/os/Binder;
.source "IPrivacyController.java"

# interfaces
.implements Lcom/meizu/privacy/aidl/IPrivacyController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/privacy/aidl/IPrivacyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/privacy/aidl/IPrivacyController$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/privacy/aidl/IPrivacyController;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.privacy.aidl.IPrivacyController"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 49
    instance-of v1, v0, Lcom/meizu/privacy/aidl/IPrivacyController;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Lcom/meizu/privacy/aidl/IPrivacyController;

    return-object v0

    .line 52
    :cond_13
    new-instance v0, Lcom/meizu/privacy/aidl/IPrivacyController$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/privacy/aidl/IPrivacyController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/meizu/privacy/aidl/IPrivacyController;
    .registers 1

    .line 259
    sget-object v0, Lcom/meizu/privacy/aidl/IPrivacyController$Stub$Proxy;->sDefaultImpl:Lcom/meizu/privacy/aidl/IPrivacyController;

    return-object v0
.end method
