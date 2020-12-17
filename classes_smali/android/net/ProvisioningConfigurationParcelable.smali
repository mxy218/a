.class public Landroid/net/ProvisioningConfigurationParcelable;
.super Ljava/lang/Object;
.source "ProvisioningConfigurationParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProvisioningConfigurationParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public displayName:Ljava/lang/String;

.field public enableIPv4:Z

.field public enableIPv6:Z

.field public initialConfig:Landroid/net/InitialConfigurationParcelable;

.field public ipv6AddrGenMode:I

.field public network:Landroid/net/Network;

.field public provisioningTimeoutMs:I

.field public requestedPreDhcpActionMs:I

.field public staticIpConfig:Landroid/net/StaticIpConfiguration;

.field public usingIpReachabilityMonitor:Z

.field public usingMultinetworkPolicyTracker:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable$1;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable$1;-><init>()V

    sput-object v0, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "_aidl_parcel"  # Landroid/os/Parcel;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 91
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .local v1, "_aidl_parcelable_size":I
    if-gez v1, :cond_b

    return-void

    .line 94
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    move v2, v4

    :goto_16
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 96
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v4

    :goto_2e
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3d

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 98
    :cond_3d
    :try_start_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_45

    move v2, v3

    goto :goto_46

    :cond_45
    move v2, v4

    :goto_46
    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_55

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 100
    :cond_55
    :try_start_55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move v3, v4

    :goto_5d
    iput-boolean v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6c

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 102
    :cond_6c
    :try_start_6c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7f

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 104
    :cond_7f
    :try_start_7f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_91

    .line 105
    sget-object v2, Landroid/net/InitialConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InitialConfigurationParcelable;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    goto :goto_93

    .line 108
    :cond_91
    iput-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 110
    :goto_93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_97
    .catchall {:try_start_7f .. :try_end_97} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a0

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 111
    :cond_a0
    :try_start_a0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b1

    .line 112
    sget-object v2, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/StaticIpConfiguration;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    goto :goto_b3

    .line 115
    :cond_b1
    iput-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 117
    :goto_b3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b7
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c0

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 118
    :cond_c0
    :try_start_c0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d1

    .line 119
    sget-object v2, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfCapabilities;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    goto :goto_d3

    .line 122
    :cond_d1
    iput-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 124
    :goto_d3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d7
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 124
    return-void

    .line 125
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f3

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 126
    return-void

    .line 127
    :cond_f3
    :try_start_f3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_fd
    .catchall {:try_start_f3 .. :try_end_fd} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    return-void

    .line 129
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_117

    .line 130
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    goto :goto_119

    .line 133
    :cond_117
    iput-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 135
    :goto_119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11d
    .catchall {:try_start_106 .. :try_end_11d} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    return-void

    .line 136
    :cond_126
    :try_start_126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_140

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_139

    .line 139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    return-void

    .line 139
    :cond_139
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 140
    nop

    .line 141
    return-void

    .line 139
    :catchall_140
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "_aidl_parcel"  # Landroid/os/Parcel;
    .param p2, "_aidl_flag"  # I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 46
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-virtual {v2, p1, v1}, Landroid/net/InitialConfigurationParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    .line 57
    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    :goto_32
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v2, :cond_3f

    .line 60
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v2, p1, v1}, Landroid/net/StaticIpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_42

    .line 64
    :cond_3f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_42
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    if-eqz v2, :cond_4f

    .line 67
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v2, p1, v1}, Landroid/net/apf/ApfCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_52

    .line 71
    :cond_4f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    :goto_52
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    if-eqz v2, :cond_69

    .line 76
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    invoke-virtual {v2, p1, v1}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6c

    .line 80
    :cond_69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    :goto_6c
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 84
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void
.end method
