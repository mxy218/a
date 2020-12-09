.class public Landroid/net/shared/ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x8ca0


# instance fields
.field public mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mDisplayName:Ljava/lang/String;

.field public mEnableIPv4:Z

.field public mEnableIPv6:Z

.field public mIPv6AddrGenMode:I

.field public mInitialConfig:Landroid/net/shared/InitialConfiguration;

.field public mNetwork:Landroid/net/Network;

.field public mProvisioningTimeoutMs:I

.field public mRequestedPreDhcpActionMs:I

.field public mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field public mUsingIpReachabilityMonitor:Z

.field public mUsingMultinetworkPolicyTracker:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 196
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 197
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 198
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 203
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 206
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/net/shared/ProvisioningConfiguration;)V
    .registers 4

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 196
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 197
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 198
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 203
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 206
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 211
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 212
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 213
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 214
    iget-boolean v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 215
    iget v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 216
    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v1}, Landroid/net/shared/InitialConfiguration;->copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 217
    iget-object v1, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_3a

    .line 218
    goto :goto_3f

    .line 219
    :cond_3a
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_3f
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 220
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 221
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 222
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 223
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 224
    iget-object p1, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public static fromStableParcelable(Landroid/net/ProvisioningConfigurationParcelable;)Landroid/net/shared/ProvisioningConfiguration;
    .registers 4

    .line 254
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 255
    :cond_4
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    .line 256
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    .line 257
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    .line 258
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 259
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 260
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 261
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 262
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v2, :cond_2a

    .line 263
    goto :goto_31

    .line 264
    :cond_2a
    new-instance v0, Landroid/net/StaticIpConfiguration;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v2}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_31
    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 265
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 266
    iget v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    iput v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 267
    iget v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    iput v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 268
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 269
    iget-object p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    iput-object p0, v1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 270
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 293
    instance-of v0, p1, Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 294
    :cond_6
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration;

    .line 295
    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    if-ne v0, v2, :cond_66

    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    if-ne v0, v2, :cond_66

    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    if-ne v0, v2, :cond_66

    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-ne v0, v2, :cond_66

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-ne v0, v2, :cond_66

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 300
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 301
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 302
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-ne v0, v2, :cond_66

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    if-ne v0, v2, :cond_66

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 305
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 306
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    const/4 v1, 0x1

    goto :goto_67

    :cond_66
    nop

    .line 295
    :goto_67
    return v1
.end method

.method public isValid()Z
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/shared/InitialConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;
    .registers 4

    .line 231
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    .line 232
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 233
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 234
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 235
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 236
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 237
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    move-object v1, v2

    goto :goto_24

    :cond_20
    invoke-virtual {v1}, Landroid/net/shared/InitialConfiguration;->toStableParcelable()Landroid/net/InitialConfigurationParcelable;

    move-result-object v1

    :goto_24
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 238
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_2b

    .line 239
    goto :goto_30

    .line 240
    :cond_2b
    new-instance v2, Landroid/net/StaticIpConfiguration;

    invoke-direct {v2, v1}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_30
    iput-object v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 241
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 242
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 243
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 244
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 245
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 246
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 275
    new-instance v0, Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    const-string/jumbo v3, "}"

    invoke-direct {v0, v2, v1, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnableIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUsingMultinetworkPolicyTracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUsingIpReachabilityMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequestedPreDhcpActionMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitialConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStaticIpConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mApfCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProvisioningTimeoutMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIPv6AddrGenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    return-object v0
.end method
