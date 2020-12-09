.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x3

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 67
    return-void
.end method

.method static synthetic lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 186
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 188
    :cond_1f
    return-void
.end method

.method static synthetic lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 196
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 198
    :cond_1d
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    .line 414
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2

    .line 410
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 234
    if-nez p0, :cond_8

    .line 235
    const/4 p0, 0x0

    return-object p0

    .line 238
    :cond_8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 239
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 240
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 241
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 244
    :cond_2e
    return-object v0
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_10

    .line 225
    nop

    .line 226
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0

    .line 220
    :catch_10
    move-exception p0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error opening configuration file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 224
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public static readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 251
    nop

    .line 253
    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_e} :catch_293
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_269
    .catchall {:try_start_7 .. :try_end_e} :catchall_265

    .line 255
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 256
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v4, v6, :cond_29

    if-eq v4, v5, :cond_29

    if-eq v4, v7, :cond_29

    .line 257
    const-string v4, "Bad version on IP configuration file, ignore read"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_20} :catch_263
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_260
    .catchall {:try_start_e .. :try_end_20} :catchall_288

    .line 258
    nop

    .line 399
    nop

    .line 401
    :try_start_22
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 402
    :goto_25
    goto :goto_28

    :catch_26
    move-exception v0

    goto :goto_25

    .line 258
    :goto_28
    return-object v2

    .line 262
    :cond_29
    :goto_29
    nop

    .line 264
    :try_start_2a
    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 265
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 266
    new-instance v10, Landroid/net/StaticIpConfiguration;

    invoke-direct {v10}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 267
    nop

    .line 268
    nop

    .line 269
    const/4 v11, -0x1

    .line 270
    move-object v12, v2

    move-object v14, v12

    move-object v15, v14

    move v13, v11

    move-object v11, v9

    move-object v9, v8

    move-object v8, v15

    .line 274
    :goto_3d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2
    :try_end_41
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_41} :catch_263
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_41} :catch_260
    .catchall {:try_start_2a .. :try_end_41} :catchall_288

    .line 276
    :try_start_41
    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 277
    if-ge v4, v6, :cond_56

    .line 278
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 279
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    move-object v8, v2

    goto/16 :goto_240

    .line 281
    :cond_56
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto/16 :goto_240

    .line 283
    :cond_5d
    const-string v5, "ipAssignment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 284
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_240

    .line 285
    :cond_70
    const-string v5, "linkAddress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 286
    new-instance v2, Landroid/net/LinkAddress;

    .line 287
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 288
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_98

    iget-object v5, v10, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v5, :cond_98

    .line 290
    iput-object v2, v10, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_ac

    .line 292
    :cond_98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-IPv4 or duplicate address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 294
    :goto_ac
    goto/16 :goto_240

    :cond_ae
    const-string v5, "gateway"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 295
    nop

    .line 296
    nop

    .line 297
    if-ne v4, v7, :cond_e2

    .line 299
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 300
    iget-object v5, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v5, :cond_c9

    .line 301
    iput-object v2, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_131

    .line 303
    :cond_c9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate gateway: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_131

    .line 306
    :cond_e2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-ne v2, v7, :cond_fa

    .line 307
    new-instance v2, Landroid/net/LinkAddress;

    .line 308
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 309
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_fb

    .line 306
    :cond_fa
    const/4 v2, 0x0

    .line 311
    :goto_fb
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ne v5, v7, :cond_10a

    .line 312
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_10b

    .line 311
    :cond_10a
    const/4 v5, 0x0

    .line 314
    :goto_10b
    new-instance v6, Landroid/net/RouteInfo;

    invoke-direct {v6, v2, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 315
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v2

    if-eqz v2, :cond_11d

    iget-object v2, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v2, :cond_11d

    .line 317
    iput-object v5, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_131

    .line 319
    :cond_11d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-IPv4 default or duplicate route: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 322
    :goto_131
    goto/16 :goto_240

    :cond_133
    const-string v5, "dns"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 323
    iget-object v2, v10, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 323
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_240

    .line 325
    :cond_14a
    const-string/jumbo v5, "proxySettings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15e

    .line 326
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    move-object v11, v2

    goto/16 :goto_240

    .line 327
    :cond_15e
    const-string/jumbo v5, "proxyHost"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16e

    .line 328
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto/16 :goto_240

    .line 329
    :cond_16e
    const-string/jumbo v5, "proxyPort"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 330
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v13, v2

    goto/16 :goto_240

    .line 331
    :cond_17e
    const-string/jumbo v5, "proxyPac"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18e

    .line 332
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto/16 :goto_240

    .line 333
    :cond_18e
    const-string v5, "exclusionList"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 334
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto/16 :goto_240

    .line 335
    :cond_19d
    const-string v5, "eos"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_1a3} :catch_245
    .catch Ljava/io/EOFException; {:try_start_41 .. :try_end_1a3} :catch_263
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_1a3} :catch_260
    .catchall {:try_start_41 .. :try_end_1a3} :catchall_288

    if-eqz v5, :cond_224

    .line 336
    nop

    .line 345
    if-eqz v8, :cond_21d

    .line 346
    :try_start_1a8
    new-instance v2, Landroid/net/IpConfiguration;

    invoke-direct {v2}, Landroid/net/IpConfiguration;-><init>()V

    .line 347
    invoke-virtual {v1, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v5, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v7, :cond_1d7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1d4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1ca

    .line 362
    const-string v5, "Ignore invalid ip assignment while reading."

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 363
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v5, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_1dc

    .line 358
    :cond_1ca
    const-string v5, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 359
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v5, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 360
    goto :goto_1dc

    .line 355
    :cond_1d4
    iput-object v9, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 356
    goto :goto_1dc

    .line 351
    :cond_1d7
    iput-object v10, v2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 352
    iput-object v9, v2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 353
    nop

    .line 367
    :goto_1dc
    sget-object v5, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v11}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v7, :cond_211

    const/4 v6, 0x2

    if-eq v5, v6, :cond_206

    const/4 v8, 0x3

    if-eq v5, v8, :cond_203

    const/4 v9, 0x4

    if-eq v5, v9, :cond_1f9

    .line 387
    const-string v5, "Ignore invalid proxy settings while reading"

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 388
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v5, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_21f

    .line 383
    :cond_1f9
    const-string v5, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static {v5}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 384
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v5, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 385
    goto :goto_21f

    .line 380
    :cond_203
    iput-object v11, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 381
    goto :goto_21f

    .line 375
    :cond_206
    const/4 v8, 0x3

    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v15}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 376
    iput-object v11, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 377
    iput-object v5, v2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 378
    goto :goto_21f

    .line 369
    :cond_211
    const/4 v6, 0x2

    const/4 v8, 0x3

    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v12, v13, v14}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    iput-object v11, v2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 372
    iput-object v5, v2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;
    :try_end_21c
    .catch Ljava/io/EOFException; {:try_start_1a8 .. :try_end_21c} :catch_263
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_21c} :catch_260
    .catchall {:try_start_1a8 .. :try_end_21c} :catchall_288

    .line 373
    goto :goto_21f

    .line 345
    :cond_21d
    const/4 v6, 0x2

    const/4 v8, 0x3

    .line 394
    :goto_21f
    move v5, v6

    move v6, v8

    const/4 v2, 0x0

    goto/16 :goto_29

    .line 338
    :cond_224
    const/4 v5, 0x3

    const/4 v6, 0x2

    :try_start_226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore unknown key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "while reading"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_240
    .catch Ljava/lang/IllegalArgumentException; {:try_start_226 .. :try_end_240} :catch_245
    .catch Ljava/io/EOFException; {:try_start_226 .. :try_end_240} :catch_263
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_240} :catch_260
    .catchall {:try_start_226 .. :try_end_240} :catchall_288

    .line 342
    :goto_240
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    goto/16 :goto_3d

    .line 340
    :catch_245
    move-exception v0

    move-object v2, v0

    .line 341
    :try_start_247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore invalid address while reading"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_25b
    .catch Ljava/io/EOFException; {:try_start_247 .. :try_end_25b} :catch_263
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_25b} :catch_260
    .catchall {:try_start_247 .. :try_end_25b} :catchall_288

    .line 343
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    goto/16 :goto_3d

    .line 396
    :catch_260
    move-exception v0

    move-object v2, v0

    goto :goto_26c

    .line 395
    :catch_263
    move-exception v0

    goto :goto_295

    .line 399
    :catchall_265
    move-exception v0

    move-object v1, v0

    const/4 v3, 0x0

    goto :goto_28a

    .line 396
    :catch_269
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 397
    :goto_26c
    :try_start_26c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_280
    .catchall {:try_start_26c .. :try_end_280} :catchall_288

    .line 399
    if-eqz v3, :cond_29a

    .line 401
    :try_start_282
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_285
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_285} :catch_286

    goto :goto_29a

    .line 402
    :catch_286
    move-exception v0

    goto :goto_29a

    .line 399
    :catchall_288
    move-exception v0

    move-object v1, v0

    :goto_28a
    if-eqz v3, :cond_292

    .line 401
    :try_start_28c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_28f
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_28f} :catch_290

    .line 402
    :goto_28f
    goto :goto_292

    :catch_290
    move-exception v0

    goto :goto_28f

    :cond_292
    :goto_292
    throw v1

    .line 395
    :catch_293
    move-exception v0

    const/4 v3, 0x0

    .line 399
    :goto_295
    if-eqz v3, :cond_29a

    .line 401
    :try_start_297
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_29a} :catch_286

    .line 406
    :cond_29a
    :goto_29a
    return-object v1
.end method

.method public static readIpConfigurations(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 204
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_10

    .line 210
    nop

    .line 211
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0

    .line 205
    :catch_10
    move-exception p0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error opening configuration file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 209
    new-instance p0, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/ArrayMap;-><init>(I)V

    return-object p0
.end method

.method private static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z

    move-result p0

    return p0
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    nop

    .line 84
    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_134

    const-string v2, "ipAssignment"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2f

    if-eq v1, v3, :cond_20

    if-eq v1, v4, :cond_1e

    .line 118
    :try_start_17
    const-string v1, "Ignore invalid ip assignment while writing"

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 116
    :cond_1e
    goto/16 :goto_95

    .line 110
    :cond_20
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 111
    iget-object v1, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 112
    nop

    .line 113
    move v0, v5

    goto :goto_95

    .line 86
    :cond_2f
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v1, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget-object v1, p2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 89
    if-eqz v1, :cond_93

    .line 90
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_5c

    .line 91
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 92
    const-string v6, "linkAddress"

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    :cond_5c
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_74

    .line 97
    const-string v2, "gateway"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    :cond_74
    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_93

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 103
    const-string v6, "dns"

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    goto :goto_7a

    .line 107
    :cond_93
    nop

    .line 108
    move v0, v5

    .line 122
    :goto_95
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_9f
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_9f} :catch_134

    const-string/jumbo v2, "proxySettings"

    if-eq v1, v5, :cond_e3

    if-eq v1, v3, :cond_c1

    if-eq v1, v4, :cond_b2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b1

    .line 155
    :try_start_ab
    const-string v1, "Ignore invalid proxy settings while writing"

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_11b

    .line 153
    :cond_b1
    goto :goto_11b

    .line 147
    :cond_b2
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    iget-object v1, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    move v0, v5

    goto :goto_11b

    .line 139
    :cond_c1
    iget-object v1, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 140
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 141
    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "proxyPac"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    move v0, v5

    goto :goto_11b

    .line 124
    :cond_e3
    iget-object v1, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 125
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 127
    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "proxyHost"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v2, "proxyPort"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    if-eqz v3, :cond_119

    .line 133
    const-string v1, "exclusionList"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    :cond_119
    nop

    .line 137
    move v0, v5

    .line 159
    :goto_11b
    if-eqz v0, :cond_133

    .line 160
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    if-ge p3, v4, :cond_130

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_133

    .line 164
    :cond_130
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_133} :catch_134

    .line 169
    :cond_133
    :goto_133
    goto :goto_14c

    .line 167
    :catch_134
    move-exception p1

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure in writing "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 170
    :goto_14c
    const-string p1, "eos"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    return v0
.end method


# virtual methods
.method public writeIpAndProxyConfigurationsToFile(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 189
    return-void
.end method

.method public writeIpConfigurations(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 199
    return-void
.end method
