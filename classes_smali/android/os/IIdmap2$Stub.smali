.class public abstract Landroid/os/IIdmap2$Stub;
.super Landroid/os/Binder;
.source "IIdmap2.java"

# interfaces
.implements Landroid/os/IIdmap2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIdmap2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIdmap2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IIdmap2"

.field static final TRANSACTION_createIdmap:I = 0x4

.field static final TRANSACTION_getIdmapPath:I = 0x1

.field static final TRANSACTION_removeIdmap:I = 0x2

.field static final TRANSACTION_verifyIdmap:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.os.IIdmap2"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIdmap2$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IIdmap2;
    .registers 3

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_4
    const-string v0, "android.os.IIdmap2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IIdmap2;

    if-eqz v1, :cond_13

    .line 54
    check-cast v0, Landroid/os/IIdmap2;

    return-object v0

    .line 56
    :cond_13
    new-instance v0, Landroid/os/IIdmap2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IIdmap2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IIdmap2;
    .registers 1

    .line 258
    sget-object v0, Landroid/os/IIdmap2$Stub$Proxy;->sDefaultImpl:Landroid/os/IIdmap2;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IIdmap2;)Z
    .registers 2

    .line 251
    sget-object v0, Landroid/os/IIdmap2$Stub$Proxy;->sDefaultImpl:Landroid/os/IIdmap2;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 252
    sput-object p0, Landroid/os/IIdmap2$Stub$Proxy;->sDefaultImpl:Landroid/os/IIdmap2;

    .line 253
    const/4 p0, 0x1

    return p0

    .line 255
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 60
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    nop

    .line 65
    const/4 v0, 0x1

    const-string v1, "android.os.IIdmap2"

    if-eq p1, v0, :cond_7e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_68

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_47

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1e

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1a

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 69
    :cond_1a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v0

    .line 114
    :cond_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_35

    move v5, v0

    goto :goto_36

    :cond_35
    move v5, v3

    .line 124
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 125
    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/IIdmap2$Stub;->createIdmap(Ljava/lang/String;Ljava/lang/String;IZI)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    return v0

    .line 98
    :cond_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_59

    move v3, v0

    .line 106
    :cond_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p4, v3, p2}, Landroid/os/IIdmap2$Stub;->verifyIdmap(Ljava/lang/String;IZI)Z

    move-result p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v0

    .line 86
    :cond_68
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/os/IIdmap2$Stub;->removeIdmap(Ljava/lang/String;I)Z

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v0

    .line 74
    :cond_7e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/os/IIdmap2$Stub;->getIdmapPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return v0
.end method
