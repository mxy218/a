.class Landroid/net/TcpKeepalivePacketDataParcelable$1;
.super Ljava/lang/Object;
.source "TcpKeepalivePacketDataParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TcpKeepalivePacketDataParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TcpKeepalivePacketDataParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .registers 3

    .line 30
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Landroid/net/TcpKeepalivePacketDataParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Landroid/net/TcpKeepalivePacketDataParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/TcpKeepalivePacketDataParcelable;
    .registers 2

    .line 36
    new-array p1, p1, [Landroid/net/TcpKeepalivePacketDataParcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Landroid/net/TcpKeepalivePacketDataParcelable$1;->newArray(I)[Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object p1

    return-object p1
.end method
