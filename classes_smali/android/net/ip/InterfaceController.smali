.class public Landroid/net/ip/InterfaceController;
.super Ljava/lang/Object;
.source "InterfaceController.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mIfName:Ljava/lang/String;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNetd:Landroid/net/INetd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/INetd;Landroid/net/util/SharedLog;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    .line 48
    iput-object p3, p0, Landroid/net/ip/InterfaceController;->mLog:Landroid/net/util/SharedLog;

    .line 49
    return-void
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 191
    iget-object v0, p0, Landroid/net/ip/InterfaceController;->mLog:Landroid/net/util/SharedLog;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private setEnableIPv6(Z)Z
    .registers 6

    .line 87
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_8} :catch_a

    .line 91
    nop

    .line 92
    return v0

    .line 88
    :catch_a
    move-exception v1

    .line 89
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_13

    const-string p1, "enabling"

    goto :goto_15

    :cond_13
    const-string p1, "disabling"

    :goto_15
    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object v1, v2, v0

    const-string p1, "%s IPv6 failed: %s"

    invoke-direct {p0, p1, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return v3
.end method

.method private setInterfaceAddress(Landroid/net/LinkAddress;)Z
    .registers 7

    .line 52
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 53
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    iput p1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 56
    const-string p1, ""

    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 57
    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    :try_start_23
    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    invoke-interface {v2, v0}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2a
    .catch Landroid/os/ServiceSpecificException; {:try_start_23 .. :try_end_28} :catch_2a

    .line 64
    nop

    .line 65
    return v1

    .line 60
    :catch_2a
    move-exception v2

    .line 61
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    aput-object v4, v3, p1

    iget v0, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 61
    const-string v0, "Setting IPv4 address to %s/%d failed: %s"

    invoke-direct {p0, v0, v3}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return p1
.end method


# virtual methods
.method public addAddress(Landroid/net/LinkAddress;)Z
    .registers 3

    .line 148
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result p1

    return p1
.end method

.method public addAddress(Ljava/net/InetAddress;I)Z
    .registers 7

    .line 156
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    .line 160
    nop

    .line 161
    return v0

    .line 157
    :catch_e
    move-exception v1

    .line 158
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object v1, v2, p1

    const-string p1, "failed to add %s/%d: %s"

    invoke-direct {p0, p1, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return v3
.end method

.method public clearAllAddresses()Z
    .registers 4

    .line 182
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    .line 186
    nop

    .line 187
    return v0

    .line 183
    :catch_a
    move-exception v1

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Failed to clear addresses: %s"

    invoke-direct {p0, v1, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return v2
.end method

.method public clearIPv4Address()Z
    .registers 3

    .line 82
    new-instance v0, Landroid/net/LinkAddress;

    const-string v1, "0.0.0.0/0"

    invoke-direct {v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/ip/InterfaceController;->setInterfaceAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method public disableIPv6()Z
    .registers 2

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/ip/InterfaceController;->setEnableIPv6(Z)Z

    move-result v0

    return v0
.end method

.method public enableIPv6()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/InterfaceController;->setEnableIPv6(Z)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .registers 7

    .line 169
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    .line 173
    nop

    .line 174
    return v0

    .line 170
    :catch_e
    move-exception v1

    .line 171
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object v1, v2, p1

    const-string p1, "failed to remove %s/%d: %s"

    invoke-direct {p0, p1, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return v3
.end method

.method public setIPv4Address(Landroid/net/LinkAddress;)Z
    .registers 3

    .line 72
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_a

    .line 73
    const/4 p1, 0x0

    return p1

    .line 75
    :cond_a
    invoke-direct {p0, p1}, Landroid/net/ip/InterfaceController;->setInterfaceAddress(Landroid/net/LinkAddress;)Z

    move-result p1

    return p1
.end method

.method public setIPv6AddrGenModeIfSupported(I)Z
    .registers 7

    .line 131
    const-string v0, "Unable to set IPv6 addrgen mode: %s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v4, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_1c
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_b} :catch_c

    .line 140
    goto :goto_1b

    .line 135
    :catch_c
    move-exception p1

    .line 136
    iget v3, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v4, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v3, v4, :cond_1b

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return v2

    .line 141
    :cond_1b
    :goto_1b
    return v1

    .line 132
    :catch_1c
    move-exception p1

    .line 133
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return v2
.end method

.method public setIPv6PrivacyExtensions(Z)Z
    .registers 6

    .line 115
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_8} :catch_a

    .line 120
    nop

    .line 121
    return v0

    .line 116
    :catch_a
    move-exception v1

    .line 117
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    if-eqz p1, :cond_13

    const-string p1, "enabling"

    goto :goto_15

    :cond_13
    const-string p1, "disabling"

    :goto_15
    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object v1, v2, v0

    .line 117
    const-string p1, "error %s IPv6 privacy extensions: %s"

    invoke-direct {p0, p1, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return v3
.end method
