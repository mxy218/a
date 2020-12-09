.class public Landroid/net/dhcp/DhcpServingParamsParcel;
.super Ljava/lang/Object;
.source "DhcpServingParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/dhcp/DhcpServingParamsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultRouters:[I

.field public dhcpLeaseTimeSecs:J

.field public dnsServers:[I

.field public excludedAddrs:[I

.field public linkMtu:I

.field public metered:Z

.field public serverAddr:I

.field public serverAddrPrefixLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/net/dhcp/DhcpServingParamsParcel$1;

    invoke-direct {v0}, Landroid/net/dhcp/DhcpServingParamsParcel$1;-><init>()V

    sput-object v0, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    if-gez v1, :cond_b

    return-void

    .line 58
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddr:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 60
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddrPrefixLength:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2f

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 62
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->defaultRouters:[I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_41

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 64
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dnsServers:[I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 66
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->excludedAddrs:[I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_65

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 68
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dhcpLeaseTimeSecs:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_77

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 70
    :cond_77
    :try_start_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->linkMtu:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_89

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 72
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_91

    const/4 v2, 0x1

    goto :goto_92

    :cond_91
    const/4 v2, 0x0

    :goto_92
    iput-boolean v2, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->metered:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_a6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a0

    .line 75
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 75
    :cond_a0
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    nop

    .line 77
    return-void

    .line 75
    :catchall_a6
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->serverAddrPrefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->defaultRouters:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 42
    iget-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dnsServers:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 43
    iget-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->excludedAddrs:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 44
    iget-wide v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->dhcpLeaseTimeSecs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->linkMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpServingParamsParcel;->metered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void
.end method
