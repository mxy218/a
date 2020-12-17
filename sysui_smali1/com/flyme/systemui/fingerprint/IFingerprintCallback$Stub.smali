.class public abstract Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;
.super Landroid/os/Binder;
.source "IFingerprintCallback.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IFingerprintCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/IFingerprintCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/flyme/systemui/fingerprint/IFingerprintCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.flyme.systemui.fingerprint.IFingerprintCallback"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    instance-of v1, v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/flyme/systemui/fingerprint/IFingerprintCallback;
    .registers 1

    .line 218
    sget-object v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;->sDefaultImpl:Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    return-object v0
.end method
