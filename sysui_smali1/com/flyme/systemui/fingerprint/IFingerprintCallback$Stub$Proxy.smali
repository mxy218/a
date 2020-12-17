.class Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFingerprintCallback.java"

# interfaces
.implements Lcom/flyme/systemui/fingerprint/IFingerprintCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/flyme/systemui/fingerprint/IFingerprintCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onAuthenticationSucceeded()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.flyme.systemui.fingerprint.IFingerprintCallback"

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    iget-object p0, p0, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_25

    .line 180
    invoke-static {}, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;->getDefaultImpl()Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 181
    invoke-static {}, Lcom/flyme/systemui/fingerprint/IFingerprintCallback$Stub;->getDefaultImpl()Lcom/flyme/systemui/fingerprint/IFingerprintCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/flyme/systemui/fingerprint/IFingerprintCallback;->onAuthenticationSucceeded()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_29

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
