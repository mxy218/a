.class public Landroid/net/InitialConfigurationParcelable;
.super Ljava/lang/Object;
.source "InitialConfigurationParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/InitialConfigurationParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public directlyConnectedRoutes:[Landroid/net/IpPrefix;

.field public dnsServers:[Ljava/lang/String;

.field public gateway:Ljava/lang/String;

.field public ipAddresses:[Landroid/net/LinkAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Landroid/net/InitialConfigurationParcelable$1;

    invoke-direct {v0}, Landroid/net/InitialConfigurationParcelable$1;-><init>()V

    sput-object v0, Landroid/net/InitialConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

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
    sget-object v2, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/LinkAddress;

    iput-object v2, p0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_21

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void

    .line 48
    :cond_21
    :try_start_21
    sget-object v2, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/IpPrefix;

    iput-object v2, p0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_37

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void

    .line 50
    :cond_37
    :try_start_37
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_49

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    return-void

    .line 52
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/InitialConfigurationParcelable;->gateway:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 55
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 55
    :cond_5b
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_61
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v1, p0, Landroid/net/InitialConfigurationParcelable;->ipAddresses:[Landroid/net/LinkAddress;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 32
    iget-object v1, p0, Landroid/net/InitialConfigurationParcelable;->directlyConnectedRoutes:[Landroid/net/IpPrefix;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 33
    iget-object v0, p0, Landroid/net/InitialConfigurationParcelable;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Landroid/net/InitialConfigurationParcelable;->gateway:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
