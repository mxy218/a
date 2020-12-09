.class public Lcom/android/server/net/NetworkPolicyLogger;
.super Ljava/lang/Object;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyLogger$Data;,
        Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
    }
.end annotation


# static fields
.field private static final EVENT_APP_IDLE_STATE_CHANGED:I = 0x8

.field private static final EVENT_APP_IDLE_WL_CHANGED:I = 0xe

.field private static final EVENT_DEVICE_IDLE_MODE_ENABLED:I = 0x7

.field private static final EVENT_FIREWALL_CHAIN_ENABLED:I = 0xc

.field private static final EVENT_METEREDNESS_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_BLOCKED:I = 0x1

.field private static final EVENT_PAROLE_STATE_CHANGED:I = 0x9

.field private static final EVENT_POLICIES_CHANGED:I = 0x3

.field private static final EVENT_RESTRICT_BG_CHANGED:I = 0x6

.field private static final EVENT_TEMP_POWER_SAVE_WL_CHANGED:I = 0xa

.field private static final EVENT_TYPE_GENERIC:I = 0x0

.field private static final EVENT_UID_FIREWALL_RULE_CHANGED:I = 0xb

.field private static final EVENT_UID_STATE_CHANGED:I = 0x2

.field private static final EVENT_UPDATE_METERED_RESTRICTED_PKGS:I = 0xd

.field private static final EVENT_USER_STATE_REMOVED:I = 0x5

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MAX_LOG_SIZE:I

.field private static final MAX_NETWORK_BLOCKED_LOG_SIZE:I

.field static final NTWK_ALLOWED_DEFAULT:I = 0x6

.field static final NTWK_ALLOWED_NON_METERED:I = 0x1

.field static final NTWK_ALLOWED_SYSTEM:I = 0x7

.field static final NTWK_ALLOWED_TMP_WHITELIST:I = 0x4

.field static final NTWK_ALLOWED_WHITELIST:I = 0x3

.field static final NTWK_BLOCKED_BG_RESTRICT:I = 0x5

.field static final NTWK_BLOCKED_BLACKLIST:I = 0x2

.field static final NTWK_BLOCKED_ISOLATED:I = 0x8

.field static final NTWK_BLOCKED_POWER:I = 0x0

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"


# instance fields
.field private final mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field private final mLock:Ljava/lang/Object;

.field private final mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

.field private final mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 47
    const-string v0, "NetworkPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    .line 48
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/16 v1, 0x64

    const/16 v2, 0x190

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    sput v0, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    .line 53
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    sput v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_NETWORK_BLOCKED_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 82
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 83
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    sget v1, Lcom/android/server/net/NetworkPolicyLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getBlockedReason(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(III)Ljava/lang/String;
    .registers 3

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(III)Ljava/lang/String;
    .registers 3

    .line 44
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(IZ)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(IZ)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getUserRemovedLog(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(ZZ)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Z)Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(IZ)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(IZ)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Z)Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getParoleStateChanged(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(IZ)Ljava/lang/String;
    .registers 2

    .line 44
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppIdleChangedLog(IZ)Ljava/lang/String;
    .registers 4

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle state of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppIdleWlChangedLog(IZ)Ljava/lang/String;
    .registers 4

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle whitelist state of uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBlockedReason(I)Ljava/lang/String;
    .registers 1

    .line 227
    packed-switch p0, :pswitch_data_22

    .line 245
    :pswitch_3  #0x7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_8  #0x8
    const-string p0, "blocked by isolation"

    return-object p0

    .line 241
    :pswitch_b  #0x6
    const-string p0, "allowed by default"

    return-object p0

    .line 239
    :pswitch_e  #0x5
    const-string p0, "blocked when background is restricted"

    return-object p0

    .line 237
    :pswitch_11  #0x4
    const-string/jumbo p0, "temporary whitelisted on metered network"

    return-object p0

    .line 235
    :pswitch_15  #0x3
    const-string/jumbo p0, "whitelisted on metered network"

    return-object p0

    .line 233
    :pswitch_19  #0x2
    const-string p0, "blacklisted on metered network"

    return-object p0

    .line 231
    :pswitch_1c  #0x1
    const-string p0, "allowed on unmetered network"

    return-object p0

    .line 229
    :pswitch_1f  #0x0
    const-string p0, "blocked by power restrictions"

    return-object p0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_1c  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_3  #00000007
        :pswitch_8  #00000008
    .end packed-switch
.end method

.method private static getDeviceIdleModeEnabled(Z)Ljava/lang/String;
    .registers 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceIdleMode enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirewallChainEnabledLog(IZ)Ljava/lang/String;
    .registers 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firewall chain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " state: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirewallChainName(I)Ljava/lang/String;
    .registers 2

    .line 297
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    .line 307
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :cond_11
    const-string p0, "isolated"

    return-object p0

    .line 303
    :cond_14
    const-string/jumbo p0, "powersave"

    return-object p0

    .line 301
    :cond_18
    const-string/jumbo p0, "standby"

    return-object p0

    .line 299
    :cond_1c
    const-string p0, "dozable"

    return-object p0
.end method

.method private static getFirewallRuleName(I)Ljava/lang/String;
    .registers 2

    .line 312
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 320
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 318
    :cond_d
    const-string p0, "deny"

    return-object p0

    .line 316
    :cond_10
    const-string p0, "allow"

    return-object p0

    .line 314
    :cond_13
    const-string p0, "default"

    return-object p0
.end method

.method private static getMeterednessChangedLog(IZ)Ljava/lang/String;
    .registers 4

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Meteredness of netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " changed to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getParoleStateChanged(Z)Ljava/lang/String;
    .registers 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parole state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPolicyChangedLog(III)Ljava/lang/String;
    .registers 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " changed from "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    return-object p0
.end method

.method private static getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed restrictBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;
    .registers 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "temp-power-save whitelist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " changed to: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUidFirewallRuleChangedLog(III)Ljava/lang/String;
    .registers 5

    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallRuleName(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 288
    const-string p0, "Firewall rule changed: %d-%s-%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUserRemovedLog(I)Ljava/lang/String;
    .registers 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove state for u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method appIdleStateChanged(IZ)V
    .registers 6

    .line 146
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->appIdleStateChanged(IZ)V

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method appIdleWlChanged(IZ)V
    .registers 6

    .line 153
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->appIdleWlChanged(IZ)V

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method deviceIdleModeEnabled(Z)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->deviceIdleModeEnabled(Z)V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 207
    const-string v1, "mEventLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 209
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 210
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 213
    const-string v1, "mNetworkBlockedLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 215
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 218
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 219
    const-string v1, "mUidStateChangeLogs (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 221
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 222
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method event(Ljava/lang/String;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_c

    const-string v1, "NetworkPolicy"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method firewallChainEnabled(IZ)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->firewallChainEnabled(IZ)V

    .line 184
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method firewallRulesChanged(I[I[I)V
    .registers 7

    .line 188
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firewall rules changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; uids="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; rules="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    sget-boolean p2, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz p2, :cond_39

    const-string p2, "NetworkPolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_39
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p1
.end method

.method meteredRestrictedPkgsChanged(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metered restricted uids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_1d

    const-string v1, "NetworkPolicy"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1d
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->event(Ljava/lang/String;)V

    .line 201
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method meterednessChanged(IZ)V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->meterednessChanged(IZ)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method networkBlocked(II)V
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_24

    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyLogger;->getBlockedReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_24
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mNetworkBlockedBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->networkBlocked(II)V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method paroleStateChanged(Z)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getParoleStateChanged(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->paroleStateChanged(Z)V

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method removingUserState(I)V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->getUserRemovedLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->userRemoved(I)V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method restrictBackgroundChanged(ZZ)V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGD:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    .line 133
    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->restrictBackgroundChanged(ZZ)V

    .line 135
    monitor-exit v0

    .line 136
    return-void

    .line 135
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method tempPowerSaveWlChanged(IZ)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->tempPowerSaveWlChanged(IZ)V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method uidFirewallRuleChanged(III)V
    .registers 7

    .line 174
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidFirewallRuleChanged(III)V

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method uidPolicyChanged(III)V
    .registers 7

    .line 110
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "NetworkPolicy"

    invoke-static {p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_10
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mEventsBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidPolicyChanged(III)V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method uidStateChanged(IIJ)V
    .registers 9

    .line 95
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_3
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyLogger;->LOGV:Z

    if-eqz v1, :cond_28

    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with seq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_28
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger;->mUidStateChangeBuffer:Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->uidStateChanged(IIJ)V

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method
