.class public Lcom/android/server/connectivity/tethering/TetheringConfiguration;
.super Ljava/lang/Object;
.source "TetheringConfiguration.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final LEGACY_DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static fstInterfaceName:Ljava/lang/String;


# instance fields
.field private final DEFAULT_IPV4_DNS:[Ljava/lang/String;

.field public final chooseUpstreamAutomatically:Z

.field public final defaultIPv4DNS:[Ljava/lang/String;

.field public final enableLegacyDhcpServer:Z

.field public final isDunRequired:Z

.field public final legacyDhcpRanges:[Ljava/lang/String;

.field public final preferredUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final provisioningApp:[Ljava/lang/String;

.field public final provisioningAppNoUi:Ljava/lang/String;

.field public final provisioningCheckPeriod:I

.field public final subId:I

.field public final tetherableBluetoothRegexs:[Ljava/lang/String;

.field public final tetherableUsbRegexs:[Ljava/lang/String;

.field public final tetherableWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 68
    const-class v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->TAG:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 78
    const-string v1, "192.168.42.2"

    const-string v2, "192.168.42.254"

    const-string v3, "192.168.43.2"

    const-string v4, "192.168.43.254"

    const-string v5, "192.168.44.2"

    const-string v6, "192.168.44.254"

    const-string v7, "192.168.45.2"

    const-string v8, "192.168.45.254"

    const-string v9, "192.168.46.2"

    const-string v10, "192.168.46.254"

    const-string v11, "192.168.47.2"

    const-string v12, "192.168.47.254"

    const-string v13, "192.168.48.2"

    const-string v14, "192.168.48.254"

    const-string v15, "192.168.49.2"

    const-string v16, "192.168.49.254"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->LEGACY_DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    .line 102
    const-string v0, "bond0"

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->fstInterfaceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/util/SharedLog;I)V
    .registers 9
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "log"  # Landroid/net/util/SharedLog;
    .param p3, "id"  # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "8.8.4.4"

    const-string v1, "8.8.8.8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DEFAULT_IPV4_DNS:[Ljava/lang/String;

    .line 105
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    .line 107
    .local v0, "configLog":Landroid/net/util/SharedLog;
    iput p3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    .line 108
    iget v1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResources(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070069

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    .line 114
    const/4 v2, 0x0

    const-string/jumbo v3, "persist.vendor.fst.softap.en"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_38

    .line 115
    new-array v3, v4, [Ljava/lang/String;

    sget-object v4, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->fstInterfaceName:Ljava/lang/String;

    aput-object v4, v3, v2

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    goto :goto_41

    .line 117
    :cond_38
    const v3, 0x107006a

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 119
    :goto_41
    const v3, 0x1070066

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 121
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    .line 123
    const v3, 0x11100e1

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceBoolean(Landroid/content/res/Resources;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    .line 124
    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getUpstreamIfaceTypes(Landroid/content/res/Resources;Z)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 126
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getLegacyDhcpRanges(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DEFAULT_IPV4_DNS:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getEnableLegacyDhcpServer(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    .line 130
    const v3, 0x1070048

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    .line 131
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getProvisioningAppNoUi(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    .line 132
    const v3, 0x10e007c

    invoke-static {v1, v3, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceInteger(Landroid/content/res/Resources;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningCheckPeriod:I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private static appendIfNotPresent(Ljava/util/ArrayList;I)V
    .registers 3
    .param p1, "value"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 370
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 371
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    return-void
.end method

.method public static checkDunRequired(Landroid/content/Context;)Z
    .registers 3
    .param p0, "ctx"  # Landroid/content/Context;

    .line 246
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 247
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static varargs containsOneOf(Ljava/util/ArrayList;[Ljava/lang/Integer;)Z
    .registers 7
    .param p1, "values"  # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    .line 375
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 376
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    .line 375
    .end local v3  # "value":Ljava/lang/Integer;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 378
    :cond_12
    return v1
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "strarray"  # [Ljava/lang/String;

    .line 361
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "label"  # Ljava/lang/String;
    .param p2, "values"  # [Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    if-eqz p2, :cond_29

    .line 212
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 213
    .local v0, "sj":Ljava/util/StringJoiner;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, p2, v2

    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .end local v3  # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 214
    :cond_21
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    .end local v0  # "sj":Ljava/util/StringJoiner;
    goto :goto_2f

    .line 216
    :cond_29
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    :goto_2f
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 220
    return-void
.end method

.method private static getEnableLegacyDhcpServer(Landroid/content/Context;)Z
    .registers 4
    .param p0, "ctx"  # Landroid/content/Context;

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 343
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string/jumbo v2, "tether_enable_legacy_dhcp_server"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 344
    .local v2, "intVal":I
    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static getFstInterfaceName()Ljava/lang/String;
    .registers 1

    .line 144
    sget-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->fstInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method private static getLegacyDhcpRanges(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 3
    .param p0, "res"  # Landroid/content/res/Resources;

    .line 301
    const v0, 0x1070067

    invoke-static {p0, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "fromResource":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_10

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_10

    .line 303
    return-object v0

    .line 305
    :cond_10
    sget-object v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->LEGACY_DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getProvisioningAppNoUi(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3
    .param p0, "res"  # Landroid/content/res/Resources;

    .line 310
    const v0, 0x104018d

    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 311
    :catch_8
    move-exception v0

    .line 312
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, ""

    return-object v1
.end method

.method private static getResourceBoolean(Landroid/content/res/Resources;I)Z
    .registers 4
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "resId"  # I

    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 319
    :catch_5
    move-exception v0

    .line 320
    .local v0, "e404":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private static getResourceInteger(Landroid/content/res/Resources;II)I
    .registers 4
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "resId"  # I
    .param p2, "defaultValue"  # I

    .line 335
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 336
    :catch_5
    move-exception v0

    .line 337
    .local v0, "e404":Landroid/content/res/Resources$NotFoundException;
    return p2
.end method

.method private static getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .registers 4
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "resId"  # I

    .line 326
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "strArray":[Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_a

    :cond_8
    sget-object v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-object v1

    .line 328
    .end local v0  # "strArray":[Ljava/lang/String;
    :catch_b
    move-exception v0

    .line 329
    .local v0, "e404":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1
.end method

.method private getResources(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 4
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "subId"  # I

    .line 348
    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourcesForSubIdWrapper(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 351
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static getUpstreamIfaceTypes(Landroid/content/res/Resources;Z)Ljava/util/Collection;
    .registers 11
    .param p0, "res"  # Landroid/content/res/Resources;
    .param p1, "dunRequired"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Z)",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 251
    const v0, 0x1070068

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 252
    .local v0, "ifaceTypes":[I
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v1, "upstreamIfaceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v5, v3

    :goto_14
    const/4 v6, 0x4

    const/4 v7, 0x5

    if-ge v5, v2, :cond_31

    aget v8, v0, v5

    .line 254
    .local v8, "i":I
    if-eqz v8, :cond_24

    if-eq v8, v6, :cond_21

    if-eq v8, v7, :cond_24

    goto :goto_27

    .line 260
    :cond_21
    if-nez p1, :cond_27

    goto :goto_2e

    .line 257
    :cond_24
    if-eqz p1, :cond_27

    goto :goto_2e

    .line 263
    :cond_27
    :goto_27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v8  # "i":I
    :goto_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 270
    :cond_31
    if-eqz p1, :cond_37

    .line 271
    invoke-static {v1, v6}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->appendIfNotPresent(Ljava/util/ArrayList;I)V

    goto :goto_53

    .line 280
    :cond_37
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->containsOneOf(Ljava/util/ArrayList;[Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 281
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_53
    :goto_53
    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->prependIfNotPresent(Ljava/util/ArrayList;I)V

    .line 290
    return-object v1
.end method

.method private static makeString([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "strings"  # [Ljava/lang/String;

    .line 223
    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    .line 224
    :cond_6
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    const-string v2, "["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 225
    .local v0, "sj":Ljava/util/StringJoiner;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .end local v3  # "s":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 226
    :cond_1d
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "iface"  # Ljava/lang/String;
    .param p1, "regexs"  # [Ljava/lang/String;

    .line 294
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 295
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x1

    return v0

    .line 294
    .end local v3  # "regex":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 297
    :cond_12
    return v1
.end method

.method private static preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 230
    .local p0, "upstreamTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 232
    .local v0, "upstreamNames":[Ljava/lang/String;
    if-eqz p0, :cond_28

    .line 233
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 236
    .local v3, "netType":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 237
    nop

    .end local v3  # "netType":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    .line 238
    goto :goto_e

    .line 241
    .end local v1  # "i":I
    :cond_28
    return-object v0
.end method

.method private static prependIfNotPresent(Ljava/util/ArrayList;I)V
    .registers 4
    .param p1, "value"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 365
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 366
    :cond_b
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 367
    return-void
.end method

.method public static setFstInterfaceName(Ljava/lang/String;)V
    .registers 1
    .param p0, "name"  # Ljava/lang/String;

    .line 140
    sput-object p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->fstInterfaceName:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 164
    const-string/jumbo v0, "subId: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 167
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    const-string/jumbo v1, "tetherableUsbRegexs"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    const-string/jumbo v1, "tetherableWifiRegexs"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    const-string/jumbo v1, "tetherableBluetoothRegexs"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "isDunRequired: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 174
    const-string v0, "chooseUpstreamAutomatically: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 177
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "preferredUpstreamIfaceTypes"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    const-string/jumbo v1, "legacyDhcpRanges"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    const-string v1, "defaultIPv4DNS"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    const-string/jumbo v1, "provisioningApp"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    const-string/jumbo v0, "provisioningAppNoUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v0, "enableLegacyDhcpServer: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 188
    return-void
.end method

.method protected getResourcesForSubIdWrapper(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 4
    .param p1, "ctx"  # Landroid/content/Context;
    .param p2, "subId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 357
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public hasMobileHotspotProvisionApp()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsb(Ljava/lang/String;)Z
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWifi(Ljava/lang/String;)Z
    .registers 3
    .param p1, "iface"  # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 191
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    .local v0, "sj":Ljava/util/StringJoiner;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "subId:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 193
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "tetherableUsbRegexs:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 194
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "tetherableWifiRegexs:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 195
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 196
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 195
    const-string/jumbo v3, "tetherableBluetoothRegexs:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 197
    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "isDunRequired:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 198
    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "chooseUpstreamAutomatically:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 199
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 200
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 199
    const-string/jumbo v3, "preferredUpstreamIfaceTypes:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 201
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "provisioningApp:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 202
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string/jumbo v3, "provisioningAppNoUi:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "enableLegacyDhcpServer:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 204
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "TetheringConfiguration{%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
