.class public abstract Landroid/os/IStoraged$Stub;
.super Landroid/os/Binder;
.source "IStoraged.java"

# interfaces
.implements Landroid/os/IStoraged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStoraged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStoraged$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStoraged"

.field static final TRANSACTION_getRecentPerf:I = 0x3

.field static final TRANSACTION_onUserStarted:I = 0x1

.field static final TRANSACTION_onUserStopped:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "android.os.IStoraged"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStoraged$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "android.os.IStoraged"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IStoraged;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Landroid/os/IStoraged;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Landroid/os/IStoraged$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IStoraged$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IStoraged;
    .registers 1

    .line 182
    sget-object v0, Landroid/os/IStoraged$Stub$Proxy;->sDefaultImpl:Landroid/os/IStoraged;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IStoraged;)Z
    .registers 2

    .line 175
    sget-object v0, Landroid/os/IStoraged$Stub$Proxy;->sDefaultImpl:Landroid/os/IStoraged;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 176
    sput-object p0, Landroid/os/IStoraged$Stub$Proxy;->sDefaultImpl:Landroid/os/IStoraged;

    .line 177
    const/4 p0, 0x1

    return p0

    .line 179
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    nop

    .line 57
    const/4 v0, 0x1

    const-string v1, "android.os.IStoraged"

    if-eq p1, v0, :cond_36

    const/4 v2, 0x2

    if-eq p1, v2, :cond_28

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1a

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_16

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 61
    :cond_16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v0

    .line 84
    :cond_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/os/IStoraged$Stub;->getRecentPerf()I

    move-result p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v0

    .line 75
    :cond_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/os/IStoraged$Stub;->onUserStopped(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v0

    .line 66
    :cond_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/os/IStoraged$Stub;->onUserStarted(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v0
.end method
