.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDumpstate"

.field static final TRANSACTION_cancelBugreport:I = 0x3

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_startBugreport:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .registers 3

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_4
    const-string v0, "android.os.IDumpstate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_13

    .line 77
    check-cast v0, Landroid/os/IDumpstate;

    return-object v0

    .line 79
    :cond_13
    new-instance v0, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstate;
    .registers 1

    .line 262
    sget-object v0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstate;)Z
    .registers 2

    .line 255
    sget-object v0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 256
    sput-object p0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    .line 257
    const/4 p0, 0x1

    return p0

    .line 259
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    nop

    .line 88
    const/4 v0, 0x1

    const-string v1, "android.os.IDumpstate"

    if-eq p1, v0, :cond_4b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_24

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1a

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_16

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 92
    :cond_16
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v0

    .line 130
    :cond_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/os/IDumpstate$Stub;->cancelBugreport()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v0

    .line 111
    :cond_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v7

    .line 124
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/os/IDumpstate$Stub;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v0

    .line 97
    :cond_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object p4

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_62

    move p2, v0

    goto :goto_63

    :cond_62
    const/4 p2, 0x0

    .line 104
    :goto_63
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IDumpstate$Stub;->setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz p1, :cond_71

    invoke-interface {p1}, Landroid/os/IDumpstateToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_72

    :cond_71
    const/4 p1, 0x0

    :goto_72
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 107
    return v0
.end method
