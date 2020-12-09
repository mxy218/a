.class Lcom/android/server/location/GnssConfiguration;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;,
        Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;
    }
.end annotation


# static fields
.field private static final CONFIG_A_GLONASS_POS_PROTOCOL_SELECT:Ljava/lang/String; = "A_GLONASS_POS_PROTOCOL_SELECT"

.field private static final CONFIG_C2K_HOST:Ljava/lang/String; = "C2K_HOST"

.field private static final CONFIG_C2K_PORT:Ljava/lang/String; = "C2K_PORT"

.field private static final CONFIG_ES_EXTENSION_SEC:Ljava/lang/String; = "ES_EXTENSION_SEC"

.field private static final CONFIG_GPS_LOCK:Ljava/lang/String; = "GPS_LOCK"

.field private static final CONFIG_LPP_PROFILE:Ljava/lang/String; = "LPP_PROFILE"

.field public static final CONFIG_NFW_PROXY_APPS:Ljava/lang/String; = "NFW_PROXY_APPS"

.field private static final CONFIG_SUPL_ES:Ljava/lang/String; = "SUPL_ES"

.field private static final CONFIG_SUPL_HOST:Ljava/lang/String; = "SUPL_HOST"

.field private static final CONFIG_SUPL_MODE:Ljava/lang/String; = "SUPL_MODE"

.field private static final CONFIG_SUPL_PORT:Ljava/lang/String; = "SUPL_PORT"

.field private static final CONFIG_SUPL_VER:Ljava/lang/String; = "SUPL_VER"

.field private static final CONFIG_USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL:Ljava/lang/String; = "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

.field private static final DEBUG:Z

.field private static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_EMERGENCY_MODE_EXTENSION_SECONDS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "GnssConfiguration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEsExtensionSec:I

.field private mProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-string v0, "GnssConfiguration"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    .line 102
    iput-object p1, p0, Lcom/android/server/location/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 103
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->isConfigSuplEsSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->isConfigGpsLockSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_gps_lock(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_emergency_supl_pdn(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_gnss_pos_protocol_select(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_lpp_profile(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_supl_es(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_supl_mode(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(I)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_supl_version(I)Z

    move-result p0

    return p0
.end method

.method private getIntConfig(Ljava/lang/String;I)I
    .registers 6

    .line 369
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 371
    return p2

    .line 374
    :cond_d
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_16

    return p1

    .line 375
    :catch_16
    move-exception v1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse config parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Using default value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssConfiguration"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return p2
.end method

.method private getRangeCheckedConfigEsExtensionSec()I
    .registers 6

    .line 355
    const/4 v0, 0x0

    const-string v1, "ES_EXTENSION_SEC"

    invoke-direct {p0, v1, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v1

    .line 356
    const-string v2, "ES_EXTENSION_SEC: "

    const-string v3, "GnssConfiguration"

    const/16 v4, 0x12c

    if-le v1, v4, :cond_2b

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " too high, reset to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move v0, v4

    goto :goto_46

    .line 360
    :cond_2b
    if-gez v1, :cond_45

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is negative, reset to zero."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_46

    .line 360
    :cond_45
    move v0, v1

    .line 365
    :goto_46
    return v0
.end method

.method private static isConfigEsExtensionSecSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 385
    iget p0, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static isConfigGpsLockSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 397
    iget p0, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static isConfigSuplEsSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2

    .line 391
    iget p0, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v0, 0x2

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V
    .registers 5

    .line 341
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1d

    .line 342
    const/4 v1, 0x0

    .line 344
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_18

    .line 345
    :try_start_d
    invoke-virtual {p1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 347
    :try_start_10
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 348
    nop

    .line 351
    goto :goto_29

    .line 347
    :catchall_15
    move-exception p1

    move-object v1, v2

    goto :goto_19

    :catchall_18
    move-exception p1

    :goto_19
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1d} :catch_1d

    .line 349
    :catch_1d
    move-exception p1

    .line 350
    sget-boolean p1, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz p1, :cond_29

    const-string p1, "GnssConfiguration"

    const-string v0, "Could not open GPS configuration file /etc/gps_debug.conf"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_29
    :goto_29
    return-void
.end method

.method private logConfigurations()V
    .registers 16

    .line 289
    nop

    .line 290
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v1

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplPort(I)I

    move-result v2

    .line 292
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getC2KPort(I)I

    move-result v4

    .line 294
    const-string v5, "SUPL_VER"

    invoke-direct {p0, v5, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v5

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplMode(I)I

    move-result v6

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplEs(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    move v7, v8

    goto :goto_26

    :cond_25
    move v7, v0

    .line 297
    :goto_26
    const-string v9, "LPP_PROFILE"

    invoke-direct {p0, v9, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v9

    .line 298
    const-string v10, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-direct {p0, v10, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v10

    .line 299
    const-string v11, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_3c

    move v11, v8

    goto :goto_3d

    :cond_3c
    move v11, v0

    .line 300
    :goto_3d
    const-string v8, "GPS_LOCK"

    invoke-direct {p0, v8, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v12

    .line 301
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getEsExtensionSec()I

    move-result v13

    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 302
    const-string v8, "NFW_PROXY_APPS"

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 289
    const/16 v0, 0x84

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Landroid/util/StatsLog;->write(ILjava/lang/String;ILjava/lang/String;IIIZIIZIILjava/lang/String;)I

    .line 303
    return-void
.end method

.method private static native native_get_gnss_configuration_version()Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;
.end method

.method private static native native_set_emergency_supl_pdn(I)Z
.end method

.method private static native native_set_es_extension_sec(I)Z
.end method

.method private static native native_set_gnss_pos_protocol_select(I)Z
.end method

.method private static native native_set_gps_lock(I)Z
.end method

.method private static native native_set_lpp_profile(I)Z
.end method

.method private static native native_set_satellite_blacklist([I[I)Z
.end method

.method private static native native_set_supl_es(I)Z
.end method

.method private static native native_set_supl_mode(I)Z
.end method

.method private static native native_set_supl_version(I)Z
.end method


# virtual methods
.method getC2KHost()Ljava/lang/String;
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "C2K_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getC2KPort(I)I
    .registers 3

    .line 150
    const-string v0, "C2K_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method getEsExtensionSec()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    return v0
.end method

.method getHalInterfaceVersion()Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;
    .registers 2

    .line 209
    invoke-static {}, Lcom/android/server/location/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    move-result-object v0

    return-object v0
.end method

.method getLppProfile()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "LPP_PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProperties()Ljava/util/Properties;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method getProxyApps()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "NFW_PROXY_APPS"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 185
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 188
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    array-length v1, v0

    if-nez v1, :cond_21

    .line 190
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 193
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    array-length v2, v0

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_33

    aget-object v4, v0, v3

    .line 195
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 198
    :cond_33
    return-object v1
.end method

.method getSuplEs(I)I
    .registers 3

    .line 166
    const-string v0, "SUPL_ES"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method getSuplHost()Ljava/lang/String;
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v1, "SUPL_HOST"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSuplMode(I)I
    .registers 3

    .line 158
    const-string v0, "SUPL_MODE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method getSuplPort(I)I
    .registers 3

    .line 134
    const-string v0, "SUPL_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method loadPropertiesFromCarrierConfig()V
    .registers 8

    .line 309
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 310
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 311
    if-nez v0, :cond_d

    .line 312
    return-void

    .line 315
    :cond_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 316
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 317
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 318
    :goto_1d
    const-string v1, "GnssConfiguration"

    if-nez v0, :cond_2e

    .line 319
    sget-boolean v0, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "SIM not ready, use default carrier config."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_2a
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 322
    :cond_2e
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    const-string v4, "gps."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 324
    nop

    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 328
    sget-boolean v5, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v5, :cond_7b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gps config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_7b
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_87

    .line 331
    iget-object v5, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_92

    .line 332
    :cond_87
    if-eqz v3, :cond_92

    .line 333
    iget-object v5, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    :cond_92
    :goto_92
    goto :goto_36

    .line 337
    :cond_93
    return-void
.end method

.method reloadGpsProperties()V
    .registers 7

    .line 221
    sget-boolean v0, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    const-string v1, "GnssConfiguration"

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset GPS properties, previous size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 224
    const-string/jumbo v0, "persist.sys.gps.lpp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 227
    iget-object v2, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v3, "LPP_PROFILE"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    :cond_37
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/location/GnssConfiguration;->getRangeCheckedConfigEsExtensionSec()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    .line 236
    invoke-direct {p0}, Lcom/android/server/location/GnssConfiguration;->logConfigurations()V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getHalInterfaceVersion()Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_d5

    .line 241
    invoke-static {v0}, Lcom/android/server/location/GnssConfiguration;->isConfigEsExtensionSecSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget v2, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    .line 242
    invoke-static {v2}, Lcom/android/server/location/GnssConfiguration;->native_set_es_extension_sec(I)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set ES_EXTENSION_SEC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6f
    new-instance v2, Lcom/android/server/location/GnssConfiguration$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/GnssConfiguration$1;-><init>(Lcom/android/server/location/GnssConfiguration;Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)V

    .line 267
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    if-eqz v4, :cond_d4

    .line 272
    :try_start_96
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;

    invoke-interface {v2, v5}, Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;->set(I)Z

    move-result v2

    .line 274
    if-nez v2, :cond_be

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to set "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_be} :catch_bf

    .line 279
    :cond_be
    goto :goto_d4

    .line 277
    :catch_bf
    move-exception v2

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse propertyName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_d4
    :goto_d4
    goto :goto_7c

    .line 282
    :cond_d5
    sget-boolean v0, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v0, :cond_df

    .line 283
    const-string v0, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 282
    :cond_df
    nop

    .line 286
    :goto_e0
    return-void
.end method

.method setSatelliteBlacklist([I[I)V
    .registers 3

    .line 205
    invoke-static {p1, p2}, Lcom/android/server/location/GnssConfiguration;->native_set_satellite_blacklist([I[I)Z

    .line 206
    return-void
.end method
