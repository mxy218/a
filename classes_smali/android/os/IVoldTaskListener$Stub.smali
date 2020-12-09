.class public abstract Landroid/os/IVoldTaskListener$Stub;
.super Landroid/os/Binder;
.source "IVoldTaskListener.java"

# interfaces
.implements Landroid/os/IVoldTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldTaskListener"

.field static final TRANSACTION_onFinished:I = 0x2

.field static final TRANSACTION_onStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "android.os.IVoldTaskListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoldTaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;
    .registers 3

    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_4
    const-string v0, "android.os.IVoldTaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IVoldTaskListener;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Landroid/os/IVoldTaskListener;

    return-object v0

    .line 44
    :cond_13
    new-instance v0, Landroid/os/IVoldTaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVoldTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IVoldTaskListener;
    .registers 1

    .line 169
    sget-object v0, Landroid/os/IVoldTaskListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldTaskListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IVoldTaskListener;)Z
    .registers 2

    .line 162
    sget-object v0, Landroid/os/IVoldTaskListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldTaskListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 163
    sput-object p0, Landroid/os/IVoldTaskListener$Stub$Proxy;->sDefaultImpl:Landroid/os/IVoldTaskListener;

    .line 164
    const/4 p0, 0x1

    return p0

    .line 166
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    nop

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.os.IVoldTaskListener"

    if-eq p1, v1, :cond_34

    const/4 v3, 0x2

    if-eq p1, v3, :cond_18

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_14

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return v1

    .line 77
    :cond_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2f

    .line 82
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_30

    .line 85
    :cond_2f
    nop

    .line 87
    :goto_30
    invoke-virtual {p0, p1, v0}, Landroid/os/IVoldTaskListener$Stub;->onFinished(ILandroid/os/PersistableBundle;)V

    .line 88
    return v1

    .line 62
    :cond_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_4b

    .line 67
    sget-object p3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/PersistableBundle;

    goto :goto_4c

    .line 70
    :cond_4b
    nop

    .line 72
    :goto_4c
    invoke-virtual {p0, p1, v0}, Landroid/os/IVoldTaskListener$Stub;->onStatus(ILandroid/os/PersistableBundle;)V

    .line 73
    return v1
.end method
