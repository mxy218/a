.class public Landroid/net/TcpKeepalivePacketDataParcelable;
.super Ljava/lang/Object;
.source "TcpKeepalivePacketDataParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TcpKeepalivePacketDataParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ack:I

.field public dstAddress:[B

.field public dstPort:I

.field public rcvWnd:I

.field public rcvWndScale:I

.field public seq:I

.field public srcAddress:[B

.field public srcPort:I

.field public tos:I

.field public ttl:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable$1;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketDataParcelable$1;-><init>()V

    sput-object v0, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    if-gez v1, :cond_b

    return-void

    .line 64
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 66
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 68
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_41

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 70
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 72
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_65

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 74
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_77

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 76
    :cond_77
    :try_start_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_89

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 78
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9b

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 80
    :cond_9b
    :try_start_9b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ad

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 82
    :cond_ad
    :try_start_ad
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_c5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_bf

    .line 85
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 85
    :cond_bf
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    nop

    .line 87
    return-void

    .line 85
    :catchall_c5
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 44
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 46
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void
.end method
