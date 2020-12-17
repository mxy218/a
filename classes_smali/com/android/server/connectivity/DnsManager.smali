.class public Lcom/android/server/connectivity/DnsManager;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;,
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;
    }
.end annotation


# static fields
.field private static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "CN"

.field private static final DEFAULT_DNS_CN:Ljava/lang/String; = "114.114.114.114"

.field private static final DEFAULT_DNS_GOOGLE:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field private static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field private static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field private static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field private static final PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDnsResolver:Landroid/net/IDnsResolver;

.field private mMaxSamples:I

.field private mMinSamples:I

.field private mNumDnsEntries:I

.field private final mPrivateDnsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/shared/PrivateDnsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateDnsMode:Ljava/lang/String;

.field private mPrivateDnsSpecifier:Ljava/lang/String;

.field private final mPrivateDnsValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleValidity:I

.field private mSuccessThreshold:I

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 122
    const-class v0, Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/net/shared/PrivateDnsConfig;

    invoke-direct {v0}, Landroid/net/shared/PrivateDnsConfig;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IDnsResolver;Lcom/android/server/connectivity/MockableSystemProperties;)V
    .registers 6
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "dnsResolver"  # Landroid/net/IDnsResolver;
    .param p3, "sp"  # Lcom/android/server/connectivity/MockableSystemProperties;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    .line 265
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 266
    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 267
    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    .line 271
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 275
    return-void
.end method

.method private flushVmDnsCache()V
    .registers 6

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 453
    .local v1, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    .line 455
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getCountryCode()Ljava/lang/String;
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 327
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mContext:Landroid/content/Context;

    .line 328
    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 329
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 330
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 333
    .end local v1  # "detector":Landroid/location/CountryDetector;
    :cond_26
    sget-object v1, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current country code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v0
.end method

.method private static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "domains"  # Ljava/lang/String;

    .line 515
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_10

    :cond_a
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method private getIntSetting(Ljava/lang/String;I)I
    .registers 4
    .param p1, "which"  # Ljava/lang/String;
    .param p2, "dflt"  # I

    .line 490
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPrivateDnsConfig(Landroid/content/ContentResolver;)Landroid/net/shared/PrivateDnsConfig;
    .registers 6
    .param p0, "cr"  # Landroid/content/ContentResolver;

    .line 139
    invoke-static {p0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 143
    .local v1, "useTls":Z
    :goto_16
    const-string v2, "hostname"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 144
    const-string/jumbo v2, "private_dns_specifier"

    invoke-static {p0, v2}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "specifier":Ljava/lang/String;
    new-instance v3, Landroid/net/shared/PrivateDnsConfig;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/net/shared/PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    return-object v3

    .line 148
    .end local v2  # "specifier":Ljava/lang/String;
    :cond_2c
    new-instance v2, Landroid/net/shared/PrivateDnsConfig;

    invoke-direct {v2, v1}, Landroid/net/shared/PrivateDnsConfig;-><init>(Z)V

    return-object v2
.end method

.method private static getPrivateDnsMode(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"  # Landroid/content/ContentResolver;

    .line 504
    const-string/jumbo v0, "private_dns_mode"

    invoke-static {p0, v0}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {p0, v1}, Lcom/android/server/connectivity/DnsManager;->getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string/jumbo v0, "off"

    .line 507
    :cond_1d
    return-object v0
.end method

.method public static getPrivateDnsSettingsUris()[Landroid/net/Uri;
    .registers 3

    .line 152
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    .line 153
    const-string/jumbo v1, "private_dns_default_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "private_dns_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "private_dns_specifier"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 152
    return-object v0
.end method

.method private static getStringSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "cr"  # Landroid/content/ContentResolver;
    .param p1, "which"  # Ljava/lang/String;

    .line 511
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setDnsConfigurationForNetwork$0(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .registers 3
    .param p0, "lp"  # Landroid/net/LinkProperties;
    .param p1, "ip"  # Ljava/net/InetAddress;

    .line 367
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method private setNetDnsProperty(ILjava/lang/String;)V
    .registers 7
    .param p1, "which"  # I
    .param p2, "value"  # Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "net.dns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "key":Ljava/lang/String;
    :try_start_12
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    .line 500
    goto :goto_20

    .line 498
    :catch_18
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const-string v3, "Error setting unsupported net.dns property: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method private updateParametersSettings()V
    .registers 7

    .line 460
    const/16 v0, 0x708

    const-string v1, "dns_resolver_sample_validity_seconds"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 463
    iget v1, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    const-string v2, ", using default="

    if-ltz v1, :cond_15

    const v3, 0xffff

    if-le v1, v3, :cond_35

    .line 464
    :cond_15
    sget-object v1, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sampleValidity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    .line 469
    :cond_35
    const/16 v0, 0x19

    const-string v1, "dns_resolver_success_threshold_percent"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 472
    iget v1, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    if-ltz v1, :cond_47

    const/16 v3, 0x64

    if-le v1, v3, :cond_67

    .line 473
    :cond_47
    sget-object v1, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid successThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    .line 478
    :cond_67
    const/16 v0, 0x8

    const-string v1, "dns_resolver_min_samples"

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 479
    const/16 v1, 0x40

    const-string v2, "dns_resolver_max_samples"

    invoke-direct {p0, v2, v1}, Lcom/android/server/connectivity/DnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 480
    iget v2, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    if-ltz v2, :cond_85

    iget v3, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    if-gt v2, v3, :cond_85

    if-le v3, v1, :cond_be

    .line 481
    :cond_85
    sget-object v2, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample count (min, max)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), using default=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    .line 485
    iput v1, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    .line 487
    :cond_be
    return-void
.end method


# virtual methods
.method public getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig(Landroid/content/ContentResolver;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    return-object v0
.end method

.method public removeNetwork(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"  # Landroid/net/Network;

    .line 282
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public setDefaultDnsSystemProperties(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p1, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .line 431
    .local v0, "last":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 432
    .local v2, "dns":Ljava/net/InetAddress;
    add-int/lit8 v0, v0, 0x1

    .line 433
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 434
    .end local v2  # "dns":Ljava/net/InetAddress;
    goto :goto_5

    .line 435
    :cond_1b
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_1d
    iget v2, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    if-gt v1, v2, :cond_29

    .line 436
    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/DnsManager;->setNetDnsProperty(ILjava/lang/String;)V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 438
    .end local v1  # "i":I
    :cond_29
    iput v0, p0, Lcom/android/server/connectivity/DnsManager;->mNumDnsEntries:I

    .line 439
    return-void
.end method

.method public setDnsConfigurationForNetwork(ILandroid/net/LinkProperties;Z)V
    .registers 14
    .param p1, "netId"  # I
    .param p2, "lp"  # Landroid/net/LinkProperties;
    .param p3, "isDefaultNetwork"  # Z

    .line 341
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager;->updateParametersSettings()V

    .line 342
    new-instance v0, Landroid/net/ResolverParamsParcel;

    invoke-direct {v0}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 351
    .local v0, "paramsParcel":Landroid/net/ResolverParamsParcel;
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/shared/PrivateDnsConfig;

    .line 354
    .local v1, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v2, v1, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 355
    .local v2, "useTls":Z
    invoke-virtual {v1}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v3

    .line 356
    .local v3, "strictMode":Z
    iput p1, v0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 357
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSampleValidity:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 358
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mSuccessThreshold:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 359
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMinSamples:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 360
    iget v4, p0, Lcom/android/server/connectivity/DnsManager;->mMaxSamples:I

    iput v4, v0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 361
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 362
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/connectivity/DnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 363
    if-eqz v3, :cond_47

    iget-object v4, v1, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    goto :goto_49

    :cond_47
    const-string v4, ""

    :goto_49
    iput-object v4, v0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    .line 364
    nop

    .line 365
    const/4 v4, 0x0

    if-eqz v3, :cond_6d

    iget-object v5, v1, Landroid/net/shared/PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    .line 366
    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;

    invoke-direct {v6, p2}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$Z_oEyRSp0wthIcVTcqKDoAJRe6Q;-><init>(Landroid/net/LinkProperties;)V

    .line 367
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 368
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 365
    invoke-static {v5}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_74

    .line 369
    :cond_6d
    if-eqz v2, :cond_72

    iget-object v5, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    goto :goto_74

    .line 370
    :cond_72
    new-array v5, v4, [Ljava/lang/String;

    :goto_74
    iput-object v5, v0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 371
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Landroid/net/ResolverParamsParcel;->tlsFingerprints:[Ljava/lang/String;

    .line 374
    if-eqz v2, :cond_ab

    .line 375
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 376
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>(Lcom/android/server/connectivity/DnsManager$1;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_97
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    iget-object v6, v0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    iget-object v7, v0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    .line 381
    :cond_ab
    iget-object v5, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_b4
    const-string/jumbo v5, "vendor.meizu.sys.cts_state"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 387
    .local v5, "mCtsRunning":Z
    if-nez v5, :cond_116

    .line 389
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, "countryCode":Ljava/lang/String;
    sget-object v7, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDnsConfigurationForNetwork dns is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v7, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "CN"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 393
    const-string v8, "114.114.114.114"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_108

    .line 394
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_108

    .line 397
    :cond_fd
    const-string v8, "8.8.8.8"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_108

    .line 398
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_108
    :goto_108
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 406
    .end local v6  # "countryCode":Ljava/lang/String;
    .end local v7  # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_116
    sget-object v6, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Landroid/net/ResolverParamsParcel;->netId:I

    .line 407
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x1

    iget-object v8, v0, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    iget-object v8, v0, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 408
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    iget v8, v0, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x4

    iget v8, v0, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 409
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x5

    iget v8, v0, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x6

    iget v8, v0, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x7

    iget v8, v0, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0x8

    iget v8, v0, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 411
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0x9

    iget-object v8, v0, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    aput-object v8, v7, v4

    const/16 v4, 0xa

    iget-object v8, v0, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 412
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 406
    const-string/jumbo v4, "setDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_187
    iget-object v4, p0, Lcom/android/server/connectivity/DnsManager;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-interface {v4, v0}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    :try_end_18c
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_18c} :catch_19a
    .catch Landroid/os/ServiceSpecificException; {:try_start_187 .. :try_end_18c} :catch_19a

    .line 419
    nop

    .line 425
    if-eqz p3, :cond_196

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 426
    :cond_196
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager;->flushVmDnsCache()V

    .line 427
    return-void

    .line 416
    :catch_19a
    move-exception v4

    .line 417
    .local v4, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error setting DNS configuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public updatePrivateDns(Landroid/net/Network;Landroid/net/shared/PrivateDnsConfig;)Landroid/net/shared/PrivateDnsConfig;
    .registers 6
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "cfg"  # Landroid/net/shared/PrivateDnsConfig;

    .line 287
    sget-object v0, Lcom/android/server/connectivity/DnsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePrivateDns("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p2, :cond_35

    .line 289
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    goto :goto_43

    .line 290
    :cond_35
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 288
    :goto_43
    return-object v0
.end method

.method public updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V
    .registers 11
    .param p1, "netId"  # I
    .param p2, "lp"  # Landroid/net/LinkProperties;

    .line 296
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/connectivity/DnsManager;->PRIVATE_DNS_OFF:Landroid/net/shared/PrivateDnsConfig;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/shared/PrivateDnsConfig;

    .line 299
    .local v0, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v1, v0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    .line 301
    .local v1, "useTls":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_20

    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    goto :goto_21

    :cond_20
    move-object v3, v2

    .line 302
    .local v3, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    :goto_21
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2d

    invoke-static {v3}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z

    move-result v6

    if-eqz v6, :cond_2d

    move v6, v4

    goto :goto_2e

    :cond_2d
    move v6, v5

    .line 303
    .local v6, "validated":Z
    :goto_2e
    invoke-virtual {v0}, Landroid/net/shared/PrivateDnsConfig;->inStrictMode()Z

    move-result v7

    .line 304
    .local v7, "strictMode":Z
    if-eqz v7, :cond_36

    iget-object v2, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    .line 305
    .local v2, "tlsHostname":Ljava/lang/String;
    :cond_36
    if-nez v7, :cond_3c

    if-eqz v6, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v5

    .line 307
    .local v4, "usingPrivateDns":Z
    :cond_3c
    :goto_3c
    invoke-virtual {p2, v4}, Landroid/net/LinkProperties;->setUsePrivateDns(Z)V

    .line 308
    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->setPrivateDnsServerName(Ljava/lang/String;)V

    .line 309
    if-eqz v4, :cond_4a

    if-eqz v3, :cond_4a

    .line 310
    invoke-static {v3, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    goto :goto_4f

    .line 312
    :cond_4a
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p2, v5}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 314
    :goto_4f
    return-void
.end method

.method public updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .registers 4
    .param p1, "update"  # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager;->mPrivateDnsValidationMap:Ljava/util/Map;

    iget v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    .line 318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 319
    .local v0, "statuses":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    if-nez v0, :cond_11

    return-void

    .line 320
    :cond_11
    invoke-static {v0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 321
    return-void
.end method
