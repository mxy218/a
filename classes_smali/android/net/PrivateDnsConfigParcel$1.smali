.class Landroid/net/PrivateDnsConfigParcel$1;
.super Ljava/lang/Object;
.source "PrivateDnsConfigParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PrivateDnsConfigParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/PrivateDnsConfigParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/PrivateDnsConfigParcel;
    .registers 3

    .line 14
    new-instance v0, Landroid/net/PrivateDnsConfigParcel;

    invoke-direct {v0}, Landroid/net/PrivateDnsConfigParcel;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Landroid/net/PrivateDnsConfigParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 16
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/PrivateDnsConfigParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/PrivateDnsConfigParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/PrivateDnsConfigParcel;
    .registers 2

    .line 20
    new-array p1, p1, [Landroid/net/PrivateDnsConfigParcel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/PrivateDnsConfigParcel$1;->newArray(I)[Landroid/net/PrivateDnsConfigParcel;

    move-result-object p1

    return-object p1
.end method
