.class public Landroid/net/ipmemorystore/StatusParcelable;
.super Ljava/lang/Object;
.source "StatusParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ipmemorystore/StatusParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public resultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable$1;

    invoke-direct {v0}, Landroid/net/ipmemorystore/StatusParcelable$1;-><init>()V

    sput-object v0, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    if-gez v1, :cond_b

    return-void

    .line 37
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_23

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 40
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 38
    return-void

    .line 40
    :cond_1d
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    nop

    .line 42
    return-void

    .line 40
    :catchall_23
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 28
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 30
    return-void
.end method
