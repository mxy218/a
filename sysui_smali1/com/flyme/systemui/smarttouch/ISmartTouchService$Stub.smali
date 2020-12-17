.class public abstract Lcom/flyme/systemui/smarttouch/ISmartTouchService$Stub;
.super Landroid/os/Binder;
.source "ISmartTouchService.java"

# interfaces
.implements Lcom/flyme/systemui/smarttouch/ISmartTouchService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/ISmartTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.flyme.systemui.smarttouch.ISmartTouchService"

    .line 25
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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

    const-string v1, "com.flyme.systemui.smarttouch.ISmartTouchService"

    if-eq p1, v0, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 53
    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 58
    :cond_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    move p1, v0

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 61
    :goto_1f
    invoke-interface {p0, p1}, Lcom/flyme/systemui/smarttouch/ISmartTouchService;->forceHideSmartTouch(Z)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
