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
    .param p1, "context"  # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    .line 102
    iput-object p1, p0, Lcom/android/server/location/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->isConfigSuplEsSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->isConfigGpsLockSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_gps_lock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_emergency_supl_pdn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_gnss_pos_protocol_select(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_lpp_profile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_supl_es(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_supl_mode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(I)Z
    .registers 2
    .param p0, "x0"  # I

    .line 50
    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->native_set_supl_version(I)Z

    move-result v0

    return v0
.end method

.method private getIntConfig(Ljava/lang/String;I)I
    .registers 7
    .param p1, "configParameter"  # Ljava/lang/String;
    .param p2, "defaultValue"  # I

    .line 366
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "valueString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 368
    return p2

    .line 371
    :cond_d
    :try_start_d
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_16

    return v1

    .line 372
    :catch_16
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse config parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Using default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GnssConfiguration"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return p2
.end method

.method private getRangeCheckedConfigEsExtensionSec()I
    .registers 6

    .line 352
    const-string v0, "ES_EXTENSION_SEC"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    .line 353
    .local v0, "emergencyExtensionSeconds":I
    const-string v1, "ES_EXTENSION_SEC: "

    const-string v2, "GnssConfiguration"

    const/16 v3, 0x12c

    if-le v0, v3, :cond_2c

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " too high, reset to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v0, 0x12c

    goto :goto_46

    .line 357
    :cond_2c
    if-gez v0, :cond_46

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is negative, reset to zero."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x0

    .line 362
    :cond_46
    :goto_46
    return v0
.end method

.method private static isConfigEsExtensionSecSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 3
    .param p0, "gnssConfiguartionIfaceVersion"  # Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    .line 382
    iget v0, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isConfigGpsLockSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 3
    .param p0, "gnssConfiguartionIfaceVersion"  # Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    .line 394
    iget v0, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isConfigSuplEsSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z
    .registers 3
    .param p0, "gnssConfiguartionIfaceVersion"  # Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    .line 388
    iget v0, p0, Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V
    .registers 5
    .param p1, "properties"  # Ljava/util/Properties;

    .line 338
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_1b

    .line 339
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 341
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 342
    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    .line 344
    :try_start_11
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    nop

    .line 348
    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "stream":Ljava/io/FileInputStream;
    goto :goto_27

    .line 344
    .restart local v0  # "file":Ljava/io/File;
    .restart local v1  # "stream":Ljava/io/FileInputStream;
    :catchall_16
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/location/GnssConfiguration;
    .end local p1  # "properties":Ljava/util/Properties;
    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1b

    .line 346
    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "stream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/location/GnssConfiguration;
    .restart local p1  # "properties":Ljava/util/Properties;
    :catch_1b
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "GnssConfiguration"

    const-string v2, "Could not open GPS configuration file /etc/gps_debug.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0  # "e":Ljava/io/IOException;
    :cond_27
    :goto_27
    return-void
.end method

.method private logConfigurations()V
    .registers 16

    .line 286
    nop

    .line 287
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getSuplHost()Ljava/lang/String;

    move-result-object v1

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplPort(I)I

    move-result v2

    .line 289
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getC2KHost()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getC2KPort(I)I

    move-result v4

    .line 291
    const-string v5, "SUPL_VER"

    invoke-direct {p0, v5, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v5

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplMode(I)I

    move-result v6

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssConfiguration;->getSuplEs(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_25

    move v7, v8

    goto :goto_26

    :cond_25
    move v7, v0

    .line 294
    :goto_26
    const-string v9, "LPP_PROFILE"

    invoke-direct {p0, v9, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v9

    .line 295
    const-string v10, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-direct {p0, v10, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v10

    .line 296
    const-string v11, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_3c

    move v11, v8

    goto :goto_3d

    :cond_3c
    move v11, v0

    .line 297
    :goto_3d
    const-string v8, "GPS_LOCK"

    invoke-direct {p0, v8, v0}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v12

    .line 298
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->getEsExtensionSec()I

    move-result v13

    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    .line 299
    const-string v8, "NFW_PROXY_APPS"

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 286
    const/16 v0, 0x84

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    invoke-static/range {v0 .. v13}, Landroid/util/StatsLog;->write(ILjava/lang/String;ILjava/lang/String;IIIZIIZIILjava/lang/String;)I

    .line 300
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
    .param p1, "defaultPort"  # I

    .line 150
    const-string v0, "C2K_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getEsExtensionSec()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    return v0
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
    .registers 7
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
    .local v0, "proxyAppsStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 185
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    .line 188
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "proxyAppsArray":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_21

    .line 190
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v2

    .line 193
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v2, "proxyApps":Ljava/util/ArrayList;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v3, :cond_33

    aget-object v5, v1, v4

    .line 195
    .local v5, "proxyApp":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v5  # "proxyApp":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 198
    :cond_33
    return-object v2
.end method

.method getSuplEs(I)I
    .registers 3
    .param p1, "defaulSuplEs"  # I

    .line 166
    const-string v0, "SUPL_ES"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
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
    .param p1, "defaultMode"  # I

    .line 158
    const-string v0, "SUPL_MODE"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getSuplPort(I)I
    .registers 3
    .param p1, "defaultPort"  # I

    .line 134
    const-string v0, "SUPL_PORT"

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GnssConfiguration;->getIntConfig(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadPropertiesFromCarrierConfig()V
    .registers 11

    .line 306
    iget-object v0, p0, Lcom/android/server/location/GnssConfiguration;->mContext:Landroid/content/Context;

    .line 307
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 308
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_d

    .line 309
    return-void

    .line 312
    :cond_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 313
    .local v1, "ddSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 314
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 315
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_1d
    const-string v3, "GnssConfiguration"

    if-nez v2, :cond_2e

    .line 316
    sget-boolean v4, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v4, :cond_2a

    const-string v4, "SIM not ready, use default carrier config."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_2a
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 319
    :cond_2e
    invoke-virtual {v2}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 320
    .local v5, "configKey":Ljava/lang/String;
    const-string v6, "gps."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 321
    nop

    .line 322
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 323
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 325
    .local v7, "value":Ljava/lang/Object;
    sget-boolean v8, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v8, :cond_7b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gps config: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_7b
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_88

    .line 328
    iget-object v8, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_93

    .line 329
    :cond_88
    if-eqz v7, :cond_93

    .line 330
    iget-object v8, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    .end local v5  # "configKey":Ljava/lang/String;
    .end local v6  # "key":Ljava/lang/String;
    .end local v7  # "value":Ljava/lang/Object;
    :cond_93
    :goto_93
    goto :goto_36

    .line 334
    :cond_94
    return-void
.end method

.method reloadGpsProperties()V
    .registers 13

    .line 217
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

    .line 218
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromCarrierConfig()V

    .line 220
    const-string/jumbo v0, "persist.sys.gps.lpp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "lpp_prof":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 223
    iget-object v2, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    const-string v3, "LPP_PROFILE"

    invoke-virtual {v2, v3, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    :cond_37
    iget-object v2, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssConfiguration;->loadPropertiesFromGpsDebugConfig(Ljava/util/Properties;)V

    .line 230
    invoke-direct {p0}, Lcom/android/server/location/GnssConfiguration;->getRangeCheckedConfigEsExtensionSec()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    .line 232
    invoke-direct {p0}, Lcom/android/server/location/GnssConfiguration;->logConfigurations()V

    .line 235
    invoke-static {}, Lcom/android/server/location/GnssConfiguration;->native_get_gnss_configuration_version()Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    move-result-object v2

    .line 236
    .local v2, "gnssConfigurationIfaceVersion":Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;
    if-eqz v2, :cond_d6

    .line 238
    invoke-static {v2}, Lcom/android/server/location/GnssConfiguration;->isConfigEsExtensionSecSupported(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v3

    if-eqz v3, :cond_6f

    iget v3, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    .line 239
    invoke-static {v3}, Lcom/android/server/location/GnssConfiguration;->native_set_es_extension_sec(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set ES_EXTENSION_SEC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/location/GnssConfiguration;->mEsExtensionSec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_6f
    new-instance v3, Lcom/android/server/location/GnssConfiguration$1;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssConfiguration$1;-><init>(Lcom/android/server/location/GnssConfiguration;Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)V

    .line 264
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 265
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 266
    .local v6, "propertyName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/GnssConfiguration;->mProperties:Ljava/util/Properties;

    invoke-virtual {v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "propertyValueString":Ljava/lang/String;
    if-eqz v7, :cond_d4

    .line 269
    :try_start_96
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 270
    .local v8, "propertyValueInt":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;

    invoke-interface {v9, v8}, Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;->set(I)Z

    move-result v9

    .line 271
    .local v9, "result":Z
    if-nez v9, :cond_be

    .line 272
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_be} :catch_bf

    .line 276
    .end local v8  # "propertyValueInt":I
    .end local v9  # "result":Z
    :cond_be
    goto :goto_d4

    .line 274
    :catch_bf
    move-exception v8

    .line 275
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to parse propertyName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v5  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;>;"
    .end local v6  # "propertyName":Ljava/lang/String;
    .end local v7  # "propertyValueString":Ljava/lang/String;
    .end local v8  # "e":Ljava/lang/NumberFormatException;
    :cond_d4
    :goto_d4
    goto :goto_7c

    .line 264
    .end local v3  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;>;"
    :cond_d5
    goto :goto_e0

    .line 279
    :cond_d6
    sget-boolean v3, Lcom/android/server/location/GnssConfiguration;->DEBUG:Z

    if-eqz v3, :cond_e0

    .line 280
    const-string v3, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 279
    :cond_e0
    :goto_e0
    nop

    .line 283
    :goto_e1
    return-void
.end method

.method setSatelliteBlacklist([I[I)V
    .registers 3
    .param p1, "constellations"  # [I
    .param p2, "svids"  # [I

    .line 205
    invoke-static {p1, p2}, Lcom/android/server/location/GnssConfiguration;->native_set_satellite_blacklist([I[I)Z

    .line 206
    return-void
.end method
