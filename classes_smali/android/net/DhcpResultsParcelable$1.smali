.class Landroid/net/DhcpResultsParcelable$1;
.super Ljava/lang/Object;
.source "DhcpResultsParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpResultsParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/DhcpResultsParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResultsParcelable;
    .registers 3
    .param p1, "_aidl_source"  # Landroid/os/Parcel;

    .line 22
    new-instance v0, Landroid/net/DhcpResultsParcelable;

    invoke-direct {v0}, Landroid/net/DhcpResultsParcelable;-><init>()V

    .line 23
    .local v0, "_aidl_out":Landroid/net/DhcpResultsParcelable;
    invoke-virtual {v0, p1}, Landroid/net/DhcpResultsParcelable;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/DhcpResultsParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DhcpResultsParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/DhcpResultsParcelable;
    .registers 3
    .param p1, "_aidl_size"  # I

    .line 28
    new-array v0, p1, [Landroid/net/DhcpResultsParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Landroid/net/DhcpResultsParcelable$1;->newArray(I)[Landroid/net/DhcpResultsParcelable;

    move-result-object p1

    return-object p1
.end method
