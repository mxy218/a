.class public Landroid/net/InterfaceConfigurationParcel;
.super Ljava/lang/Object;
.source "InterfaceConfigurationParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/InterfaceConfigurationParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public flags:[Ljava/lang/String;

.field public hwAddr:Ljava/lang/String;

.field public ifName:Ljava/lang/String;

.field public ipv4Addr:Ljava/lang/String;

.field public prefixLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/net/InterfaceConfigurationParcel$1;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel$1;-><init>()V

    sput-object v0, Landroid/net/InterfaceConfigurationParcel;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"  # Landroid/os/Parcel;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    .local v1, "_aidl_parcelable_size":I
    if-gez v1, :cond_b

    return-void

    .line 49
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_71

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1e

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 51
    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_71

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_31

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 53
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_71

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 55
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_71

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 57
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_71

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    .line 60
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 60
    :cond_6a
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    nop

    .line 62
    return-void

    .line 60
    :catchall_71
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"  # Landroid/os/Parcel;
    .param p2, "_aidl_flag"  # I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 32
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget v1, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 39
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 40
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    return-void
.end method
