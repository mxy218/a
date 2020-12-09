.class public Landroid/net/NattKeepalivePacketDataParcelable;
.super Ljava/lang/Object;
.source "NattKeepalivePacketDataParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NattKeepalivePacketDataParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dstAddress:[B

.field public dstPort:I

.field public srcAddress:[B

.field public srcPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Landroid/net/NattKeepalivePacketDataParcelable$1;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketDataParcelable$1;-><init>()V

    sput-object v0, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 44
    if-gez v1, :cond_b

    return-void

    .line 46
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 48
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 50
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_41

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 52
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 55
    :cond_53
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_59
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v0, p0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    iget v0, p0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v0, p0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 34
    iget v0, p0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void
.end method
