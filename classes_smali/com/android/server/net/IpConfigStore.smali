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
    .param p1, "writer"  # Lcom/android/server/net/DelayedDiskWrite;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 67
    return-void
.end method

.method static synthetic lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V
    .registers 5
    .param p0, "networks"  # Landroid/util/SparseArray;
    .param p1, "out"  # Ljava/io/DataOutputStream;
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

    .local v0, "i":I
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
    .end local v0  # "i":I
    :cond_1f
    return-void
.end method

.method static synthetic lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V
    .registers 5
    .param p0, "networks"  # Landroid/util/ArrayMap;
    .param p1, "out"  # Ljava/io/DataOutputStream;
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

    .local v0, "i":I
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
    .end local v0  # "i":I
    :cond_1d
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"  # Ljava/lang/String;

    .line 414
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"  # Ljava/lang/String;

    .line 410
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .registers 6
    .param p0, "inputStream"  # Ljava/io/InputStream;
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

    move-result-object v0

    .line 234
    .local v0, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    if-nez v0, :cond_8

    .line 235
    const/4 v1, 0x0

    return-object v1

    .line 238
    :cond_8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 239
    .local v1, "networksById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 240
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 241
    .local v3, "id":I
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    .end local v3  # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 244
    .end local v2  # "i":I
    :cond_2e
    return-object v1
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 4
    .param p0, "filePath"  # Ljava/lang/String;
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
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 226
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0  # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_10
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 224
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    return-object v1
.end method

.method public static readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;
    .registers 21
    .param p0, "inputStream"  # Ljava/io/InputStream;
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
    .local v1, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .line 253
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v3, Ljava/io/DataInputStream;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 255
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 256
    .local v3, "version":I
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v3, v7, :cond_2a

    if-eq v3, v6, :cond_2a

    if-eq v3, v8, :cond_2a

    .line 257
    const-string v6, "Bad version on IP configuration file, ignore read"

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_21} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_2b2
    .catchall {:try_start_6 .. :try_end_21} :catchall_2ae

    .line 258
    nop

    .line 399
    nop

    .line 401
    :try_start_23
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    .line 402
    :goto_26
    goto :goto_29

    :catch_27
    move-exception v0

    goto :goto_26

    .line 258
    :goto_29
    return-object v5

    .line 262
    .end local v3  # "version":I
    :cond_2a
    :goto_2a
    const/4 v9, 0x0

    .line 264
    .local v9, "uniqueToken":Ljava/lang/String;
    :try_start_2b
    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 265
    .local v10, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v11, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 266
    .local v11, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v12, Landroid/net/StaticIpConfiguration;

    invoke-direct {v12}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 267
    .local v12, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/4 v13, 0x0

    .line 268
    .local v13, "proxyHost":Ljava/lang/String;
    const/4 v14, 0x0

    .line 269
    .local v14, "pacFileUrl":Ljava/lang/String;
    const/4 v15, -0x1

    .line 270
    .local v15, "proxyPort":I
    move-object/from16 v16, v5

    .line 274
    .local v5, "exclusionList":Ljava/lang/String;
    :goto_39
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17
    :try_end_3d
    .catch Ljava/io/EOFException; {:try_start_2b .. :try_end_3d} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3d} :catch_2b2
    .catchall {:try_start_2b .. :try_end_3d} :catchall_2ae

    move-object/from16 v18, v17

    .line 276
    .local v18, "key":Ljava/lang/String;
    :try_start_3f
    const-string/jumbo v6, "id"
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_42} :catch_28a
    .catch Ljava/io/EOFException; {:try_start_3f .. :try_end_42} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_2b2
    .catchall {:try_start_3f .. :try_end_42} :catchall_2ae

    move-object/from16 v8, v18

    .end local v18  # "key":Ljava/lang/String;
    .local v8, "key":Ljava/lang/String;
    :try_start_44
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 277
    if-ge v3, v7, :cond_5c

    .line 278
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 279
    .local v6, "id":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 280
    .end local v9  # "uniqueToken":Ljava/lang/String;
    .local v6, "uniqueToken":Ljava/lang/String;
    move/from16 v18, v3

    move-object v9, v6

    const/4 v7, 0x2

    goto/16 :goto_277

    .line 281
    .end local v6  # "uniqueToken":Ljava/lang/String;
    .restart local v9  # "uniqueToken":Ljava/lang/String;
    :cond_5c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    move/from16 v18, v3

    move-object v9, v6

    const/4 v7, 0x2

    .end local v9  # "uniqueToken":Ljava/lang/String;
    .restart local v6  # "uniqueToken":Ljava/lang/String;
    goto/16 :goto_277

    .line 283
    .end local v6  # "uniqueToken":Ljava/lang/String;
    .restart local v9  # "uniqueToken":Ljava/lang/String;
    :cond_66
    const-string/jumbo v6, "ipAssignment"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 284
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    move/from16 v18, v3

    move-object v10, v6

    const/4 v7, 0x2

    .end local v10  # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v6, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    goto/16 :goto_277

    .line 285
    .end local v6  # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v10  # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    :cond_7d
    const-string/jumbo v6, "linkAddress"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c0

    .line 286
    new-instance v6, Landroid/net/LinkAddress;

    .line 287
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v6, v7, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v6

    .line 288
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_a7

    iget-object v6, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v6, :cond_a7

    .line 290
    iput-object v4, v12, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_bb

    .line 292
    :cond_a7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-IPv4 or duplicate address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 294
    .end local v4  # "linkAddr":Landroid/net/LinkAddress;
    :goto_bb
    move/from16 v18, v3

    const/4 v7, 0x2

    goto/16 :goto_277

    :cond_c0
    const-string v4, "gateway"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_c6} :catch_284
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_c6} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_c6} :catch_2b2
    .catchall {:try_start_44 .. :try_end_c6} :catchall_2ae

    if-eqz v4, :cond_15f

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, "dest":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 297
    .local v6, "gateway":Ljava/net/InetAddress;
    const/4 v7, 0x1

    if-ne v3, v7, :cond_ff

    .line 299
    :try_start_cd
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    move-object v6, v7

    .line 300
    iget-object v7, v12, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cd .. :try_end_d8} :catch_fb
    .catch Ljava/io/EOFException; {:try_start_cd .. :try_end_d8} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d8} :catch_2b2
    .catchall {:try_start_cd .. :try_end_d8} :catchall_2ae

    if-nez v7, :cond_e0

    .line 301
    :try_start_da
    iput-object v6, v12, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_dc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_da .. :try_end_dc} :catch_284
    .catch Ljava/io/EOFException; {:try_start_da .. :try_end_dc} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dc} :catch_2b2
    .catchall {:try_start_da .. :try_end_dc} :catchall_2ae

    move/from16 v18, v3

    goto/16 :goto_157

    .line 303
    :cond_e0
    :try_start_e0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e0 .. :try_end_e5} :catch_fb
    .catch Ljava/io/EOFException; {:try_start_e0 .. :try_end_e5} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e5} :catch_2b2
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_2ae

    move/from16 v18, v3

    .local v18, "version":I
    :try_start_e7
    const-string v3, "Duplicate gateway: "

    .end local v18  # "version":I
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_157

    .line 340
    .end local v4  # "dest":Landroid/net/LinkAddress;
    .end local v6  # "gateway":Ljava/net/InetAddress;
    :catch_fb
    move-exception v0

    move/from16 v18, v3

    goto :goto_15b

    .line 306
    .restart local v4  # "dest":Landroid/net/LinkAddress;
    .restart local v6  # "gateway":Ljava/net/InetAddress;
    :cond_ff
    move/from16 v18, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_11d

    .line 307
    new-instance v3, Landroid/net/LinkAddress;

    .line 308
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 309
    move-object/from16 v19, v4

    .end local v4  # "dest":Landroid/net/LinkAddress;
    .local v19, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v4, v3

    .end local v19  # "dest":Landroid/net/LinkAddress;
    .restart local v4  # "dest":Landroid/net/LinkAddress;
    goto :goto_11f

    .line 306
    :cond_11d
    move-object/from16 v19, v4

    .line 311
    :goto_11f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_12f

    .line 312
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move-object v6, v3

    .line 314
    :cond_12f
    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v4, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 315
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v7

    if-eqz v7, :cond_141

    iget-object v7, v12, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v7, :cond_141

    .line 317
    iput-object v6, v12, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_157

    .line 319
    :cond_141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4  # "dest":Landroid/net/LinkAddress;
    .restart local v19  # "dest":Landroid/net/LinkAddress;
    const-string v4, "Non-IPv4 default or duplicate route: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_157
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e7 .. :try_end_157} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_e7 .. :try_end_157} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_157} :catch_2b2
    .catchall {:try_start_e7 .. :try_end_157} :catchall_2ae

    .line 322
    .end local v3  # "route":Landroid/net/RouteInfo;
    .end local v6  # "gateway":Ljava/net/InetAddress;
    .end local v19  # "dest":Landroid/net/LinkAddress;
    :goto_157
    const/4 v7, 0x2

    goto/16 :goto_277

    .line 340
    :catch_15a
    move-exception v0

    :goto_15b
    move-object v3, v0

    const/4 v7, 0x2

    goto/16 :goto_291

    .line 322
    :cond_15f
    move/from16 v18, v3

    :try_start_161
    const-string v3, "dns"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_167
    .catch Ljava/lang/IllegalArgumentException; {:try_start_161 .. :try_end_167} :catch_282
    .catch Ljava/io/EOFException; {:try_start_161 .. :try_end_167} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_167} :catch_2b2
    .catchall {:try_start_161 .. :try_end_167} :catchall_2ae

    if-eqz v3, :cond_179

    .line 323
    :try_start_169
    iget-object v3, v12, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_176
    .catch Ljava/lang/IllegalArgumentException; {:try_start_169 .. :try_end_176} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_169 .. :try_end_176} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_176} :catch_2b2
    .catchall {:try_start_169 .. :try_end_176} :catchall_2ae

    const/4 v7, 0x2

    goto/16 :goto_277

    .line 325
    :cond_179
    :try_start_179
    const-string/jumbo v3, "proxySettings"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_180
    .catch Ljava/lang/IllegalArgumentException; {:try_start_179 .. :try_end_180} :catch_282
    .catch Ljava/io/EOFException; {:try_start_179 .. :try_end_180} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_180} :catch_2b2
    .catchall {:try_start_179 .. :try_end_180} :catchall_2ae

    if-eqz v3, :cond_18e

    .line 326
    :try_start_182
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v3
    :try_end_18a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_182 .. :try_end_18a} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_182 .. :try_end_18a} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18a} :catch_2b2
    .catchall {:try_start_182 .. :try_end_18a} :catchall_2ae

    move-object v11, v3

    const/4 v7, 0x2

    .end local v11  # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v3, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    goto/16 :goto_277

    .line 327
    .end local v3  # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v11  # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_18e
    :try_start_18e
    const-string/jumbo v3, "proxyHost"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_195
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18e .. :try_end_195} :catch_282
    .catch Ljava/io/EOFException; {:try_start_18e .. :try_end_195} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_195} :catch_2b2
    .catchall {:try_start_18e .. :try_end_195} :catchall_2ae

    if-eqz v3, :cond_19f

    .line 328
    :try_start_197
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_197 .. :try_end_19b} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_197 .. :try_end_19b} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19b} :catch_2b2
    .catchall {:try_start_197 .. :try_end_19b} :catchall_2ae

    move-object v13, v3

    const/4 v7, 0x2

    .end local v13  # "proxyHost":Ljava/lang/String;
    .local v3, "proxyHost":Ljava/lang/String;
    goto/16 :goto_277

    .line 329
    .end local v3  # "proxyHost":Ljava/lang/String;
    .restart local v13  # "proxyHost":Ljava/lang/String;
    :cond_19f
    :try_start_19f
    const-string/jumbo v3, "proxyPort"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19f .. :try_end_1a6} :catch_282
    .catch Ljava/io/EOFException; {:try_start_19f .. :try_end_1a6} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a6} :catch_2b2
    .catchall {:try_start_19f .. :try_end_1a6} :catchall_2ae

    if-eqz v3, :cond_1b0

    .line 330
    :try_start_1a8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3
    :try_end_1ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a8 .. :try_end_1ac} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_1a8 .. :try_end_1ac} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ac} :catch_2b2
    .catchall {:try_start_1a8 .. :try_end_1ac} :catchall_2ae

    move v15, v3

    const/4 v7, 0x2

    .end local v15  # "proxyPort":I
    .local v3, "proxyPort":I
    goto/16 :goto_277

    .line 331
    .end local v3  # "proxyPort":I
    .restart local v15  # "proxyPort":I
    :cond_1b0
    :try_start_1b0
    const-string/jumbo v3, "proxyPac"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1b7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b0 .. :try_end_1b7} :catch_282
    .catch Ljava/io/EOFException; {:try_start_1b0 .. :try_end_1b7} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1b7} :catch_2b2
    .catchall {:try_start_1b0 .. :try_end_1b7} :catchall_2ae

    if-eqz v3, :cond_1c1

    .line 332
    :try_start_1b9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b9 .. :try_end_1bd} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_1b9 .. :try_end_1bd} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bd} :catch_2b2
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_2ae

    move-object v14, v3

    const/4 v7, 0x2

    .end local v14  # "pacFileUrl":Ljava/lang/String;
    .local v3, "pacFileUrl":Ljava/lang/String;
    goto/16 :goto_277

    .line 333
    .end local v3  # "pacFileUrl":Ljava/lang/String;
    .restart local v14  # "pacFileUrl":Ljava/lang/String;
    :cond_1c1
    :try_start_1c1
    const-string v3, "exclusionList"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c1 .. :try_end_1c7} :catch_282
    .catch Ljava/io/EOFException; {:try_start_1c1 .. :try_end_1c7} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c7} :catch_2b2
    .catchall {:try_start_1c1 .. :try_end_1c7} :catchall_2ae

    if-eqz v3, :cond_1d1

    .line 334
    :try_start_1c9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3
    :try_end_1cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c9 .. :try_end_1cd} :catch_15a
    .catch Ljava/io/EOFException; {:try_start_1c9 .. :try_end_1cd} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cd} :catch_2b2
    .catchall {:try_start_1c9 .. :try_end_1cd} :catchall_2ae

    move-object v5, v3

    const/4 v7, 0x2

    .end local v5  # "exclusionList":Ljava/lang/String;
    .local v3, "exclusionList":Ljava/lang/String;
    goto/16 :goto_277

    .line 335
    .end local v3  # "exclusionList":Ljava/lang/String;
    .restart local v5  # "exclusionList":Ljava/lang/String;
    :cond_1d1
    :try_start_1d1
    const-string v3, "eos"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d1 .. :try_end_1d7} :catch_282
    .catch Ljava/io/EOFException; {:try_start_1d1 .. :try_end_1d7} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1d7} :catch_2b2
    .catchall {:try_start_1d1 .. :try_end_1d7} :catchall_2ae

    if-eqz v3, :cond_25c

    .line 336
    nop

    .line 345
    if-eqz v9, :cond_251

    .line 346
    :try_start_1dc
    new-instance v3, Landroid/net/IpConfiguration;

    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    .line 347
    .local v3, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v1, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v4, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_20c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_209

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1ff

    .line 362
    const-string v4, "Ignore invalid ip assignment while reading."

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 363
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v4, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_211

    .line 358
    :cond_1ff
    const-string v4, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 359
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v4, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 360
    goto :goto_211

    .line 355
    :cond_209
    iput-object v10, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 356
    goto :goto_211

    .line 351
    :cond_20c
    iput-object v12, v3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 352
    iput-object v10, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 353
    nop

    .line 367
    :goto_211
    sget-object v4, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v11}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_246

    const/4 v7, 0x2

    if-eq v4, v7, :cond_23c

    const/4 v6, 0x3

    if-eq v4, v6, :cond_239

    const/4 v6, 0x4

    if-eq v4, v6, :cond_22f

    .line 387
    const-string v4, "Ignore invalid proxy settings while reading"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 388
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_252

    .line 383
    :cond_22f
    const-string v4, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 384
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 385
    goto :goto_252

    .line 380
    :cond_239
    iput-object v11, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 381
    goto :goto_252

    .line 375
    :cond_23c
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v14}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 376
    .local v4, "proxyPacProperties":Landroid/net/ProxyInfo;
    iput-object v11, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 377
    iput-object v4, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 378
    goto :goto_252

    .line 369
    .end local v4  # "proxyPacProperties":Landroid/net/ProxyInfo;
    :cond_246
    const/4 v7, 0x2

    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v13, v15, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .local v4, "proxyInfo":Landroid/net/ProxyInfo;
    iput-object v11, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 372
    iput-object v4, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;
    :try_end_250
    .catch Ljava/io/EOFException; {:try_start_1dc .. :try_end_250} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_250} :catch_2b2
    .catchall {:try_start_1dc .. :try_end_250} :catchall_2ae

    .line 373
    goto :goto_252

    .line 345
    .end local v3  # "config":Landroid/net/IpConfiguration;
    .end local v4  # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_251
    const/4 v7, 0x2

    .line 394
    .end local v5  # "exclusionList":Ljava/lang/String;
    .end local v8  # "key":Ljava/lang/String;
    .end local v9  # "uniqueToken":Ljava/lang/String;
    .end local v10  # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11  # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v12  # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v13  # "proxyHost":Ljava/lang/String;
    .end local v14  # "pacFileUrl":Ljava/lang/String;
    .end local v15  # "proxyPort":I
    :goto_252
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move v6, v7

    move/from16 v3, v18

    const/4 v7, 0x3

    goto/16 :goto_2a

    .line 338
    .restart local v5  # "exclusionList":Ljava/lang/String;
    .restart local v8  # "key":Ljava/lang/String;
    .restart local v9  # "uniqueToken":Ljava/lang/String;
    .restart local v10  # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v11  # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v12  # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v13  # "proxyHost":Ljava/lang/String;
    .restart local v14  # "pacFileUrl":Ljava/lang/String;
    .restart local v15  # "proxyPort":I
    :cond_25c
    const/4 v7, 0x2

    :try_start_25d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unknown key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "while reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_277
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25d .. :try_end_277} :catch_280
    .catch Ljava/io/EOFException; {:try_start_25d .. :try_end_277} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_277} :catch_2b2
    .catchall {:try_start_25d .. :try_end_277} :catchall_2ae

    .line 342
    :goto_277
    move-object/from16 v4, p0

    move v6, v7

    move/from16 v3, v18

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_39

    .line 340
    :catch_280
    move-exception v0

    goto :goto_288

    :catch_282
    move-exception v0

    goto :goto_287

    :catch_284
    move-exception v0

    move/from16 v18, v3

    :goto_287
    const/4 v7, 0x2

    :goto_288
    move-object v3, v0

    goto :goto_291

    .end local v8  # "key":Ljava/lang/String;
    .local v18, "key":Ljava/lang/String;
    :catch_28a
    move-exception v0

    move-object/from16 v8, v18

    const/4 v7, 0x2

    move/from16 v18, v3

    move-object v3, v0

    .line 341
    .end local v18  # "key":Ljava/lang/String;
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    .restart local v8  # "key":Ljava/lang/String;
    :goto_291
    :try_start_291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore invalid address while reading"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_2a5
    .catch Ljava/io/EOFException; {:try_start_291 .. :try_end_2a5} :catch_2dc
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_2a5} :catch_2b2
    .catchall {:try_start_291 .. :try_end_2a5} :catchall_2ae

    .line 343
    .end local v3  # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v4, p0

    move v6, v7

    move/from16 v3, v18

    const/4 v7, 0x3

    const/4 v8, 0x1

    goto/16 :goto_39

    .line 399
    .end local v5  # "exclusionList":Ljava/lang/String;
    .end local v8  # "key":Ljava/lang/String;
    .end local v9  # "uniqueToken":Ljava/lang/String;
    .end local v10  # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v11  # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v12  # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v13  # "proxyHost":Ljava/lang/String;
    .end local v14  # "pacFileUrl":Ljava/lang/String;
    .end local v15  # "proxyPort":I
    :catchall_2ae
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_2d3

    .line 396
    :catch_2b2
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    .line 397
    .local v2, "e":Ljava/io/IOException;
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_2b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_2c9
    .catchall {:try_start_2b5 .. :try_end_2c9} :catchall_2d1

    .line 399
    .end local v2  # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2e4

    .line 401
    :try_start_2cb
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2ce} :catch_2cf

    .line 402
    :goto_2ce
    goto :goto_2e4

    :catch_2cf
    move-exception v0

    goto :goto_2ce

    .line 399
    :catchall_2d1
    move-exception v0

    move-object v2, v0

    :goto_2d3
    if-eqz v3, :cond_2db

    .line 401
    :try_start_2d5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2d8} :catch_2d9

    .line 402
    :goto_2d8
    goto :goto_2db

    :catch_2d9
    move-exception v0

    goto :goto_2d8

    :cond_2db
    :goto_2db
    throw v2

    .line 395
    .end local v3  # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :catch_2dc
    move-exception v0

    move-object v3, v2

    .line 399
    .end local v2  # "in":Ljava/io/DataInputStream;
    .restart local v3  # "in":Ljava/io/DataInputStream;
    if-eqz v3, :cond_2e4

    .line 401
    :try_start_2e0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_2e3} :catch_2cf

    goto :goto_2ce

    .line 406
    :cond_2e4
    :goto_2e4
    return-object v1
.end method

.method public static readIpConfigurations(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 4
    .param p0, "filePath"  # Ljava/lang/String;
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
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 211
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v1

    return-object v1

    .line 205
    .end local v0  # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_10
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v1
.end method

.method private static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z
    .registers 4
    .param p0, "out"  # Ljava/io/DataOutputStream;
    .param p1, "configKey"  # Ljava/lang/String;
    .param p2, "config"  # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z

    move-result v0

    return v0
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z
    .registers 12
    .param p0, "out"  # Ljava/io/DataOutputStream;
    .param p1, "configKey"  # Ljava/lang/String;
    .param p2, "config"  # Landroid/net/IpConfiguration;
    .param p3, "version"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "written":Z
    :try_start_1
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_b} :catch_134

    const-string/jumbo v2, "ipAssignment"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2e

    if-eq v1, v3, :cond_20

    if-eq v1, v4, :cond_1e

    .line 118
    :try_start_17
    const-string v1, "Ignore invalid ip assignment while writing"

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_96

    .line 116
    :cond_1e
    goto/16 :goto_96

    .line 110
    :cond_20
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 111
    iget-object v1, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_96

    .line 86
    :cond_2e
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v1, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget-object v1, p2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 89
    .local v1, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v1, :cond_94

    .line 90
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_5c

    .line 91
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 92
    .local v2, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v6, "linkAddress"

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    .end local v2  # "ipAddress":Landroid/net/LinkAddress;
    :cond_5c
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_75

    .line 97
    const-string v2, "gateway"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {p0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    :cond_75
    iget-object v2, v1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 103
    .local v6, "inetAddr":Ljava/net/InetAddress;
    const-string v7, "dns"

    invoke-virtual {p0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    .end local v6  # "inetAddr":Ljava/net/InetAddress;
    goto :goto_7b

    .line 107
    :cond_94
    const/4 v0, 0x1

    .line 108
    nop

    .line 122
    .end local v1  # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_96
    sget-object v1, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_a0
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_a0} :catch_134

    const-string/jumbo v2, "proxySettings"

    if-eq v1, v5, :cond_e2

    if-eq v1, v3, :cond_c1

    if-eq v1, v4, :cond_b3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b2

    .line 155
    :try_start_ac
    const-string v1, "Ignore invalid proxy settings while writing"

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_11a

    .line 153
    :cond_b2
    goto :goto_11a

    .line 147
    :cond_b3
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    iget-object v1, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    .line 150
    goto :goto_11a

    .line 139
    :cond_c1
    iget-object v1, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 140
    .local v1, "proxyPacProperties":Landroid/net/ProxyInfo;
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

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    .line 145
    goto :goto_11a

    .line 124
    .end local v1  # "proxyPacProperties":Landroid/net/ProxyInfo;
    :cond_e2
    iget-object v1, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 125
    .local v1, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "exclusionList":Ljava/lang/String;
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

    move-result v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    if-eqz v3, :cond_118

    .line 133
    const-string v2, "exclusionList"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    :cond_118
    const/4 v0, 0x1

    .line 137
    nop

    .line 159
    .end local v1  # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3  # "exclusionList":Ljava/lang/String;
    :goto_11a
    if-eqz v0, :cond_133

    .line 160
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    if-ge p3, v4, :cond_130

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_133

    .line 164
    :cond_130
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/NullPointerException; {:try_start_ac .. :try_end_133} :catch_134

    .line 169
    :cond_133
    :goto_133
    goto :goto_14c

    .line 167
    :catch_134
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure in writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 170
    .end local v1  # "e":Ljava/lang/NullPointerException;
    :goto_14c
    const-string v1, "eos"

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    return v0
.end method


# virtual methods
.method public writeIpAndProxyConfigurationsToFile(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .param p1, "filePath"  # Ljava/lang/String;
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
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 189
    return-void
.end method

.method public writeIpConfigurations(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5
    .param p1, "filePath"  # Ljava/lang/String;
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
    .local p2, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 199
    return-void
.end method
