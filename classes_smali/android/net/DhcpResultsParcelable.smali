.class public Landroid/net/DhcpResultsParcelable;
.super Ljava/lang/Object;
.source "DhcpResultsParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/DhcpResultsParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseConfiguration:Landroid/net/StaticIpConfiguration;

.field public leaseDuration:I

.field public mtu:I

.field public serverAddress:Ljava/lang/String;

.field public serverHostName:Ljava/lang/String;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Landroid/net/DhcpResultsParcelable$1;

    invoke-direct {v0}, Landroid/net/DhcpResultsParcelable$1;-><init>()V

    sput-object v0, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"  # Landroid/os/Parcel;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_aidl_parcelable_size":I
    if-gez v1, :cond_b

    return-void

    .line 58
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 59
    sget-object v2, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/StaticIpConfiguration;

    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    goto :goto_1f

    .line 62
    :cond_1c
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    .line 64
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2c

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 65
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3f

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 67
    :cond_3f
    :try_start_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_52

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 69
    :cond_52
    :try_start_52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_65

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 71
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_78

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 73
    :cond_78
    :try_start_78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_92

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_8b

    .line 76
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 76
    :cond_8b
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    nop

    .line 78
    return-void

    .line 76
    :catchall_92
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"  # Landroid/os/Parcel;
    .param p2, "_aidl_flag"  # I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v2, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    if-eqz v2, :cond_16

    .line 36
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v2, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v2, p1, v1}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 40
    :cond_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    :goto_19
    iget v1, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 48
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void
.end method
