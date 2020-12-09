.class public Lcom/android/server/connectivity/tethering/TetheringConfiguration;
.super Ljava/lang/Object;
.source "TetheringConfiguration.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final LEGACY_DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


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

    .line 65
    const-class v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 75
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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/util/SharedLog;I)V
    .registers 6

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "8.8.4.4"

    const-string v1, "8.8.8.8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DEFAULT_IPV4_DNS:[Ljava/lang/String;

    .line 101
    const-string v0, "config"

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object p2

    .line 103
    iput p3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    .line 104
    iget p3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, p1, p3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResources(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p3

    .line 106
    const v0, 0x1070074

    invoke-static {p3, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    .line 110
    const v0, 0x1070075

    invoke-static {p3, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 111
    const v0, 0x1070071

    invoke-static {p3, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 113
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    .line 115
    const v0, 0x11100e6

    invoke-static {p3, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceBoolean(Landroid/content/res/Resources;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    .line 116
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-static {p3, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getUpstreamIfaceTypes(Landroid/content/res/Resources;Z)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 118
    invoke-static {p3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getLegacyDhcpRanges(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->DEFAULT_IPV4_DNS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    .line 120
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getEnableLegacyDhcpServer(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    .line 122
    const p1, 0x1070053

    invoke-static {p3, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    .line 123
    invoke-static {p3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getProvisioningAppNoUi(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    .line 124
    const p1, 0x10e007e

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceInteger(Landroid/content/res/Resources;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningCheckPeriod:I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private static appendIfNotPresent(Ljava/util/ArrayList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 354
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method public static checkDunRequired(Landroid/content/Context;I)Z
    .registers 2

    .line 230
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs containsOneOf(Ljava/util/ArrayList;[Ljava/lang/Integer;)Z
    .registers 6
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

    .line 358
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 359
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    .line 358
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 361
    :cond_12
    return v1
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 344
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 192
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    if-eqz p2, :cond_29

    .line 196
    new-instance p1, Ljava/util/StringJoiner;

    const-string v0, ", "

    const-string v1, "["

    const-string v2, "]"

    invoke-direct {p1, v0, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 197
    array-length v0, p2

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_21

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 198
    :cond_21
    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    goto :goto_2f

    .line 200
    :cond_29
    const-string/jumbo p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    :goto_2f
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 204
    return-void
.end method

.method private static getEnableLegacyDhcpServer(Landroid/content/Context;)Z
    .registers 3

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 326
    const/4 v0, 0x0

    const-string/jumbo v1, "tether_enable_legacy_dhcp_server"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 327
    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static getLegacyDhcpRanges(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 284
    const v0, 0x1070072

    invoke-static {p0, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object p0

    .line 285
    array-length v0, p0

    if-lez v0, :cond_10

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_10

    .line 286
    return-object p0

    .line 288
    :cond_10
    sget-object p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->LEGACY_DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getProvisioningAppNoUi(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 293
    const v0, 0x1040193

    :try_start_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_7} :catch_8

    return-object p0

    .line 294
    :catch_8
    move-exception p0

    .line 295
    const-string p0, ""

    return-object p0
.end method

.method private static getResourceBoolean(Landroid/content/res/Resources;I)Z
    .registers 2

    .line 301
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 302
    :catch_5
    move-exception p0

    .line 303
    const/4 p0, 0x0

    return p0
.end method

.method private static getResourceInteger(Landroid/content/res/Resources;II)I
    .registers 3

    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 319
    :catch_5
    move-exception p0

    .line 320
    return p2
.end method

.method private static getResourceStringArray(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .registers 2

    .line 309
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 310
    if-eqz p0, :cond_7

    goto :goto_9

    :cond_7
    sget-object p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-object p0

    .line 311
    :catch_a
    move-exception p0

    .line 312
    sget-object p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0
.end method

.method private getResources(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 4

    .line 331
    const/4 v0, -0x1

    if-eq p2, v0, :cond_8

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->getResourcesForSubIdWrapper(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1

    .line 334
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method private static getUpstreamIfaceTypes(Landroid/content/res/Resources;Z)Ljava/util/Collection;
    .registers 10
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

    .line 234
    const v0, 0x1070073

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v4, v2

    :goto_14
    const/4 v5, 0x4

    const/4 v6, 0x5

    if-ge v4, v1, :cond_31

    aget v7, p0, v4

    .line 237
    if-eqz v7, :cond_24

    if-eq v7, v5, :cond_21

    if-eq v7, v6, :cond_24

    goto :goto_27

    .line 243
    :cond_21
    if-nez p1, :cond_27

    goto :goto_2e

    .line 240
    :cond_24
    if-eqz p1, :cond_27

    goto :goto_2e

    .line 246
    :cond_27
    :goto_27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 253
    :cond_31
    if-eqz p1, :cond_37

    .line 254
    invoke-static {v0, v5}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->appendIfNotPresent(Ljava/util/ArrayList;I)V

    goto :goto_53

    .line 263
    :cond_37
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Integer;

    aput-object v3, p0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    invoke-static {v0, p0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->containsOneOf(Ljava/util/ArrayList;[Ljava/lang/Integer;)Z

    move-result p0

    if-nez p0, :cond_53

    .line 264
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_53
    :goto_53
    const/16 p0, 0x9

    invoke-static {v0, p0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->prependIfNotPresent(Ljava/util/ArrayList;I)V

    .line 273
    return-object v0
.end method

.method private static makeString([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 207
    if-nez p0, :cond_6

    const-string/jumbo p0, "null"

    return-object p0

    .line 208
    :cond_6
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    const-string v2, "["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 209
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 210
    :cond_1d
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 277
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 278
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    .line 277
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 280
    :cond_12
    return v1
.end method

.method private static preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    nop

    .line 216
    if-eqz p0, :cond_27

    .line 217
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 218
    const/4 v1, 0x0

    .line 219
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 220
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    goto :goto_e

    .line 216
    :cond_27
    const/4 v0, 0x0

    .line 225
    :cond_28
    return-object v0
.end method

.method private static prependIfNotPresent(Ljava/util/ArrayList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 349
    :cond_b
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 350
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 148
    const-string/jumbo v0, "subId: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 151
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    const-string/jumbo v1, "tetherableUsbRegexs"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    const-string/jumbo v1, "tetherableWifiRegexs"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    const-string/jumbo v1, "tetherableBluetoothRegexs"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    const-string v0, "isDunRequired: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    const-string v0, "chooseUpstreamAutomatically: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 161
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "preferredUpstreamIfaceTypes"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    const-string v1, "legacyDhcpRanges"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    const-string v1, "defaultIPv4DNS"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    const-string/jumbo v1, "provisioningApp"

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dumpStringArray(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "provisioningAppNoUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string v0, "enableLegacyDhcpServer: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 172
    return-void
.end method

.method protected getResourcesForSubIdWrapper(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 340
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public hasMobileHotspotProvisionApp()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isUsb(Ljava/lang/String;)Z
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isWifi(Ljava/lang/String;)Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 175
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 176
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

    .line 177
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "tetherableUsbRegexs:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "tetherableWifiRegexs:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 179
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 180
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 179
    const-string/jumbo v3, "tetherableBluetoothRegexs:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 181
    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "isDunRequired:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "chooseUpstreamAutomatically:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 183
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    .line 184
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamNames(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 183
    const-string/jumbo v3, "preferredUpstreamIfaceTypes:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 185
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->makeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, "provisioningApp:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 186
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningAppNoUi:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string/jumbo v3, "provisioningAppNoUi:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 187
    new-array v2, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "enableLegacyDhcpServer:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "TetheringConfiguration{%s}"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
