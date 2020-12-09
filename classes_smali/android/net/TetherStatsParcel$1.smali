.class Landroid/net/TetherStatsParcel$1;
.super Ljava/lang/Object;
.source "TetherStatsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetherStatsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TetherStatsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherStatsParcel;
    .registers 3

    .line 20
    new-instance v0, Landroid/net/TetherStatsParcel;

    invoke-direct {v0}, Landroid/net/TetherStatsParcel;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Landroid/net/TetherStatsParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TetherStatsParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/TetherStatsParcel;
    .registers 2

    .line 26
    new-array p1, p1, [Landroid/net/TetherStatsParcel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Landroid/net/TetherStatsParcel$1;->newArray(I)[Landroid/net/TetherStatsParcel;

    move-result-object p1

    return-object p1
.end method
