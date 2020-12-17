.class public Lcom/meizu/affinityctrl/AffinityCtrlJNI;
.super Ljava/lang/Object;
.source "AffinityCtrlJNI.java"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field public static final DEVICEINFO_UNKNOWN:I = -0x1


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 86
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 117
    new-instance v0, Lcom/meizu/affinityctrl/AffinityCtrlJNI$1;

    invoke-direct {v0}, Lcom/meizu/affinityctrl/AffinityCtrlJNI$1;-><init>()V

    sput-object v0, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->CPU_FILTER:Ljava/io/FileFilter;

    .line 323
    const-string v0, "affinity_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 324
    const-string v0, "persist.sys.cpu_cluster_list"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "cpu_cluster_list":Ljava/lang/String;
    const/4 v1, 0x0

    .line 326
    .local v1, "culs":[Lcom/meizu/affinityctrl/Cluster;
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_47

    .line 327
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "bitlist":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [Lcom/meizu/affinityctrl/Cluster;

    .line 329
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    array-length v4, v2

    if-ge v3, v4, :cond_46

    .line 330
    new-instance v4, Lcom/meizu/affinityctrl/Cluster;

    invoke-direct {v4}, Lcom/meizu/affinityctrl/Cluster;-><init>()V

    aput-object v4, v1, v3

    .line 331
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/meizu/affinityctrl/Cluster;->bits:I

    .line 332
    aget-object v4, v1, v3

    mul-int/lit16 v5, v3, 0x3e8

    iput v5, v4, Lcom/meizu/affinityctrl/Cluster;->freq:I

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 334
    .end local v2  # "bitlist":[Ljava/lang/String;
    .end local v3  # "i":I
    :cond_46
    goto :goto_8e

    .line 335
    :cond_47
    invoke-static {}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getCPUClusters()Landroid/util/ArrayMap;

    move-result-object v2

    .line 336
    .local v2, "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 338
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Lcom/meizu/affinityctrl/Cluster;

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "i":I
    :goto_5e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8e

    .line 341
    new-instance v5, Lcom/meizu/affinityctrl/Cluster;

    invoke-direct {v5}, Lcom/meizu/affinityctrl/Cluster;-><init>()V

    aput-object v5, v1, v4

    .line 342
    aget-object v5, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/meizu/affinityctrl/Cluster;->freq:I

    .line 343
    aget-object v5, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/meizu/affinityctrl/Cluster;->bits:I

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 347
    .end local v2  # "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4  # "i":I
    :cond_8e
    :goto_8e
    const-string v2, "persist.sys.affinity_type"

    const-string v3, "cpuset"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "affType":Ljava/lang/String;
    const/4 v3, 0x1

    .line 349
    .local v3, "typeInt":I
    const-string v4, "affinity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 350
    const/4 v3, 0x0

    goto :goto_aa

    .line 351
    :cond_a1
    const-string v4, "MTKAffinity"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 352
    const/4 v3, 0x2

    .line 354
    :cond_aa
    :goto_aa
    array-length v4, v1

    invoke-static {v3, v4, v1}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->initAffinityCtrl(II[Lcom/meizu/affinityctrl/Cluster;)V

    .line 355
    .end local v0  # "cpu_cluster_list":Ljava/lang/String;
    .end local v1  # "culs":[Lcom/meizu/affinityctrl/Cluster;
    .end local v2  # "affType":Ljava/lang/String;
    .end local v3  # "typeInt":I
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native bindBigCore(I)V
.end method

.method public static native bindLittleCore(I)V
.end method

.method public static native bindMiddleCore(I)V
.end method

.method public static native cancerBindCore(I)V
.end method

.method private static extractValue([BI)I
    .registers 6
    .param p0, "buffer"  # [B
    .param p1, "index"  # I

    .line 263
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_32

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_32

    .line 264
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 265
    move v0, p1

    .line 266
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 267
    :goto_14
    array-length v1, p0

    if-ge p1, v1, :cond_22

    aget-byte v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 268
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 270
    :cond_22
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 271
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 273
    .end local v0  # "start":I
    .end local v1  # "str":Ljava/lang/String;
    :cond_2f
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 275
    :cond_32
    const/4 v0, -0x1

    return v0
.end method

.method public static getCPUClusters()Landroid/util/ArrayMap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 287
    .local v0, "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_7
    :try_start_7
    invoke-static {}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getNumberOfCPUCores()I

    move-result v3

    if-ge v2, v3, :cond_97

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v4, "cpuInfoMaxFreqFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 292
    const/16 v5, 0x80

    new-array v5, v5, [B
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_38} :catch_98

    .line 294
    .local v5, "buffer":[B
    :try_start_38
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v7, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v6, v7}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_48} :catch_92
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_98

    .local v6, "stream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 295
    :try_start_49
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    .line 296
    move v8, v1

    .line 298
    .local v8, "endIndex":I
    :goto_4d
    aget-byte v9, v5, v8

    invoke-static {v9}, Ljava/lang/Character;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_5b

    array-length v9, v5

    if-ge v8, v9, :cond_5b

    .line 299
    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 301
    :cond_5b
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5, v1, v8}, Ljava/lang/String;-><init>([BII)V

    .line 302
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 303
    .local v10, "freqBound":Ljava/lang/Integer;
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 304
    .local v11, "bits":Ljava/lang/Integer;
    if-nez v11, :cond_75

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v11, v12

    .line 307
    :cond_75
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    shl-int/2addr v13, v2

    or-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v11, v12

    .line 308
    invoke-virtual {v0, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_49 .. :try_end_84} :catchall_89

    .line 309
    nop

    .end local v8  # "endIndex":I
    .end local v9  # "str":Ljava/lang/String;
    .end local v10  # "freqBound":Ljava/lang/Integer;
    .end local v11  # "bits":Ljava/lang/Integer;
    :try_start_85
    invoke-static {v7, v6}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_92
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_98

    .line 311
    .end local v6  # "stream":Ljava/io/InputStream;
    goto :goto_93

    .line 294
    .restart local v6  # "stream":Ljava/io/InputStream;
    :catchall_89
    move-exception v7

    .end local v0  # "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2  # "i":I
    .end local v3  # "filename":Ljava/lang/String;
    .end local v4  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v5  # "buffer":[B
    .end local v6  # "stream":Ljava/io/InputStream;
    :try_start_8a
    throw v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    .line 309
    .restart local v0  # "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v2  # "i":I
    .restart local v3  # "filename":Ljava/lang/String;
    .restart local v4  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .restart local v5  # "buffer":[B
    .restart local v6  # "stream":Ljava/io/InputStream;
    :catchall_8b
    move-exception v8

    if-eqz v6, :cond_91

    :try_start_8e
    invoke-static {v7, v6}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_91
    throw v8
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_98

    .end local v6  # "stream":Ljava/io/InputStream;
    .restart local v0  # "clusters":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_92
    move-exception v6

    .line 287
    .end local v3  # "filename":Ljava/lang/String;
    .end local v4  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v5  # "buffer":[B
    :cond_93
    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 318
    .end local v2  # "i":I
    :cond_97
    goto :goto_99

    .line 317
    :catch_98
    move-exception v1

    .line 319
    :goto_99
    return-object v0
.end method

.method public static getCPUMaxFreqKHz()I
    .registers 12

    .line 141
    const/4 v0, -0x1

    .line 143
    .local v0, "maxFreq":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getNumberOfCPUCores()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_80

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, "cpuInfoMaxFreqFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 148
    const/16 v6, 0x80

    new-array v6, v6, [B
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_ad

    .line 150
    .local v6, "buffer":[B
    :try_start_35
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v7, v8}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_7c

    .line 151
    .local v7, "stream":Ljava/io/InputStream;
    :try_start_45
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    .line 152
    move v8, v1

    .line 154
    .local v8, "endIndex":I
    :goto_49
    aget-byte v9, v6, v8

    invoke-static {v9}, Ljava/lang/Character;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_57

    array-length v9, v6

    if-ge v8, v9, :cond_57

    .line 155
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 157
    :cond_57
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6, v1, v8}, Ljava/lang/String;-><init>([BII)V

    .line 158
    .local v9, "str":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 159
    .local v10, "freqBound":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v0, :cond_6f

    .line 160
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_6e
    .catchall {:try_start_45 .. :try_end_6e} :catchall_73

    move v0, v11

    .line 162
    .end local v8  # "endIndex":I
    .end local v9  # "str":Ljava/lang/String;
    .end local v10  # "freqBound":Ljava/lang/Integer;
    :cond_6f
    :try_start_6f
    invoke-static {v4, v7}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_7c

    .line 164
    .end local v7  # "stream":Ljava/io/InputStream;
    goto :goto_7d

    .line 150
    .restart local v7  # "stream":Ljava/io/InputStream;
    :catchall_73
    move-exception v4

    .end local v0  # "maxFreq":I
    .end local v2  # "i":I
    .end local v3  # "filename":Ljava/lang/String;
    .end local v5  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v6  # "buffer":[B
    .end local v7  # "stream":Ljava/io/InputStream;
    :try_start_74
    throw v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 162
    .restart local v0  # "maxFreq":I
    .restart local v2  # "i":I
    .restart local v3  # "filename":Ljava/lang/String;
    .restart local v5  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .restart local v6  # "buffer":[B
    .restart local v7  # "stream":Ljava/io/InputStream;
    :catchall_75
    move-exception v8

    if-eqz v7, :cond_7b

    :try_start_78
    invoke-static {v4, v7}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "maxFreq":I
    .end local v2  # "i":I
    .end local v3  # "filename":Ljava/lang/String;
    .end local v5  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v6  # "buffer":[B
    :cond_7b
    throw v8
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7c} :catch_7c

    .end local v7  # "stream":Ljava/io/InputStream;
    .restart local v0  # "maxFreq":I
    .restart local v2  # "i":I
    .restart local v3  # "filename":Ljava/lang/String;
    .restart local v5  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .restart local v6  # "buffer":[B
    :catch_7c
    move-exception v4

    .line 143
    .end local v3  # "filename":Ljava/lang/String;
    .end local v5  # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v6  # "buffer":[B
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 170
    .end local v2  # "i":I
    :cond_80
    const/4 v2, -0x1

    if-ne v0, v2, :cond_ac

    .line 172
    :try_start_83
    const-string v2, "/proc/cpuinfo"

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_91} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_ad

    .line 173
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_91
    const-string v2, "cpu MHz"

    invoke-static {v2, v1}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->parseFileForValue(Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v2
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_a2

    .line 174
    .local v2, "freqBound":I
    mul-int/lit16 v2, v2, 0x3e8

    .line 175
    if-le v2, v0, :cond_9c

    move v0, v2

    .line 176
    .end local v2  # "freqBound":I
    :cond_9c
    if-eqz v1, :cond_a1

    :try_start_9e
    invoke-static {v4, v1}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_ad

    .line 178
    .end local v1  # "stream":Ljava/io/InputStream;
    :cond_a1
    goto :goto_ac

    .line 172
    .restart local v1  # "stream":Ljava/io/InputStream;
    :catchall_a2
    move-exception v2

    .end local v0  # "maxFreq":I
    .end local v1  # "stream":Ljava/io/InputStream;
    :try_start_a3
    throw v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    .line 176
    .restart local v0  # "maxFreq":I
    .restart local v1  # "stream":Ljava/io/InputStream;
    :catchall_a4
    move-exception v3

    if-eqz v1, :cond_aa

    :try_start_a7
    invoke-static {v2, v1}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "maxFreq":I
    :cond_aa
    throw v3
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ab} :catch_ad

    .end local v1  # "stream":Ljava/io/InputStream;
    .restart local v0  # "maxFreq":I
    :catch_ab
    move-exception v1

    .line 182
    :cond_ac
    :goto_ac
    goto :goto_af

    .line 180
    :catch_ad
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    .line 183
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_af
    return v0
.end method

.method private static getCoresFromCPUFileList()I
    .registers 2

    .line 114
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private static getCoresFromFileInfo(Ljava/lang/String;)I
    .registers 6
    .param p0, "fileLocation"  # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_32

    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 82
    :try_start_e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v2, "buf":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "fileContents":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 85
    invoke-static {v3}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getCoresFromFileString(Ljava/lang/String;)I

    move-result v4
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_29

    .line 86
    if-eqz v0, :cond_28

    :try_start_25
    invoke-static {v1, v0}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_32

    .line 85
    :cond_28
    return v4

    .line 80
    .end local v2  # "buf":Ljava/io/BufferedReader;
    .end local v3  # "fileContents":Ljava/lang/String;
    :catchall_29
    move-exception v1

    .end local v0  # "is":Ljava/io/InputStream;
    .end local p0  # "fileLocation":Ljava/lang/String;
    :try_start_2a
    throw v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 86
    .restart local v0  # "is":Ljava/io/InputStream;
    .restart local p0  # "fileLocation":Ljava/lang/String;
    :catchall_2b
    move-exception v2

    if-eqz v0, :cond_31

    :try_start_2e
    invoke-static {v1, v0}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "fileLocation":Ljava/lang/String;
    :cond_31
    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_32

    .end local v0  # "is":Ljava/io/InputStream;
    .restart local p0  # "fileLocation":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method static getCoresFromFileString(Ljava/lang/String;)I
    .registers 2
    .param p0, "str"  # Ljava/lang/String;

    .line 106
    if-eqz p0, :cond_1b

    const-string v0, "0-[\\d]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1b

    .line 109
    :cond_b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 110
    .local v0, "cores":I
    return v0

    .line 107
    .end local v0  # "cores":I
    :cond_1b
    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public static getNumberOfCPUCores()I
    .registers 3

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_8

    .line 54
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_8
    :try_start_8
    const-string v0, "/sys/devices/system/cpu/possible"

    invoke-static {v0}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "cores":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 60
    const-string v2, "/sys/devices/system/cpu/present"

    invoke-static {v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 62
    :cond_18
    if-ne v0, v1, :cond_25

    .line 63
    invoke-static {}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->getCoresFromCPUFileList()I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_1e} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_1e} :catch_20

    move v0, v1

    goto :goto_25

    .line 67
    .end local v0  # "cores":I
    :catch_20
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v0, -0x1

    .local v0, "cores":I
    goto :goto_26

    .line 65
    .end local v0  # "cores":I
    :catch_23
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v0, -0x1

    .line 69
    .local v0, "cores":I
    :cond_25
    :goto_25
    nop

    .line 70
    :goto_26
    return v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .registers 7
    .param p0, "c"  # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    .line 196
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 197
    .local v0, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 198
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 199
    nop

    .line 200
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v2

    .line 205
    .end local v0  # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v1  # "am":Landroid/app/ActivityManager;
    :cond_1a
    const-wide/16 v0, -0x1

    .line 206
    .local v0, "totalMem":J
    :try_start_1c
    const-string v2, "/proc/cpuinfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2b} :catch_45

    .local v2, "stream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 209
    :try_start_2c
    const-string v4, "MemTotal"

    invoke-static {v4, v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->parseFileForValue(Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v4
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3c

    int-to-long v0, v4

    .line 210
    const-wide/16 v4, 0x400

    mul-long/2addr v0, v4

    .line 214
    if-eqz v2, :cond_3b

    :try_start_38
    invoke-static {v3, v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_45

    .line 215
    .end local v2  # "stream":Ljava/io/InputStream;
    :cond_3b
    goto :goto_46

    .line 206
    .restart local v2  # "stream":Ljava/io/InputStream;
    :catchall_3c
    move-exception v3

    .end local v0  # "totalMem":J
    .end local v2  # "stream":Ljava/io/InputStream;
    .end local p0  # "c":Landroid/content/Context;
    :try_start_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 214
    .restart local v0  # "totalMem":J
    .restart local v2  # "stream":Ljava/io/InputStream;
    .restart local p0  # "c":Landroid/content/Context;
    :catchall_3e
    move-exception v4

    if-eqz v2, :cond_44

    :try_start_41
    invoke-static {v3, v2}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0  # "totalMem":J
    .end local p0  # "c":Landroid/content/Context;
    :cond_44
    throw v4
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_45

    .end local v2  # "stream":Ljava/io/InputStream;
    .restart local v0  # "totalMem":J
    .restart local p0  # "c":Landroid/content/Context;
    :catch_45
    move-exception v2

    .line 216
    :goto_46
    return-wide v0
.end method

.method public static native initAffinityCtrl(II[Lcom/meizu/affinityctrl/Cluster;)V
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/InputStream;)I
    .registers 9
    .param p0, "textToMatch"  # Ljava/lang/String;
    .param p1, "stream"  # Ljava/io/InputStream;

    .line 229
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 231
    .local v0, "buffer":[B
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 232
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_3a

    .line 233
    aget-byte v3, v0, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_13

    if-nez v2, :cond_37

    .line 234
    :cond_13
    aget-byte v3, v0, v2

    if-ne v3, v4, :cond_19

    add-int/lit8 v2, v2, 0x1

    .line 235
    :cond_19
    move v3, v2

    .local v3, "j":I
    :goto_1a
    if-ge v3, v1, :cond_37

    .line 236
    sub-int v4, v3, v2

    .line 238
    .local v4, "textIndex":I
    aget-byte v5, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_27

    .line 239
    goto :goto_37

    .line 242
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_34

    .line 243
    invoke-static {v0, v3}, Lcom/meizu/affinityctrl/AffinityCtrlJNI;->extractValue([BI)I

    move-result v5
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_33} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_33} :catch_3b

    return v5

    .line 235
    .end local v4  # "textIndex":I
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 232
    .end local v3  # "j":I
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v1  # "length":I
    .end local v2  # "i":I
    :cond_3a
    goto :goto_3e

    .line 250
    :catch_3b
    move-exception v1

    goto :goto_3f

    .line 248
    :catch_3d
    move-exception v1

    .line 251
    :goto_3e
    nop

    .line 252
    :goto_3f
    const/4 v1, -0x1

    return v1
.end method
