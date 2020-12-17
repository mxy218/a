.class public abstract Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub;
.super Landroid/os/Binder;
.source "IFingerprintCallbackManager.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.flyme.systemui.fingerprint.IFingerprintCallbackManager"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.flyme.systemui.fingerprint.IFingerprintCallbackManager"

    .line 28
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.flyme.systemui.fingerprint.IFingerprintCallbackManager"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 40
    instance-of v1, v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;

    if-eqz v1, :cond_13

    .line 41
    check-cast v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;

    return-object v0

    .line 43
    :cond_13
    new-instance v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;
    .registers 1

    .line 140
    sget-object v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;->sDefaultImpl:Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;)Z
    .registers 2

    .line 133
    sget-object v0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;->sDefaultImpl:Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 134
    sput-object p0, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager$Stub$Proxy;->sDefaultImpl:Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.flyme.systemui.fingerprint.IFingerprintCallbackManager"

    if-eq p1, v0, :cond_25

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 56
    :cond_12
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 69
    :cond_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    move-result-object p1

    .line 72
    invoke-interface {p0, p1}, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;->unregisterCallback(Lcom/flyme/systemui/fingerprint/IFingerprintCallback;)V

    return v0

    .line 61
    :cond_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    move-result-object p1

    .line 64
    invoke-interface {p0, p1}, Lcom/flyme/systemui/fingerprint/IFingerprintCallbackManager;->registerCallback(Lcom/flyme/systemui/fingerprint/IFingerprintCallback;)V

    return v0
.end method
